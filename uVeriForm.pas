unit uVeriForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  system.Hash,
  shellapi,
  utiles,
  Xml.xmldom,
  Xml.XMLIntf,
  Xml.XMLDoc,
  Soap.InvokeRegistry,
  Soap.OPToSOAPDomConv,
  Soap.OPConvert,
  Soap.XSBuiltIns,
  inifiles,
  SistemaFacturacionSOAPv12,
  Vcl.StdCtrls,
  Soap.Rio,
  Soap.SOAPHTTPClient,
  Vcl.Grids,
  Vcl.ComCtrls,
  System.TypInfo,
  System.Win.ComObj, Data.DB, Datasnap.DBClient, Vcl.DBGrids;

type
  TfVeriFactuForm = class(TForm)
    Label6: TLabel;
    comboCertificados: TComboBox;
    HTTPRIO1: THTTPRIO;
    PageControlVerifactu: TPageControl;
    TabSheet1: TTabSheet;
    Resultado: TTabSheet;
    TabSheet3: TTabSheet;
    memoXML: TMemo;
    StringGridFacturas: TStringGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    editRazonSocial: TEdit;
    Label2: TLabel;
    editNIF: TEdit;
    Label3: TLabel;
    editNombre: TEdit;
    Label4: TLabel;
    editID: TEdit;
    Label5: TLabel;
    editVersion: TEdit;
    Label7: TLabel;
    editInstalacion: TEdit;
    Button1: TButton;
    openXLS: TOpenDialog;
    abrirExcel: TButton;
    Label8: TLabel;
    editEmisor: TEdit;
    editNIFEmisor: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    memoRes: TMemo;
    Button2: TButton;
    Button3: TButton;
    FacturasEnviadas: TClientDataSet;
    botonSimula: TButton;
    TabSheet2: TTabSheet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure enviarClick(Sender: TObject);
    procedure HTTPRIO1BeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure FormShow(Sender: TObject);
    procedure abrirExcelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    private
    { Private declarations }
  public
    { Public declarations }
    curdir, xmlSalida, xmlSalida_signed, xmlFacturas:string;

    procedure stringGrid_to_Factura(fila:integer; var factura, anterior:TRegistroFactura);
    procedure archivoFactura(factura:TRegistroFactura; estado:string);
    procedure procesarEnvio( res:RespuestaBaseType );
  end;

var
  fVeriFactuForm: TfVeriFactuForm;

implementation

{$R *.dfm}

(*
Registro de alta=

IDversion
IdFactura.idemisorfactura
IdFactura.numseriefactura
IDfactura.fechaexpedicionfactura
NombreRazonEmisor

TipoFactura
DescripcionOperacion

Destinatarios.nif
Destinatarios.idotro.idtype
Destinatarios.idotro.id

Desglose.claveRegimen
Desglose.calificacionOperacion
Desglose.operacionExenta
Desglose.baseImponibleOimporteNoSujeto

Cuotatotal
importetotal

Encadenamiento.primerRegistro
Encadenamiento.registroanterior.idEmisorfactura
Encadenamiento.registroanterior.numserieFactura
Encadenamiento.registroanterior.fechaExpedicionFactura
Encadenamiento.registroanterior.huella

SistemaInformatico.nombreRazon
SistemaInformatico.nif
SistemaInformatico.idotro.idtype
SistemaInformatico.id
SistemaInformatico.idSistemaInformatico
SistemaInformatico.version
SistemaInformatico.numeroInstalacion

FechaHoraUsoGenRegistro
TipoHuella
Huella

*)

//
// toma una factura y su anterior cargadas en un record y devuelve el objeto verifactu registroFacturaType.RegistroAlta:
//
function altafactura_F1_verifactu( var facturaRegistro, registroAnterior:TRegistroFactura ): RegistroFacturaType;
var
    Factura             : RegistroFacturaType;
    Destinatario        : PersonaFisicaJuridicaType;
    ListaDestinatarios  : Destinatarios;
    ListaDesglose       : DesgloseType;
    DetalleDesglose     : DetalleType;
    XSDatetime          : TXSDatetime;

    j:integer;
begin
    Factura := RegistroFacturaType.Create;

    Factura.RegistroAlta            := RegistroFacturacionAltaType.Create;
    Factura.RegistroAlta.IDVersion  := VersionType._1_0;

    Factura.RegistroAlta.IDFactura                        := IDFacturaExpedidaType.Create;
    Factura.RegistroAlta.IDFactura.IDEmisorFactura        := facturaRegistro.nifEmisor;
    Factura.RegistroAlta.IDFactura.NumSerieFactura        := facturaRegistro.numSerieFactura;
    Factura.RegistroAlta.IDFactura.FechaExpedicionFactura := verifactuFecha( facturaRegistro.fechafactura ) ; // (dd-mm-yyyy)

    Factura.RegistroAlta.TipoFactura                      := ClaveTipoFacturaType.F1;
    Factura.RegistroAlta.DescripcionOperacion             := facturaRegistro.DescripcionOperacion;

    // 1 destinatario (cliente):
    Destinatario                    := PersonaFisicaJuridicaType.Create;
    Destinatario.NombreRazon        := facturaRegistro.cliente;
    Destinatario.NIF                := facturaRegistro.clienteNIF;

    Destinatario.IDOtro             := IDOtroType.Create;
    Destinatario.IDOtro.CodigoPais  := codigoPais( facturaRegistro.clienteCodPais );
    Destinatario.IDOtro.IdType      := tipoNIF( facturaRegistro.clientetipoNIF);
    Destinatario.IDOtro.ID          := facturaRegistro.clienteNIF;

    // El destinatario (cliente) a la lista  (solo 1 cliente x factura)
    ListaDestinatarios:= destinatarios.Create();
    SetLength(ListaDestinatarios, 1);
    ListaDestinatarios[0]               := Destinatario;
    Factura.RegistroAlta.Destinatarios  := ListaDestinatarios;

    // Desglose de iva:
    ListaDesglose := DesgloseType.Create();
    for j:=low(facturaRegistro.desglose) to length(facturaRegistro.desglose)-1 do
    Begin
          DetalleDesglose := DetalleType.Create;

          DetalleDesglose.ClaveRegimen                  := IdOperacionesTrascendenciaTributariaType._01;
          DetalleDesglose.CalificacionOperacion         := CalificacionOperacionType.S1;

          DetalleDesglose.TipoImpositivo                := FormatFloat('0.00',facturaRegistro.desglose[j].iva);
          DetalleDesglose.BaseImponibleOimporteNoSujeto := FormatFloat('0.00',facturaRegistro.desglose[j].baseImp);
          DetalleDesglose.CuotaRepercutida              := FormatFloat('0.00',facturaRegistro.desglose[j].impiva);

          if facturaRegistro.desglose[j].req<>0 then    // ¿ lleva recargo de equivalencia ?
          begin
              DetalleDesglose.TipoRecargoEquivalencia       := FormatFloat('0.00',facturaRegistro.desglose[j].req);
              DetalleDesglose.CuotaRecargoEquivalencia      := FormatFloat('0.00',facturaRegistro.desglose[j].impreq);
          end;

          // colocar el desglose en la lista
          SetLength(ListaDesglose, j+1 );
          ListaDesglose[j] := DetalleDesglose ;
      end;

      // asignar los desgloses al objeto de factura:
      Factura.RegistroAlta.Desglose:= ListaDesglose;

      Factura.RegistroAlta.CuotaTotal   := FormatFloat('0.00',facturaRegistro.cuotatotal);
      Factura.RegistroAlta.ImporteTotal := FormatFloat('0.00',facturaRegistro.total);

      // Encadenamiento
      Factura.RegistroAlta.Encadenamiento := Encadenamiento2.Create;
      // ¿ es el primer registro ?
      if registroAnterior.numSerieFactura='' then Factura.RegistroAlta.Encadenamiento.PrimerRegistro:=PrimerRegistroCadenaType(0) // S
      else
      begin
           Factura.RegistroAlta.Encadenamiento.RegistroAnterior:=EncadenamientoFacturaAnteriorType.Create;

           Factura.RegistroAlta.Encadenamiento.RegistroAnterior.IDEmisorFactura         :=registroAnterior.nifEmisor;
           Factura.RegistroAlta.Encadenamiento.RegistroAnterior.NumSerieFactura         :=registroAnterior.numSerieFactura;
           Factura.RegistroAlta.Encadenamiento.RegistroAnterior.FechaExpedicionFactura  :=registroAnterior.fechaFactura;
           Factura.RegistroAlta.Encadenamiento.RegistroAnterior.Huella                  :=registroAnterior.huella;
      end;

    // sistemaInformatico
    sistemaInformatico( Factura );

    //XSDatetime
    XSDatetime := TXSDatetime.Create;
    XSDatetime.AsDateTime := Now;
    Factura.RegistroAlta.FechaHoraHusoGenRegistro := XSDatetime; // Formato: YYYY-MM-DDThh:mm:ssTZD (ej: 2024-01-01T19:20:30+01:00) (ISO 8601)

    // Huella
    facturaRegistro.Huella  := GenerarHuella_alta_RegistroVerifactu( Factura.RegistroAlta );   // la colocamos en nuestro record

    Factura.RegistroAlta.TipoHuella := TipoHuellaType._01;
    Factura.RegistroAlta.Huella     := facturaRegistro.Huella;                                  // de ahi y la pasamos al objeto factura.alta de verifactu


    // fin, devolver el objeto   registroFacturaType.RegistroAlta  creado desde la informacion contenida en el record TRegistroFactura (ver utiles.pas)
    result:=factura;
end;


(* REGISTRO ANULACION

    registro de anulacion=

           IDVersion
           IDFactura
           IDEMisorFacturaAnulada
           NumSerieFacturaAnulada
           FechaExpedicionFacturaAnulada

           Generador
           NombreRazon
           NIF
           IDOTRO
            IDTYPE
            ID

           Encadenamiento
           PrimerRegistro
           RegistroAnterior
            IDEmisorFactura
            NumSerieFactura
            FechaExpedicionFactura
            Huella

           SistemaInformatico
           FechaHoraHusoGenRegistro
           TipoHuella
           Huella
*)

// toma una factura y su anterior cargadas en un record y devuelve el objeto verifactu registroFacturaType.RegistroAnulacion:
function anulacionfactura_verifactu(var facturaRegistro, registroAnterior:TRegistroFactura):RegistroFacturaType;
var
    Factura             : RegistroFacturaType;
    Destinatario        : PersonaFisicaJuridicaType;
    ListaDestinatarios  : Destinatarios;
    ListaDesglose       : DesgloseType;
    DetalleDesglose     : DetalleType;
    XSDatetime          : TXSDatetime;

    j:integer;
begin
    Factura := RegistroFacturaType.Create;

    Factura.RegistroAnulacion             := RegistroFacturacionAnulacionType.Create;
    Factura.RegistroAnulacion.IDVersion   := VersionType._1_0;

    Factura.RegistroAnulacion.IDFactura                               := IDFacturaExpedidaBajaType.Create;
    Factura.RegistroAnulacion.IDFactura.IDEmisorFacturaAnulada        := facturaRegistro.nifEmisor;
    Factura.RegistroAnulacion.IDFactura.NumSerieFacturaAnulada        := facturaRegistro.numSerieFactura;
    Factura.RegistroAnulacion.IDFactura.FechaExpedicionFacturaAnulada := verifactuFecha( facturaRegistro.fechafactura ) ; // (dd-mm-yyyy)

    // Encadenamiento
    Factura.RegistroAnulacion.Encadenamiento := Encadenamiento.Create;

    // ¿ es el primer registro ?
    if registroAnterior.numSerieFactura='' then   Factura.RegistroAnulacion.Encadenamiento.PrimerRegistro:= PrimerRegistroCadenaType(0) // S
    else
    begin
           Factura.RegistroAnulacion.Encadenamiento.RegistroAnterior:=EncadenamientoFacturaAnteriorType.Create;
           Factura.RegistroAnulacion.Encadenamiento.RegistroAnterior.IDEmisorFactura         :=registroAnterior.nifEmisor;
           Factura.RegistroAnulacion.Encadenamiento.RegistroAnterior.NumSerieFactura         :=registroAnterior.numSerieFactura;
           Factura.RegistroAnulacion.Encadenamiento.RegistroAnterior.FechaExpedicionFactura  :=registroAnterior.fechaFactura;
           Factura.RegistroAnulacion.Encadenamiento.RegistroAnterior.Huella                  :=registroAnterior.huella;
    end;

    // sistemaInformatico
    sistemaInformatico( Factura );

    //XSDatetime
    XSDatetime := TXSDatetime.Create;
    XSDatetime.AsDateTime := Now;
    Factura.RegistroAnulacion.FechaHoraHusoGenRegistro := XSDatetime; // Formato: YYYY-MM-DDThh:mm:ssTZD (ej: 2024-01-01T19:20:30+01:00) (ISO 8601)

    // Huella
    facturaRegistro.Huella  := GenerarHuella_anulacion_RegistroVerifactu( Factura.RegistroAnulacion );

    Factura.RegistroAnulacion.TipoHuella := TipoHuellaType._01;
    Factura.RegistroAnulacion.Huella     := facturaRegistro.Huella;

    // fin, devolver el objeto  RegistroFacturacionAnulacionType  creado desde la informacion contenida en el record TRegistroFactura (ver utiles.pas)
    result:=factura;
end;


//
// IMPORTAR FACTURAS EN EXCEL:  generar Preview en pantalla
//
procedure TfVeriFactuForm.abrirExcelClick(Sender: TObject);
VAR
   ExcelApplication, ExcelWorkbook, ExcelWorksheet: Variant;

   emisor, operacion, numseriefactura, fechafactura,descripcionOP,
   cliente,clienteNIF, clientetipoNIF,clienteCodpais:string;

   baseIMP, total,iva1,req1,baseimp1,iva2,req2,baseimp2:string;

   l:integer;
begin
    // Abrir desde el dialogo, o desde el primer parametro
    if sender<>nil then
    begin
      if not openXLS.execute then exit
    end
    else
       openXLS.FileName:=paramstr(1);

    ExcelApplication  := Null;
    ExcelWorkbook     := Null;
    ExcelWorksheet    := Null;
    try
        ExcelApplication := CreateOleObject('Excel.Application');
     except
           ExcelApplication := Null;
     end;

     screen.Cursor:=crHourglass;
     If VarIsNull(ExcelApplication) = False then
     begin
             try
                ExcelApplication.Visible := false; 
                ExcelApplication.DisplayAlerts := False; 
                try
                   ExcelWorkbook := ExcelApplication.Workbooks.Open( openXLS.filename );
                except
                      ExcelWorkbook := Null;
                end;
                If VarIsNull(ExcelWorkbook) = False then
                begin
                      ExcelWorksheet := ExcelWorkbook.WorkSheets[1];

                      resetStringGrid( stringGridFacturas );

                      l:=2;
                      operacion:=ExcelWorksheet.cells[l,1];
                      while operacion<>'' do
                      begin
                            numseriefactura:=   ExcelWorksheet.cells[l,2];
                            fechafactura:=      ExcelWorksheet.cells[l,3];
                            descripcionOP:=     ExcelWorksheet.cells[l,4];
                            cliente:=           ExcelWorksheet.cells[l,5];
                            clienteNIF:=        ExcelWorksheet.cells[l,6];
                            clientetipoNIF:=    ExcelWorksheet.cells[l,7];
                            clienteCodpais:=    ExcelWorksheet.cells[l,8];


                            baseIMP:=           ExcelWorksheet.cells[l,9];
                            total:=             ExcelWorksheet.cells[l,10];


                            iva1:=              ExcelWorksheet.cells[l,11];
                            req1:=              ExcelWorksheet.cells[l,12];
                            baseimp1:=          ExcelWorksheet.cells[l,13];

                            iva2:=              ExcelWorksheet.cells[l,14];
                            req2:=              ExcelWorksheet.cells[l,15];
                            baseimp2:=          ExcelWorksheet.cells[l,16];


                            StringGridFacturas.Cells[0,l-1] :=operacion;
                            StringGridFacturas.Cells[1,l-1] :=numseriefactura;
                            StringGridFacturas.Cells[2,l-1] :=fechafactura;
                            StringGridFacturas.Cells[3,l-1] :=descripcionOP;
                            StringGridFacturas.Cells[4,l-1] :=cliente;
                            StringGridFacturas.Cells[5,l-1] :=clienteNIF;
                            StringGridFacturas.Cells[6,l-1] :=clientetipoNIF;
                            StringGridFacturas.Cells[7,l-1] :=clienteCodpais;
                            StringGridFacturas.Cells[8,l-1] :=baseIMP;
                            StringGridFacturas.Cells[9,l-1] :=total;

                            StringGridFacturas.Cells[10,l-1]:=iva1;
                            StringGridFacturas.Cells[11,l-1]:=req1;
                            StringGridFacturas.Cells[12,l-1]:=baseimp1;

                            StringGridFacturas.Cells[13,l-1]:=iva2;
                            StringGridFacturas.Cells[14,l-1]:=req2;
                            StringGridFacturas.Cells[15,l-1]:=baseimp2;

                            inc(l);
                            if l>1000 then
                            begin
                                  showmessage('Limitado a 1000 movimientos');
                                  break;
                            end;
                            operacion:=ExcelWorksheet.cells[l,1];
                      end;
                end;

             finally

             end;
     end;
     screen.Cursor:=crDefault;

     ExcelApplication.Workbooks.Close;
     ExcelApplication.DisplayAlerts := True;
     ExcelApplication.Quit;

     ExcelWorksheet   := Unassigned;
     ExcelWorkbook    := Unassigned;
     ExcelApplication := Unassigned;
end;


// GUARDAR AJUSTES
procedure TfVeriFactuForm.Button1Click(Sender: TObject);
var
  ini:Tinifile;
begin
      // guardar ajustes:
      ini:=Tinifile.create(curdir+'\verifactuform.ini');

      ini.writestring('sistema Informatico','RazonSocial',  editRazonSocial.text);
      ini.writestring('sistema Informatico','nif',          editNIF.text);
      ini.writestring('sistema Informatico','sistema',      editNombre.text);
      ini.writestring('sistema Informatico','id',           editID.text);
      ini.writestring('sistema Informatico','version',      editVersion.text);
      ini.writestring('sistema Informatico','instalacion',  editInstalacion.text);

      ini.writestring('cabecera','RazonSocial', editEmisor.text);
      ini.writestring('cabecera','nif',         editNIFEmisor.text);

      ini.free;
      //

      showmessage('Ajustes Guardados !');
end;

// abrir XML generado (para verlo)
procedure TfVeriFactuForm.Button3Click(Sender: TObject);
begin
      if fileExists(xmlSalida) then
          shellexecute(handle,'open',pchar(xmlSalida),nil,nil,sw_showNormal);
end;



// CERRAR EL FORMULARIO Y GUARDAR EL ULTIMO CERTIFICADO USADO
procedure TfVeriFactuForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ini:Tinifile;
begin
      ini:=Tinifile.create(curdir+'\verifactuform.ini');
      ini.writestring('certificado','ultimousado',comboCertificados.Text);
      ini.Free;
end;

// CARGAR DATOS INICIALES
procedure TfVeriFactuForm.FormShow(Sender: TObject);
var
    ini:Tinifile;
    certificado:string;
begin
      getdir(0,curdir);

      xmlSalida         := ExtractFilePath(Application.ExeName) + 'VeriFactu_envio.xml';            // guarda el xml del ultimo envio
      xmlSalida_signed  := ExtractFilePath(Application.ExeName) + 'VeriFactu_envio_signed.xml';     // guarda el xml firmado con autofirma
      xmlFacturas       := ExtractFilePath(Application.ExeName) + 'Facturas.xml';                   // guarda el historico de facturas para el encadenamiento y su csv

      ini:=Tinifile.create( curdir+'\verifactuform.ini' );

      editRazonSocial.text  :=ini.readstring('sistema Informatico','RazonSocial','');
      editNIF.text          :=ini.readstring('sistema Informatico','nif','');
      editNombre.text       :=ini.readstring('sistema Informatico','sistema','');
      editID.text           :=ini.readstring('sistema Informatico','id','');
      editVersion.text      :=ini.readstring('sistema Informatico','version','');
      editInstalacion.text  :=ini.readstring('sistema Informatico','instalacion','');

      editEmisor.text       :=ini.readstring('cabecera','RazonSocial','');
      editNIFEmisor.text    :=ini.readstring('cabecera','nif','');

      certificado           :=ini.readstring('certificado','ultimousado','');

      ini.free;

      if not FileExists(xmlFacturas) then
      begin
            FacturasEnviadas.FieldDefs.Clear;
            FacturasEnviadas.FieldDefs.add('Emisor',ftString,30);
            FacturasEnviadas.FieldDefs.add('NumSerieFactura',ftString,30);
            FacturasEnviadas.FieldDefs.add('FechaExpedicioFactura',ftString,30);
            FacturasEnviadas.FieldDefs.add('Huella',ftString,70);
            FacturasEnviadas.FieldDefs.add('Estado',ftString,30);
            FacturasEnviadas.FieldDefs.add('Csv',ftString,30);
            FacturasEnviadas.CreateDataSet;
            FacturasEnviadas.SaveToFile(xmlFacturas);
      end;
      FacturasEnviadas.LoadFromFile( xmlFacturas );
      FacturasEnviadas.IndexFieldNames:='Emisor;NumSerieFactura';

      if certificados( TstringList(comboCertificados.items) )>0 then
        comboCertificados.ItemIndex:=0;

      if comboCertificados.Items.IndexOf( certificado )<>-1 then
           comboCertificados.ItemIndex:=comboCertificados.Items.IndexOf(certificado);

      // se puede enviar como parametro el nombre de la excel
      if paramstr(1)<>'' then
          abrirExcelClick(nil);

      // se puede automatizar el envio (2º parametro):
      if paramstr(2)='ENVIO' then
          enviarClick(nil);
end;

//
// guardar el XML antes de enviarlo:
//
procedure TfVeriFactuForm.HTTPRIO1BeforeExecute(const MethodName: string; SOAPRequest: TStream);
var
      ss:TFileStream;
      sTmp:TStringList;
begin
      sTmp := TStringList.Create;
      try
          SOAPRequest.Position := 0;
          sTmp.LoadFromStream(SOAPRequest);

          sTmp.SaveToFile(xmlSalida);

          memoXML.Lines.LoadFromFile(xmlSalida);
          memoXML.Text:=FormatXMLData(memoXML.Text);

      finally
          FreeAndNil(sTmp);
      end;

      if HTTPRIO1.Tag=1 then abort;   // si es simulacion: no enviarlo
end;

//
// carga una factura al record desde la rejilla, aqui se podria cargar desde otras fuente de datos
//
procedure TfVeriFactuForm.stringGrid_to_Factura( fila:integer; var factura, anterior:TRegistroFactura );
var
  buscarAnterior:string;
begin
            // asignar datos de 1 factura a un record
            with factura do
            begin
                    nifEmisor             :=editNIFEmisor.Text;

                    numSerieFactura       :=StringGridFacturas.Cells[ 1, fila ];
                    fechaFactura          :=StringGridFacturas.Cells[ 2, fila ];

                    DescripcionOperacion  :=StringGridFacturas.Cells[ 3, fila ];

                    cliente               :=StringGridFacturas.Cells[ 4, fila ];
                    clienteNIF            :=StringGridFacturas.Cells[ 5, fila ];
                    clientetipoNIF        :=StringGridFacturas.Cells[ 6, fila ];
                    clienteCodPais        :=StringGridFacturas.Cells[ 7, fila ];

                    if StringGridFacturas.Cells[10, fila]<>'' then  // añadir iva 1
                    begin
                          setlength(desglose,1);
                          desglose[0].iva       :=value( StringGridFacturas.Cells[10, fila] );
                          desglose[0].req       :=value( StringGridFacturas.Cells[11, fila] );
                          desglose[0].baseImp   :=value( StringGridFacturas.Cells[12, fila] );
                          desglose[0].impiva    :=desglose[0].baseImp*desglose[0].iva / 100;
                          desglose[0].impreq    :=desglose[0].baseImp*desglose[0].req / 100;
                    end;
                    if StringGridFacturas.Cells[13, fila+1]<>'' then  // añadir iva 2
                    begin
                          setlength(desglose,2);
                          desglose[1].iva       :=value( StringGridFacturas.Cells[13, fila] );
                          desglose[1].req       :=value( StringGridFacturas.Cells[14, fila] );
                          desglose[1].baseImp   :=value( StringGridFacturas.Cells[15, fila] );
                          desglose[1].impiva    :=desglose[1].baseImp*desglose[1].iva / 100;
                          desglose[1].impreq    :=desglose[1].baseImp*desglose[1].req / 100;
                    end;

                    cuotatotal    :=value( StringGridFacturas.Cells[ 8, fila ] );
                    total         :=value( StringGridFacturas.Cells[ 9, fila ] );
            end;
            //
            // localizar la factura anterior:
            //
            anterior.nifEmisor        :='';
            anterior.numSerieFactura  :='';
            anterior.fechaFactura     :='';
            anterior.huella           :='';

            if FacturasEnviadas.locate('emisor;numSerieFactura',VarArrayOf([factura.nifEmisor, factura.numSerieFactura]),[] ) then
            begin
                  FacturasEnviadas.prior;
                  if not FacturasEnviadas.bof then
                  begin
                      anterior.nifEmisor        :=FacturasEnviadas.FieldByName('emisor').text;
                      anterior.numSerieFactura  :=FacturasEnviadas.FieldByName('numSerieFactura').text;
                      anterior.fechaFactura     :=FacturasEnviadas.FieldByName('fechaExpedicioFactura').text;
                      anterior.huella           :=FacturasEnviadas.FieldByName('huella').text;
                  end;
            end;
end;

procedure TfVeriFactuForm.archivoFactura(factura:TRegistroFactura; estado:string);
begin
      if not facturasEnviadas.locate('emisor;NumSerieFactura',vararrayof([factura.nifEmisor,factura.numSerieFactura]),[]) then
          FacturasEnviadas.insert
      else
          FacturasEnviadas.edit;

      FacturasEnviadas.fieldbyName('Emisor').text                 :=factura.nifEmisor;
      FacturasEnviadas.fieldbyName('NumSerieFactura').text        :=factura.numSerieFactura;
      FacturasEnviadas.fieldbyName('FechaExpedicioFactura').text  :=factura.fechaFactura;
      FacturasEnviadas.fieldbyName('Huella').text                 :=factura.huella;
      FacturasEnviadas.fieldbyName('Estado').text                 :=estado;

      FacturasEnviadas.post;
end;

//
// Se procesa el resultado devuelto por la AEAT ó el simulador
//
procedure TfVeriFactuForm.procesarEnvio( res:RespuestaBaseType );
var
  estadoOK,estadoDUP,factura,errorDES:string;

  j:integer;

  _ok,_oke,_err:integer;

begin
      memoRes.lines.clear;
      memoRes.lines.Add('Se ha realizado el envío');
      memoRes.lines.Add('CSV: ' + res.CSV);
      memoRes.lines.Add('TimeStamp: ' + res.DatosPresentacion.TimestampPresentacion);
      memoRes.lines.Add('');

      _ok   :=0;    // nº facturas OK
      _oke  :=0;    // nº facturas OK ( aceptada con errores )
      _err  :=0;    // nº facturas con errores

      // ver el estado de cada factura
      for j := Low(res.RespuestaLinea) to High(res.RespuestaLinea) do
      begin
            factura  := res.RespuestaLinea[ j ].IDFactura.NumSerieFactura;

            estadoOK := getEnumName( TypeInfo(EstadoRegistroType), ord(res.RespuestaLinea[ j ].EstadoRegistro) );
            estadoDUP:= getEnumName( TypeInfo(EstadoRegistroSFType), ord(res.RespuestaLinea[ j ].EstadoRegistroDuplicado) );
            errorDES := res.RespuestaLinea[ j ].DescripcionErrorRegistro;

            memoRes.Lines.Add( factura+' '+estadoOK+' '+estadoDUP+' '+errorDES );     // ver en pantalla

            if res.RespuestaLinea[j].EstadoRegistro <> EstadoRegistroType(2) then     // si es correcto ó aceptado con errores
            begin

                // colocar el csv en la factura
                if facturasEnviadas.locate('emisor;NumSerieFactura',vararrayof([res.RespuestaLinea[j].IDFactura.IDEmisorFactura,res.RespuestaLinea[j].IDFactura.NumSerieFactura ]),[]) then
                begin
                    FacturasEnviadas.edit;
                    FacturasEnviadas.fieldbyName('csv').text:=res.CSV;
                    FacturasEnviadas.post;
                end;

                if res.RespuestaLinea[j].EstadoRegistro = EstadoRegistroType(0)  then inc(_ok)
                                                                                 else inc(_oke);
            end
            else
                inc(_err);

      end;

      memoRes.Lines.Add('');
      memoRes.Lines.Add('Facturas Aceptadas: '+inttostr(_ok) );
      memoRes.Lines.Add('Facturas Aceptadas Con Errores: '+inttostr(_oke) );
      memoRes.Lines.Add('Facturas Con Errores: '+inttostr(_err) );

      // tiempo de espera:
      if res.TiempoEsperaEnvio<>'' then memoRes.Lines.Add('Se Ha Establecido Un Tiempo De Espera Proximo Envio De '+res.TiempoEsperaEnvio);
end;


(*
      veriFactu
        + listafacturas
           + RegistroFacturaType...
           + RegistroFacturaType...
           + RegistroFacturaType...
           ...

*)
procedure TfVeriFactuForm.enviarClick(Sender: TObject);
var
  veriFactu         : RegFactuSistemaFacturacion;     // Objeto a enviar
  listafacturas     : Array_Of_RegistroFacturaType;   // lista con las facturas verifactu
  res               : RespuestaBaseType;              // Respuesta tras el envio

  factura, anterior : TRegistroFactura;               // records con los datos de 1 factura   (utiles.pas)  diseño de formato propio

  estado  : string;
  fila    : integer;
begin
      screen.Cursor:=crHourglass;
      // actualizar datos de sistema Informatico:
      SistemaInformatico_razonSocial        :=editRazonSocial.Text;
      SistemaInformatico_nif                :=editNIF.Text;
      SistemaInformatico_Nombre             :=editNombre.Text;
      SistemaInformatico_ID                 :=editID.text;
      SistemaInformatico_Version            :=editVersion.text;
      SistemaInformatico_NumeroInstalacion  :=editInstalacion.text;

      //
      veriFactu:=RegFactuSistemaFacturacion.Create;

      veriFactu.Cabecera                              :=cabecera.Create;
      veriFactu.Cabecera.ObligadoEmision              :=PersonaFisicaJuridicaESType.Create;
      veriFactu.Cabecera.ObligadoEmision.NombreRazon  :=editEmisor.Text;
      veriFactu.Cabecera.ObligadoEmision.NIF          :=editNIFEmisor.Text;

      //
      // recorrer las facturas de la rejilla
      //
      for fila:=0 to StringGridFacturas.RowCount-1 do
      begin
          estado:=StringGridFacturas.Cells[ 0, fila+1 ];              // estado de la factura (ALTA, BAJA)

          if estado<>'' then                                          // SI HAY ESTADO PROCESAR (ALTA ó BAJA)
          begin
                stringGrid_to_Factura( fila+1, factura, anterior );  // <---- Carga el record (factura y su anterior) con los valores del stringGrid

                setLength(listaFacturas,fila+1);                     // +1 factura en el array

               // crear la factura (en formato verifactu) desde el record de diseño propio que acabamos de llenar, (segun sea ALTA ó BAJA)
               if  estado='ALTA' then
                   listaFacturas[ fila ]:= altafactura_F1_verifactu ( factura, anterior );     // colocar el objeto RegistroFacturacionAltaType devuelto por la funcion en el array

               if  estado='BAJA' then
                   listaFacturas[ fila ]:= anulacionfactura_verifactu ( factura, anterior );   // colocar el objeto RegistroFacturacionAnulacionType devuelto por la funcion en el array

               archivoFactura( factura, estado);                                               // lo archivamos en facturas.xml ( para encadenamiento )
          end;

      end;

      veriFactu.RegistroFactura:= listaFacturas;                                // colocar la lista de facturas en el objeto verifactu

      PageControlVerifactu.TabIndex:=1;                                        // nos preparamos para ver el resultado del envio en su tabulador

      // envío:
      try
            HTTPRIO1.HTTPWebNode.ClientCertificate.SerialNum := Buscar_Certificado_SERIAL( comboCertificados.text );  // coloca el certificado

            if sender=botonSimula then
            begin
                HTTPRIO1.Tag:=1;                                                                                      // abortara operacion en beforeExecute
                try
                    GetsfPortTypeVerifactu( False, '', HTTPRIO1 ).RegFactuSistemaFacturacion( veriFactu );            // hacemos un NO envio para obtener el XML (sera abortado)
                except
                end;

                res:=simular_envio( veriFactu );                                                                      // simulamos el envio y recogemos la respuesta
            end
            else
            begin
                HTTPRIO1.Tag:=0;                                                                                      // envio real
                res:=   RespuestaBaseType.Create;
                res:=   GetsfPortTypeVerifactu( False, '', HTTPRIO1 ).RegFactuSistemaFacturacion( veriFactu );        // enviarlo !
            end;

            // resultado del envio:   (se colocara el csv si la factura ha sido aceptada, en la base de datos facturas.xml)
            procesarEnvio(res);

      except
            on E:Exception do
                  memoRes.text  :=Format('Error al realizar el envío; (%s)-%s',[E.ClassName, E.Message]);
      end;

      // Finalmente:
      FacturasEnviadas.SaveToFile(xmlFacturas);    // Guardamos el archivo propio de facturas  ( para encadenamiento )

      screen.Cursor:=crDefault;
end;

end.
