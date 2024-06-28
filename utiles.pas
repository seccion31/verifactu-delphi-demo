unit utiles;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  system.Hash,
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
  SistemaFacturacionSOAPv12,
  Vcl.StdCtrls,
  Vcl.Grids,
  Data.DB,
  DBClient;

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
        numSerieFactura:string;
        fechaFactura:string;

        DescripcionOperacion:string;

        cliente,clienteNIF,clientetipoNIF,clienteCodPais:string;

        desglose:array of TRegistroFacturaIVAS;

        cuotatotal,total:currency;

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
function  TipoFacturaVerifactuToString( TipoFactura : ClaveTipoFacturaType ) : String; var Resultado : String;
procedure sistemaInformatico(var Factura: RegistroFacturaType);

// certificados atraves de capicom.dll
function  Certificados(aList:TStringList):integer;
function  BUSCAR_CERTIFICADO_SERIAL(Nombre_Certificado: String): string;
function  BUSCAR_CERTIFICADO_SERIAL_EXT(Nombre_Certificado:string; VAR serial, isuer, name: String): string;

// simulador de envios
function simular_envio( averifactu: RegFactuSistemaFacturacion ):RespuestaBaseType;

// otros
function  value(n:string):currency;
procedure resetStringGrid(const Grid: TStringGrid);

var
    SistemaInformatico_razonSocial:string;
    SistemaInformatico_nif:string;
    SistemaInformatico_Nombre:string;
    SistemaInformatico_ID:string;
    SistemaInformatico_Version:string;
    SistemaInformatico_NumeroInstalacion:string;

implementation


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


function codigoPais(paisCode:string):CountryType2;
var
  I:countryType2;
begin
      result:=CountryType2(12);   // por defecto espa�a

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
          result:=PersonaFisicaJuridicaIDTypeType._04;  // 04	Documento oficial de identificaci�n expedido por el pa�s o territorio de residencia

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
       Result := THashSHA2.GetHashString(CadenaVerifactu,THashSHA2.TSHA2Version.SHA256);
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

        Factura.RegistroAlta.SistemaInformatico.IDOtro            := IDOtroType.Create;
        Factura.RegistroAlta.SistemaInformatico.IDOtro.CodigoPais := CountryType2.ES;
        Factura.RegistroAlta.SistemaInformatico.IDOtro.IDType     := PersonaFisicaJuridicaIDTypeType._02;
        Factura.RegistroAlta.SistemaInformatico.IDOtro.ID         := '';


        Factura.RegistroAlta.SistemaInformatico.NombreSistemaInformatico    := SistemaInformatico_Nombre;
        Factura.RegistroAlta.SistemaInformatico.IdSistemaInformatico        := SistemaInformatico_ID;
        Factura.RegistroAlta.SistemaInformatico.Version                     := SistemaInformatico_Version;
        Factura.RegistroAlta.SistemaInformatico.NumeroInstalacion           := SistemaInformatico_NumeroInstalacion;
        Factura.RegistroAlta.SistemaInformatico.TipoUsoPosibleSoloVerifactu := SiNoType.S;
        Factura.RegistroAlta.SistemaInformatico.TipoUsoPosibleMultiOT       := SiNoType.N;
        Factura.RegistroAlta.SistemaInformatico.NumeroOTAlta                := '1';
    end
    else
    begin
        Factura.RegistroAnulacion.SistemaInformatico             := SistemaInformaticoType.Create;
        Factura.RegistroAnulacion.SistemaInformatico.NombreRazon := SistemaInformatico_razonSocial;
        Factura.RegistroAnulacion.SistemaInformatico.NIF         := SistemaInformatico_nif;

        Factura.RegistroAnulacion.SistemaInformatico.IDOtro            := IDOtroType.Create;
        Factura.RegistroAnulacion.SistemaInformatico.IDOtro.CodigoPais := CountryType2.ES;
        Factura.RegistroAnulacion.SistemaInformatico.IDOtro.IDType     := PersonaFisicaJuridicaIDTypeType._02;
        Factura.RegistroAnulacion.SistemaInformatico.IDOtro.ID         := '';


        Factura.RegistroAnulacion.SistemaInformatico.NombreSistemaInformatico    := SistemaInformatico_Nombre;
        Factura.RegistroAnulacion.SistemaInformatico.IdSistemaInformatico        := SistemaInformatico_ID;
        Factura.RegistroAnulacion.SistemaInformatico.Version                     := SistemaInformatico_Version;
        Factura.RegistroAnulacion.SistemaInformatico.NumeroInstalacion           := SistemaInformatico_NumeroInstalacion;
        Factura.RegistroAnulacion.SistemaInformatico.TipoUsoPosibleSoloVerifactu := SiNoType.S;
        Factura.RegistroAnulacion.SistemaInformatico.TipoUsoPosibleMultiOT       := SiNoType.N;
        Factura.RegistroAnulacion.SistemaInformatico.NumeroOTAlta                := '1';
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

end.
