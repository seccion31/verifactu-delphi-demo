// https://indy.fulgan.com/SSL/


unit utiles;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  system.Hash,
  System.JSON,
  IdHTTP, IdSSLOpenSSL, IdIOHandler,  IdIOHandlerSocket,
  Xml.xmldom,
  Xml.XMLIntf,
  Xml.XMLDoc,
  Soap.InvokeRegistry,
  Soap.OPToSOAPDomConv,
  Soap.OPConvert,
  Soap.XSBuiltIns,
  CAPICOM_TLB,
  CertHelper,
  System.TypInfo,
  DateUtils,
  SistemaFacturacion,
  Vcl.StdCtrls,
  Vcl.Grids,
  Data.DB,
  DBClient,
  registry;

type
    TRegistroFacturaIVAS=record
          iva,req:currency;
          baseImp:currency;
          impIVA:currency;
          impREQ:currency;

          exporta:boolean;
    end;

    TRegistroFactura=record

        nifEmisor:string;
        nombreEmisor:string;

        numSerieFactura:string;
        fechaFactura:string;

        DescripcionOperacion:string;

        cliente,clienteNIF,clientetipoNIF,clienteCodPais:string;

        desglose:array of TRegistroFacturaIVAS;

        cuotatotal,total:currency;

        situacion:string;

        huella:string;
    end;


// huellas
function  GenerarHuella_alta_RegistroVerifactu(alta:RegistroFacturacionAltaType):string;
function  GenerarHuella_anulacion_RegistroVerifactu(anula:RegistroFacturacionAnulacionType):string;
function  GenerarHuellaRegistroVerifactu(CadenaVerifactu : String) : String;

// funciones auxiliares
function  CodigoPais(paisCode:string):CountryType2;
function  tipoNIF(tipo:string):PersonaFisicaJuridicaIDTypeType;
function  veriFactuFecha(n:string):string;
function  veriFactuEstadoEnvio(aestado:EstadoEnvioType):string;
function  TipoFacturaVerifactuToString( TipoFactura : ClaveTipoFacturaType ) : String; var Resultado : String;
procedure sistemaInformatico(var Factura: RegistroFacturaType);
function  numeroVerifactu(valor:currency):string;


// comprobar facturas 5º parametro del codigoQR  &formato=json
function  GetUrlContent(url: string): string;
function  checkStatus(aDataset:TDataSet; json:string; var cotejo:string):integer;

// certificados atraves de capicom.dll
function  Certificados(aList:TStringList):integer;
function  BUSCAR_CERTIFICADO_SERIAL(Nombre_Certificado: String): string;
function  BUSCAR_CERTIFICADO_SERIAL_EXT(Nombre_Certificado:string; VAR serial, isuer, name: String): string;
function  CERTIFICADO_ALIAS(nombre_certificado:string):string;

// simulador de envios
//function simular_envio( averifactu: RegFactuSistemaFacturacion ):RespuestaBaseType;

// otros
function  value(n:string):currency;
procedure resetStringGrid(const Grid: TStringGrid);
function  autoFirmaPath:string;
procedure ExecuteAndWait(const aCommando: string);


var
    SistemaInformatico_razonSocial:string;
    SistemaInformatico_nif:string;
    SistemaInformatico_Nombre:string;
    SistemaInformatico_ID:string;
    SistemaInformatico_Version:string;
    SistemaInformatico_NumeroInstalacion:string;

implementation


// necesitas dos librerias para el ssl: ssleay32.dll y libeay32.dll
// https://indy.fulgan.com/SSL/
function GetUrlContent(url: string): string;
var
  HTTP: TIdHTTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
begin
  HTTP := TIdHTTP.Create(nil);
  try
    SSL := TIdSSLIOHandlerSocketOpenSSL.Create(HTTP);
    SSl.SSLOptions.SSLVersions:=[ sslvTLSv1_2 ];
    HTTP.IOHandler := SSL;
    result := HTTP.Get(url);
  finally
    HTTP.Free;
  end;
end;

function  checkStatus(aDataset:TDataSet; json:string; var cotejo:string):integer;
var
  obj : TJSONObject;
  ok,mensaje,numserie,fecha,importe:string;
begin
           result:=0;

           obj      := TJSONObject.ParseJSONValue(json) as TJSONObject;

           ok       :=obj.Values['status'].Value;
           mensaje  :=obj.Values['mensaje'].Value;

           Obj.Free;

           cotejo:=ok+' '+mensaje;

           if ok<>'OK' then result:=1;
end;


function CERTIFICADO_ALIAS(nombre_certificado:string):string;
const
  CAPICOM_CA_STORE = 'ca';
  CAPICOM_MY_STORE = 'my';
  CAPICOM_ADDRESS_BOOK_STORE = 'AddressBook';
  CAPICOM_OTHER_STORE = 'other';
  CAPICOM_ROOT_STORE = 'root';
var
    carpetaAlmacen : IStore;
    certificadosAlmacen : ICertificates;
    certificadoActual : ICertificate2;
    i, j: integer;
begin
  carpetaAlmacen := CoStore.Create;
  carpetaAlmacen.Open(CAPICOM_CURRENT_USER_STORE,CAPICOM_MY_STORE, CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED or CAPICOM_STORE_OPEN_INCLUDE_ARCHIVED or CAPICOM_STORE_OPEN_EXISTING_ONLY);
  certificadosAlmacen := carpetaAlmacen.Certificates as ICertificates2;
  for i := 1 to certificadosAlmacen.Count do
  begin
        certificadoActual :=IInterface(certificadosAlmacen.Item[i]) as ICertificate2;

        if nombre_certificado=certificadoActual.GetInfo (CAPICOM_CERT_INFO_SUBJECT_DNS_NAME) then
        begin
             result:=certificadoActual.PrivateKey.ContainerName;
             exit;
        end;
  end;
end;

function  numeroVerifactu(valor:currency):string;
begin
     result:=FormatFloat('0.00',valor);

     result[length(result)-2]:='.';
end;



procedure resetStringGrid(const Grid: TStringGrid);
var
  c, r: Integer;
begin
  for c := 0 to Pred(Grid.ColCount) do
    for r := 0 to Pred(Grid.RowCount) do
      Grid.Cells[c, r] := '';

end;



function veriFactuFecha(n:string):string;
begin
    result:=StringReplace( n,FormatSettings.DateSeparator,'-',[rfReplaceAll, rfIgnoreCase]);
end;

function value(n:string):currency;
begin
      if n='' then
      begin
            result:=0;
      end
      else
        result:=StrToCurr(n);
end;


function veriFactuEstadoEnvio(aestado:EstadoEnvioType):string;
begin
      if aEstado= sistemafacturacion.EstadoEnvioType.Correcto             then result:='Correcto';
      if aEstado= sistemafacturacion.EstadoEnvioType.ParcialmenteCorrecto then result:='ParcialmenteCorrecto';
      if aEstado= sistemafacturacion.EstadoEnvioType.Incorrecto           then result:='Incorrecto';
end;

function codigoPais(paisCode:string):CountryType2;
var
  I:countryType2;
begin
      result:=CountryType2(12);   // por defecto españa

      for I := Low(countryType2) to High(countryType2) do
      begin
          if paisCode=getEnumName(typeInfo(countryType2), ord(I)  ) then
          begin
                result:=I;
                exit;
          end;
      end;
end;

function tipoNIF(tipo:string):PersonaFisicaJuridicaIDTypeType;
begin
      result:=PersonaFisicaJuridicaIDTypeType._02;

      if tipo='02' then
          result:=PersonaFisicaJuridicaIDTypeType._02;   // 02	NIF-IVA

      if tipo='03' then
          result:=PersonaFisicaJuridicaIDTypeType._03;   // 03	Pasaporte

      if tipo='04' then
          result:=PersonaFisicaJuridicaIDTypeType._04;  // 04	Documento oficial de identificación expedido por el país o territorio de residencia

      if tipo='05' then
          result:=PersonaFisicaJuridicaIDTypeType._05;   // 05	Certificado de residencia

      if tipo='06' then
          result:=PersonaFisicaJuridicaIDTypeType._06;   // 06	Otro documento probatorio

      if tipo='07' then
          result:=PersonaFisicaJuridicaIDTypeType._07;  // 07	No censado
end;

function GenerarHuella_alta_RegistroVerifactu( alta:RegistroFacturacionAltaType ):string;
var
   CadenaTemporalHuella,huellaAnterior:string;
begin
    huellaAnterior:='';
    if alta.Encadenamiento.RegistroAnterior<>nil then huellaAnterior:= alta.Encadenamiento.RegistroAnterior.Huella;

    CadenaTemporalHuella:= 'IDEmisorFactura='+         alta.IDFactura.IDEmisorFactura+'&'+
                           'NumSerieFactura='+         alta.IDFactura.NumSerieFactura+'&'+
                           'FechaExpedicionFactura='+  alta.IDFactura.FechaExpedicionFactura+'&'+
                           'TipoFactura='+             TipoFacturaVerifactuToString( alta.TipoFactura )+'&'+
                           'CuotaTotal='+              alta.CuotaTotal+'&'+
                           'ImporteTotal='+            alta.ImporteTotal+'&'+
                           'Huella='+                  huellaAnterior+'&'+
                           'FechaHoraHusoGenRegistro='+alta.FechaHoraHusoGenRegistro.NativeToXS;

    result:=GenerarHuellaRegistroVerifactu( cadenaTemporalHuella );
end;

function GenerarHuellaRegistroVerifactu(CadenaVerifactu : String) : String;
Begin
       Result := UpperCase( THashSHA2.GetHashString(CadenaVerifactu,THashSHA2.TSHA2Version.SHA256) );
End;


function GenerarHuella_anulacion_RegistroVerifactu( anula:RegistroFacturacionAnulacionType ):string;
var
   CadenaTemporalHuella,huellaAnterior:string;
begin
    huellaAnterior:='';
    if anula.Encadenamiento.RegistroAnterior<>nil then huellaAnterior:= anula.Encadenamiento.RegistroAnterior.Huella;

    CadenaTemporalHuella:= 'IDEmisorFacturaAnulada='+         anula.IDFactura.IDEmisorFacturaAnulada+'&'+
                           'NumSerieFacturaAnulada='+         anula.IDFactura.NumSerieFacturaAnulada+'&'+
                           'FechaExpedicionFacturaAnulada='+  anula.IDFactura.FechaExpedicionFacturaAnulada+'&'+
                           'Huella='+                         huellaAnterior+'&'+
                           'FechaHoraHusoGenRegistro='+       anula.FechaHoraHusoGenRegistro.NativeToXS;

    result:=GenerarHuellaRegistroVerifactu( cadenaTemporalHuella );
end;



procedure sistemaInformatico(var Factura: RegistroFacturaType);
begin
    // Sistema Informatico
    if factura.RegistroAlta<>nil then
    begin
        Factura.RegistroAlta.SistemaInformatico             := SistemaInformaticoType.Create;
        Factura.RegistroAlta.SistemaInformatico.NombreRazon := SistemaInformatico_razonSocial;
        Factura.RegistroAlta.SistemaInformatico.NIF         := SistemaInformatico_nif;

        (*
        Factura.RegistroAlta.SistemaInformatico.IDOtro            := IDOtroType.Create;
        Factura.RegistroAlta.SistemaInformatico.IDOtro.CodigoPais := CountryType2.ES;
        Factura.RegistroAlta.SistemaInformatico.IDOtro.IDType     := PersonaFisicaJuridicaIDTypeType._02;
        Factura.RegistroAlta.SistemaInformatico.IDOtro.ID         := '';
        *)

        Factura.RegistroAlta.SistemaInformatico.NombreSistemaInformatico    := SistemaInformatico_Nombre;
        Factura.RegistroAlta.SistemaInformatico.IdSistemaInformatico        := SistemaInformatico_ID;
        Factura.RegistroAlta.SistemaInformatico.Version                     := SistemaInformatico_Version;
        Factura.RegistroAlta.SistemaInformatico.NumeroInstalacion           := SistemaInformatico_NumeroInstalacion;
        Factura.RegistroAlta.SistemaInformatico.TipoUsoPosibleSoloVerifactu := SiNoType.S;
        Factura.RegistroAlta.SistemaInformatico.TipoUsoPosibleMultiOT       := SiNoType.N;
//        Factura.RegistroAlta.SistemaInformatico.NumeroOTAlta                := '1';
    end
    else
    begin
        Factura.RegistroAnulacion.SistemaInformatico             := SistemaInformaticoType.Create;
        Factura.RegistroAnulacion.SistemaInformatico.NombreRazon := SistemaInformatico_razonSocial;
        Factura.RegistroAnulacion.SistemaInformatico.NIF         := SistemaInformatico_nif;

        (*
        Factura.RegistroAnulacion.SistemaInformatico.IDOtro            := IDOtroType.Create;
        Factura.RegistroAnulacion.SistemaInformatico.IDOtro.CodigoPais := CountryType2.ES;
        Factura.RegistroAnulacion.SistemaInformatico.IDOtro.IDType     := PersonaFisicaJuridicaIDTypeType._02;
        Factura.RegistroAnulacion.SistemaInformatico.IDOtro.ID         := '';
        *)

        Factura.RegistroAnulacion.SistemaInformatico.NombreSistemaInformatico    := SistemaInformatico_Nombre;
        Factura.RegistroAnulacion.SistemaInformatico.IdSistemaInformatico        := SistemaInformatico_ID;
        Factura.RegistroAnulacion.SistemaInformatico.Version                     := SistemaInformatico_Version;
        Factura.RegistroAnulacion.SistemaInformatico.NumeroInstalacion           := SistemaInformatico_NumeroInstalacion;
        Factura.RegistroAnulacion.SistemaInformatico.TipoUsoPosibleSoloVerifactu := SiNoType.S;
        Factura.RegistroAnulacion.SistemaInformatico.TipoUsoPosibleMultiOT       := SiNoType.N;
//        Factura.RegistroAnulacion.SistemaInformatico.NumeroOTAlta                := '1';
    end;
    // Fin Informatico
end;

function TipoFacturaVerifactuToString(TipoFactura : ClaveTipoFacturaType) : String;
var
    Resultado : String;
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

// FUNCIONES PARA CERTIFICADOS:
function BUSCAR_CERTIFICADO(Nombre_Certificado: String): Pointer;
var
  hStore: HCERTSTORE;
  PrevContext, CurContext: PCERT_CONTEXT;
  cbSize: DWORD;
  sNombre: String;
begin
  Result := nil;
  hStore := CertOpenSystemStore(0, PChar('MY'));
  if hStore <> nil then begin
     PrevContext := nil;
     CurContext := CertEnumCertificatesInStore(hStore, PrevContext);
     while CurContext <> nil do begin
       sNombre := '';
       cbSize := CertGetNameString(CurContext, CERT_NAME_SIMPLE_DISPLAY_TYPE, 0, nil, nil, 0);
       if cbSize > 0 then  begin
          SetLength(sNombre, cbSize-1);
          CertGetNameString(CurContext, CERT_NAME_SIMPLE_DISPLAY_TYPE, 0, nil, PChar(sNombre), cbSize);

          if SameText(Nombre_certificado, sNombre) then begin
              Result := CurContext; //ENCONTRADO
              break;
          end;
       end;
       PrevContext := CurContext;
       CurContext  := CertEnumCertificatesInStore(hStore, PrevContext);
     end;
  end;
end;


function  BUSCAR_CERTIFICADO_SERIAL_EXT(Nombre_Certificado:string; VAR serial, isuer, name: String): string;
var
  hStore: HCERTSTORE;
  PrevContext, CurContext: PCERT_CONTEXT;
  cbSize: DWORD;
  sNombre: String;
begin
  Result := '';
  hStore := CertOpenSystemStore(0, PChar('MY'));
  if hStore <> nil then begin
     PrevContext := nil;
     CurContext := CertEnumCertificatesInStore(hStore, PrevContext);
     while CurContext <> nil do begin
       sNombre := '';
       cbSize := CertGetNameString(CurContext, CERT_NAME_SIMPLE_DISPLAY_TYPE, 0, nil, nil, 0);
       if cbSize > 0 then  begin
          SetLength(sNombre, cbSize-1);
          CertGetNameString(CurContext, CERT_NAME_SIMPLE_DISPLAY_TYPE, 0, nil, PChar(sNombre), cbSize);
           if SameText(Nombre_certificado, sNombre) then
             begin
               REsult := GetCertSerialNumber(@CurContext^.pCertInfo^.SerialNumber);
               serial:=result;

               isuer:=GetCertSerialNumber(@CurContext^.pCertInfo^.Issuer);
               name:=sNombre;

               break;
            end;
       end;
       PrevContext := CurContext;
       CurContext  := CertEnumCertificatesInStore(hStore, PrevContext);
     end;
  end;
end;

function BUSCAR_CERTIFICADO_SERIAL(Nombre_Certificado: String): string;
var
  hStore: HCERTSTORE;
  PrevContext, CurContext: PCERT_CONTEXT;
  cbSize: DWORD;
  sNombre: String;
begin
  Result := '';
  hStore := CertOpenSystemStore(0, PChar('MY'));
  if hStore <> nil then begin
     PrevContext := nil;
     CurContext := CertEnumCertificatesInStore(hStore, PrevContext);
     while CurContext <> nil do begin
       sNombre := '';
       cbSize := CertGetNameString(CurContext, CERT_NAME_SIMPLE_DISPLAY_TYPE, 0, nil, nil, 0);
       if cbSize > 0 then  begin
          SetLength(sNombre, cbSize-1);
          CertGetNameString(CurContext, CERT_NAME_SIMPLE_DISPLAY_TYPE, 0, nil, PChar(sNombre), cbSize);
           if SameText(Nombre_certificado, sNombre) then
             begin
               REsult := GetCertSerialNumber(@CurContext^.pCertInfo^.SerialNumber);
               break;
            end;
       end;
       PrevContext := CurContext;
       CurContext  := CertEnumCertificatesInStore(hStore, PrevContext);
     end;
  end;
end;


function Certificados(aList:TStringList):integer;
var
  hStore: HCERTSTORE;
  PrevContext, CurContext: PCERT_CONTEXT;
  cbSize: DWORD;
  sNombre: String;
begin
  aList.Clear;
  Result := 0;
  hStore := CertOpenSystemStore(0, PChar('MY'));
  if hStore <> nil then begin
     PrevContext := nil;
     CurContext := CertEnumCertificatesInStore(hStore, PrevContext);
     while CurContext <> nil do begin
       sNombre := '';
       cbSize := CertGetNameString(CurContext, CERT_NAME_SIMPLE_DISPLAY_TYPE, 0, nil, nil, 0);
       if cbSize > 0 then
       begin
          SetLength(sNombre, cbSize-1);
          CertGetNameString(CurContext, CERT_NAME_SIMPLE_DISPLAY_TYPE, 0, nil, PChar(sNombre), cbSize);

          aList.Add(sNombre);
       end;
       PrevContext := CurContext;
       CurContext  := CertEnumCertificatesInStore(hStore, PrevContext);
     end;
  end;
  result:=aList.count;
end;






/////////////////////////// SIMULADOR /////////////////////////////////////////

const
  _csvFuente = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';

function randomCSV(n:integer):string;
var
  i:integer;
begin
  Result:='';
  for i := 1 to n do
    Result:= result+_csvFuente[ (Random(Length(_csvFuente))+ 1) ];
end;

function archivaFactura(dataset:TClientDataSet; emisor, factura,fecha,huella,estado,csv:string):boolean;
begin
      dataSet.Insert;
      dataSet.fieldbyName('Emisor').Text:=emisor;
      dataSet.fieldbyName('NumSerieFactura').Text:=factura;
      dataSet.fieldbyName('FechaExpedicioFactura').Text:=fecha;
      dataSet.fieldbyName('Huella').Text:=huella;
      dataSet.fieldbyName('Estado').Text:=estado;
      dataSet.fieldbyName('Csv').Text:=csv;
      dataSet.post;
end;

(*
function simular_envio( averifactu: RegFactuSistemaFacturacion ):RespuestaBaseType;
var
  j: Integer;
  aLineas: Array_Of_RespuestaLinea;
  XSDatetime : TXSDatetime;
  archivo,_csv:string;
  simulador:TClientDataSet;
  ares:RespuestaBaseType;
begin
      ares:=RespuestaBaseType.Create;
      _csv:=randomCSV(15);

      simulador:=TClientDataSet.create(nil);
      archivo:=ExtractFilePath(Application.ExeName)+'simulador.xml';
      if not fileExists(archivo) then
      begin
            simulador.FieldDefs.Clear;
            simulador.FieldDefs.add('Emisor',ftString,30);
            simulador.FieldDefs.add('NumSerieFactura',ftString,30);
            simulador.FieldDefs.add('FechaExpedicioFactura',ftString,30);
            simulador.FieldDefs.add('Huella',ftString,70);
            simulador.FieldDefs.add('Estado',ftString,30);
            simulador.FieldDefs.add('Csv',ftString,30);
            simulador.CreateDataSet;
            simulador.SaveToFile(archivo);
      end
      else
            simulador.LoadFromFile(archivo);

      simulador.Active:=true;

      for j := Low(averifactu.RegistroFactura) to High(averifactu.RegistroFactura) do
      begin
            // marcar todas como OK
            setLength(aLineas, j+1);
            aLineas[j]:=tRespuestaLinea.create;
            aLineas[j].IDFactura:=IDFacturaExpedidaType.Create;
            aLineas[j].EstadoRegistro:=EstadoRegistroType(0);   // correcta


            // ALTA DE FACTURA
            if averiFactu.RegistroFactura[j].RegistroAlta<>nil then
            begin
                aLineas[j].IDFactura:= averiFactu.RegistroFactura[j].RegistroAlta.IDFactura;
                // buscar la factura por si repetida
                if simulador.Locate('NumSerieFactura',averiFactu.RegistroFactura[j].RegistroAlta.IDFactura.NumSerieFactura, [] ) then
                begin
                        aLineas[j].CSVRegistroDuplicado:=simulador.FieldByName('csv').text;
                        if simulador.FieldByName('csv').text='ALTA' then
                          aLineas[j].EstadoRegistroDuplicado:=EstadoRegistroSFType(0)
                        else
                          aLineas[j].EstadoRegistroDuplicado:=EstadoRegistroSFType(2);

                        aLineas[j].EstadoRegistro:=EstadoRegistroType(2);
                        aLineas[j].DescripcionErrorRegistro:='Factura repetida CSV '+simulador.FieldByName('csv').text;
                        aLineas[j].CodigoErrorRegistro:='3000';
                end;

                if aLineas[j].EstadoRegistro=EstadoRegistroType(0) then
                begin
                    archivaFactura(simulador, averiFactu.RegistroFactura[j].RegistroAlta.IDFactura.IDEmisorFactura,
                                              averiFactu.RegistroFactura[j].RegistroAlta.IDFactura.NumSerieFactura,
                                              averiFactu.RegistroFactura[j].RegistroAlta.IDFactura.FechaExpedicionFactura,
                                              averiFactu.RegistroFactura[j].RegistroAlta.huella,
                                              'ALTA',
                                              _csv);
                end;

            end;


            // ANULACION
            if averiFactu.RegistroFactura[j].RegistroAnulacion<>nil then
            begin
                aLineas[j].IDFactura:= IDFacturaExpedidaType( averiFactu.RegistroFactura[j].RegistroAnulacion.IDFactura );
                if not simulador.Locate('NumSerieFactura',averiFactu.RegistroFactura[j].RegistroAnulacion.IDFactura.NumSerieFacturaAnulada,[] ) then
                begin
                        aLineas[j].CodigoErrorRegistro:='3001';
                        aLineas[j].DescripcionErrorRegistro:='Factura No Existe';
                        aLineas[j].EstadoRegistro:=EstadoRegistroType(2);
                end
                else
                begin
                      if simulador.FieldByName('estado').Text='BAJA' then
                      begin
                        aLineas[j].CodigoErrorRegistro:='3002';
                        aLineas[j].DescripcionErrorRegistro:='Factura Ya Eliminada CSV '+simulador.FieldByName('csv').text;
                        aLineas[j].EstadoRegistro:=EstadoRegistroType(2);
                        aLineas[j].EstadoRegistroDuplicado:=EstadoRegistroSFType(2);
                      end
                      else
                      begin
                            simulador.Edit;
                            simulador.fieldbyName('estado').Text:='BAJA';
                            simulador.fieldbyName('csv').Text:=_csv;
                            simulador.post;
                      end;
                end;
            end;

            if aLineas[j].EstadoRegistro=EstadoRegistroType(0) then // correcta
            begin



            end;

      end;
      aRes.RespuestaLinea:=aLineas;
      aRes.CSV:=_csv;
      aRes.EstadoEnvio:=EstadoEnvioType(0);
      aRes.DatosPresentacion:=DatosPresentacionType.create;

      XSDatetime := TXSDatetime.Create;
      XSDatetime.AsDateTime := Now;
      aRes.DatosPresentacion.TimestampPresentacion:=XSDatetime.NativeToXS;

      XSDatetime.Free;

      simulador.SaveToFile(archivo);

      simulador.Free;

      result:=aRes;
end;
*)


procedure ExecuteAndWait(const aCommando: string);
var
  tmpStartupInfo: TStartupInfo;
  tmpProcessInformation: TProcessInformation;
  tmpProgram: String;
begin
  tmpProgram := trim(aCommando);
  FillChar(tmpStartupInfo, SizeOf(tmpStartupInfo), 0);
  with tmpStartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    wShowWindow := SW_HIDE;
  end;

  if CreateProcess(nil, pchar(tmpProgram), nil, nil, true, CREATE_NO_WINDOW,
    nil, nil, tmpStartupInfo, tmpProcessInformation) then
  begin
    // loop every 10 ms
    while WaitForSingleObject(tmpProcessInformation.hProcess, 10) > 0 do
    begin
      Application.ProcessMessages;
    end;
    CloseHandle(tmpProcessInformation.hProcess);
    CloseHandle(tmpProcessInformation.hThread);
  end
  else
  begin
    RaiseLastOSError;
  end;
end;

function autoFirmaPath:string;
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  with Reg do
  begin
    RootKey := HKEY_CLASSES_ROOT;
    if OpenKey('\afirma\shell\open\command',false) then
    begin
      if ValueExists('') then
        Result := Readstring('')
      else
        ShowMessage('error');
    end
    else
      ShowMessage('Error 2');
    CloseKey;
  end;
end;


end.

