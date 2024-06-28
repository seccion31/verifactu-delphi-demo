unit UVerifactu;

interface

Uses

System.SysUtils,
Xml.xmldom,
Xml.XMLIntf,
Xml.XMLDoc,
Data.Win.ADODB,
System.DateUtils,
Vcl.Dialogs,
Vcl.Forms,
System.hash,
System.StrUtils,
SistemaFacturacionSOAPv12,
Soap.XSBuiltIns,
Soap.InvokeRegistry,
Soap.OPConvert,
Soap.SOAPDomConv,
Soap.OPToSOAPDomConv;

function Trimestre(Dia:TDate):integer;
function TipoFacturaVerifactu(registrofactura:TRegistroFactura) : ClaveTipoFacturaType;
function TipoFacturaVerifactuToString(TipoFactura : ClaveTipoFacturaType) : String;
function TipoRectificativaVerifactu(CorrectionMethod : String) : ClaveTipoRectificativaType;
function ClaveRegimenVerifactu(Conexion : TAdoConnection ; RegimenIva : Integer) : IdOperacionesTrascendenciaTributariaType;
function TipoCalificacionOperacion : CalificacionOperacionType;
function TipoOperacionExenta : OperacionExentaType;

function GenerarRegistro_FacturacionAlta_Verifactu(Conexion : TAdoConnection ; TablaMaestra : Integer ; IdDocumento : String) : String;
function CargarDatosRegistroAnteriorAlta(DTFactura : TGesAdoDataset ; Encadenamiento : Encadenamiento2) : String;
function Registrar_DB_AltaVerifactu(DTFactura : TGesAdoDataset ; RegistroAlta : RegistroFacturacionAltaType) : String;
procedure AgregarRelacionRectificadasPorDiferencias(Conexion : TAdoConnection ; TablaMaestra : Integer ; IdFactura : String; Factura : RegistroFacturaType);
procedure AgregarRelacionRectificadasPorSustitucion(Conexion : TAdoConnection ; TablaMaestra : Integer ; IdFactura : String; Factura : RegistroFacturaType);


function GenerarHuellaRegistroVerifactu(CadenaVerifactu : String) : String;


implementation

function GenerarHuellaRegistroVerifactu(CadenaVerifactu : String) : String;
Begin

{Pendiente de acalar el contenido de la huella}

// NIF (RegistroFactura/RegistroAlta/IDFactura/IDEmisorFactura/NIF)
// NumserieFacturaEmisor (RegistroFactura/RegistroAlta/IDFactura/NumSerieFacturaEmisor)
// FechaExpedicionFacturaEmisor (RegistroFactura/RegistroAlta/IDFactura/FechaExpedicionFacturaEmisor)
{ ya no existe -> TipoRegistroSIF (RegistroFactura/RegistroAlta/TipoRegistroSIF)}
// TipoFactura (RegistroFactura/RegistroAlta/TipoFactura)
// CuotaTotal (RegistroFactura/RegistroAlta/CuotaTotal)
// ImporteTotal (RegistroFactura/RegistroAlta/ImporteTotal)
// HuellaRegistroAnterior (RegistroFactura/RegistroAlta/EncadenamientoRegistroAnterior/HuellaRegistroAnterior)
// FechaHoraHusoGenRegistro (RegistroFactura/RegistroAlta/FechaHoraHusoGenRegistro)

// formato fECHAS verifactu (dd-mm-yyyy)

 // Ejemplo cadena
 {
 CadenaVerifactu :=
 'BXXXXXXX'+
 'F1-01-150'+
 '27-02-2024'+
 'F1'+
 '1000'+
 '1210'+
 '27-02-2024 11:19:00';
  }

 Result := THashSHA2.GetHashString(CadenaVerifactu,THashSHA2.TSHA2Version.SHA256);


End;


function GenerarRegistro_FacturacionAlta_Verifactu(Conexion : TAdoConnection ; TablaMaestra : Integer ; IdDocumento : String) : String;
var NombreTabla,NombreVista,IdFactura,NombreFiscalDestinatario : String;
var DTFactura,DTDesgloseIvas : TGesAdoDataset;
var XSDatetime : TXSDatetime;
var XML_Alta,CadenaTemporalHuella,Huella,HuellaAnterior : String;
begin


  // Buscamos pro tabla
  NombreTabla := f_devolver_valor_campo(0,Conexion,'C','Tablas','Codigo','Nombre',TablaMaestra);
  NombreVista := 'Vista'+NombreTabla;


  // Vamos a Buscar la Factura
  DTFactura      := f_crear_dataset(Conexion,DTFactura,'DTFactura','');
  DTDesgloseIvas := f_crear_dataset(Conexion,DTDesgloseIvas,'DTDesgloseIvas','');

  DTFactura.TableName := NombreTabla;
  DTFactura.VistaName := NombreVista;



  DTFactura.CommandText := 'Select * From '+NombreVista+' where Identificador = :Identificador';
  f_valor_parametro_tabla(DTFactura,'Identificador',IdDocumento);
  f_open_adodataset(DTFactura,ltReadOnly);

  DTDesgloseIvas.CommandText := 'Select * From DocumentosDesgloseIvas where IdDocumento = :Identificador';
  f_valor_parametro_tabla(DTDesgloseIvas,'Identificador',IdDocumento);
  f_open_adodataset(DTDesgloseIvas,ltReadOnly);


  IdFactura := DTFactura.FieldByName('Identificador').AsString;


  // Factura

  var Factura :RegistroFacturaType;
  Factura := RegistroFacturaType.Create;

  Factura.RegistroAlta := RegistroFacturacionAltaType.Create;


  // Nuevas WDSL 04/04/2024
  //https://prewww2.aeat.es/static_files/common/internet/dep/aplicaciones/es/aeat/tikeV1.0/cont/ws/SistemaFacturacion.wsdl

  //IdFactura
  Factura.RegistroAlta.IDVersion := VersionType._1_0;


  Factura.RegistroAlta.IDFactura := IDFacturaExpedidaType.Create;

  Factura.RegistroAlta.IDFactura.IDEmisorFactura        := DTFactura.FieldByName('EmisorNIF').AsString;
  Factura.RegistroAlta.IDFactura.NumSerieFactura        := DTFactura.FieldByName('ReferenciaDocumento').AsString;
  Factura.RegistroAlta.IDFactura.FechaExpedicionFactura := StringReplace(DTFactura.FieldByName('FECH').AsString,FormatSettings.DateSeparator,'-',[rfReplaceAll, rfIgnoreCase]); // (dd-mm-yyyy)

  Factura.RegistroAlta.NombreRazonEmisor := Datam.TBEmpresa.FieldByName('C_EMPRESA').AsString;
  Factura.RegistroAlta.Subsanacion   := SubsanacionType.N;
  Factura.RegistroAlta.RechazoPrevio := RechazoPrevioType.N;
  Factura.RegistroAlta.TipoFactura       := TipoFacturaVerifactu(DTFactura);

  if Length(Trim(DTFactura.FieldByName('CorrectionMethod1').AsString)) > 0 then
  Factura.RegistroAlta.TipoRectificativa := TipoRectificativaVerifactu(DTFactura.FieldByName('CorrectionMethod1').AsString);


    // Rectificads por direfencias  "Factura.RegistroAlta.FacturasRectificadas"
    if Factura.RegistroAlta.TipoRectificativa = ClaveTipoRectificativaType.I then
    Begin
      AgregarRelacionRectificadasPorDiferencias(DTFactura.Connection,TablaMaestra,IdFactura,Factura);
    End;


    // por sustitucion
    if Factura.RegistroAlta.TipoRectificativa = ClaveTipoRectificativaType.S then
    Begin
      AgregarRelacionRectificadasPorSustitucion(DTFactura.Connection,TablaMaestra,IdFactura,Factura);
    End;


  Factura.RegistroAlta.FechaOperacion := StringReplace(DTFactura.FieldByName('FechaOperacion').AsString,FormatSettings.DateSeparator,'-',[rfReplaceAll, rfIgnoreCase]); // (dd-mm-yyyy)
  Factura.RegistroAlta.DescripcionOperacion := 'Venta de mercancías';
  Factura.RegistroAlta.FacturaSimplificadaArt7273 := SimplificadaCualificadaType.N; // Factura simplificada Articulo 7,2 Y 7,3 RD 1619/2012. Si no se informa este campo se entenderá que tiene valor  “N , si l afacutra simplificada tiene nif i datos
  Factura.RegistroAlta.FacturaSinIdentifDestinatarioArt61d := CompletaSinDestinatarioType.N; //si es simplificada N ordinaria S , por aclarar
  Factura.RegistroAlta.Macrodato := MacrodatoType.N; // S	Sí - N	No

  // Tercero No aplicamos pero sería así

  //Factura.RegistroAlta.EmitidaPorTerceroODestinatario := TercerosODestinatarioType.O;

  //Factura.RegistroAlta.Tercero := PersonaFisicaJuridicaType.Create;
  //Factura.RegistroAlta.Tercero.NombreRazon := '';
  //Factura.RegistroAlta.Tercero.NIF         := '';

  //Factura.RegistroAlta.Tercero.IDOtro := IDOtroType.Create;
  //Factura.RegistroAlta.Tercero.IDOtro.CodigoPais := ''
  //Factura.RegistroAlta.Tercero.IDOtro.IDType     := ''
  //Factura.RegistroAlta.Tercero.IDOtro.ID         := ''

  // Fin Tercero No aplicamos



  //Factura.RegistroAlta.Destinatarios := En simplificadas ?????

  // Destinatario
  if TablaMaestra = 3 then
  NombreFiscalDestinatario := DTFactura.FieldByName('NombreCliente').AsString
  else
  NombreFiscalDestinatario := DTFactura.FieldByName('NOMB').AsString;



  var Destinatario := PersonaFisicaJuridicaType.Create;
  Destinatario.NombreRazon := NombreFiscalDestinatario;
  Destinatario.NIF         := DTFactura.FieldByName('NIF').AsString;

  Destinatario.IDOtro := IDOtroType.Create;
  //Destinatario.IDOtro.CodigoPais := '';

  //PersonaFisicaJuridicaIDTypeType ->
  //02	NIF-IVA
  //03	Pasaporte
  //04	Documento oficial de identificación expedido por el país o territorio de residencia
  //05	Certificado de residencia
  //06	Otro documento probatorio
  //07	No censado

  Destinatario.IDOtro.IdType := PersonaFisicaJuridicaIDTypeType._02;
  Destinatario.IDOtro.ID     := DTFactura.FieldByName('NIF').AsString;

  // Los destinatarios , la lista
  var ListaDestinatarios : Destinatarios := Destinatarios.Create();
  SetLength(ListaDestinatarios, 1);
  ListaDestinatarios[0] := Destinatario;
  Factura.RegistroAlta.Destinatarios := ListaDestinatarios;




  Factura.RegistroAlta.Cupon := CuponType.N;


//vamos por aqui




      // Desglose de IVAS
      var ListaDesglose : DesgloseType := DesgloseType.Create();
      var Orden := 0;
      while not DTDesgloseIvas.Eof do
      Begin

          var DetalleDesglose := DetalleType.Create;;

          DetalleDesglose.ClaveRegimen :=
          ClaveRegimenVerifactu(DTFactura.Connection,DTFactura.FieldByName('RegimenIva').AsInteger); //'L8';

          DetalleDesglose.CalificacionOperacion := TipoCalificacionOperacion; //L9

          // Si es exenta , motivo
          if (DetalleDesglose.CalificacionOperacion = CalificacionOperacionType.N1)
          or (DetalleDesglose.CalificacionOperacion = CalificacionOperacionType.N2) then
          DetalleDesglose.OperacionExenta := TipoOperacionExenta; //L10

          DetalleDesglose.TipoImpositivo := FormatFloat('0.00',DTDesgloseIvas.FieldByName('IVA').AsFloat);
          DetalleDesglose.BaseImponibleOimporteNoSujeto := FormatFloat('0.00',DTDesgloseIvas.FieldByName('BASIMP').AsFloat);;
          DetalleDesglose.BaseImponibleACoste := '0.00';
          DetalleDesglose.CuotaRepercutida := FormatFloat('0.00',DTDesgloseIvas.FieldByName('BASIVA').AsFloat);
          DetalleDesglose.TipoRecargoEquivalencia := FormatFloat('0.00',DTDesgloseIvas.FieldByName('REC').AsFloat);
          DetalleDesglose.CuotaRecargoEquivalencia := FormatFloat('0.00',DTDesgloseIvas.FieldByName('BASREC').AsFloat);

       DTDesgloseIvas.Next;

           // desglose

        SetLength(ListaDesglose, Orden+1);
        ListaDesglose[Orden] := DetalleDesglose ;


       Orden := Orden + 1;

      end;

      Factura.RegistroAlta.Desglose := ListaDesglose;


    Factura.RegistroAlta.CuotaTotal   := FormatFloat('0.00',DTFactura.FieldByName('BASIVA').AsCurrency);
    Factura.RegistroAlta.ImporteTotal := FormatFloat('0.00',DTFactura.FieldByName('TOTA').AsCurrency);

    // Encadenamiento
    Factura.RegistroAlta.Encadenamiento := Encadenamiento2.Create; //.Create;

    // Si no es la primera , hay que especificar Encadenamiento

    // La huella anterior será necesaria para crear la huella actual
    HuellaAnterior :=
    CargarDatosRegistroAnteriorAlta(DTFactura,Factura.RegistroAlta.Encadenamiento);

    { Se cargan y/o crean en la funcion CargarDatosRegistroAnteriorAlta }

    //Factura.RegistroAlta.Encadenamiento.PrimerRegistro := PrimerRegistroCadenaType.S;

    //Factura.RegistroAlta.Encadenamiento.RegistroAnterior := EncadenamientoFacturaAnteriorType.Create;
    //Factura.RegistroAlta.Encadenamiento.RegistroAnterior.IDEmisorFactura := '';
    //Factura.RegistroAlta.Encadenamiento.RegistroAnterior.NumSerieFactura := '';
    //Factura.RegistroAlta.Encadenamiento.RegistroAnterior.FechaExpedicionFactura := '';
    //Factura.RegistroAlta.Encadenamiento.RegistroAnterior.Huella := HuellaAnterior;

    // Fin Encadenamiento

    // Sistema Informatico
    Factura.RegistroAlta.SistemaInformatico := SistemaInformaticoType.Create;
    Factura.RegistroAlta.SistemaInformatico.NombreRazon := '';
    Factura.RegistroAlta.SistemaInformatico.NIF         := '';

    Factura.RegistroAlta.SistemaInformatico.IDOtro            := IDOtroType.Create;
    Factura.RegistroAlta.SistemaInformatico.IDOtro.CodigoPais := CountryType2.ES;
    Factura.RegistroAlta.SistemaInformatico.IDOtro.IDType     := PersonaFisicaJuridicaIDTypeType._02;
    Factura.RegistroAlta.SistemaInformatico.IDOtro.ID         := '';


    Factura.RegistroAlta.SistemaInformatico.NombreSistemaInformatico := '';
    Factura.RegistroAlta.SistemaInformatico.IdSistemaInformatico     := '';
    Factura.RegistroAlta.SistemaInformatico.Version                  := '';
    Factura.RegistroAlta.SistemaInformatico.NumeroInstalacion        := ''; // Obligatorio
    Factura.RegistroAlta.SistemaInformatico.TipoUsoPosibleSoloVerifactu := SiNoType.S;
    Factura.RegistroAlta.SistemaInformatico.TipoUsoPosibleMultiOT       := SiNoType.N;
    Factura.RegistroAlta.SistemaInformatico.NumeroOTAlta             := '1';
    // Fin Informatico

    //XSDatetime
    XSDatetime := TXSDatetime.Create;
    XSDatetime.AsDateTime := Now;

    Factura.RegistroAlta.FechaHoraHusoGenRegistro := XSDatetime; // Formato: YYYY-MM-DDThh:mm:ssTZD (ej: 2024-01-01T19:20:30+01:00) (ISO 8601)


    Factura.RegistroAlta.NumRegistroAcuerdoFacturacion := '';
    Factura.RegistroAlta.IdAcuerdoSistemaInformatico   := '';

    // Huella
    CadenaTemporalHuella :=
    Factura.RegistroAlta.IDFactura.IDEmisorFactura+
    Factura.RegistroAlta.IDFactura.NumSerieFactura+
    Factura.RegistroAlta.IDFactura.FechaExpedicionFactura+
    TipoFacturaVerifactuToString(Factura.RegistroAlta.TipoFactura)+
    Factura.RegistroAlta.CuotaTotal+
    Factura.RegistroAlta.ImporteTotal+
    HuellaAnterior+
    Factura.RegistroAlta.FechaHoraHusoGenRegistro.NativeToXS;

    Huella := GenerarHuellaRegistroVerifactu(CadenaTemporalHuella);


    Factura.RegistroAlta.TipoHuella := TipoHuellaType._01;
    Factura.RegistroAlta.Huella     := Huella;

    // Signature
    Factura.RegistroAlta.Signature := Signature.Create; ; // No oblihatorio de momento
    Factura.RegistroAlta.Signature.Id := '';

    Factura.RegistroAlta.Signature.SignedInfo := SignedInfo.Create;
    Factura.RegistroAlta.Signature.SignedInfo.SignatureMethod := SignatureMethod.Create;
    Factura.RegistroAlta.Signature.SignedInfo.SignatureMethod.Algorithm := '';


  // Registramos la Factura
  XML_Alta := Registrar_DB_AltaVerifactu(DTFactura,Factura.RegistroAlta);

  if Length(trim(XML_Alta)) = 0 then
  Begin
    // Si no se ha podido registrar en la tabla verifactu


  end;


  DTFactura.DisposeOf;
  //XSDatetime.DisposeOf;
  Factura.DisposeOf;
  // .RegistroAlta.DisposeOf;

  Result := XML_Alta;

End;



function Trimestre(Dia:TDate):integer;
var mes,Trimestre : Integer;
begin

  Mes := monthof(dia);
  case mes of
  1 : Trimestre := 1;
  2 : Trimestre := 1;
  3 : Trimestre := 1;
  4 : Trimestre := 2;
  5 : Trimestre := 2;
  6 : Trimestre := 2;
  7 : Trimestre := 3;
  8 : Trimestre := 3;
  9 : Trimestre := 3;
  10: Trimestre := 4;
  11: Trimestre := 4;
  12: Trimestre := 4;
  end;


 result:= Trimestre;

end;


function TipoFacturaVerifactuToString(TipoFactura : ClaveTipoFacturaType) : String;
var Resultado : String;
begin

  if TipoFactura = ClaveTipoFacturaType.F1 then Resultado := 'F1';
  if TipoFactura = ClaveTipoFacturaType.F2 then Resultado := 'F2';
  if TipoFactura = ClaveTipoFacturaType.F3 then Resultado := 'F3';

  if TipoFactura = ClaveTipoFacturaType.R1 then Resultado := 'R1';
  if TipoFactura = ClaveTipoFacturaType.R2 then Resultado := 'R2';
  if TipoFactura = ClaveTipoFacturaType.R3 then Resultado := 'R3';
  if TipoFactura = ClaveTipoFacturaType.R4 then Resultado := 'R4';
  if TipoFactura = ClaveTipoFacturaType.R5 then Resultado := 'R5';

  result := Resultado;

end;

function TipoFacturaVerifactu(DTFactura : TGesAdoDataset) : ClaveTipoFacturaType;
var TipoVerifactu : ClaveTipoFacturaType;
var TablaMaestra : Integer;
Begin


  //F1	Factura (art. 6, 7.2 y 7.3 del RD 1619/2012)   // Factura ordinadia normal
  //F2	Factura Simplificada y Facturas sin identificación del destinatario art. 6.1.d) RD 1619/2012
  //F3	Factura emitida en sustitución de facturas simplificadas facturadas y declaradas // Canje i Recapitulativa?

  //R1	Factura Rectificativa (Error fundado en derecho y Art. 80 Uno Dos y Seis LIVA) // Resolucion Judicial
  //R2	Factura Rectificativa (Art. 80.3)   // Impago
  //R3	Factura Rectificativa (Art. 80.4)   // Impago
  //R4	Factura Rectificativa (Resto) // Lo normal , por error
  //R5	Factura Rectificativa en facturas simplificadas

  // A ver que de que tabla es la factura
  TablaMaestra :=
  f_devolver_valor_campo(0,DTFactura.Connection,'N','Tablas','Nombre','Codigo',DTFactura.TableName);

  // Ordinarias
  if TablaMaestra = 24 then
  Begin

    // Es rectificativa u Ordinaria
    if DTFactura.FieldByName('TipoRectificativo').AsInteger = 0 then
    TipoVerifactu := ClaveTipoFacturaType.F1
    else
    TipoVerifactu := ClaveTipoFacturaType.R4;

  End;

  // Simplificadas
  if TablaMaestra = 3 then
  Begin

    // SImplificada ordinaria
    if DTFactura.FieldByName('Tipo').AsInteger = 1 then
    TipoVerifactu := ClaveTipoFacturaType.F2;

    // Es rectificativa //R5	Factura Rectificativa en facturas simplificadas
    if DTFactura.FieldByName('Tipo').AsInteger = 6 then
    TipoVerifactu := ClaveTipoFacturaType.R5;

  End;



  //Factura de canje de simplificads y recapitulativas
  //F3	Factura emitida en sustitución de facturas simplificadas facturadas y declaradas // Canje i Recapitulativa?
  if (TablaMaestra = 252) or (TablaMaestra = 248) then
  Begin

    // Es rectificativa u Ordinaria
    if DTFactura.FieldByName('TipoRectificativo').AsInteger = 0 then
    TipoVerifactu := ClaveTipoFacturaType.F3
    else
    TipoVerifactu := ClaveTipoFacturaType.R4;

  End;




  Result := TipoVerifactu;

End;


function TipoRectificativaVerifactu(CorrectionMethod : String) : ClaveTipoRectificativaType;
var TipoVerifactu : ClaveTipoRectificativaType;
Begin

  //S	Por sustitución
  //I	Por diferencias

  // Si es rectificativa

    //Sustitucion
    if CorrectionMethod = '01' then TipoVerifactu := ClaveTipoRectificativaType.S;

    //Diferencias
    if CorrectionMethod = '02' then TipoVerifactu := ClaveTipoRectificativaType.I;


  Result := TipoVerifactu;

End;


{procedure para añadir las facturas rectificativas por diferencias el registro de Alta}
procedure AgregarRelacionRectificadasPorDiferencias(Conexion : TAdoConnection ; TablaMaestra : Integer ; IdFactura : String; Factura :RegistroFacturaType);
var DTRectificadas : TGesAdoDataset;
var BaseRectificadas,IvaRectificadas,RecargoRectificadas : Currency;
var Orden : Integer;
var NombreTabla,NombreVista : String;
Begin

   //El fichero de lista de rectificadas por diferecnias
   DTRectificadas := f_crear_dataset(Conexion,DTRectificadas,'DTRectificadas','');

   try

   // Buscamos pro tabla
   NombreTabla := f_devolver_valor_campo(0,Conexion,'C','Tablas','Codigo','Nombre',TablaMaestra);
   NombreVista := 'Vista'+NombreTabla;

   DTRectificadas.Connection  :=  Conexion;
   DTRectificadas.TableName   := 'FacturasRectificadas';
   DTRectificadas.CommandText :=
   'Select * from '+NombreVista+' where Identificador in '+
   '(Select IdFacturaRectificada from FacturasRectificadas where (TablaFacturas = :TablaMaestra) and (IdFactura = :IdFactura)) ';

   f_valor_parametro_tabla(DTRectificadas,'TablaMaestra',TablaMaestra);
   f_valor_parametro_tabla(DTRectificadas,'IdFactura',IdFactura);

   f_open_adodataset(DTRectificadas,ltReadOnly);


   Orden := 0;
   BaseRectificadas    := 0;
   IvaRectificadas     := 0;
   RecargoRectificadas := 0;

   var ListaRectificadas : FacturasRectificadas := FacturasRectificadas.Create();
   while not DTRectificadas.Eof do
   Begin

    BaseRectificadas    := BaseRectificadas    + DTRectificadas.FieldByName('BASIMP').AsCurrency;
    IvaRectificadas     := IvaRectificadas     + DTRectificadas.FieldByName('BASIVA').AsCurrency;
    recargoRectificadas := RecargoRectificadas + DTRectificadas.FieldByName('BASREC').AsCurrency;

    // Añadimos la factura recitificada por diferencias
    var FacturaRectificada := IDFacturaARType.Create;
    FacturaRectificada.IDEmisorFactura              := DTRectificadas.FieldByName('EmisorNIF').AsString;
    FacturaRectificada.NumSerieFactura              := DTRectificadas.FieldByName('ReferenciaDocumento').AsString;
    FacturaRectificada.FechaExpedicionFactura       := StringReplace(DTRectificadas.FieldByName('FECH').AsString,FormatSettings.DateSeparator,'-',[rfReplaceAll, rfIgnoreCase]); // (dd-mm-yyyy)

    SetLength(ListaRectificadas, Orden+1);
    ListaRectificadas[Orden] := FacturaRectificada;

    Orden := Orden + 1;

    DTRectificadas.Next;
   End;
   f_close_adodataset(DTRectificadas);
   Factura.RegistroAlta.FacturasRectificadas := ListaRectificadas;

    // La Suma de las bases rectificads i/o sustituidas
    Factura.RegistroAlta.ImporteRectificacion := DesgloseRectificacionType.Create;
    Factura.RegistroAlta.ImporteRectificacion.BaseRectificada         := CurrToStr(BaseRectificadas);
    Factura.RegistroAlta.ImporteRectificacion.CuotaRectificada        := CurrToStr(IvaRectificadas);
    Factura.RegistroAlta.ImporteRectificacion.CuotaRecargoRectificado := CurrToStr(RecargoRectificadas);

  finally
   DTRectificadas.DisposeOf;
  end;

end;


{procedure para añadir las facturas rectificativas que sustituye el registro de Alta}
procedure AgregarRelacionRectificadasPorSustitucion(Conexion : TAdoConnection ; TablaMaestra : Integer ; IdFactura : String; Factura :RegistroFacturaType);
var DTRectificadas : TGesAdoDataset;
var BaseRectificadas,IvaRectificadas,RecargoRectificadas : Currency;
var Orden : Integer;
var NombreTabla,NombreVista : String;
Begin

  //El fichero de lista de rectificadas por Sustitucion
  DTRectificadas := f_crear_dataset(Conexion,DTRectificadas,'DTRectificadas','');

  try

   // Buscamos pro tabla
   NombreTabla := f_devolver_valor_campo(0,Conexion,'C','Tablas','Codigo','Nombre',TablaMaestra);
   NombreVista := 'Vista'+NombreTabla;


    //El fichero de lista de rectificadas por Sustitucion
    DTRectificadas.Connection  :=  Conexion;
    DTRectificadas.TableName   := 'FacturasRectificadas';
    DTRectificadas.CommandText :=
    'Select * from '+NombreVista+' where Identificador in '+
    '(Select IdFacturaRectificada from FacturasRectificadas where (TablaFacturas = :TablaMaestra) and (IdFactura = :IdFactura)) ';

    f_valor_parametro_tabla(DTRectificadas,'TablaMaestra',TablaMaestra);
    f_valor_parametro_tabla(DTRectificadas,'IdFactura',IdFactura);

    f_open_adodataset(DTRectificadas,ltReadOnly);


    // Cada factura Sustituida
    Orden := 0;
    BaseRectificadas    := 0;
    IvaRectificadas     := 0;
    RecargoRectificadas := 0;

    var ListaFacturasSustituidas : FacturasSustituidas := FacturasSustituidas.Create();
    while not DTRectificadas.Eof do
    Begin

     BaseRectificadas    := BaseRectificadas + DTRectificadas.FieldByName('BASIMP').AsCurrency;
     IvaRectificadas     := IvaRectificadas + DTRectificadas.FieldByName('BASIVA').AsCurrency;
     recargoRectificadas := RecargoRectificadas + DTRectificadas.FieldByName('BASREC').AsCurrency;

     // Añadimos la factura recitificada sustitutiva
     var FacturaSustitutiva := IDFacturaARType.Create;
     FacturaSustitutiva.IDEmisorFactura        := ''; // nif
     FacturaSustitutiva.NumSerieFactura        := DTRectificadas.FieldByName('ReferenciaDocumento').AsString;
     FacturaSustitutiva.FechaExpedicionFactura := StringReplace(DTRectificadas.FieldByName('FECH').AsString,FormatSettings.DateSeparator,'-',[rfReplaceAll, rfIgnoreCase]); // (dd-mm-yyyy)


     SetLength(ListaFacturasSustituidas, Orden+1);
     ListaFacturasSustituidas[Orden] := FacturaSustitutiva;


     Orden := Orden + 1;

     DTRectificadas.Next;

    End;
    f_close_adodataset(DTRectificadas);
    Factura.RegistroAlta.FacturasSustituidas := ListaFacturasSustituidas;

    // La Suma de las bases rectificads i/o sustituidas
    Factura.RegistroAlta.ImporteRectificacion := DesgloseRectificacionType.Create;
    Factura.RegistroAlta.ImporteRectificacion.BaseRectificada         := CurrToStr(BaseRectificadas);
    Factura.RegistroAlta.ImporteRectificacion.CuotaRectificada        := CurrToStr(IvaRectificadas);
    Factura.RegistroAlta.ImporteRectificacion.CuotaRecargoRectificado := CurrToStr(RecargoRectificadas);


  finally
   DTRectificadas.DisposeOf;
  end;



end;

{Funcion para rellenar los datos de la factura anterior y devolver la huella -- pendiente de la forma de buscar la anteriuor , si lineal, por serie, etc...}
function CargarDatosRegistroAnteriorAlta(DTFactura : TGesAdoDataset ; Encadenamiento : Encadenamiento2) : String;
var DTRegistroVerifactu : TGesAdoDataset;
var Huella : String;
var UltimoRegistroVerifactu : Int64;
Begin

  //Factura.RegistroAlta.Encadenamiento.RegistroAnterior

  try

   // Creamos el dataset
   DTRegistroVerifactu :=
   f_crear_dataset(DTFactura.Connection,DTRegistroVerifactu,'DTRegistroVerifactu','');

   // Buscar el ultimo registro
   DTRegistroVerifactu.Connection  :=  DTFactura.Connection;
   DTRegistroVerifactu.TableName   := 'RegistroFacturacionVerifactu';
   DTRegistroVerifactu.CommandText :=
   'Select max(Codigo) as Codigo from RegistroFacturacionVerifactu where (IdEmpresa = :IdEmpresa) and (EmisorNIF = :EmisorNIF)';

   f_valor_parametro_tabla(DTRegistroVerifactu,'IdEmpresa',DTFactura.FieldByName('IdEmpresa').AsInteger);
   f_valor_parametro_tabla(DTRegistroVerifactu,'EmisorNIF',DTFactura.FieldByName('EmisorNIF').AsString);

   f_open_adodataset(DTRegistroVerifactu,ltReadOnly);

   UltimoRegistroVerifactu := DTRegistroVerifactu.FieldByName('Codigo').AsInteger;

   f_close_adodataset(DTRegistroVerifactu);
   // Tenemos el Codigo o 0 si no hay


   if UltimoRegistroVerifactu = 0 then
   Begin
     Encadenamiento.PrimerRegistro := PrimerRegistroCadenaType.S;
     Huella := '';
     exit;
   End;

   // Buscamos ya el registro concreto , si no se encuentra nada , primera factura
   if f_busca_registro(False,DTFactura.Connection,DTRegistroVerifactu,'RegistroFacturacionVerifactu','IdRegistro',UltimoRegistroVerifactu) = False then
   Begin

     Encadenamiento.PrimerRegistro := PrimerRegistroCadenaType.S;
     Huella := '';

   End
   else
   Begin

     Huella := DTRegistroVerifactu.FieldByName('Huella').AsString;

     // Creamos el registro anterior y lo llenamos
     Encadenamiento.RegistroAnterior := EncadenamientoFacturaAnteriorType.Create;

     Encadenamiento.RegistroAnterior.IDEmisorFactura := DTRegistroVerifactu.FieldByName('EmisorNIF').AsString;
     Encadenamiento.RegistroAnterior.NumSerieFactura := DTRegistroVerifactu.FieldByName('EmisorNIF').AsString;
     Encadenamiento.RegistroAnterior.FechaExpedicionFactura := StringReplace(DTRegistroVerifactu.FieldByName('FechaExpedicion').AsString,FormatSettings.DateSeparator,'-',[rfReplaceAll, rfIgnoreCase]); // (dd-mm-yyyy)
     Encadenamiento.RegistroAnterior.Huella := Huella;

   End;
   // Final se ha encontrado 1 registro o no

  finally
   Result := Huella;
   DTRegistroVerifactu.DisposeOf;
  end;




End;



function ClaveRegimenVerifactu(Conexion : TAdoConnection ; RegimenIva : Integer) : IdOperacionesTrascendenciaTributariaType;
var CodigoVerifactu : String;
var TypeRegimen : IdOperacionesTrascendenciaTributariaType;
Begin

  //'L8';

// 01	Operación de régimen general.
// 02	Exportación.
// 03	Operaciones a las que se aplique el régimen especial de bienes usados, objetos de arte, antigüedades y objetos de colección.
// 04	Régimen especial del oro de inversión.
// 05	Régimen especial de las agencias de viajes.
// 06	Régimen especial grupo de entidades en IVA (Nivel Avanzado)
// 07	Régimen especial del criterio de caja.
// 08	Operaciones sujetas al IPSI  / IGIC (Impuesto sobre la Producción, los Servicios y la Importación  / Impuesto General Indirecto Canario).
// 09	Facturación de las prestaciones de servicios de agencias de viaje que actúan como mediadoras en nombre y por cuenta ajena (D.A.4ª RD1619/2012)
// 10	Cobros por cuenta de terceros de honorarios profesionales o de derechos derivados de la propiedad industrial, de autor u otros por cuenta de sus socios, asociados o colegiados efectuados por sociedades, asociaciones, colegios profesionales u otras entidades que realicen estas funciones de cobro.
// 11	Operaciones de arrendamiento de local de negocio.
// 12	Factura con IVA pendiente de devengo en certificaciones de obra cuyo destinatario sea una Administración Pública.
// 13	Factura con IVA pendiente de devengo en operaciones de tracto sucesivo.
// 14	Régimen simplificado
// 15	Recargo de equivalencia.
// 16	Régimen especial de la agricultura


  // Falta ponde ren la carga inicial
  CodigoVerifactu := f_devolver_valor_campo(0,Conexion,'C','RegimenesIVA','Codigo','CodVerifactu',RegimenIva);


   Case IndexStr(CodigoVerifactu, ['01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20']) of
   0  : TypeRegimen := IdOperacionesTrascendenciaTributariaType._01;
   1  : TypeRegimen := IdOperacionesTrascendenciaTributariaType._02;
   2  : TypeRegimen := IdOperacionesTrascendenciaTributariaType._03;
   3  : TypeRegimen := IdOperacionesTrascendenciaTributariaType._04;
   4  : TypeRegimen := IdOperacionesTrascendenciaTributariaType._05;
   5  : TypeRegimen := IdOperacionesTrascendenciaTributariaType._06;
   6  : TypeRegimen := IdOperacionesTrascendenciaTributariaType._07;
   7  : TypeRegimen := IdOperacionesTrascendenciaTributariaType._08;
   8  : TypeRegimen := IdOperacionesTrascendenciaTributariaType._09;
   9  : TypeRegimen := IdOperacionesTrascendenciaTributariaType._10;
   10 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._11;
//   11 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._12;
//   12 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._13;
   13 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._14;
   14 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._15;
//   15 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._16;
   16 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._17;
   17 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._18;
   18 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._19;
   19 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._20;
//   20 : TypeRegimen := IdOperacionesTrascendenciaTributariaType._21;

   else
   Begin
     TypeRegimen := IdOperacionesTrascendenciaTributariaType._01;
   End;
  end;

  Result := TypeRegimen;


End;


function TipoCalificacionOperacion : CalificacionOperacionType;
Begin

// L9

// S1	Operación Sujeta y No exenta - Sin inversión del sujeto pasivo.
// S2	Operación Sujeta y No exenta - Con Inversión del sujeto pasivo
// N1	Operación No Sujeta artículo 7, 14, otros.
// N2	Operación No Sujeta por Reglas de localización.

  Result := ;

End;


function TipoOperacionExenta : OperacionExentaType;
Begin

//L10 - solo si exenta de IVA

//E1	Exenta por el artículo 20
//E2	Exenta por el artículo 21
//E3	Exenta por el artículo 22
//E4	Exenta por los artículos 23 y 24
//E5	Exenta por el artículo 25
//E6	Exenta por otros

  result := OperacionExentaType.E6;

End;



{ Fincion para generar el XML de LAta verifactu y registrar la factura en la tabla verifactu}
function Registrar_DB_AltaVerifactu(DTFactura : TGesAdoDataset ; RegistroAlta : RegistroFacturacionAltaType) : String;
var
    ARootNode,newNode : IXMLNode;
    RefId,Swdsl : String;
    MyXML : TXMLDocument;
    Resultado : String;
    DTRegistroVerifactu : TGesAdoDataset;
    TablaMaestra : Int64;
    MOPToSoapDomConvert : TOPtoSOAPDomConvert;

Begin

  //Extraemos XML
  Resultado  := '';
  TablaMaestra := 0;

  MyXML := TXMLDocument.Create(Application);

  MyXML.Active := True;
  MyXML.Version:='1.0';
  MyXML.Encoding:='utf-8';

  ARootNode := MyXML.CreateNode('RegistroAlta');

  MOPToSoapDomConvert := TOPtoSOAPDomConvert.Create(Application);

  MOPToSoapDomConvert.Encoding := 'utf-8';

  MOPToSoapDomConvert.Options :=
  [
  TSOAPConvertOption.soXXXXHdr,
  TSOAPConvertOption.soDontSendEmptyNodes,
  TSOAPConvertOption.soUTF8InHeader,
  TSOAPConvertOption.soSendUntyped,
  TSOAPConvertOption.soSendMultiRefObj,
  TSOAPConvertOption.soTryAllSchema,
  TSOAPConvertOption.soRootRefNodesToBody,
  TSOAPConvertOption.soCacheMimeResponse,
  TSOAPConvertOption.soUTF8EncodeXML,
  TSOAPConvertOption.soSOAP12];

//  [soSendUntyped,soSendMultiRefObj,soSendMultiRefArray,soTryAllSchema,soRootRefNodesToBody,
//   soDocument,soReturnSuccessForFault,soUTF8InHeader,soDontSendEmptyNodes,soCacheMimeResponse,
//   soDontClearOutBoundHeaders,soCustomFaultAtDetailsNode,soLiteralParams,soUTF8EncodeXML,
//   soXXXXHdr,soFormElementUnqualifed,soSOAP12,soDontSendVarArrayType]


  try

   Swdsl := 'https://prewww2.aeat.es/static_files/common/internet/dep/aplicaciones/es/aeat/tikeV1.0/cont/ws/SistemaFacturacion.wsdl';


   try
   newNode := RegistroAlta.ObjectToSOAP( ARootNode, ARootNode, MOPToSoapDomConvert, 'RegistroFacturacionType',
   Swdsl,'T',[ocoDontPrefixNode,ocoDontPutTypeAttr], RefId  ); //ocoDontPrefixNode

     MyXML.DocumentElement := ARootNode;
     MyXML.XML.Text := Xml.XMLDoc.FormatXMLData(MyXML.XML.Text);
     MyXML.XML.SaveToFile('RegistroAltaVerifactu.xml',TEncoding.UTF8); // Provisional
     MyXML.Active := False;

     Resultado := MyXML.XML.Text;

       // Grabamos el Registro Verifactu

       // Creamos el Dataset listo para insertar
       DTRegistroVerifactu :=
       f_crear_dataset(DTFactura.Connection,DTRegistroVerifactu,'DTRegistroVerifactu','RegistroFacturacionVerifactu');

       TablaMaestra := f_devolver_valor_campo(0,DTFactura.Connection,'N','Tablas','Nombre','Codigo',DTFactura.TableName);
           dd
       // Añadimos el Registro
       f_append_adodataset(DTRegistroVerifactu);

       f_replace_adodataset(DTRegistroVerifactu,'Codigo',f_nuevo_codigo(DTRegistroVerifactu,1,'RegistroFacturacionVerifactu','Codigo',True,1,1));
       f_replace_adodataset(DTRegistroVerifactu,'TablaMaestra',TablaMaestra);
       f_replace_adodataset(DTRegistroVerifactu,'IdFactura',DTFactura.FieldByName('Identificador').AsString);
       f_replace_adodataset(DTRegistroVerifactu,'Version',RegistroAlta.IDVersion);
       f_replace_adodataset(DTRegistroVerifactu,'EmisorNIF',RegistroAlta.IDFactura.IDEmisorFactura);
       f_replace_adodataset(DTRegistroVerifactu,'NumSerieFactura',RegistroAlta.IDFactura.NumSerieFactura);
       f_replace_adodataset(DTRegistroVerifactu,'FechaExpedicion',RegistroAlta.IDFactura.FechaExpedicionFactura);
       f_replace_adodataset(DTRegistroVerifactu,'TipoFactura',TipoFacturaVerifactuToString(RegistroAlta.TipoFactura));
       f_replace_adodataset(DTRegistroVerifactu,'CuotaTotal',RegistroAlta.CuotaTotal);
       f_replace_adodataset(DTRegistroVerifactu,'ImporteTotal',RegistroAlta.ImporteTotal);

       //Si hay
       if RegistroAlta.Encadenamiento.RegistroAnterior <> nil then
       f_replace_adodataset(DTRegistroVerifactu,'HuellaRegistroAnterior',RegistroAlta.Encadenamiento.RegistroAnterior.Huella);

       f_replace_adodataset(DTRegistroVerifactu,'Huella',RegistroAlta.Huella);
       f_replace_adodataset(DTRegistroVerifactu,'XMLRegistroFactura',Resultado);
       f_replace_adodataset(DTRegistroVerifactu,'Envio',0);


       f_post_adodataset(DTRegistroVerifactu);


       DTRegistroVerifactu.DisposeOF;



   Except
   On E : Exception do
   Begin
    Showmessage(E.Message);
    MyXML.DocumentElement := ARootNode;
    MyXML.XML.Text := Xml.XMLDoc.FormatXMLData(MyXML.XML.Text);

    //XML.XML.SaveToStream(,TEncoding.UTF8)
    MyXML.XML.SaveToFile('RegistroAltaVerifactuError.xml',TEncoding.UTF8);  // Provisional

    MyXML.Active := False;
    Resultado := '';

   End;

   end;

  finally

    MyXML.DisposeOf;
    MOPToSoapDomConvert.disposeOf;

    Result := Resultado;

  end;

end;

end.
