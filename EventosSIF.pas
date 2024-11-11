
{**************************************************************}
{                                                              }
{                       XML Data Binding                       }
{                                                              }
{         Generated on: 27/09/2024 11:45:59                    }
{       Generated from: D:\VeriFactu\Esquemas\EventosSIF.xsd   }
{   Settings stored in: D:\VeriFactu\Esquemas\EventosSIF.xdb   }
{                                                              }
{**************************************************************}

unit EventosSIF;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLRegistroEvento = interface;
  IXMLEventoType = interface;
  IXMLSistemaInformaticoType = interface;
  IXMLIDOtroType = interface;
  IXMLPersonaFisicaJuridicaESType = interface;
  IXMLPersonaFisicaJuridicaType = interface;
  IXMLDatosPropiosEventoType = interface;
  IXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType = interface;
  IXMLDeteccionAnomaliasRegFacturacionType = interface;
  IXMLIDFacturaExpedidaType = interface;
  IXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType = interface;
  IXMLDeteccionAnomaliasRegEventoType = interface;
  IXMLRegEventoType = interface;
  IXMLExportacionRegFacturacionPeriodoType = interface;
  IXMLIDFacturaExpedidaHuellaType = interface;
  IXMLExportacionRegEventoPeriodoType = interface;
  IXMLResumenEventosType = interface;
  IXMLTipoEventoAgrType = interface;
  IXMLTipoEventoAgrTypeList = interface;
  IXMLEncadenamientoType = interface;
  IXMLRegEventoAntType = interface;
  IXMLSignatureType_ds = interface;
  IXMLSignedInfoType_ds = interface;
  IXMLCanonicalizationMethodType_ds = interface;
  IXMLSignatureMethodType_ds = interface;
  IXMLReferenceType_ds = interface;
  IXMLReferenceType_dsList = interface;
  IXMLTransformsType_ds = interface;
  IXMLTransformType_ds = interface;
  IXMLDigestMethodType_ds = interface;
  IXMLSignatureValueType_ds = interface;
  IXMLKeyInfoType_ds = interface;
  IXMLKeyValueType_ds = interface;
  IXMLKeyValueType_dsList = interface;
  IXMLDSAKeyValueType_ds = interface;
  IXMLRSAKeyValueType_ds = interface;
  IXMLRetrievalMethodType_ds = interface;
  IXMLRetrievalMethodType_dsList = interface;
  IXMLX509DataType_ds = interface;
  IXMLX509DataType_dsList = interface;
  IXMLX509IssuerSerialType_ds = interface;
  IXMLX509IssuerSerialType_dsList = interface;
  IXMLPGPDataType_ds = interface;
  IXMLPGPDataType_dsList = interface;
  IXMLSPKIDataType_ds = interface;
  IXMLSPKIDataType_dsList = interface;
  IXMLObjectType_ds = interface;
  IXMLObjectType_dsList = interface;
  IXMLString_List = interface;
  IXMLBase64BinaryList = interface;

{ IXMLRegistroEvento }

  IXMLRegistroEvento = interface(IXMLNode)
    ['{7B2A3160-B498-4CD3-BD61-D9FFBDB80BF0}']
    { Property Accessors }
    function Get_IDVersion: UnicodeString;
    function Get_Evento: IXMLEventoType;
    procedure Set_IDVersion(Value: UnicodeString);
    { Methods & Properties }
    property IDVersion: UnicodeString read Get_IDVersion write Set_IDVersion;
    property Evento: IXMLEventoType read Get_Evento;
  end;

{ IXMLEventoType }

  IXMLEventoType = interface(IXMLNode)
    ['{8FAC8D01-12BC-494F-B973-29483C79D54E}']
    { Property Accessors }
    function Get_SistemaInformatico: IXMLSistemaInformaticoType;
    function Get_ObligadoEmision: IXMLPersonaFisicaJuridicaESType;
    function Get_EmitidaPorTerceroODestinatario: UnicodeString;
    function Get_TerceroODestinatario: IXMLPersonaFisicaJuridicaType;
    function Get_FechaHoraHusoGenEvento: UnicodeString;
    function Get_TipoEvento: UnicodeString;
    function Get_DatosPropiosEvento: IXMLDatosPropiosEventoType;
    function Get_OtrosDatosEvento: UnicodeString;
    function Get_Encadenamiento: IXMLEncadenamientoType;
    function Get_TipoHuella: UnicodeString;
    function Get_HuellaEvento: UnicodeString;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_EmitidaPorTerceroODestinatario(Value: UnicodeString);
    procedure Set_FechaHoraHusoGenEvento(Value: UnicodeString);
    procedure Set_TipoEvento(Value: UnicodeString);
    procedure Set_OtrosDatosEvento(Value: UnicodeString);
    procedure Set_TipoHuella(Value: UnicodeString);
    procedure Set_HuellaEvento(Value: UnicodeString);
    { Methods & Properties }
    property SistemaInformatico: IXMLSistemaInformaticoType read Get_SistemaInformatico;
    property ObligadoEmision: IXMLPersonaFisicaJuridicaESType read Get_ObligadoEmision;
    property EmitidaPorTerceroODestinatario: UnicodeString read Get_EmitidaPorTerceroODestinatario write Set_EmitidaPorTerceroODestinatario;
    property TerceroODestinatario: IXMLPersonaFisicaJuridicaType read Get_TerceroODestinatario;
    property FechaHoraHusoGenEvento: UnicodeString read Get_FechaHoraHusoGenEvento write Set_FechaHoraHusoGenEvento;
    property TipoEvento: UnicodeString read Get_TipoEvento write Set_TipoEvento;
    property DatosPropiosEvento: IXMLDatosPropiosEventoType read Get_DatosPropiosEvento;
    property OtrosDatosEvento: UnicodeString read Get_OtrosDatosEvento write Set_OtrosDatosEvento;
    property Encadenamiento: IXMLEncadenamientoType read Get_Encadenamiento;
    property TipoHuella: UnicodeString read Get_TipoHuella write Set_TipoHuella;
    property HuellaEvento: UnicodeString read Get_HuellaEvento write Set_HuellaEvento;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLSistemaInformaticoType }

  IXMLSistemaInformaticoType = interface(IXMLNode)
    ['{316FED5E-585F-48CA-A59E-49C8D77C2AD9}']
    { Property Accessors }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    function Get_IDOtro: IXMLIDOtroType;
    function Get_NombreSistemaInformatico: UnicodeString;
    function Get_IdSistemaInformatico: UnicodeString;
    function Get_Version: UnicodeString;
    function Get_NumeroInstalacion: UnicodeString;
    function Get_TipoUsoPosibleSoloVerifactu: UnicodeString;
    function Get_TipoUsoPosibleMultiOT: UnicodeString;
    function Get_IndicadorMultiplesOT: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
    procedure Set_NombreSistemaInformatico(Value: UnicodeString);
    procedure Set_IdSistemaInformatico(Value: UnicodeString);
    procedure Set_Version(Value: UnicodeString);
    procedure Set_NumeroInstalacion(Value: UnicodeString);
    procedure Set_TipoUsoPosibleSoloVerifactu(Value: UnicodeString);
    procedure Set_TipoUsoPosibleMultiOT(Value: UnicodeString);
    procedure Set_IndicadorMultiplesOT(Value: UnicodeString);
    { Methods & Properties }
    property NombreRazon: UnicodeString read Get_NombreRazon write Set_NombreRazon;
    property NIF: UnicodeString read Get_NIF write Set_NIF;
    property IDOtro: IXMLIDOtroType read Get_IDOtro;
    property NombreSistemaInformatico: UnicodeString read Get_NombreSistemaInformatico write Set_NombreSistemaInformatico;
    property IdSistemaInformatico: UnicodeString read Get_IdSistemaInformatico write Set_IdSistemaInformatico;
    property Version: UnicodeString read Get_Version write Set_Version;
    property NumeroInstalacion: UnicodeString read Get_NumeroInstalacion write Set_NumeroInstalacion;
    property TipoUsoPosibleSoloVerifactu: UnicodeString read Get_TipoUsoPosibleSoloVerifactu write Set_TipoUsoPosibleSoloVerifactu;
    property TipoUsoPosibleMultiOT: UnicodeString read Get_TipoUsoPosibleMultiOT write Set_TipoUsoPosibleMultiOT;
    property IndicadorMultiplesOT: UnicodeString read Get_IndicadorMultiplesOT write Set_IndicadorMultiplesOT;
  end;

{ IXMLIDOtroType }

  IXMLIDOtroType = interface(IXMLNode)
    ['{9513EBCE-79A4-4EE2-9055-399B402D3DA8}']
    { Property Accessors }
    function Get_CodigoPais: UnicodeString;
    function Get_IDType: UnicodeString;
    function Get_ID: UnicodeString;
    procedure Set_CodigoPais(Value: UnicodeString);
    procedure Set_IDType(Value: UnicodeString);
    procedure Set_ID(Value: UnicodeString);
    { Methods & Properties }
    property CodigoPais: UnicodeString read Get_CodigoPais write Set_CodigoPais;
    property IDType: UnicodeString read Get_IDType write Set_IDType;
    property ID: UnicodeString read Get_ID write Set_ID;
  end;

{ IXMLPersonaFisicaJuridicaESType }

  IXMLPersonaFisicaJuridicaESType = interface(IXMLNode)
    ['{F03141C3-1532-47CE-86C1-15963931571C}']
    { Property Accessors }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
    { Methods & Properties }
    property NombreRazon: UnicodeString read Get_NombreRazon write Set_NombreRazon;
    property NIF: UnicodeString read Get_NIF write Set_NIF;
  end;

{ IXMLPersonaFisicaJuridicaType }

  IXMLPersonaFisicaJuridicaType = interface(IXMLNode)
    ['{34CD9469-B685-4F45-BFAA-092CF58AAABF}']
    { Property Accessors }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    function Get_IDOtro: IXMLIDOtroType;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
    { Methods & Properties }
    property NombreRazon: UnicodeString read Get_NombreRazon write Set_NombreRazon;
    property NIF: UnicodeString read Get_NIF write Set_NIF;
    property IDOtro: IXMLIDOtroType read Get_IDOtro;
  end;

{ IXMLDatosPropiosEventoType }

  IXMLDatosPropiosEventoType = interface(IXMLNode)
    ['{01661B67-2D11-40F2-8D14-D42DE2870049}']
    { Property Accessors }
    function Get_LanzamientoProcesoDeteccionAnomaliasRegFacturacion: IXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType;
    function Get_DeteccionAnomaliasRegFacturacion: IXMLDeteccionAnomaliasRegFacturacionType;
    function Get_LanzamientoProcesoDeteccionAnomaliasRegEvento: IXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType;
    function Get_DeteccionAnomaliasRegEvento: IXMLDeteccionAnomaliasRegEventoType;
    function Get_ExportacionRegFacturacionPeriodo: IXMLExportacionRegFacturacionPeriodoType;
    function Get_ExportacionRegEventoPeriodo: IXMLExportacionRegEventoPeriodoType;
    function Get_ResumenEventos: IXMLResumenEventosType;
    { Methods & Properties }
    property LanzamientoProcesoDeteccionAnomaliasRegFacturacion: IXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType read Get_LanzamientoProcesoDeteccionAnomaliasRegFacturacion;
    property DeteccionAnomaliasRegFacturacion: IXMLDeteccionAnomaliasRegFacturacionType read Get_DeteccionAnomaliasRegFacturacion;
    property LanzamientoProcesoDeteccionAnomaliasRegEvento: IXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType read Get_LanzamientoProcesoDeteccionAnomaliasRegEvento;
    property DeteccionAnomaliasRegEvento: IXMLDeteccionAnomaliasRegEventoType read Get_DeteccionAnomaliasRegEvento;
    property ExportacionRegFacturacionPeriodo: IXMLExportacionRegFacturacionPeriodoType read Get_ExportacionRegFacturacionPeriodo;
    property ExportacionRegEventoPeriodo: IXMLExportacionRegEventoPeriodoType read Get_ExportacionRegEventoPeriodo;
    property ResumenEventos: IXMLResumenEventosType read Get_ResumenEventos;
  end;

{ IXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType }

  IXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType = interface(IXMLNode)
    ['{FD07F235-BDDC-49F5-BA50-5393220862B5}']
    { Property Accessors }
    function Get_RealizadoProcesoSobreIntegridadHuellasRegFacturacion: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas: UnicodeString;
    function Get_RealizadoProcesoSobreIntegridadFirmasRegFacturacion: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas: UnicodeString;
    function Get_RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena: UnicodeString;
    function Get_RealizadoProcesoSobreTrazabilidadFechasRegFacturacion: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas: UnicodeString;
    procedure Set_RealizadoProcesoSobreIntegridadHuellasRegFacturacion(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreIntegridadFirmasRegFacturacion(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreTrazabilidadFechasRegFacturacion(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas(Value: UnicodeString);
    { Methods & Properties }
    property RealizadoProcesoSobreIntegridadHuellasRegFacturacion: UnicodeString read Get_RealizadoProcesoSobreIntegridadHuellasRegFacturacion write Set_RealizadoProcesoSobreIntegridadHuellasRegFacturacion;
    property NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas: UnicodeString read Get_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas write Set_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas;
    property RealizadoProcesoSobreIntegridadFirmasRegFacturacion: UnicodeString read Get_RealizadoProcesoSobreIntegridadFirmasRegFacturacion write Set_RealizadoProcesoSobreIntegridadFirmasRegFacturacion;
    property NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas: UnicodeString read Get_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas write Set_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas;
    property RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion: UnicodeString read Get_RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion write Set_RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion;
    property NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena: UnicodeString read Get_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena write Set_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena;
    property RealizadoProcesoSobreTrazabilidadFechasRegFacturacion: UnicodeString read Get_RealizadoProcesoSobreTrazabilidadFechasRegFacturacion write Set_RealizadoProcesoSobreTrazabilidadFechasRegFacturacion;
    property NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas: UnicodeString read Get_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas write Set_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas;
  end;

{ IXMLDeteccionAnomaliasRegFacturacionType }

  IXMLDeteccionAnomaliasRegFacturacionType = interface(IXMLNode)
    ['{DF3586A2-8EF2-4C64-BF55-893F7494EBEF}']
    { Property Accessors }
    function Get_TipoAnomalia: UnicodeString;
    function Get_OtrosDatosAnomalia: UnicodeString;
    function Get_RegistroFacturacionAnomalo: IXMLIDFacturaExpedidaType;
    procedure Set_TipoAnomalia(Value: UnicodeString);
    procedure Set_OtrosDatosAnomalia(Value: UnicodeString);
    { Methods & Properties }
    property TipoAnomalia: UnicodeString read Get_TipoAnomalia write Set_TipoAnomalia;
    property OtrosDatosAnomalia: UnicodeString read Get_OtrosDatosAnomalia write Set_OtrosDatosAnomalia;
    property RegistroFacturacionAnomalo: IXMLIDFacturaExpedidaType read Get_RegistroFacturacionAnomalo;
  end;

{ IXMLIDFacturaExpedidaType }

  IXMLIDFacturaExpedidaType = interface(IXMLNode)
    ['{3D5F9000-9A58-47DB-89B2-B44F23AA9763}']
    { Property Accessors }
    function Get_IDEmisorFactura: UnicodeString;
    function Get_NumSerieFactura: UnicodeString;
    function Get_FechaExpedicionFactura: UnicodeString;
    procedure Set_IDEmisorFactura(Value: UnicodeString);
    procedure Set_NumSerieFactura(Value: UnicodeString);
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
    { Methods & Properties }
    property IDEmisorFactura: UnicodeString read Get_IDEmisorFactura write Set_IDEmisorFactura;
    property NumSerieFactura: UnicodeString read Get_NumSerieFactura write Set_NumSerieFactura;
    property FechaExpedicionFactura: UnicodeString read Get_FechaExpedicionFactura write Set_FechaExpedicionFactura;
  end;

{ IXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType }

  IXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType = interface(IXMLNode)
    ['{3AD83646-AC1B-41C6-8F2F-B208B2A2B084}']
    { Property Accessors }
    function Get_RealizadoProcesoSobreIntegridadHuellasRegEvento: UnicodeString;
    function Get_NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas: UnicodeString;
    function Get_RealizadoProcesoSobreIntegridadFirmasRegEvento: UnicodeString;
    function Get_NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas: UnicodeString;
    function Get_RealizadoProcesoSobreTrazabilidadCadenaRegEvento: UnicodeString;
    function Get_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena: UnicodeString;
    function Get_RealizadoProcesoSobreTrazabilidadFechasRegEvento: UnicodeString;
    function Get_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas: UnicodeString;
    procedure Set_RealizadoProcesoSobreIntegridadHuellasRegEvento(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreIntegridadFirmasRegEvento(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreTrazabilidadCadenaRegEvento(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreTrazabilidadFechasRegEvento(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas(Value: UnicodeString);
    { Methods & Properties }
    property RealizadoProcesoSobreIntegridadHuellasRegEvento: UnicodeString read Get_RealizadoProcesoSobreIntegridadHuellasRegEvento write Set_RealizadoProcesoSobreIntegridadHuellasRegEvento;
    property NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas: UnicodeString read Get_NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas write Set_NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas;
    property RealizadoProcesoSobreIntegridadFirmasRegEvento: UnicodeString read Get_RealizadoProcesoSobreIntegridadFirmasRegEvento write Set_RealizadoProcesoSobreIntegridadFirmasRegEvento;
    property NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas: UnicodeString read Get_NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas write Set_NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas;
    property RealizadoProcesoSobreTrazabilidadCadenaRegEvento: UnicodeString read Get_RealizadoProcesoSobreTrazabilidadCadenaRegEvento write Set_RealizadoProcesoSobreTrazabilidadCadenaRegEvento;
    property NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena: UnicodeString read Get_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena write Set_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena;
    property RealizadoProcesoSobreTrazabilidadFechasRegEvento: UnicodeString read Get_RealizadoProcesoSobreTrazabilidadFechasRegEvento write Set_RealizadoProcesoSobreTrazabilidadFechasRegEvento;
    property NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas: UnicodeString read Get_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas write Set_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas;
  end;

{ IXMLDeteccionAnomaliasRegEventoType }

  IXMLDeteccionAnomaliasRegEventoType = interface(IXMLNode)
    ['{1A80E431-3521-4DAD-BC94-4B3C9E7B1948}']
    { Property Accessors }
    function Get_TipoAnomalia: UnicodeString;
    function Get_OtrosDatosAnomalia: UnicodeString;
    function Get_RegEventoAnomalo: IXMLRegEventoType;
    procedure Set_TipoAnomalia(Value: UnicodeString);
    procedure Set_OtrosDatosAnomalia(Value: UnicodeString);
    { Methods & Properties }
    property TipoAnomalia: UnicodeString read Get_TipoAnomalia write Set_TipoAnomalia;
    property OtrosDatosAnomalia: UnicodeString read Get_OtrosDatosAnomalia write Set_OtrosDatosAnomalia;
    property RegEventoAnomalo: IXMLRegEventoType read Get_RegEventoAnomalo;
  end;

{ IXMLRegEventoType }

  IXMLRegEventoType = interface(IXMLNode)
    ['{478E1FFF-7B91-447B-A3EB-BC56B9DB3D6E}']
    { Property Accessors }
    function Get_TipoEvento: UnicodeString;
    function Get_FechaHoraHusoEvento: UnicodeString;
    function Get_HuellaEvento: UnicodeString;
    procedure Set_TipoEvento(Value: UnicodeString);
    procedure Set_FechaHoraHusoEvento(Value: UnicodeString);
    procedure Set_HuellaEvento(Value: UnicodeString);
    { Methods & Properties }
    property TipoEvento: UnicodeString read Get_TipoEvento write Set_TipoEvento;
    property FechaHoraHusoEvento: UnicodeString read Get_FechaHoraHusoEvento write Set_FechaHoraHusoEvento;
    property HuellaEvento: UnicodeString read Get_HuellaEvento write Set_HuellaEvento;
  end;

{ IXMLExportacionRegFacturacionPeriodoType }

  IXMLExportacionRegFacturacionPeriodoType = interface(IXMLNode)
    ['{DFCE0E22-910A-4FDF-B483-FD17D6DE35A6}']
    { Property Accessors }
    function Get_FechaHoraHusoInicioPeriodoExport: UnicodeString;
    function Get_FechaHoraHusoFinPeriodoExport: UnicodeString;
    function Get_RegistroFacturacionInicialPeriodo: IXMLIDFacturaExpedidaHuellaType;
    function Get_RegistroFacturacionFinalPeriodo: IXMLIDFacturaExpedidaHuellaType;
    function Get_NumeroDeRegistrosFacturacionAltaExportados: UnicodeString;
    function Get_SumaCuotaTotalAlta: UnicodeString;
    function Get_SumaImporteTotalAlta: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionAnulacionExportados: UnicodeString;
    function Get_RegistrosFacturacionExportadosDejanDeConservarse: UnicodeString;
    procedure Set_FechaHoraHusoInicioPeriodoExport(Value: UnicodeString);
    procedure Set_FechaHoraHusoFinPeriodoExport(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionAltaExportados(Value: UnicodeString);
    procedure Set_SumaCuotaTotalAlta(Value: UnicodeString);
    procedure Set_SumaImporteTotalAlta(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionAnulacionExportados(Value: UnicodeString);
    procedure Set_RegistrosFacturacionExportadosDejanDeConservarse(Value: UnicodeString);
    { Methods & Properties }
    property FechaHoraHusoInicioPeriodoExport: UnicodeString read Get_FechaHoraHusoInicioPeriodoExport write Set_FechaHoraHusoInicioPeriodoExport;
    property FechaHoraHusoFinPeriodoExport: UnicodeString read Get_FechaHoraHusoFinPeriodoExport write Set_FechaHoraHusoFinPeriodoExport;
    property RegistroFacturacionInicialPeriodo: IXMLIDFacturaExpedidaHuellaType read Get_RegistroFacturacionInicialPeriodo;
    property RegistroFacturacionFinalPeriodo: IXMLIDFacturaExpedidaHuellaType read Get_RegistroFacturacionFinalPeriodo;
    property NumeroDeRegistrosFacturacionAltaExportados: UnicodeString read Get_NumeroDeRegistrosFacturacionAltaExportados write Set_NumeroDeRegistrosFacturacionAltaExportados;
    property SumaCuotaTotalAlta: UnicodeString read Get_SumaCuotaTotalAlta write Set_SumaCuotaTotalAlta;
    property SumaImporteTotalAlta: UnicodeString read Get_SumaImporteTotalAlta write Set_SumaImporteTotalAlta;
    property NumeroDeRegistrosFacturacionAnulacionExportados: UnicodeString read Get_NumeroDeRegistrosFacturacionAnulacionExportados write Set_NumeroDeRegistrosFacturacionAnulacionExportados;
    property RegistrosFacturacionExportadosDejanDeConservarse: UnicodeString read Get_RegistrosFacturacionExportadosDejanDeConservarse write Set_RegistrosFacturacionExportadosDejanDeConservarse;
  end;

{ IXMLIDFacturaExpedidaHuellaType }

  IXMLIDFacturaExpedidaHuellaType = interface(IXMLNode)
    ['{F6EC5073-4CE4-4D45-8103-089350BC330C}']
    { Property Accessors }
    function Get_IDEmisorFactura: UnicodeString;
    function Get_NumSerieFactura: UnicodeString;
    function Get_FechaExpedicionFactura: UnicodeString;
    function Get_Huella: UnicodeString;
    procedure Set_IDEmisorFactura(Value: UnicodeString);
    procedure Set_NumSerieFactura(Value: UnicodeString);
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
    procedure Set_Huella(Value: UnicodeString);
    { Methods & Properties }
    property IDEmisorFactura: UnicodeString read Get_IDEmisorFactura write Set_IDEmisorFactura;
    property NumSerieFactura: UnicodeString read Get_NumSerieFactura write Set_NumSerieFactura;
    property FechaExpedicionFactura: UnicodeString read Get_FechaExpedicionFactura write Set_FechaExpedicionFactura;
    property Huella: UnicodeString read Get_Huella write Set_Huella;
  end;

{ IXMLExportacionRegEventoPeriodoType }

  IXMLExportacionRegEventoPeriodoType = interface(IXMLNode)
    ['{C392363B-BF31-40BA-9779-3B86A3B122FD}']
    { Property Accessors }
    function Get_FechaHoraHusoInicioPeriodoExport: UnicodeString;
    function Get_FechaHoraHusoFinPeriodoExport: UnicodeString;
    function Get_RegistroEventoInicialPeriodo: IXMLRegEventoType;
    function Get_RegistroEventoFinalPeriodo: IXMLRegEventoType;
    function Get_NumeroDeRegEventoExportados: UnicodeString;
    function Get_RegEventoExportadosDejanDeConservarse: UnicodeString;
    procedure Set_FechaHoraHusoInicioPeriodoExport(Value: UnicodeString);
    procedure Set_FechaHoraHusoFinPeriodoExport(Value: UnicodeString);
    procedure Set_NumeroDeRegEventoExportados(Value: UnicodeString);
    procedure Set_RegEventoExportadosDejanDeConservarse(Value: UnicodeString);
    { Methods & Properties }
    property FechaHoraHusoInicioPeriodoExport: UnicodeString read Get_FechaHoraHusoInicioPeriodoExport write Set_FechaHoraHusoInicioPeriodoExport;
    property FechaHoraHusoFinPeriodoExport: UnicodeString read Get_FechaHoraHusoFinPeriodoExport write Set_FechaHoraHusoFinPeriodoExport;
    property RegistroEventoInicialPeriodo: IXMLRegEventoType read Get_RegistroEventoInicialPeriodo;
    property RegistroEventoFinalPeriodo: IXMLRegEventoType read Get_RegistroEventoFinalPeriodo;
    property NumeroDeRegEventoExportados: UnicodeString read Get_NumeroDeRegEventoExportados write Set_NumeroDeRegEventoExportados;
    property RegEventoExportadosDejanDeConservarse: UnicodeString read Get_RegEventoExportadosDejanDeConservarse write Set_RegEventoExportadosDejanDeConservarse;
  end;

{ IXMLResumenEventosType }

  IXMLResumenEventosType = interface(IXMLNode)
    ['{72289AD9-E497-4A67-8463-7C80D8689F04}']
    { Property Accessors }
    function Get_TipoEvento: IXMLTipoEventoAgrTypeList;
    function Get_RegistroFacturacionInicialPeriodo: IXMLIDFacturaExpedidaHuellaType;
    function Get_RegistroFacturacionFinalPeriodo: IXMLIDFacturaExpedidaHuellaType;
    function Get_NumeroDeRegistrosFacturacionAltaGenerados: UnicodeString;
    function Get_SumaCuotaTotalAlta: UnicodeString;
    function Get_SumaImporteTotalAlta: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionAnulacionGenerados: UnicodeString;
    procedure Set_NumeroDeRegistrosFacturacionAltaGenerados(Value: UnicodeString);
    procedure Set_SumaCuotaTotalAlta(Value: UnicodeString);
    procedure Set_SumaImporteTotalAlta(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionAnulacionGenerados(Value: UnicodeString);
    { Methods & Properties }
    property TipoEvento: IXMLTipoEventoAgrTypeList read Get_TipoEvento;
    property RegistroFacturacionInicialPeriodo: IXMLIDFacturaExpedidaHuellaType read Get_RegistroFacturacionInicialPeriodo;
    property RegistroFacturacionFinalPeriodo: IXMLIDFacturaExpedidaHuellaType read Get_RegistroFacturacionFinalPeriodo;
    property NumeroDeRegistrosFacturacionAltaGenerados: UnicodeString read Get_NumeroDeRegistrosFacturacionAltaGenerados write Set_NumeroDeRegistrosFacturacionAltaGenerados;
    property SumaCuotaTotalAlta: UnicodeString read Get_SumaCuotaTotalAlta write Set_SumaCuotaTotalAlta;
    property SumaImporteTotalAlta: UnicodeString read Get_SumaImporteTotalAlta write Set_SumaImporteTotalAlta;
    property NumeroDeRegistrosFacturacionAnulacionGenerados: UnicodeString read Get_NumeroDeRegistrosFacturacionAnulacionGenerados write Set_NumeroDeRegistrosFacturacionAnulacionGenerados;
  end;

{ IXMLTipoEventoAgrType }

  IXMLTipoEventoAgrType = interface(IXMLNode)
    ['{74C0E59B-31EE-44A1-9BE0-155D1FCA9486}']
    { Property Accessors }
    function Get_TipoEvento: UnicodeString;
    function Get_NumeroDeEventos: UnicodeString;
    procedure Set_TipoEvento(Value: UnicodeString);
    procedure Set_NumeroDeEventos(Value: UnicodeString);
    { Methods & Properties }
    property TipoEvento: UnicodeString read Get_TipoEvento write Set_TipoEvento;
    property NumeroDeEventos: UnicodeString read Get_NumeroDeEventos write Set_NumeroDeEventos;
  end;

{ IXMLTipoEventoAgrTypeList }

  IXMLTipoEventoAgrTypeList = interface(IXMLNodeCollection)
    ['{75830B08-D492-4AFA-9CD6-737C6E9C65DD}']
    { Methods & Properties }
    function Add: IXMLTipoEventoAgrType;
    function Insert(const Index: Integer): IXMLTipoEventoAgrType;

    function Get_Item(Index: Integer): IXMLTipoEventoAgrType;
    property Items[Index: Integer]: IXMLTipoEventoAgrType read Get_Item; default;
  end;

{ IXMLEncadenamientoType }

  IXMLEncadenamientoType = interface(IXMLNode)
    ['{E78A4E9E-6C27-441C-8C32-CFF1735A699C}']
    { Property Accessors }
    function Get_PrimerEvento: UnicodeString;
    function Get_EventoAnterior: IXMLRegEventoAntType;
    procedure Set_PrimerEvento(Value: UnicodeString);
    { Methods & Properties }
    property PrimerEvento: UnicodeString read Get_PrimerEvento write Set_PrimerEvento;
    property EventoAnterior: IXMLRegEventoAntType read Get_EventoAnterior;
  end;

{ IXMLRegEventoAntType }

  IXMLRegEventoAntType = interface(IXMLNode)
    ['{7F156018-A856-4F2D-AF58-3C4C96DE2363}']
    { Property Accessors }
    function Get_TipoEvento: UnicodeString;
    function Get_FechaHoraHusoGenEvento: UnicodeString;
    function Get_HuellaEvento: UnicodeString;
    procedure Set_TipoEvento(Value: UnicodeString);
    procedure Set_FechaHoraHusoGenEvento(Value: UnicodeString);
    procedure Set_HuellaEvento(Value: UnicodeString);
    { Methods & Properties }
    property TipoEvento: UnicodeString read Get_TipoEvento write Set_TipoEvento;
    property FechaHoraHusoGenEvento: UnicodeString read Get_FechaHoraHusoGenEvento write Set_FechaHoraHusoGenEvento;
    property HuellaEvento: UnicodeString read Get_HuellaEvento write Set_HuellaEvento;
  end;

{ IXMLSignatureType_ds }

  IXMLSignatureType_ds = interface(IXMLNode)
    ['{83A4D167-5EBE-46D8-A189-8D8DBE223E76}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_SignedInfo: IXMLSignedInfoType_ds;
    function Get_SignatureValue: IXMLSignatureValueType_ds;
    function Get_KeyInfo: IXMLKeyInfoType_ds;
    function Get_Object_: IXMLObjectType_dsList;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property SignedInfo: IXMLSignedInfoType_ds read Get_SignedInfo;
    property SignatureValue: IXMLSignatureValueType_ds read Get_SignatureValue;
    property KeyInfo: IXMLKeyInfoType_ds read Get_KeyInfo;
    property Object_: IXMLObjectType_dsList read Get_Object_;
  end;

{ IXMLSignedInfoType_ds }

  IXMLSignedInfoType_ds = interface(IXMLNode)
    ['{CEB8B9CA-2C0F-4133-9700-A655D522B26A}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_CanonicalizationMethod: IXMLCanonicalizationMethodType_ds;
    function Get_SignatureMethod: IXMLSignatureMethodType_ds;
    function Get_Reference: IXMLReferenceType_dsList;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property CanonicalizationMethod: IXMLCanonicalizationMethodType_ds read Get_CanonicalizationMethod;
    property SignatureMethod: IXMLSignatureMethodType_ds read Get_SignatureMethod;
    property Reference: IXMLReferenceType_dsList read Get_Reference;
  end;

{ IXMLCanonicalizationMethodType_ds }

  IXMLCanonicalizationMethodType_ds = interface(IXMLNode)
    ['{F683E011-0F85-4C31-8F9C-43EBCBB6D23A}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureMethodType_ds }

  IXMLSignatureMethodType_ds = interface(IXMLNode)
    ['{F0AD9C01-FD3B-4AF7-BE9A-A76669FF145E}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    function Get_HMACOutputLength: Integer;
    procedure Set_Algorithm(Value: UnicodeString);
    procedure Set_HMACOutputLength(Value: Integer);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
    property HMACOutputLength: Integer read Get_HMACOutputLength write Set_HMACOutputLength;
  end;

{ IXMLReferenceType_ds }

  IXMLReferenceType_ds = interface(IXMLNode)
    ['{2F9F63FA-1800-4A00-8426-459B57981708}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_URI: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Transforms: IXMLTransformsType_ds;
    function Get_DigestMethod: IXMLDigestMethodType_ds;
    function Get_DigestValue: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_URI(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    procedure Set_DigestValue(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property URI: UnicodeString read Get_URI write Set_URI;
    property Type_: UnicodeString read Get_Type_ write Set_Type_;
    property Transforms: IXMLTransformsType_ds read Get_Transforms;
    property DigestMethod: IXMLDigestMethodType_ds read Get_DigestMethod;
    property DigestValue: UnicodeString read Get_DigestValue write Set_DigestValue;
  end;

{ IXMLReferenceType_dsList }

  IXMLReferenceType_dsList = interface(IXMLNodeCollection)
    ['{03E83F9E-0239-45BF-97FE-7A351A465DB4}']
    { Methods & Properties }
    function Add: IXMLReferenceType_ds;
    function Insert(const Index: Integer): IXMLReferenceType_ds;

    function Get_Item(Index: Integer): IXMLReferenceType_ds;
    property Items[Index: Integer]: IXMLReferenceType_ds read Get_Item; default;
  end;

{ IXMLTransformsType_ds }

  IXMLTransformsType_ds = interface(IXMLNodeCollection)
    ['{46E9DAC4-A31C-4669-8A4A-C9840753A3DF}']
    { Property Accessors }
    function Get_Transform(Index: Integer): IXMLTransformType_ds;
    { Methods & Properties }
    function Add: IXMLTransformType_ds;
    function Insert(const Index: Integer): IXMLTransformType_ds;
    property Transform[Index: Integer]: IXMLTransformType_ds read Get_Transform; default;
  end;

{ IXMLTransformType_ds }

  IXMLTransformType_ds = interface(IXMLNodeCollection)
    ['{F025BDB3-7576-4D89-8310-BBAB92E26106}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    function Get_XPath(Index: Integer): UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    function Add(const XPath: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const XPath: UnicodeString): IXMLNode;
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
    property XPath[Index: Integer]: UnicodeString read Get_XPath; default;
  end;

{ IXMLDigestMethodType_ds }

  IXMLDigestMethodType_ds = interface(IXMLNode)
    ['{B2A9F7A3-1329-490A-935C-7D269BBCC271}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureValueType_ds }

  IXMLSignatureValueType_ds = interface(IXMLNode)
    ['{3823234D-A529-40FB-BB44-53554203F4B5}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLKeyInfoType_ds }

  IXMLKeyInfoType_ds = interface(IXMLNode)
    ['{0068B5D1-E992-4042-B0ED-0863CD32C4B7}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_KeyName: IXMLString_List;
    function Get_KeyValue: IXMLKeyValueType_dsList;
    function Get_RetrievalMethod: IXMLRetrievalMethodType_dsList;
    function Get_X509Data: IXMLX509DataType_dsList;
    function Get_PGPData: IXMLPGPDataType_dsList;
    function Get_SPKIData: IXMLSPKIDataType_dsList;
    function Get_MgmtData: IXMLString_List;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property KeyName: IXMLString_List read Get_KeyName;
    property KeyValue: IXMLKeyValueType_dsList read Get_KeyValue;
    property RetrievalMethod: IXMLRetrievalMethodType_dsList read Get_RetrievalMethod;
    property X509Data: IXMLX509DataType_dsList read Get_X509Data;
    property PGPData: IXMLPGPDataType_dsList read Get_PGPData;
    property SPKIData: IXMLSPKIDataType_dsList read Get_SPKIData;
    property MgmtData: IXMLString_List read Get_MgmtData;
  end;

{ IXMLKeyValueType_ds }

  IXMLKeyValueType_ds = interface(IXMLNode)
    ['{E25D88A7-FE03-49AD-9732-2944F2E71CA5}']
    { Property Accessors }
    function Get_DSAKeyValue: IXMLDSAKeyValueType_ds;
    function Get_RSAKeyValue: IXMLRSAKeyValueType_ds;
    { Methods & Properties }
    property DSAKeyValue: IXMLDSAKeyValueType_ds read Get_DSAKeyValue;
    property RSAKeyValue: IXMLRSAKeyValueType_ds read Get_RSAKeyValue;
  end;

{ IXMLKeyValueType_dsList }

  IXMLKeyValueType_dsList = interface(IXMLNodeCollection)
    ['{988A14E5-4720-4ABA-A8FE-669F2A773CD5}']
    { Methods & Properties }
    function Add: IXMLKeyValueType_ds;
    function Insert(const Index: Integer): IXMLKeyValueType_ds;

    function Get_Item(Index: Integer): IXMLKeyValueType_ds;
    property Items[Index: Integer]: IXMLKeyValueType_ds read Get_Item; default;
  end;

{ IXMLDSAKeyValueType_ds }

  IXMLDSAKeyValueType_ds = interface(IXMLNode)
    ['{0A3368C1-3984-48E0-B7C7-59E5304602A9}']
    { Property Accessors }
    function Get_P: UnicodeString;
    function Get_Q: UnicodeString;
    function Get_G: UnicodeString;
    function Get_Y: UnicodeString;
    function Get_J: UnicodeString;
    function Get_Seed: UnicodeString;
    function Get_PgenCounter: UnicodeString;
    procedure Set_P(Value: UnicodeString);
    procedure Set_Q(Value: UnicodeString);
    procedure Set_G(Value: UnicodeString);
    procedure Set_Y(Value: UnicodeString);
    procedure Set_J(Value: UnicodeString);
    procedure Set_Seed(Value: UnicodeString);
    procedure Set_PgenCounter(Value: UnicodeString);
    { Methods & Properties }
    property P: UnicodeString read Get_P write Set_P;
    property Q: UnicodeString read Get_Q write Set_Q;
    property G: UnicodeString read Get_G write Set_G;
    property Y: UnicodeString read Get_Y write Set_Y;
    property J: UnicodeString read Get_J write Set_J;
    property Seed: UnicodeString read Get_Seed write Set_Seed;
    property PgenCounter: UnicodeString read Get_PgenCounter write Set_PgenCounter;
  end;

{ IXMLRSAKeyValueType_ds }

  IXMLRSAKeyValueType_ds = interface(IXMLNode)
    ['{F23BB34B-4CF0-4497-A4EA-370EEB938543}']
    { Property Accessors }
    function Get_Modulus: UnicodeString;
    function Get_Exponent: UnicodeString;
    procedure Set_Modulus(Value: UnicodeString);
    procedure Set_Exponent(Value: UnicodeString);
    { Methods & Properties }
    property Modulus: UnicodeString read Get_Modulus write Set_Modulus;
    property Exponent: UnicodeString read Get_Exponent write Set_Exponent;
  end;

{ IXMLRetrievalMethodType_ds }

  IXMLRetrievalMethodType_ds = interface(IXMLNode)
    ['{4F2F2B54-5027-4B69-A575-B53E144B5DC8}']
    { Property Accessors }
    function Get_URI: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Transforms: IXMLTransformsType_ds;
    procedure Set_URI(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    { Methods & Properties }
    property URI: UnicodeString read Get_URI write Set_URI;
    property Type_: UnicodeString read Get_Type_ write Set_Type_;
    property Transforms: IXMLTransformsType_ds read Get_Transforms;
  end;

{ IXMLRetrievalMethodType_dsList }

  IXMLRetrievalMethodType_dsList = interface(IXMLNodeCollection)
    ['{50C2E6CB-8057-49D5-80B4-4362BD7F08CD}']
    { Methods & Properties }
    function Add: IXMLRetrievalMethodType_ds;
    function Insert(const Index: Integer): IXMLRetrievalMethodType_ds;

    function Get_Item(Index: Integer): IXMLRetrievalMethodType_ds;
    property Items[Index: Integer]: IXMLRetrievalMethodType_ds read Get_Item; default;
  end;

{ IXMLX509DataType_ds }

  IXMLX509DataType_ds = interface(IXMLNode)
    ['{9DB29C01-D9B2-454B-8FCB-4A4682356818}']
    { Property Accessors }
    function Get_X509IssuerSerial: IXMLX509IssuerSerialType_dsList;
    function Get_X509SKI: IXMLBase64BinaryList;
    function Get_X509SubjectName: IXMLString_List;
    function Get_X509Certificate: IXMLBase64BinaryList;
    function Get_X509CRL: IXMLBase64BinaryList;
    { Methods & Properties }
    property X509IssuerSerial: IXMLX509IssuerSerialType_dsList read Get_X509IssuerSerial;
    property X509SKI: IXMLBase64BinaryList read Get_X509SKI;
    property X509SubjectName: IXMLString_List read Get_X509SubjectName;
    property X509Certificate: IXMLBase64BinaryList read Get_X509Certificate;
    property X509CRL: IXMLBase64BinaryList read Get_X509CRL;
  end;

{ IXMLX509DataType_dsList }

  IXMLX509DataType_dsList = interface(IXMLNodeCollection)
    ['{8BF33736-03D6-41A4-87BD-B5F6B0FAB84A}']
    { Methods & Properties }
    function Add: IXMLX509DataType_ds;
    function Insert(const Index: Integer): IXMLX509DataType_ds;

    function Get_Item(Index: Integer): IXMLX509DataType_ds;
    property Items[Index: Integer]: IXMLX509DataType_ds read Get_Item; default;
  end;

{ IXMLX509IssuerSerialType_ds }

  IXMLX509IssuerSerialType_ds = interface(IXMLNode)
    ['{E0FD4E81-5E96-49AF-9DF1-343527271588}']
    { Property Accessors }
    function Get_X509IssuerName: UnicodeString;
    function Get_X509SerialNumber: Integer;
    procedure Set_X509IssuerName(Value: UnicodeString);
    procedure Set_X509SerialNumber(Value: Integer);
    { Methods & Properties }
    property X509IssuerName: UnicodeString read Get_X509IssuerName write Set_X509IssuerName;
    property X509SerialNumber: Integer read Get_X509SerialNumber write Set_X509SerialNumber;
  end;

{ IXMLX509IssuerSerialType_dsList }

  IXMLX509IssuerSerialType_dsList = interface(IXMLNodeCollection)
    ['{7B6799C8-526B-409D-988B-1E23E559D18E}']
    { Methods & Properties }
    function Add: IXMLX509IssuerSerialType_ds;
    function Insert(const Index: Integer): IXMLX509IssuerSerialType_ds;

    function Get_Item(Index: Integer): IXMLX509IssuerSerialType_ds;
    property Items[Index: Integer]: IXMLX509IssuerSerialType_ds read Get_Item; default;
  end;

{ IXMLPGPDataType_ds }

  IXMLPGPDataType_ds = interface(IXMLNode)
    ['{B37341A5-F87F-4726-A82D-68BD5590D7DA}']
    { Property Accessors }
    function Get_PGPKeyID: UnicodeString;
    function Get_PGPKeyPacket: UnicodeString;
    procedure Set_PGPKeyID(Value: UnicodeString);
    procedure Set_PGPKeyPacket(Value: UnicodeString);
    { Methods & Properties }
    property PGPKeyID: UnicodeString read Get_PGPKeyID write Set_PGPKeyID;
    property PGPKeyPacket: UnicodeString read Get_PGPKeyPacket write Set_PGPKeyPacket;
  end;

{ IXMLPGPDataType_dsList }

  IXMLPGPDataType_dsList = interface(IXMLNodeCollection)
    ['{46B1F3BE-7198-4F31-B5B5-ACD2E574EC75}']
    { Methods & Properties }
    function Add: IXMLPGPDataType_ds;
    function Insert(const Index: Integer): IXMLPGPDataType_ds;

    function Get_Item(Index: Integer): IXMLPGPDataType_ds;
    property Items[Index: Integer]: IXMLPGPDataType_ds read Get_Item; default;
  end;

{ IXMLSPKIDataType_ds }

  IXMLSPKIDataType_ds = interface(IXMLNodeCollection)
    ['{45359FF2-F9D8-4C80-AA88-59E6B54D6F3D}']
    { Property Accessors }
    function Get_SPKISexp(Index: Integer): UnicodeString;
    { Methods & Properties }
    function Add(const SPKISexp: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const SPKISexp: UnicodeString): IXMLNode;
    property SPKISexp[Index: Integer]: UnicodeString read Get_SPKISexp; default;
  end;

{ IXMLSPKIDataType_dsList }

  IXMLSPKIDataType_dsList = interface(IXMLNodeCollection)
    ['{7F877787-A515-490E-B878-64458896542B}']
    { Methods & Properties }
    function Add: IXMLSPKIDataType_ds;
    function Insert(const Index: Integer): IXMLSPKIDataType_ds;

    function Get_Item(Index: Integer): IXMLSPKIDataType_ds;
    property Items[Index: Integer]: IXMLSPKIDataType_ds read Get_Item; default;
  end;

{ IXMLObjectType_ds }

  IXMLObjectType_ds = interface(IXMLNode)
    ['{489CD8CE-FA9D-4158-ADD0-ED1AE199ECE5}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_MimeType: UnicodeString;
    function Get_Encoding: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_MimeType(Value: UnicodeString);
    procedure Set_Encoding(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property MimeType: UnicodeString read Get_MimeType write Set_MimeType;
    property Encoding: UnicodeString read Get_Encoding write Set_Encoding;
  end;

{ IXMLObjectType_dsList }

  IXMLObjectType_dsList = interface(IXMLNodeCollection)
    ['{3B2F4834-CCC7-4427-B217-A98BD88C157C}']
    { Methods & Properties }
    function Add: IXMLObjectType_ds;
    function Insert(const Index: Integer): IXMLObjectType_ds;

    function Get_Item(Index: Integer): IXMLObjectType_ds;
    property Items[Index: Integer]: IXMLObjectType_ds read Get_Item; default;
  end;

{ IXMLString_List }

  IXMLString_List = interface(IXMLNodeCollection)
    ['{08A45A3F-FED1-44FC-9E91-8F726EB1E4A4}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ IXMLBase64BinaryList }

  IXMLBase64BinaryList = interface(IXMLNodeCollection)
    ['{A56130A0-BDC2-40BA-8752-4F734903D120}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLRegistroEvento = class;
  TXMLEventoType = class;
  TXMLSistemaInformaticoType = class;
  TXMLIDOtroType = class;
  TXMLPersonaFisicaJuridicaESType = class;
  TXMLPersonaFisicaJuridicaType = class;
  TXMLDatosPropiosEventoType = class;
  TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType = class;
  TXMLDeteccionAnomaliasRegFacturacionType = class;
  TXMLIDFacturaExpedidaType = class;
  TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType = class;
  TXMLDeteccionAnomaliasRegEventoType = class;
  TXMLRegEventoType = class;
  TXMLExportacionRegFacturacionPeriodoType = class;
  TXMLIDFacturaExpedidaHuellaType = class;
  TXMLExportacionRegEventoPeriodoType = class;
  TXMLResumenEventosType = class;
  TXMLTipoEventoAgrType = class;
  TXMLTipoEventoAgrTypeList = class;
  TXMLEncadenamientoType = class;
  TXMLRegEventoAntType = class;
  TXMLSignatureType_ds = class;
  TXMLSignedInfoType_ds = class;
  TXMLCanonicalizationMethodType_ds = class;
  TXMLSignatureMethodType_ds = class;
  TXMLReferenceType_ds = class;
  TXMLReferenceType_dsList = class;
  TXMLTransformsType_ds = class;
  TXMLTransformType_ds = class;
  TXMLDigestMethodType_ds = class;
  TXMLSignatureValueType_ds = class;
  TXMLKeyInfoType_ds = class;
  TXMLKeyValueType_ds = class;
  TXMLKeyValueType_dsList = class;
  TXMLDSAKeyValueType_ds = class;
  TXMLRSAKeyValueType_ds = class;
  TXMLRetrievalMethodType_ds = class;
  TXMLRetrievalMethodType_dsList = class;
  TXMLX509DataType_ds = class;
  TXMLX509DataType_dsList = class;
  TXMLX509IssuerSerialType_ds = class;
  TXMLX509IssuerSerialType_dsList = class;
  TXMLPGPDataType_ds = class;
  TXMLPGPDataType_dsList = class;
  TXMLSPKIDataType_ds = class;
  TXMLSPKIDataType_dsList = class;
  TXMLObjectType_ds = class;
  TXMLObjectType_dsList = class;
  TXMLString_List = class;
  TXMLBase64BinaryList = class;

{ TXMLRegistroEvento }

  TXMLRegistroEvento = class(TXMLNode, IXMLRegistroEvento)
  protected
    { IXMLRegistroEvento }
    function Get_IDVersion: UnicodeString;
    function Get_Evento: IXMLEventoType;
    procedure Set_IDVersion(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLEventoType }

  TXMLEventoType = class(TXMLNode, IXMLEventoType)
  protected
    { IXMLEventoType }
    function Get_SistemaInformatico: IXMLSistemaInformaticoType;
    function Get_ObligadoEmision: IXMLPersonaFisicaJuridicaESType;
    function Get_EmitidaPorTerceroODestinatario: UnicodeString;
    function Get_TerceroODestinatario: IXMLPersonaFisicaJuridicaType;
    function Get_FechaHoraHusoGenEvento: UnicodeString;
    function Get_TipoEvento: UnicodeString;
    function Get_DatosPropiosEvento: IXMLDatosPropiosEventoType;
    function Get_OtrosDatosEvento: UnicodeString;
    function Get_Encadenamiento: IXMLEncadenamientoType;
    function Get_TipoHuella: UnicodeString;
    function Get_HuellaEvento: UnicodeString;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_EmitidaPorTerceroODestinatario(Value: UnicodeString);
    procedure Set_FechaHoraHusoGenEvento(Value: UnicodeString);
    procedure Set_TipoEvento(Value: UnicodeString);
    procedure Set_OtrosDatosEvento(Value: UnicodeString);
    procedure Set_TipoHuella(Value: UnicodeString);
    procedure Set_HuellaEvento(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSistemaInformaticoType }

  TXMLSistemaInformaticoType = class(TXMLNode, IXMLSistemaInformaticoType)
  protected
    { IXMLSistemaInformaticoType }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    function Get_IDOtro: IXMLIDOtroType;
    function Get_NombreSistemaInformatico: UnicodeString;
    function Get_IdSistemaInformatico: UnicodeString;
    function Get_Version: UnicodeString;
    function Get_NumeroInstalacion: UnicodeString;
    function Get_TipoUsoPosibleSoloVerifactu: UnicodeString;
    function Get_TipoUsoPosibleMultiOT: UnicodeString;
    function Get_IndicadorMultiplesOT: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
    procedure Set_NombreSistemaInformatico(Value: UnicodeString);
    procedure Set_IdSistemaInformatico(Value: UnicodeString);
    procedure Set_Version(Value: UnicodeString);
    procedure Set_NumeroInstalacion(Value: UnicodeString);
    procedure Set_TipoUsoPosibleSoloVerifactu(Value: UnicodeString);
    procedure Set_TipoUsoPosibleMultiOT(Value: UnicodeString);
    procedure Set_IndicadorMultiplesOT(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIDOtroType }

  TXMLIDOtroType = class(TXMLNode, IXMLIDOtroType)
  protected
    { IXMLIDOtroType }
    function Get_CodigoPais: UnicodeString;
    function Get_IDType: UnicodeString;
    function Get_ID: UnicodeString;
    procedure Set_CodigoPais(Value: UnicodeString);
    procedure Set_IDType(Value: UnicodeString);
    procedure Set_ID(Value: UnicodeString);
  end;

{ TXMLPersonaFisicaJuridicaESType }

  TXMLPersonaFisicaJuridicaESType = class(TXMLNode, IXMLPersonaFisicaJuridicaESType)
  protected
    { IXMLPersonaFisicaJuridicaESType }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
  end;

{ TXMLPersonaFisicaJuridicaType }

  TXMLPersonaFisicaJuridicaType = class(TXMLNode, IXMLPersonaFisicaJuridicaType)
  protected
    { IXMLPersonaFisicaJuridicaType }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    function Get_IDOtro: IXMLIDOtroType;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDatosPropiosEventoType }

  TXMLDatosPropiosEventoType = class(TXMLNode, IXMLDatosPropiosEventoType)
  protected
    { IXMLDatosPropiosEventoType }
    function Get_LanzamientoProcesoDeteccionAnomaliasRegFacturacion: IXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType;
    function Get_DeteccionAnomaliasRegFacturacion: IXMLDeteccionAnomaliasRegFacturacionType;
    function Get_LanzamientoProcesoDeteccionAnomaliasRegEvento: IXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType;
    function Get_DeteccionAnomaliasRegEvento: IXMLDeteccionAnomaliasRegEventoType;
    function Get_ExportacionRegFacturacionPeriodo: IXMLExportacionRegFacturacionPeriodoType;
    function Get_ExportacionRegEventoPeriodo: IXMLExportacionRegEventoPeriodoType;
    function Get_ResumenEventos: IXMLResumenEventosType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType }

  TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType = class(TXMLNode, IXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType)
  protected
    { IXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType }
    function Get_RealizadoProcesoSobreIntegridadHuellasRegFacturacion: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas: UnicodeString;
    function Get_RealizadoProcesoSobreIntegridadFirmasRegFacturacion: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas: UnicodeString;
    function Get_RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena: UnicodeString;
    function Get_RealizadoProcesoSobreTrazabilidadFechasRegFacturacion: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas: UnicodeString;
    procedure Set_RealizadoProcesoSobreIntegridadHuellasRegFacturacion(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreIntegridadFirmasRegFacturacion(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreTrazabilidadFechasRegFacturacion(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas(Value: UnicodeString);
  end;

{ TXMLDeteccionAnomaliasRegFacturacionType }

  TXMLDeteccionAnomaliasRegFacturacionType = class(TXMLNode, IXMLDeteccionAnomaliasRegFacturacionType)
  protected
    { IXMLDeteccionAnomaliasRegFacturacionType }
    function Get_TipoAnomalia: UnicodeString;
    function Get_OtrosDatosAnomalia: UnicodeString;
    function Get_RegistroFacturacionAnomalo: IXMLIDFacturaExpedidaType;
    procedure Set_TipoAnomalia(Value: UnicodeString);
    procedure Set_OtrosDatosAnomalia(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIDFacturaExpedidaType }

  TXMLIDFacturaExpedidaType = class(TXMLNode, IXMLIDFacturaExpedidaType)
  protected
    { IXMLIDFacturaExpedidaType }
    function Get_IDEmisorFactura: UnicodeString;
    function Get_NumSerieFactura: UnicodeString;
    function Get_FechaExpedicionFactura: UnicodeString;
    procedure Set_IDEmisorFactura(Value: UnicodeString);
    procedure Set_NumSerieFactura(Value: UnicodeString);
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
  end;

{ TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType }

  TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType = class(TXMLNode, IXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType)
  protected
    { IXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType }
    function Get_RealizadoProcesoSobreIntegridadHuellasRegEvento: UnicodeString;
    function Get_NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas: UnicodeString;
    function Get_RealizadoProcesoSobreIntegridadFirmasRegEvento: UnicodeString;
    function Get_NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas: UnicodeString;
    function Get_RealizadoProcesoSobreTrazabilidadCadenaRegEvento: UnicodeString;
    function Get_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena: UnicodeString;
    function Get_RealizadoProcesoSobreTrazabilidadFechasRegEvento: UnicodeString;
    function Get_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas: UnicodeString;
    procedure Set_RealizadoProcesoSobreIntegridadHuellasRegEvento(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreIntegridadFirmasRegEvento(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreTrazabilidadCadenaRegEvento(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena(Value: UnicodeString);
    procedure Set_RealizadoProcesoSobreTrazabilidadFechasRegEvento(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas(Value: UnicodeString);
  end;

{ TXMLDeteccionAnomaliasRegEventoType }

  TXMLDeteccionAnomaliasRegEventoType = class(TXMLNode, IXMLDeteccionAnomaliasRegEventoType)
  protected
    { IXMLDeteccionAnomaliasRegEventoType }
    function Get_TipoAnomalia: UnicodeString;
    function Get_OtrosDatosAnomalia: UnicodeString;
    function Get_RegEventoAnomalo: IXMLRegEventoType;
    procedure Set_TipoAnomalia(Value: UnicodeString);
    procedure Set_OtrosDatosAnomalia(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRegEventoType }

  TXMLRegEventoType = class(TXMLNode, IXMLRegEventoType)
  protected
    { IXMLRegEventoType }
    function Get_TipoEvento: UnicodeString;
    function Get_FechaHoraHusoEvento: UnicodeString;
    function Get_HuellaEvento: UnicodeString;
    procedure Set_TipoEvento(Value: UnicodeString);
    procedure Set_FechaHoraHusoEvento(Value: UnicodeString);
    procedure Set_HuellaEvento(Value: UnicodeString);
  end;

{ TXMLExportacionRegFacturacionPeriodoType }

  TXMLExportacionRegFacturacionPeriodoType = class(TXMLNode, IXMLExportacionRegFacturacionPeriodoType)
  protected
    { IXMLExportacionRegFacturacionPeriodoType }
    function Get_FechaHoraHusoInicioPeriodoExport: UnicodeString;
    function Get_FechaHoraHusoFinPeriodoExport: UnicodeString;
    function Get_RegistroFacturacionInicialPeriodo: IXMLIDFacturaExpedidaHuellaType;
    function Get_RegistroFacturacionFinalPeriodo: IXMLIDFacturaExpedidaHuellaType;
    function Get_NumeroDeRegistrosFacturacionAltaExportados: UnicodeString;
    function Get_SumaCuotaTotalAlta: UnicodeString;
    function Get_SumaImporteTotalAlta: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionAnulacionExportados: UnicodeString;
    function Get_RegistrosFacturacionExportadosDejanDeConservarse: UnicodeString;
    procedure Set_FechaHoraHusoInicioPeriodoExport(Value: UnicodeString);
    procedure Set_FechaHoraHusoFinPeriodoExport(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionAltaExportados(Value: UnicodeString);
    procedure Set_SumaCuotaTotalAlta(Value: UnicodeString);
    procedure Set_SumaImporteTotalAlta(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionAnulacionExportados(Value: UnicodeString);
    procedure Set_RegistrosFacturacionExportadosDejanDeConservarse(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIDFacturaExpedidaHuellaType }

  TXMLIDFacturaExpedidaHuellaType = class(TXMLNode, IXMLIDFacturaExpedidaHuellaType)
  protected
    { IXMLIDFacturaExpedidaHuellaType }
    function Get_IDEmisorFactura: UnicodeString;
    function Get_NumSerieFactura: UnicodeString;
    function Get_FechaExpedicionFactura: UnicodeString;
    function Get_Huella: UnicodeString;
    procedure Set_IDEmisorFactura(Value: UnicodeString);
    procedure Set_NumSerieFactura(Value: UnicodeString);
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
    procedure Set_Huella(Value: UnicodeString);
  end;

{ TXMLExportacionRegEventoPeriodoType }

  TXMLExportacionRegEventoPeriodoType = class(TXMLNode, IXMLExportacionRegEventoPeriodoType)
  protected
    { IXMLExportacionRegEventoPeriodoType }
    function Get_FechaHoraHusoInicioPeriodoExport: UnicodeString;
    function Get_FechaHoraHusoFinPeriodoExport: UnicodeString;
    function Get_RegistroEventoInicialPeriodo: IXMLRegEventoType;
    function Get_RegistroEventoFinalPeriodo: IXMLRegEventoType;
    function Get_NumeroDeRegEventoExportados: UnicodeString;
    function Get_RegEventoExportadosDejanDeConservarse: UnicodeString;
    procedure Set_FechaHoraHusoInicioPeriodoExport(Value: UnicodeString);
    procedure Set_FechaHoraHusoFinPeriodoExport(Value: UnicodeString);
    procedure Set_NumeroDeRegEventoExportados(Value: UnicodeString);
    procedure Set_RegEventoExportadosDejanDeConservarse(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLResumenEventosType }

  TXMLResumenEventosType = class(TXMLNode, IXMLResumenEventosType)
  private
    FTipoEvento: IXMLTipoEventoAgrTypeList;
  protected
    { IXMLResumenEventosType }
    function Get_TipoEvento: IXMLTipoEventoAgrTypeList;
    function Get_RegistroFacturacionInicialPeriodo: IXMLIDFacturaExpedidaHuellaType;
    function Get_RegistroFacturacionFinalPeriodo: IXMLIDFacturaExpedidaHuellaType;
    function Get_NumeroDeRegistrosFacturacionAltaGenerados: UnicodeString;
    function Get_SumaCuotaTotalAlta: UnicodeString;
    function Get_SumaImporteTotalAlta: UnicodeString;
    function Get_NumeroDeRegistrosFacturacionAnulacionGenerados: UnicodeString;
    procedure Set_NumeroDeRegistrosFacturacionAltaGenerados(Value: UnicodeString);
    procedure Set_SumaCuotaTotalAlta(Value: UnicodeString);
    procedure Set_SumaImporteTotalAlta(Value: UnicodeString);
    procedure Set_NumeroDeRegistrosFacturacionAnulacionGenerados(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTipoEventoAgrType }

  TXMLTipoEventoAgrType = class(TXMLNode, IXMLTipoEventoAgrType)
  protected
    { IXMLTipoEventoAgrType }
    function Get_TipoEvento: UnicodeString;
    function Get_NumeroDeEventos: UnicodeString;
    procedure Set_TipoEvento(Value: UnicodeString);
    procedure Set_NumeroDeEventos(Value: UnicodeString);
  end;

{ TXMLTipoEventoAgrTypeList }

  TXMLTipoEventoAgrTypeList = class(TXMLNodeCollection, IXMLTipoEventoAgrTypeList)
  protected
    { IXMLTipoEventoAgrTypeList }
    function Add: IXMLTipoEventoAgrType;
    function Insert(const Index: Integer): IXMLTipoEventoAgrType;

    function Get_Item(Index: Integer): IXMLTipoEventoAgrType;
  end;

{ TXMLEncadenamientoType }

  TXMLEncadenamientoType = class(TXMLNode, IXMLEncadenamientoType)
  protected
    { IXMLEncadenamientoType }
    function Get_PrimerEvento: UnicodeString;
    function Get_EventoAnterior: IXMLRegEventoAntType;
    procedure Set_PrimerEvento(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRegEventoAntType }

  TXMLRegEventoAntType = class(TXMLNode, IXMLRegEventoAntType)
  protected
    { IXMLRegEventoAntType }
    function Get_TipoEvento: UnicodeString;
    function Get_FechaHoraHusoGenEvento: UnicodeString;
    function Get_HuellaEvento: UnicodeString;
    procedure Set_TipoEvento(Value: UnicodeString);
    procedure Set_FechaHoraHusoGenEvento(Value: UnicodeString);
    procedure Set_HuellaEvento(Value: UnicodeString);
  end;

{ TXMLSignatureType_ds }

  TXMLSignatureType_ds = class(TXMLNode, IXMLSignatureType_ds)
  private
    FObject_: IXMLObjectType_dsList;
  protected
    { IXMLSignatureType_ds }
    function Get_Id: UnicodeString;
    function Get_SignedInfo: IXMLSignedInfoType_ds;
    function Get_SignatureValue: IXMLSignatureValueType_ds;
    function Get_KeyInfo: IXMLKeyInfoType_ds;
    function Get_Object_: IXMLObjectType_dsList;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSignedInfoType_ds }

  TXMLSignedInfoType_ds = class(TXMLNode, IXMLSignedInfoType_ds)
  private
    FReference: IXMLReferenceType_dsList;
  protected
    { IXMLSignedInfoType_ds }
    function Get_Id: UnicodeString;
    function Get_CanonicalizationMethod: IXMLCanonicalizationMethodType_ds;
    function Get_SignatureMethod: IXMLSignatureMethodType_ds;
    function Get_Reference: IXMLReferenceType_dsList;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCanonicalizationMethodType_ds }

  TXMLCanonicalizationMethodType_ds = class(TXMLNode, IXMLCanonicalizationMethodType_ds)
  protected
    { IXMLCanonicalizationMethodType_ds }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
  end;

{ TXMLSignatureMethodType_ds }

  TXMLSignatureMethodType_ds = class(TXMLNode, IXMLSignatureMethodType_ds)
  protected
    { IXMLSignatureMethodType_ds }
    function Get_Algorithm: UnicodeString;
    function Get_HMACOutputLength: Integer;
    procedure Set_Algorithm(Value: UnicodeString);
    procedure Set_HMACOutputLength(Value: Integer);
  end;

{ TXMLReferenceType_ds }

  TXMLReferenceType_ds = class(TXMLNode, IXMLReferenceType_ds)
  protected
    { IXMLReferenceType_ds }
    function Get_Id: UnicodeString;
    function Get_URI: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Transforms: IXMLTransformsType_ds;
    function Get_DigestMethod: IXMLDigestMethodType_ds;
    function Get_DigestValue: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_URI(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    procedure Set_DigestValue(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLReferenceType_dsList }

  TXMLReferenceType_dsList = class(TXMLNodeCollection, IXMLReferenceType_dsList)
  protected
    { IXMLReferenceType_dsList }
    function Add: IXMLReferenceType_ds;
    function Insert(const Index: Integer): IXMLReferenceType_ds;

    function Get_Item(Index: Integer): IXMLReferenceType_ds;
  end;

{ TXMLTransformsType_ds }

  TXMLTransformsType_ds = class(TXMLNodeCollection, IXMLTransformsType_ds)
  protected
    { IXMLTransformsType_ds }
    function Get_Transform(Index: Integer): IXMLTransformType_ds;
    function Add: IXMLTransformType_ds;
    function Insert(const Index: Integer): IXMLTransformType_ds;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransformType_ds }

  TXMLTransformType_ds = class(TXMLNodeCollection, IXMLTransformType_ds)
  protected
    { IXMLTransformType_ds }
    function Get_Algorithm: UnicodeString;
    function Get_XPath(Index: Integer): UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    function Add(const XPath: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const XPath: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDigestMethodType_ds }

  TXMLDigestMethodType_ds = class(TXMLNode, IXMLDigestMethodType_ds)
  protected
    { IXMLDigestMethodType_ds }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
  end;

{ TXMLSignatureValueType_ds }

  TXMLSignatureValueType_ds = class(TXMLNode, IXMLSignatureValueType_ds)
  protected
    { IXMLSignatureValueType_ds }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
  end;

{ TXMLKeyInfoType_ds }

  TXMLKeyInfoType_ds = class(TXMLNode, IXMLKeyInfoType_ds)
  private
    FKeyName: IXMLString_List;
    FKeyValue: IXMLKeyValueType_dsList;
    FRetrievalMethod: IXMLRetrievalMethodType_dsList;
    FX509Data: IXMLX509DataType_dsList;
    FPGPData: IXMLPGPDataType_dsList;
    FSPKIData: IXMLSPKIDataType_dsList;
    FMgmtData: IXMLString_List;
  protected
    { IXMLKeyInfoType_ds }
    function Get_Id: UnicodeString;
    function Get_KeyName: IXMLString_List;
    function Get_KeyValue: IXMLKeyValueType_dsList;
    function Get_RetrievalMethod: IXMLRetrievalMethodType_dsList;
    function Get_X509Data: IXMLX509DataType_dsList;
    function Get_PGPData: IXMLPGPDataType_dsList;
    function Get_SPKIData: IXMLSPKIDataType_dsList;
    function Get_MgmtData: IXMLString_List;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLKeyValueType_ds }

  TXMLKeyValueType_ds = class(TXMLNode, IXMLKeyValueType_ds)
  protected
    { IXMLKeyValueType_ds }
    function Get_DSAKeyValue: IXMLDSAKeyValueType_ds;
    function Get_RSAKeyValue: IXMLRSAKeyValueType_ds;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLKeyValueType_dsList }

  TXMLKeyValueType_dsList = class(TXMLNodeCollection, IXMLKeyValueType_dsList)
  protected
    { IXMLKeyValueType_dsList }
    function Add: IXMLKeyValueType_ds;
    function Insert(const Index: Integer): IXMLKeyValueType_ds;

    function Get_Item(Index: Integer): IXMLKeyValueType_ds;
  end;

{ TXMLDSAKeyValueType_ds }

  TXMLDSAKeyValueType_ds = class(TXMLNode, IXMLDSAKeyValueType_ds)
  protected
    { IXMLDSAKeyValueType_ds }
    function Get_P: UnicodeString;
    function Get_Q: UnicodeString;
    function Get_G: UnicodeString;
    function Get_Y: UnicodeString;
    function Get_J: UnicodeString;
    function Get_Seed: UnicodeString;
    function Get_PgenCounter: UnicodeString;
    procedure Set_P(Value: UnicodeString);
    procedure Set_Q(Value: UnicodeString);
    procedure Set_G(Value: UnicodeString);
    procedure Set_Y(Value: UnicodeString);
    procedure Set_J(Value: UnicodeString);
    procedure Set_Seed(Value: UnicodeString);
    procedure Set_PgenCounter(Value: UnicodeString);
  end;

{ TXMLRSAKeyValueType_ds }

  TXMLRSAKeyValueType_ds = class(TXMLNode, IXMLRSAKeyValueType_ds)
  protected
    { IXMLRSAKeyValueType_ds }
    function Get_Modulus: UnicodeString;
    function Get_Exponent: UnicodeString;
    procedure Set_Modulus(Value: UnicodeString);
    procedure Set_Exponent(Value: UnicodeString);
  end;

{ TXMLRetrievalMethodType_ds }

  TXMLRetrievalMethodType_ds = class(TXMLNode, IXMLRetrievalMethodType_ds)
  protected
    { IXMLRetrievalMethodType_ds }
    function Get_URI: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Transforms: IXMLTransformsType_ds;
    procedure Set_URI(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRetrievalMethodType_dsList }

  TXMLRetrievalMethodType_dsList = class(TXMLNodeCollection, IXMLRetrievalMethodType_dsList)
  protected
    { IXMLRetrievalMethodType_dsList }
    function Add: IXMLRetrievalMethodType_ds;
    function Insert(const Index: Integer): IXMLRetrievalMethodType_ds;

    function Get_Item(Index: Integer): IXMLRetrievalMethodType_ds;
  end;

{ TXMLX509DataType_ds }

  TXMLX509DataType_ds = class(TXMLNode, IXMLX509DataType_ds)
  private
    FX509IssuerSerial: IXMLX509IssuerSerialType_dsList;
    FX509SKI: IXMLBase64BinaryList;
    FX509SubjectName: IXMLString_List;
    FX509Certificate: IXMLBase64BinaryList;
    FX509CRL: IXMLBase64BinaryList;
  protected
    { IXMLX509DataType_ds }
    function Get_X509IssuerSerial: IXMLX509IssuerSerialType_dsList;
    function Get_X509SKI: IXMLBase64BinaryList;
    function Get_X509SubjectName: IXMLString_List;
    function Get_X509Certificate: IXMLBase64BinaryList;
    function Get_X509CRL: IXMLBase64BinaryList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLX509DataType_dsList }

  TXMLX509DataType_dsList = class(TXMLNodeCollection, IXMLX509DataType_dsList)
  protected
    { IXMLX509DataType_dsList }
    function Add: IXMLX509DataType_ds;
    function Insert(const Index: Integer): IXMLX509DataType_ds;

    function Get_Item(Index: Integer): IXMLX509DataType_ds;
  end;

{ TXMLX509IssuerSerialType_ds }

  TXMLX509IssuerSerialType_ds = class(TXMLNode, IXMLX509IssuerSerialType_ds)
  protected
    { IXMLX509IssuerSerialType_ds }
    function Get_X509IssuerName: UnicodeString;
    function Get_X509SerialNumber: Integer;
    procedure Set_X509IssuerName(Value: UnicodeString);
    procedure Set_X509SerialNumber(Value: Integer);
  end;

{ TXMLX509IssuerSerialType_dsList }

  TXMLX509IssuerSerialType_dsList = class(TXMLNodeCollection, IXMLX509IssuerSerialType_dsList)
  protected
    { IXMLX509IssuerSerialType_dsList }
    function Add: IXMLX509IssuerSerialType_ds;
    function Insert(const Index: Integer): IXMLX509IssuerSerialType_ds;

    function Get_Item(Index: Integer): IXMLX509IssuerSerialType_ds;
  end;

{ TXMLPGPDataType_ds }

  TXMLPGPDataType_ds = class(TXMLNode, IXMLPGPDataType_ds)
  protected
    { IXMLPGPDataType_ds }
    function Get_PGPKeyID: UnicodeString;
    function Get_PGPKeyPacket: UnicodeString;
    procedure Set_PGPKeyID(Value: UnicodeString);
    procedure Set_PGPKeyPacket(Value: UnicodeString);
  end;

{ TXMLPGPDataType_dsList }

  TXMLPGPDataType_dsList = class(TXMLNodeCollection, IXMLPGPDataType_dsList)
  protected
    { IXMLPGPDataType_dsList }
    function Add: IXMLPGPDataType_ds;
    function Insert(const Index: Integer): IXMLPGPDataType_ds;

    function Get_Item(Index: Integer): IXMLPGPDataType_ds;
  end;

{ TXMLSPKIDataType_ds }

  TXMLSPKIDataType_ds = class(TXMLNodeCollection, IXMLSPKIDataType_ds)
  protected
    { IXMLSPKIDataType_ds }
    function Get_SPKISexp(Index: Integer): UnicodeString;
    function Add(const SPKISexp: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const SPKISexp: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSPKIDataType_dsList }

  TXMLSPKIDataType_dsList = class(TXMLNodeCollection, IXMLSPKIDataType_dsList)
  protected
    { IXMLSPKIDataType_dsList }
    function Add: IXMLSPKIDataType_ds;
    function Insert(const Index: Integer): IXMLSPKIDataType_ds;

    function Get_Item(Index: Integer): IXMLSPKIDataType_ds;
  end;

{ TXMLObjectType_ds }

  TXMLObjectType_ds = class(TXMLNode, IXMLObjectType_ds)
  protected
    { IXMLObjectType_ds }
    function Get_Id: UnicodeString;
    function Get_MimeType: UnicodeString;
    function Get_Encoding: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_MimeType(Value: UnicodeString);
    procedure Set_Encoding(Value: UnicodeString);
  end;

{ TXMLObjectType_dsList }

  TXMLObjectType_dsList = class(TXMLNodeCollection, IXMLObjectType_dsList)
  protected
    { IXMLObjectType_dsList }
    function Add: IXMLObjectType_ds;
    function Insert(const Index: Integer): IXMLObjectType_ds;

    function Get_Item(Index: Integer): IXMLObjectType_ds;
  end;

{ TXMLString_List }

  TXMLString_List = class(TXMLNodeCollection, IXMLString_List)
  protected
    { IXMLString_List }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
  end;

{ TXMLBase64BinaryList }

  TXMLBase64BinaryList = class(TXMLNodeCollection, IXMLBase64BinaryList)
  protected
    { IXMLBase64BinaryList }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
  end;

{ Global Functions }

function GetRegistroEvento(Doc: IXMLDocument): IXMLRegistroEvento;
function LoadRegistroEvento(const FileName: string): IXMLRegistroEvento;
function NewRegistroEvento: IXMLRegistroEvento;

const
  TargetNamespace = 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/EventosSIF.xsd';

implementation

{ Global Functions }

function GetRegistroEvento(Doc: IXMLDocument): IXMLRegistroEvento;
begin
  Result := Doc.GetDocBinding('RegistroEvento', TXMLRegistroEvento, TargetNamespace) as IXMLRegistroEvento;
end;

function LoadRegistroEvento(const FileName: string): IXMLRegistroEvento;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('RegistroEvento', TXMLRegistroEvento, TargetNamespace) as IXMLRegistroEvento;
end;

function NewRegistroEvento: IXMLRegistroEvento;
begin
  Result := NewXMLDocument.GetDocBinding('RegistroEvento', TXMLRegistroEvento, TargetNamespace) as IXMLRegistroEvento;
end;

{ TXMLRegistroEvento }

procedure TXMLRegistroEvento.AfterConstruction;
begin
  RegisterChildNode('Evento', TXMLEventoType);
  inherited;
end;

function TXMLRegistroEvento.Get_IDVersion: UnicodeString;
begin
  Result := ChildNodes['IDVersion'].Text;
end;

procedure TXMLRegistroEvento.Set_IDVersion(Value: UnicodeString);
begin
  ChildNodes['IDVersion'].NodeValue := Value;
end;

function TXMLRegistroEvento.Get_Evento: IXMLEventoType;
begin
  Result := ChildNodes['Evento'] as IXMLEventoType;
end;

{ TXMLEventoType }

procedure TXMLEventoType.AfterConstruction;
begin
  RegisterChildNode('SistemaInformatico', TXMLSistemaInformaticoType);
  RegisterChildNode('ObligadoEmision', TXMLPersonaFisicaJuridicaESType);
  RegisterChildNode('TerceroODestinatario', TXMLPersonaFisicaJuridicaType);
  RegisterChildNode('DatosPropiosEvento', TXMLDatosPropiosEventoType);
  RegisterChildNode('Encadenamiento', TXMLEncadenamientoType);
  RegisterChildNode('Signature', TXMLSignatureType_ds);
  inherited;
end;

function TXMLEventoType.Get_SistemaInformatico: IXMLSistemaInformaticoType;
begin
  Result := ChildNodes['SistemaInformatico'] as IXMLSistemaInformaticoType;
end;

function TXMLEventoType.Get_ObligadoEmision: IXMLPersonaFisicaJuridicaESType;
begin
  Result := ChildNodes['ObligadoEmision'] as IXMLPersonaFisicaJuridicaESType;
end;

function TXMLEventoType.Get_EmitidaPorTerceroODestinatario: UnicodeString;
begin
  Result := ChildNodes['EmitidaPorTerceroODestinatario'].Text;
end;

procedure TXMLEventoType.Set_EmitidaPorTerceroODestinatario(Value: UnicodeString);
begin
  ChildNodes['EmitidaPorTerceroODestinatario'].NodeValue := Value;
end;

function TXMLEventoType.Get_TerceroODestinatario: IXMLPersonaFisicaJuridicaType;
begin
  Result := ChildNodes['TerceroODestinatario'] as IXMLPersonaFisicaJuridicaType;
end;

function TXMLEventoType.Get_FechaHoraHusoGenEvento: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoGenEvento'].Text;
end;

procedure TXMLEventoType.Set_FechaHoraHusoGenEvento(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoGenEvento'].NodeValue := Value;
end;

function TXMLEventoType.Get_TipoEvento: UnicodeString;
begin
  Result := ChildNodes['TipoEvento'].Text;
end;

procedure TXMLEventoType.Set_TipoEvento(Value: UnicodeString);
begin
  ChildNodes['TipoEvento'].NodeValue := Value;
end;

function TXMLEventoType.Get_DatosPropiosEvento: IXMLDatosPropiosEventoType;
begin
  Result := ChildNodes['DatosPropiosEvento'] as IXMLDatosPropiosEventoType;
end;

function TXMLEventoType.Get_OtrosDatosEvento: UnicodeString;
begin
  Result := ChildNodes['OtrosDatosEvento'].Text;
end;

procedure TXMLEventoType.Set_OtrosDatosEvento(Value: UnicodeString);
begin
  ChildNodes['OtrosDatosEvento'].NodeValue := Value;
end;

function TXMLEventoType.Get_Encadenamiento: IXMLEncadenamientoType;
begin
  Result := ChildNodes['Encadenamiento'] as IXMLEncadenamientoType;
end;

function TXMLEventoType.Get_TipoHuella: UnicodeString;
begin
  Result := ChildNodes['TipoHuella'].Text;
end;

procedure TXMLEventoType.Set_TipoHuella(Value: UnicodeString);
begin
  ChildNodes['TipoHuella'].NodeValue := Value;
end;

function TXMLEventoType.Get_HuellaEvento: UnicodeString;
begin
  Result := ChildNodes['HuellaEvento'].Text;
end;

procedure TXMLEventoType.Set_HuellaEvento(Value: UnicodeString);
begin
  ChildNodes['HuellaEvento'].NodeValue := Value;
end;

function TXMLEventoType.Get_Signature: IXMLSignatureType_ds;
begin
  Result := ChildNodes['Signature'] as IXMLSignatureType_ds;
end;

{ TXMLSistemaInformaticoType }

procedure TXMLSistemaInformaticoType.AfterConstruction;
begin
  RegisterChildNode('IDOtro', TXMLIDOtroType);
  inherited;
end;

function TXMLSistemaInformaticoType.Get_NombreRazon: UnicodeString;
begin
  Result := ChildNodes['NombreRazon'].Text;
end;

procedure TXMLSistemaInformaticoType.Set_NombreRazon(Value: UnicodeString);
begin
  ChildNodes['NombreRazon'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType.Get_NIF: UnicodeString;
begin
  Result := ChildNodes['NIF'].Text;
end;

procedure TXMLSistemaInformaticoType.Set_NIF(Value: UnicodeString);
begin
  ChildNodes['NIF'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType.Get_IDOtro: IXMLIDOtroType;
begin
  Result := ChildNodes['IDOtro'] as IXMLIDOtroType;
end;

function TXMLSistemaInformaticoType.Get_NombreSistemaInformatico: UnicodeString;
begin
  Result := ChildNodes['NombreSistemaInformatico'].Text;
end;

procedure TXMLSistemaInformaticoType.Set_NombreSistemaInformatico(Value: UnicodeString);
begin
  ChildNodes['NombreSistemaInformatico'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType.Get_IdSistemaInformatico: UnicodeString;
begin
  Result := ChildNodes['IdSistemaInformatico'].Text;
end;

procedure TXMLSistemaInformaticoType.Set_IdSistemaInformatico(Value: UnicodeString);
begin
  ChildNodes['IdSistemaInformatico'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType.Get_Version: UnicodeString;
begin
  Result := ChildNodes['Version'].Text;
end;

procedure TXMLSistemaInformaticoType.Set_Version(Value: UnicodeString);
begin
  ChildNodes['Version'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType.Get_NumeroInstalacion: UnicodeString;
begin
  Result := ChildNodes['NumeroInstalacion'].Text;
end;

procedure TXMLSistemaInformaticoType.Set_NumeroInstalacion(Value: UnicodeString);
begin
  ChildNodes['NumeroInstalacion'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType.Get_TipoUsoPosibleSoloVerifactu: UnicodeString;
begin
  Result := ChildNodes['TipoUsoPosibleSoloVerifactu'].Text;
end;

procedure TXMLSistemaInformaticoType.Set_TipoUsoPosibleSoloVerifactu(Value: UnicodeString);
begin
  ChildNodes['TipoUsoPosibleSoloVerifactu'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType.Get_TipoUsoPosibleMultiOT: UnicodeString;
begin
  Result := ChildNodes['TipoUsoPosibleMultiOT'].Text;
end;

procedure TXMLSistemaInformaticoType.Set_TipoUsoPosibleMultiOT(Value: UnicodeString);
begin
  ChildNodes['TipoUsoPosibleMultiOT'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType.Get_IndicadorMultiplesOT: UnicodeString;
begin
  Result := ChildNodes['IndicadorMultiplesOT'].Text;
end;

procedure TXMLSistemaInformaticoType.Set_IndicadorMultiplesOT(Value: UnicodeString);
begin
  ChildNodes['IndicadorMultiplesOT'].NodeValue := Value;
end;

{ TXMLIDOtroType }

function TXMLIDOtroType.Get_CodigoPais: UnicodeString;
begin
  Result := ChildNodes['CodigoPais'].Text;
end;

procedure TXMLIDOtroType.Set_CodigoPais(Value: UnicodeString);
begin
  ChildNodes['CodigoPais'].NodeValue := Value;
end;

function TXMLIDOtroType.Get_IDType: UnicodeString;
begin
  Result := ChildNodes['IDType'].Text;
end;

procedure TXMLIDOtroType.Set_IDType(Value: UnicodeString);
begin
  ChildNodes['IDType'].NodeValue := Value;
end;

function TXMLIDOtroType.Get_ID: UnicodeString;
begin
  Result := ChildNodes['ID'].Text;
end;

procedure TXMLIDOtroType.Set_ID(Value: UnicodeString);
begin
  ChildNodes['ID'].NodeValue := Value;
end;

{ TXMLPersonaFisicaJuridicaESType }

function TXMLPersonaFisicaJuridicaESType.Get_NombreRazon: UnicodeString;
begin
  Result := ChildNodes['NombreRazon'].Text;
end;

procedure TXMLPersonaFisicaJuridicaESType.Set_NombreRazon(Value: UnicodeString);
begin
  ChildNodes['NombreRazon'].NodeValue := Value;
end;

function TXMLPersonaFisicaJuridicaESType.Get_NIF: UnicodeString;
begin
  Result := ChildNodes['NIF'].Text;
end;

procedure TXMLPersonaFisicaJuridicaESType.Set_NIF(Value: UnicodeString);
begin
  ChildNodes['NIF'].NodeValue := Value;
end;

{ TXMLPersonaFisicaJuridicaType }

procedure TXMLPersonaFisicaJuridicaType.AfterConstruction;
begin
  RegisterChildNode('IDOtro', TXMLIDOtroType);
  inherited;
end;

function TXMLPersonaFisicaJuridicaType.Get_NombreRazon: UnicodeString;
begin
  Result := ChildNodes['NombreRazon'].Text;
end;

procedure TXMLPersonaFisicaJuridicaType.Set_NombreRazon(Value: UnicodeString);
begin
  ChildNodes['NombreRazon'].NodeValue := Value;
end;

function TXMLPersonaFisicaJuridicaType.Get_NIF: UnicodeString;
begin
  Result := ChildNodes['NIF'].Text;
end;

procedure TXMLPersonaFisicaJuridicaType.Set_NIF(Value: UnicodeString);
begin
  ChildNodes['NIF'].NodeValue := Value;
end;

function TXMLPersonaFisicaJuridicaType.Get_IDOtro: IXMLIDOtroType;
begin
  Result := ChildNodes['IDOtro'] as IXMLIDOtroType;
end;

{ TXMLDatosPropiosEventoType }

procedure TXMLDatosPropiosEventoType.AfterConstruction;
begin
  RegisterChildNode('LanzamientoProcesoDeteccionAnomaliasRegFacturacion', TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType);
  RegisterChildNode('DeteccionAnomaliasRegFacturacion', TXMLDeteccionAnomaliasRegFacturacionType);
  RegisterChildNode('LanzamientoProcesoDeteccionAnomaliasRegEvento', TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType);
  RegisterChildNode('DeteccionAnomaliasRegEvento', TXMLDeteccionAnomaliasRegEventoType);
  RegisterChildNode('ExportacionRegFacturacionPeriodo', TXMLExportacionRegFacturacionPeriodoType);
  RegisterChildNode('ExportacionRegEventoPeriodo', TXMLExportacionRegEventoPeriodoType);
  RegisterChildNode('ResumenEventos', TXMLResumenEventosType);
  inherited;
end;

function TXMLDatosPropiosEventoType.Get_LanzamientoProcesoDeteccionAnomaliasRegFacturacion: IXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType;
begin
  Result := ChildNodes['LanzamientoProcesoDeteccionAnomaliasRegFacturacion'] as IXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType;
end;

function TXMLDatosPropiosEventoType.Get_DeteccionAnomaliasRegFacturacion: IXMLDeteccionAnomaliasRegFacturacionType;
begin
  Result := ChildNodes['DeteccionAnomaliasRegFacturacion'] as IXMLDeteccionAnomaliasRegFacturacionType;
end;

function TXMLDatosPropiosEventoType.Get_LanzamientoProcesoDeteccionAnomaliasRegEvento: IXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType;
begin
  Result := ChildNodes['LanzamientoProcesoDeteccionAnomaliasRegEvento'] as IXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType;
end;

function TXMLDatosPropiosEventoType.Get_DeteccionAnomaliasRegEvento: IXMLDeteccionAnomaliasRegEventoType;
begin
  Result := ChildNodes['DeteccionAnomaliasRegEvento'] as IXMLDeteccionAnomaliasRegEventoType;
end;

function TXMLDatosPropiosEventoType.Get_ExportacionRegFacturacionPeriodo: IXMLExportacionRegFacturacionPeriodoType;
begin
  Result := ChildNodes['ExportacionRegFacturacionPeriodo'] as IXMLExportacionRegFacturacionPeriodoType;
end;

function TXMLDatosPropiosEventoType.Get_ExportacionRegEventoPeriodo: IXMLExportacionRegEventoPeriodoType;
begin
  Result := ChildNodes['ExportacionRegEventoPeriodo'] as IXMLExportacionRegEventoPeriodoType;
end;

function TXMLDatosPropiosEventoType.Get_ResumenEventos: IXMLResumenEventosType;
begin
  Result := ChildNodes['ResumenEventos'] as IXMLResumenEventosType;
end;

{ TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType }

function TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Get_RealizadoProcesoSobreIntegridadHuellasRegFacturacion: UnicodeString;
begin
  Result := ChildNodes['RealizadoProcesoSobreIntegridadHuellasRegFacturacion'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Set_RealizadoProcesoSobreIntegridadHuellasRegFacturacion(Value: UnicodeString);
begin
  ChildNodes['RealizadoProcesoSobreIntegridadHuellasRegFacturacion'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Get_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Set_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosFacturacionProcesadosSobreIntegridadHuellas'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Get_RealizadoProcesoSobreIntegridadFirmasRegFacturacion: UnicodeString;
begin
  Result := ChildNodes['RealizadoProcesoSobreIntegridadFirmasRegFacturacion'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Set_RealizadoProcesoSobreIntegridadFirmasRegFacturacion(Value: UnicodeString);
begin
  ChildNodes['RealizadoProcesoSobreIntegridadFirmasRegFacturacion'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Get_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Set_NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosFacturacionProcesadosSobreIntegridadFirmas'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Get_RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion: UnicodeString;
begin
  Result := ChildNodes['RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Set_RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion(Value: UnicodeString);
begin
  ChildNodes['RealizadoProcesoSobreTrazabilidadCadenaRegFacturacion'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Get_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Set_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadCadena'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Get_RealizadoProcesoSobreTrazabilidadFechasRegFacturacion: UnicodeString;
begin
  Result := ChildNodes['RealizadoProcesoSobreTrazabilidadFechasRegFacturacion'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Set_RealizadoProcesoSobreTrazabilidadFechasRegFacturacion(Value: UnicodeString);
begin
  ChildNodes['RealizadoProcesoSobreTrazabilidadFechasRegFacturacion'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Get_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegFacturacionType.Set_NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosFacturacionProcesadosSobreTrazabilidadFechas'].NodeValue := Value;
end;

{ TXMLDeteccionAnomaliasRegFacturacionType }

procedure TXMLDeteccionAnomaliasRegFacturacionType.AfterConstruction;
begin
  RegisterChildNode('RegistroFacturacionAnomalo', TXMLIDFacturaExpedidaType);
  inherited;
end;

function TXMLDeteccionAnomaliasRegFacturacionType.Get_TipoAnomalia: UnicodeString;
begin
  Result := ChildNodes['TipoAnomalia'].Text;
end;

procedure TXMLDeteccionAnomaliasRegFacturacionType.Set_TipoAnomalia(Value: UnicodeString);
begin
  ChildNodes['TipoAnomalia'].NodeValue := Value;
end;

function TXMLDeteccionAnomaliasRegFacturacionType.Get_OtrosDatosAnomalia: UnicodeString;
begin
  Result := ChildNodes['OtrosDatosAnomalia'].Text;
end;

procedure TXMLDeteccionAnomaliasRegFacturacionType.Set_OtrosDatosAnomalia(Value: UnicodeString);
begin
  ChildNodes['OtrosDatosAnomalia'].NodeValue := Value;
end;

function TXMLDeteccionAnomaliasRegFacturacionType.Get_RegistroFacturacionAnomalo: IXMLIDFacturaExpedidaType;
begin
  Result := ChildNodes['RegistroFacturacionAnomalo'] as IXMLIDFacturaExpedidaType;
end;

{ TXMLIDFacturaExpedidaType }

function TXMLIDFacturaExpedidaType.Get_IDEmisorFactura: UnicodeString;
begin
  Result := ChildNodes['IDEmisorFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaType.Set_IDEmisorFactura(Value: UnicodeString);
begin
  ChildNodes['IDEmisorFactura'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaType.Get_NumSerieFactura: UnicodeString;
begin
  Result := ChildNodes['NumSerieFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaType.Set_NumSerieFactura(Value: UnicodeString);
begin
  ChildNodes['NumSerieFactura'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaType.Get_FechaExpedicionFactura: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaType.Set_FechaExpedicionFactura(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFactura'].NodeValue := Value;
end;

{ TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType }

function TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Get_RealizadoProcesoSobreIntegridadHuellasRegEvento: UnicodeString;
begin
  Result := ChildNodes['RealizadoProcesoSobreIntegridadHuellasRegEvento'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Set_RealizadoProcesoSobreIntegridadHuellasRegEvento(Value: UnicodeString);
begin
  ChildNodes['RealizadoProcesoSobreIntegridadHuellasRegEvento'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Get_NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Set_NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosEventoProcesadosSobreIntegridadHuellas'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Get_RealizadoProcesoSobreIntegridadFirmasRegEvento: UnicodeString;
begin
  Result := ChildNodes['RealizadoProcesoSobreIntegridadFirmasRegEvento'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Set_RealizadoProcesoSobreIntegridadFirmasRegEvento(Value: UnicodeString);
begin
  ChildNodes['RealizadoProcesoSobreIntegridadFirmasRegEvento'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Get_NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Set_NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosEventoProcesadosSobreIntegridadFirmas'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Get_RealizadoProcesoSobreTrazabilidadCadenaRegEvento: UnicodeString;
begin
  Result := ChildNodes['RealizadoProcesoSobreTrazabilidadCadenaRegEvento'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Set_RealizadoProcesoSobreTrazabilidadCadenaRegEvento(Value: UnicodeString);
begin
  ChildNodes['RealizadoProcesoSobreTrazabilidadCadenaRegEvento'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Get_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Set_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosEventoProcesadosSobreTrazabilidadCadena'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Get_RealizadoProcesoSobreTrazabilidadFechasRegEvento: UnicodeString;
begin
  Result := ChildNodes['RealizadoProcesoSobreTrazabilidadFechasRegEvento'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Set_RealizadoProcesoSobreTrazabilidadFechasRegEvento(Value: UnicodeString);
begin
  ChildNodes['RealizadoProcesoSobreTrazabilidadFechasRegEvento'].NodeValue := Value;
end;

function TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Get_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas'].Text;
end;

procedure TXMLLanzamientoProcesoDeteccionAnomaliasRegEventoType.Set_NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosEventoProcesadosSobreTrazabilidadFechas'].NodeValue := Value;
end;

{ TXMLDeteccionAnomaliasRegEventoType }

procedure TXMLDeteccionAnomaliasRegEventoType.AfterConstruction;
begin
  RegisterChildNode('RegEventoAnomalo', TXMLRegEventoType);
  inherited;
end;

function TXMLDeteccionAnomaliasRegEventoType.Get_TipoAnomalia: UnicodeString;
begin
  Result := ChildNodes['TipoAnomalia'].Text;
end;

procedure TXMLDeteccionAnomaliasRegEventoType.Set_TipoAnomalia(Value: UnicodeString);
begin
  ChildNodes['TipoAnomalia'].NodeValue := Value;
end;

function TXMLDeteccionAnomaliasRegEventoType.Get_OtrosDatosAnomalia: UnicodeString;
begin
  Result := ChildNodes['OtrosDatosAnomalia'].Text;
end;

procedure TXMLDeteccionAnomaliasRegEventoType.Set_OtrosDatosAnomalia(Value: UnicodeString);
begin
  ChildNodes['OtrosDatosAnomalia'].NodeValue := Value;
end;

function TXMLDeteccionAnomaliasRegEventoType.Get_RegEventoAnomalo: IXMLRegEventoType;
begin
  Result := ChildNodes['RegEventoAnomalo'] as IXMLRegEventoType;
end;

{ TXMLRegEventoType }

function TXMLRegEventoType.Get_TipoEvento: UnicodeString;
begin
  Result := ChildNodes['TipoEvento'].Text;
end;

procedure TXMLRegEventoType.Set_TipoEvento(Value: UnicodeString);
begin
  ChildNodes['TipoEvento'].NodeValue := Value;
end;

function TXMLRegEventoType.Get_FechaHoraHusoEvento: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoEvento'].Text;
end;

procedure TXMLRegEventoType.Set_FechaHoraHusoEvento(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoEvento'].NodeValue := Value;
end;

function TXMLRegEventoType.Get_HuellaEvento: UnicodeString;
begin
  Result := ChildNodes['HuellaEvento'].Text;
end;

procedure TXMLRegEventoType.Set_HuellaEvento(Value: UnicodeString);
begin
  ChildNodes['HuellaEvento'].NodeValue := Value;
end;

{ TXMLExportacionRegFacturacionPeriodoType }

procedure TXMLExportacionRegFacturacionPeriodoType.AfterConstruction;
begin
  RegisterChildNode('RegistroFacturacionInicialPeriodo', TXMLIDFacturaExpedidaHuellaType);
  RegisterChildNode('RegistroFacturacionFinalPeriodo', TXMLIDFacturaExpedidaHuellaType);
  inherited;
end;

function TXMLExportacionRegFacturacionPeriodoType.Get_FechaHoraHusoInicioPeriodoExport: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoInicioPeriodoExport'].Text;
end;

procedure TXMLExportacionRegFacturacionPeriodoType.Set_FechaHoraHusoInicioPeriodoExport(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoInicioPeriodoExport'].NodeValue := Value;
end;

function TXMLExportacionRegFacturacionPeriodoType.Get_FechaHoraHusoFinPeriodoExport: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoFinPeriodoExport'].Text;
end;

procedure TXMLExportacionRegFacturacionPeriodoType.Set_FechaHoraHusoFinPeriodoExport(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoFinPeriodoExport'].NodeValue := Value;
end;

function TXMLExportacionRegFacturacionPeriodoType.Get_RegistroFacturacionInicialPeriodo: IXMLIDFacturaExpedidaHuellaType;
begin
  Result := ChildNodes['RegistroFacturacionInicialPeriodo'] as IXMLIDFacturaExpedidaHuellaType;
end;

function TXMLExportacionRegFacturacionPeriodoType.Get_RegistroFacturacionFinalPeriodo: IXMLIDFacturaExpedidaHuellaType;
begin
  Result := ChildNodes['RegistroFacturacionFinalPeriodo'] as IXMLIDFacturaExpedidaHuellaType;
end;

function TXMLExportacionRegFacturacionPeriodoType.Get_NumeroDeRegistrosFacturacionAltaExportados: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosFacturacionAltaExportados'].Text;
end;

procedure TXMLExportacionRegFacturacionPeriodoType.Set_NumeroDeRegistrosFacturacionAltaExportados(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosFacturacionAltaExportados'].NodeValue := Value;
end;

function TXMLExportacionRegFacturacionPeriodoType.Get_SumaCuotaTotalAlta: UnicodeString;
begin
  Result := ChildNodes['SumaCuotaTotalAlta'].Text;
end;

procedure TXMLExportacionRegFacturacionPeriodoType.Set_SumaCuotaTotalAlta(Value: UnicodeString);
begin
  ChildNodes['SumaCuotaTotalAlta'].NodeValue := Value;
end;

function TXMLExportacionRegFacturacionPeriodoType.Get_SumaImporteTotalAlta: UnicodeString;
begin
  Result := ChildNodes['SumaImporteTotalAlta'].Text;
end;

procedure TXMLExportacionRegFacturacionPeriodoType.Set_SumaImporteTotalAlta(Value: UnicodeString);
begin
  ChildNodes['SumaImporteTotalAlta'].NodeValue := Value;
end;

function TXMLExportacionRegFacturacionPeriodoType.Get_NumeroDeRegistrosFacturacionAnulacionExportados: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosFacturacionAnulacionExportados'].Text;
end;

procedure TXMLExportacionRegFacturacionPeriodoType.Set_NumeroDeRegistrosFacturacionAnulacionExportados(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosFacturacionAnulacionExportados'].NodeValue := Value;
end;

function TXMLExportacionRegFacturacionPeriodoType.Get_RegistrosFacturacionExportadosDejanDeConservarse: UnicodeString;
begin
  Result := ChildNodes['RegistrosFacturacionExportadosDejanDeConservarse'].Text;
end;

procedure TXMLExportacionRegFacturacionPeriodoType.Set_RegistrosFacturacionExportadosDejanDeConservarse(Value: UnicodeString);
begin
  ChildNodes['RegistrosFacturacionExportadosDejanDeConservarse'].NodeValue := Value;
end;

{ TXMLIDFacturaExpedidaHuellaType }

function TXMLIDFacturaExpedidaHuellaType.Get_IDEmisorFactura: UnicodeString;
begin
  Result := ChildNodes['IDEmisorFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaHuellaType.Set_IDEmisorFactura(Value: UnicodeString);
begin
  ChildNodes['IDEmisorFactura'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaHuellaType.Get_NumSerieFactura: UnicodeString;
begin
  Result := ChildNodes['NumSerieFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaHuellaType.Set_NumSerieFactura(Value: UnicodeString);
begin
  ChildNodes['NumSerieFactura'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaHuellaType.Get_FechaExpedicionFactura: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaHuellaType.Set_FechaExpedicionFactura(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFactura'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaHuellaType.Get_Huella: UnicodeString;
begin
  Result := ChildNodes['Huella'].Text;
end;

procedure TXMLIDFacturaExpedidaHuellaType.Set_Huella(Value: UnicodeString);
begin
  ChildNodes['Huella'].NodeValue := Value;
end;

{ TXMLExportacionRegEventoPeriodoType }

procedure TXMLExportacionRegEventoPeriodoType.AfterConstruction;
begin
  RegisterChildNode('RegistroEventoInicialPeriodo', TXMLRegEventoType);
  RegisterChildNode('RegistroEventoFinalPeriodo', TXMLRegEventoType);
  inherited;
end;

function TXMLExportacionRegEventoPeriodoType.Get_FechaHoraHusoInicioPeriodoExport: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoInicioPeriodoExport'].Text;
end;

procedure TXMLExportacionRegEventoPeriodoType.Set_FechaHoraHusoInicioPeriodoExport(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoInicioPeriodoExport'].NodeValue := Value;
end;

function TXMLExportacionRegEventoPeriodoType.Get_FechaHoraHusoFinPeriodoExport: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoFinPeriodoExport'].Text;
end;

procedure TXMLExportacionRegEventoPeriodoType.Set_FechaHoraHusoFinPeriodoExport(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoFinPeriodoExport'].NodeValue := Value;
end;

function TXMLExportacionRegEventoPeriodoType.Get_RegistroEventoInicialPeriodo: IXMLRegEventoType;
begin
  Result := ChildNodes['RegistroEventoInicialPeriodo'] as IXMLRegEventoType;
end;

function TXMLExportacionRegEventoPeriodoType.Get_RegistroEventoFinalPeriodo: IXMLRegEventoType;
begin
  Result := ChildNodes['RegistroEventoFinalPeriodo'] as IXMLRegEventoType;
end;

function TXMLExportacionRegEventoPeriodoType.Get_NumeroDeRegEventoExportados: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegEventoExportados'].Text;
end;

procedure TXMLExportacionRegEventoPeriodoType.Set_NumeroDeRegEventoExportados(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegEventoExportados'].NodeValue := Value;
end;

function TXMLExportacionRegEventoPeriodoType.Get_RegEventoExportadosDejanDeConservarse: UnicodeString;
begin
  Result := ChildNodes['RegEventoExportadosDejanDeConservarse'].Text;
end;

procedure TXMLExportacionRegEventoPeriodoType.Set_RegEventoExportadosDejanDeConservarse(Value: UnicodeString);
begin
  ChildNodes['RegEventoExportadosDejanDeConservarse'].NodeValue := Value;
end;

{ TXMLResumenEventosType }

procedure TXMLResumenEventosType.AfterConstruction;
begin
  RegisterChildNode('TipoEvento', TXMLTipoEventoAgrType);
  RegisterChildNode('RegistroFacturacionInicialPeriodo', TXMLIDFacturaExpedidaHuellaType);
  RegisterChildNode('RegistroFacturacionFinalPeriodo', TXMLIDFacturaExpedidaHuellaType);
  FTipoEvento := CreateCollection(TXMLTipoEventoAgrTypeList, IXMLTipoEventoAgrType, 'TipoEvento') as IXMLTipoEventoAgrTypeList;
  inherited;
end;

function TXMLResumenEventosType.Get_TipoEvento: IXMLTipoEventoAgrTypeList;
begin
  Result := FTipoEvento;
end;

function TXMLResumenEventosType.Get_RegistroFacturacionInicialPeriodo: IXMLIDFacturaExpedidaHuellaType;
begin
  Result := ChildNodes['RegistroFacturacionInicialPeriodo'] as IXMLIDFacturaExpedidaHuellaType;
end;

function TXMLResumenEventosType.Get_RegistroFacturacionFinalPeriodo: IXMLIDFacturaExpedidaHuellaType;
begin
  Result := ChildNodes['RegistroFacturacionFinalPeriodo'] as IXMLIDFacturaExpedidaHuellaType;
end;

function TXMLResumenEventosType.Get_NumeroDeRegistrosFacturacionAltaGenerados: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosFacturacionAltaGenerados'].Text;
end;

procedure TXMLResumenEventosType.Set_NumeroDeRegistrosFacturacionAltaGenerados(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosFacturacionAltaGenerados'].NodeValue := Value;
end;

function TXMLResumenEventosType.Get_SumaCuotaTotalAlta: UnicodeString;
begin
  Result := ChildNodes['SumaCuotaTotalAlta'].Text;
end;

procedure TXMLResumenEventosType.Set_SumaCuotaTotalAlta(Value: UnicodeString);
begin
  ChildNodes['SumaCuotaTotalAlta'].NodeValue := Value;
end;

function TXMLResumenEventosType.Get_SumaImporteTotalAlta: UnicodeString;
begin
  Result := ChildNodes['SumaImporteTotalAlta'].Text;
end;

procedure TXMLResumenEventosType.Set_SumaImporteTotalAlta(Value: UnicodeString);
begin
  ChildNodes['SumaImporteTotalAlta'].NodeValue := Value;
end;

function TXMLResumenEventosType.Get_NumeroDeRegistrosFacturacionAnulacionGenerados: UnicodeString;
begin
  Result := ChildNodes['NumeroDeRegistrosFacturacionAnulacionGenerados'].Text;
end;

procedure TXMLResumenEventosType.Set_NumeroDeRegistrosFacturacionAnulacionGenerados(Value: UnicodeString);
begin
  ChildNodes['NumeroDeRegistrosFacturacionAnulacionGenerados'].NodeValue := Value;
end;

{ TXMLTipoEventoAgrType }

function TXMLTipoEventoAgrType.Get_TipoEvento: UnicodeString;
begin
  Result := ChildNodes['TipoEvento'].Text;
end;

procedure TXMLTipoEventoAgrType.Set_TipoEvento(Value: UnicodeString);
begin
  ChildNodes['TipoEvento'].NodeValue := Value;
end;

function TXMLTipoEventoAgrType.Get_NumeroDeEventos: UnicodeString;
begin
  Result := ChildNodes['NumeroDeEventos'].Text;
end;

procedure TXMLTipoEventoAgrType.Set_NumeroDeEventos(Value: UnicodeString);
begin
  ChildNodes['NumeroDeEventos'].NodeValue := Value;
end;

{ TXMLTipoEventoAgrTypeList }

function TXMLTipoEventoAgrTypeList.Add: IXMLTipoEventoAgrType;
begin
  Result := AddItem(-1) as IXMLTipoEventoAgrType;
end;

function TXMLTipoEventoAgrTypeList.Insert(const Index: Integer): IXMLTipoEventoAgrType;
begin
  Result := AddItem(Index) as IXMLTipoEventoAgrType;
end;

function TXMLTipoEventoAgrTypeList.Get_Item(Index: Integer): IXMLTipoEventoAgrType;
begin
  Result := List[Index] as IXMLTipoEventoAgrType;
end;

{ TXMLEncadenamientoType }

procedure TXMLEncadenamientoType.AfterConstruction;
begin
  RegisterChildNode('EventoAnterior', TXMLRegEventoAntType);
  inherited;
end;

function TXMLEncadenamientoType.Get_PrimerEvento: UnicodeString;
begin
  Result := ChildNodes['PrimerEvento'].Text;
end;

procedure TXMLEncadenamientoType.Set_PrimerEvento(Value: UnicodeString);
begin
  ChildNodes['PrimerEvento'].NodeValue := Value;
end;

function TXMLEncadenamientoType.Get_EventoAnterior: IXMLRegEventoAntType;
begin
  Result := ChildNodes['EventoAnterior'] as IXMLRegEventoAntType;
end;

{ TXMLRegEventoAntType }

function TXMLRegEventoAntType.Get_TipoEvento: UnicodeString;
begin
  Result := ChildNodes['TipoEvento'].Text;
end;

procedure TXMLRegEventoAntType.Set_TipoEvento(Value: UnicodeString);
begin
  ChildNodes['TipoEvento'].NodeValue := Value;
end;

function TXMLRegEventoAntType.Get_FechaHoraHusoGenEvento: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoGenEvento'].Text;
end;

procedure TXMLRegEventoAntType.Set_FechaHoraHusoGenEvento(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoGenEvento'].NodeValue := Value;
end;

function TXMLRegEventoAntType.Get_HuellaEvento: UnicodeString;
begin
  Result := ChildNodes['HuellaEvento'].Text;
end;

procedure TXMLRegEventoAntType.Set_HuellaEvento(Value: UnicodeString);
begin
  ChildNodes['HuellaEvento'].NodeValue := Value;
end;

{ TXMLSignatureType_ds }

procedure TXMLSignatureType_ds.AfterConstruction;
begin
  RegisterChildNode('SignedInfo', TXMLSignedInfoType_ds);
  RegisterChildNode('SignatureValue', TXMLSignatureValueType_ds);
  RegisterChildNode('KeyInfo', TXMLKeyInfoType_ds);
  RegisterChildNode('Object', TXMLObjectType_ds);
  FObject_ := CreateCollection(TXMLObjectType_dsList, IXMLObjectType_ds, 'Object') as IXMLObjectType_dsList;
  inherited;
end;

function TXMLSignatureType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignatureType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLSignatureType_ds.Get_SignedInfo: IXMLSignedInfoType_ds;
begin
  Result := ChildNodes['SignedInfo'] as IXMLSignedInfoType_ds;
end;

function TXMLSignatureType_ds.Get_SignatureValue: IXMLSignatureValueType_ds;
begin
  Result := ChildNodes['SignatureValue'] as IXMLSignatureValueType_ds;
end;

function TXMLSignatureType_ds.Get_KeyInfo: IXMLKeyInfoType_ds;
begin
  Result := ChildNodes['KeyInfo'] as IXMLKeyInfoType_ds;
end;

function TXMLSignatureType_ds.Get_Object_: IXMLObjectType_dsList;
begin
  Result := FObject_;
end;

{ TXMLSignedInfoType_ds }

procedure TXMLSignedInfoType_ds.AfterConstruction;
begin
  RegisterChildNode('CanonicalizationMethod', TXMLCanonicalizationMethodType_ds);
  RegisterChildNode('SignatureMethod', TXMLSignatureMethodType_ds);
  RegisterChildNode('Reference', TXMLReferenceType_ds);
  FReference := CreateCollection(TXMLReferenceType_dsList, IXMLReferenceType_ds, 'Reference') as IXMLReferenceType_dsList;
  inherited;
end;

function TXMLSignedInfoType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignedInfoType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLSignedInfoType_ds.Get_CanonicalizationMethod: IXMLCanonicalizationMethodType_ds;
begin
  Result := ChildNodes['CanonicalizationMethod'] as IXMLCanonicalizationMethodType_ds;
end;

function TXMLSignedInfoType_ds.Get_SignatureMethod: IXMLSignatureMethodType_ds;
begin
  Result := ChildNodes['SignatureMethod'] as IXMLSignatureMethodType_ds;
end;

function TXMLSignedInfoType_ds.Get_Reference: IXMLReferenceType_dsList;
begin
  Result := FReference;
end;

{ TXMLCanonicalizationMethodType_ds }

function TXMLCanonicalizationMethodType_ds.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLCanonicalizationMethodType_ds.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignatureMethodType_ds }

function TXMLSignatureMethodType_ds.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLSignatureMethodType_ds.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

function TXMLSignatureMethodType_ds.Get_HMACOutputLength: Integer;
begin
  Result := ChildNodes['HMACOutputLength'].NodeValue;
end;

procedure TXMLSignatureMethodType_ds.Set_HMACOutputLength(Value: Integer);
begin
  ChildNodes['HMACOutputLength'].NodeValue := Value;
end;

{ TXMLReferenceType_ds }

procedure TXMLReferenceType_ds.AfterConstruction;
begin
  RegisterChildNode('Transforms', TXMLTransformsType_ds);
  RegisterChildNode('DigestMethod', TXMLDigestMethodType_ds);
  inherited;
end;

function TXMLReferenceType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLReferenceType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLReferenceType_ds.Get_URI: UnicodeString;
begin
  Result := AttributeNodes['URI'].Text;
end;

procedure TXMLReferenceType_ds.Set_URI(Value: UnicodeString);
begin
  SetAttribute('URI', Value);
end;

function TXMLReferenceType_ds.Get_Type_: UnicodeString;
begin
  Result := AttributeNodes['Type'].Text;
end;

procedure TXMLReferenceType_ds.Set_Type_(Value: UnicodeString);
begin
  SetAttribute('Type', Value);
end;

function TXMLReferenceType_ds.Get_Transforms: IXMLTransformsType_ds;
begin
  Result := ChildNodes['Transforms'] as IXMLTransformsType_ds;
end;

function TXMLReferenceType_ds.Get_DigestMethod: IXMLDigestMethodType_ds;
begin
  Result := ChildNodes['DigestMethod'] as IXMLDigestMethodType_ds;
end;

function TXMLReferenceType_ds.Get_DigestValue: UnicodeString;
begin
  Result := ChildNodes['DigestValue'].Text;
end;

procedure TXMLReferenceType_ds.Set_DigestValue(Value: UnicodeString);
begin
  ChildNodes['DigestValue'].NodeValue := Value;
end;

{ TXMLReferenceType_dsList }

function TXMLReferenceType_dsList.Add: IXMLReferenceType_ds;
begin
  Result := AddItem(-1) as IXMLReferenceType_ds;
end;

function TXMLReferenceType_dsList.Insert(const Index: Integer): IXMLReferenceType_ds;
begin
  Result := AddItem(Index) as IXMLReferenceType_ds;
end;

function TXMLReferenceType_dsList.Get_Item(Index: Integer): IXMLReferenceType_ds;
begin
  Result := List[Index] as IXMLReferenceType_ds;
end;

{ TXMLTransformsType_ds }

procedure TXMLTransformsType_ds.AfterConstruction;
begin
  RegisterChildNode('Transform', TXMLTransformType_ds);
  ItemTag := 'Transform';
  ItemInterface := IXMLTransformType_ds;
  inherited;
end;

function TXMLTransformsType_ds.Get_Transform(Index: Integer): IXMLTransformType_ds;
begin
  Result := List[Index] as IXMLTransformType_ds;
end;

function TXMLTransformsType_ds.Add: IXMLTransformType_ds;
begin
  Result := AddItem(-1) as IXMLTransformType_ds;
end;

function TXMLTransformsType_ds.Insert(const Index: Integer): IXMLTransformType_ds;
begin
  Result := AddItem(Index) as IXMLTransformType_ds;
end;

{ TXMLTransformType_ds }

procedure TXMLTransformType_ds.AfterConstruction;
begin
  ItemTag := 'XPath';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLTransformType_ds.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLTransformType_ds.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

function TXMLTransformType_ds.Get_XPath(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLTransformType_ds.Add(const XPath: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := XPath;
end;

function TXMLTransformType_ds.Insert(const Index: Integer; const XPath: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := XPath;
end;

{ TXMLDigestMethodType_ds }

function TXMLDigestMethodType_ds.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLDigestMethodType_ds.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignatureValueType_ds }

function TXMLSignatureValueType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignatureValueType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

{ TXMLKeyInfoType_ds }

procedure TXMLKeyInfoType_ds.AfterConstruction;
begin
  RegisterChildNode('KeyValue', TXMLKeyValueType_ds);
  RegisterChildNode('RetrievalMethod', TXMLRetrievalMethodType_ds);
  RegisterChildNode('X509Data', TXMLX509DataType_ds);
  RegisterChildNode('PGPData', TXMLPGPDataType_ds);
  RegisterChildNode('SPKIData', TXMLSPKIDataType_ds);
  FKeyName := CreateCollection(TXMLString_List, IXMLNode, 'KeyName') as IXMLString_List;
  FKeyValue := CreateCollection(TXMLKeyValueType_dsList, IXMLKeyValueType_ds, 'KeyValue') as IXMLKeyValueType_dsList;
  FRetrievalMethod := CreateCollection(TXMLRetrievalMethodType_dsList, IXMLRetrievalMethodType_ds, 'RetrievalMethod') as IXMLRetrievalMethodType_dsList;
  FX509Data := CreateCollection(TXMLX509DataType_dsList, IXMLX509DataType_ds, 'X509Data') as IXMLX509DataType_dsList;
  FPGPData := CreateCollection(TXMLPGPDataType_dsList, IXMLPGPDataType_ds, 'PGPData') as IXMLPGPDataType_dsList;
  FSPKIData := CreateCollection(TXMLSPKIDataType_dsList, IXMLSPKIDataType_ds, 'SPKIData') as IXMLSPKIDataType_dsList;
  FMgmtData := CreateCollection(TXMLString_List, IXMLNode, 'MgmtData') as IXMLString_List;
  inherited;
end;

function TXMLKeyInfoType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLKeyInfoType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLKeyInfoType_ds.Get_KeyName: IXMLString_List;
begin
  Result := FKeyName;
end;

function TXMLKeyInfoType_ds.Get_KeyValue: IXMLKeyValueType_dsList;
begin
  Result := FKeyValue;
end;

function TXMLKeyInfoType_ds.Get_RetrievalMethod: IXMLRetrievalMethodType_dsList;
begin
  Result := FRetrievalMethod;
end;

function TXMLKeyInfoType_ds.Get_X509Data: IXMLX509DataType_dsList;
begin
  Result := FX509Data;
end;

function TXMLKeyInfoType_ds.Get_PGPData: IXMLPGPDataType_dsList;
begin
  Result := FPGPData;
end;

function TXMLKeyInfoType_ds.Get_SPKIData: IXMLSPKIDataType_dsList;
begin
  Result := FSPKIData;
end;

function TXMLKeyInfoType_ds.Get_MgmtData: IXMLString_List;
begin
  Result := FMgmtData;
end;

{ TXMLKeyValueType_ds }

procedure TXMLKeyValueType_ds.AfterConstruction;
begin
  RegisterChildNode('DSAKeyValue', TXMLDSAKeyValueType_ds);
  RegisterChildNode('RSAKeyValue', TXMLRSAKeyValueType_ds);
  inherited;
end;

function TXMLKeyValueType_ds.Get_DSAKeyValue: IXMLDSAKeyValueType_ds;
begin
  Result := ChildNodes['DSAKeyValue'] as IXMLDSAKeyValueType_ds;
end;

function TXMLKeyValueType_ds.Get_RSAKeyValue: IXMLRSAKeyValueType_ds;
begin
  Result := ChildNodes['RSAKeyValue'] as IXMLRSAKeyValueType_ds;
end;

{ TXMLKeyValueType_dsList }

function TXMLKeyValueType_dsList.Add: IXMLKeyValueType_ds;
begin
  Result := AddItem(-1) as IXMLKeyValueType_ds;
end;

function TXMLKeyValueType_dsList.Insert(const Index: Integer): IXMLKeyValueType_ds;
begin
  Result := AddItem(Index) as IXMLKeyValueType_ds;
end;

function TXMLKeyValueType_dsList.Get_Item(Index: Integer): IXMLKeyValueType_ds;
begin
  Result := List[Index] as IXMLKeyValueType_ds;
end;

{ TXMLDSAKeyValueType_ds }

function TXMLDSAKeyValueType_ds.Get_P: UnicodeString;
begin
  Result := ChildNodes[WideString('P')].Text;
end;

procedure TXMLDSAKeyValueType_ds.Set_P(Value: UnicodeString);
begin
  ChildNodes[WideString('P')].NodeValue := Value;
end;

function TXMLDSAKeyValueType_ds.Get_Q: UnicodeString;
begin
  Result := ChildNodes[WideString('Q')].Text;
end;

procedure TXMLDSAKeyValueType_ds.Set_Q(Value: UnicodeString);
begin
  ChildNodes[WideString('Q')].NodeValue := Value;
end;

function TXMLDSAKeyValueType_ds.Get_G: UnicodeString;
begin
  Result := ChildNodes[WideString('G')].Text;
end;

procedure TXMLDSAKeyValueType_ds.Set_G(Value: UnicodeString);
begin
  ChildNodes[WideString('G')].NodeValue := Value;
end;

function TXMLDSAKeyValueType_ds.Get_Y: UnicodeString;
begin
  Result := ChildNodes[WideString('Y')].Text;
end;

procedure TXMLDSAKeyValueType_ds.Set_Y(Value: UnicodeString);
begin
  ChildNodes[WideString('Y')].NodeValue := Value;
end;

function TXMLDSAKeyValueType_ds.Get_J: UnicodeString;
begin
  Result := ChildNodes[WideString('J')].Text;
end;

procedure TXMLDSAKeyValueType_ds.Set_J(Value: UnicodeString);
begin
  ChildNodes[WideString('J')].NodeValue := Value;
end;

function TXMLDSAKeyValueType_ds.Get_Seed: UnicodeString;
begin
  Result := ChildNodes['Seed'].Text;
end;

procedure TXMLDSAKeyValueType_ds.Set_Seed(Value: UnicodeString);
begin
  ChildNodes['Seed'].NodeValue := Value;
end;

function TXMLDSAKeyValueType_ds.Get_PgenCounter: UnicodeString;
begin
  Result := ChildNodes['PgenCounter'].Text;
end;

procedure TXMLDSAKeyValueType_ds.Set_PgenCounter(Value: UnicodeString);
begin
  ChildNodes['PgenCounter'].NodeValue := Value;
end;

{ TXMLRSAKeyValueType_ds }

function TXMLRSAKeyValueType_ds.Get_Modulus: UnicodeString;
begin
  Result := ChildNodes['Modulus'].Text;
end;

procedure TXMLRSAKeyValueType_ds.Set_Modulus(Value: UnicodeString);
begin
  ChildNodes['Modulus'].NodeValue := Value;
end;

function TXMLRSAKeyValueType_ds.Get_Exponent: UnicodeString;
begin
  Result := ChildNodes['Exponent'].Text;
end;

procedure TXMLRSAKeyValueType_ds.Set_Exponent(Value: UnicodeString);
begin
  ChildNodes['Exponent'].NodeValue := Value;
end;

{ TXMLRetrievalMethodType_ds }

procedure TXMLRetrievalMethodType_ds.AfterConstruction;
begin
  RegisterChildNode('Transforms', TXMLTransformsType_ds);
  inherited;
end;

function TXMLRetrievalMethodType_ds.Get_URI: UnicodeString;
begin
  Result := AttributeNodes['URI'].Text;
end;

procedure TXMLRetrievalMethodType_ds.Set_URI(Value: UnicodeString);
begin
  SetAttribute('URI', Value);
end;

function TXMLRetrievalMethodType_ds.Get_Type_: UnicodeString;
begin
  Result := AttributeNodes['Type'].Text;
end;

procedure TXMLRetrievalMethodType_ds.Set_Type_(Value: UnicodeString);
begin
  SetAttribute('Type', Value);
end;

function TXMLRetrievalMethodType_ds.Get_Transforms: IXMLTransformsType_ds;
begin
  Result := ChildNodes['Transforms'] as IXMLTransformsType_ds;
end;

{ TXMLRetrievalMethodType_dsList }

function TXMLRetrievalMethodType_dsList.Add: IXMLRetrievalMethodType_ds;
begin
  Result := AddItem(-1) as IXMLRetrievalMethodType_ds;
end;

function TXMLRetrievalMethodType_dsList.Insert(const Index: Integer): IXMLRetrievalMethodType_ds;
begin
  Result := AddItem(Index) as IXMLRetrievalMethodType_ds;
end;

function TXMLRetrievalMethodType_dsList.Get_Item(Index: Integer): IXMLRetrievalMethodType_ds;
begin
  Result := List[Index] as IXMLRetrievalMethodType_ds;
end;

{ TXMLX509DataType_ds }

procedure TXMLX509DataType_ds.AfterConstruction;
begin
  RegisterChildNode('X509IssuerSerial', TXMLX509IssuerSerialType_ds);
  FX509IssuerSerial := CreateCollection(TXMLX509IssuerSerialType_dsList, IXMLX509IssuerSerialType_ds, 'X509IssuerSerial') as IXMLX509IssuerSerialType_dsList;
  FX509SKI := CreateCollection(TXMLBase64BinaryList, IXMLNode, 'X509SKI') as IXMLBase64BinaryList;
  FX509SubjectName := CreateCollection(TXMLString_List, IXMLNode, 'X509SubjectName') as IXMLString_List;
  FX509Certificate := CreateCollection(TXMLBase64BinaryList, IXMLNode, 'X509Certificate') as IXMLBase64BinaryList;
  FX509CRL := CreateCollection(TXMLBase64BinaryList, IXMLNode, 'X509CRL') as IXMLBase64BinaryList;
  inherited;
end;

function TXMLX509DataType_ds.Get_X509IssuerSerial: IXMLX509IssuerSerialType_dsList;
begin
  Result := FX509IssuerSerial;
end;

function TXMLX509DataType_ds.Get_X509SKI: IXMLBase64BinaryList;
begin
  Result := FX509SKI;
end;

function TXMLX509DataType_ds.Get_X509SubjectName: IXMLString_List;
begin
  Result := FX509SubjectName;
end;

function TXMLX509DataType_ds.Get_X509Certificate: IXMLBase64BinaryList;
begin
  Result := FX509Certificate;
end;

function TXMLX509DataType_ds.Get_X509CRL: IXMLBase64BinaryList;
begin
  Result := FX509CRL;
end;

{ TXMLX509DataType_dsList }

function TXMLX509DataType_dsList.Add: IXMLX509DataType_ds;
begin
  Result := AddItem(-1) as IXMLX509DataType_ds;
end;

function TXMLX509DataType_dsList.Insert(const Index: Integer): IXMLX509DataType_ds;
begin
  Result := AddItem(Index) as IXMLX509DataType_ds;
end;

function TXMLX509DataType_dsList.Get_Item(Index: Integer): IXMLX509DataType_ds;
begin
  Result := List[Index] as IXMLX509DataType_ds;
end;

{ TXMLX509IssuerSerialType_ds }

function TXMLX509IssuerSerialType_ds.Get_X509IssuerName: UnicodeString;
begin
  Result := ChildNodes['X509IssuerName'].Text;
end;

procedure TXMLX509IssuerSerialType_ds.Set_X509IssuerName(Value: UnicodeString);
begin
  ChildNodes['X509IssuerName'].NodeValue := Value;
end;

function TXMLX509IssuerSerialType_ds.Get_X509SerialNumber: Integer;
begin
  Result := ChildNodes['X509SerialNumber'].NodeValue;
end;

procedure TXMLX509IssuerSerialType_ds.Set_X509SerialNumber(Value: Integer);
begin
  ChildNodes['X509SerialNumber'].NodeValue := Value;
end;

{ TXMLX509IssuerSerialType_dsList }

function TXMLX509IssuerSerialType_dsList.Add: IXMLX509IssuerSerialType_ds;
begin
  Result := AddItem(-1) as IXMLX509IssuerSerialType_ds;
end;

function TXMLX509IssuerSerialType_dsList.Insert(const Index: Integer): IXMLX509IssuerSerialType_ds;
begin
  Result := AddItem(Index) as IXMLX509IssuerSerialType_ds;
end;

function TXMLX509IssuerSerialType_dsList.Get_Item(Index: Integer): IXMLX509IssuerSerialType_ds;
begin
  Result := List[Index] as IXMLX509IssuerSerialType_ds;
end;

{ TXMLPGPDataType_ds }

function TXMLPGPDataType_ds.Get_PGPKeyID: UnicodeString;
begin
  Result := ChildNodes['PGPKeyID'].Text;
end;

procedure TXMLPGPDataType_ds.Set_PGPKeyID(Value: UnicodeString);
begin
  ChildNodes['PGPKeyID'].NodeValue := Value;
end;

function TXMLPGPDataType_ds.Get_PGPKeyPacket: UnicodeString;
begin
  Result := ChildNodes['PGPKeyPacket'].Text;
end;

procedure TXMLPGPDataType_ds.Set_PGPKeyPacket(Value: UnicodeString);
begin
  ChildNodes['PGPKeyPacket'].NodeValue := Value;
end;

{ TXMLPGPDataType_dsList }

function TXMLPGPDataType_dsList.Add: IXMLPGPDataType_ds;
begin
  Result := AddItem(-1) as IXMLPGPDataType_ds;
end;

function TXMLPGPDataType_dsList.Insert(const Index: Integer): IXMLPGPDataType_ds;
begin
  Result := AddItem(Index) as IXMLPGPDataType_ds;
end;

function TXMLPGPDataType_dsList.Get_Item(Index: Integer): IXMLPGPDataType_ds;
begin
  Result := List[Index] as IXMLPGPDataType_ds;
end;

{ TXMLSPKIDataType_ds }

procedure TXMLSPKIDataType_ds.AfterConstruction;
begin
  ItemTag := 'SPKISexp';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLSPKIDataType_ds.Get_SPKISexp(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLSPKIDataType_ds.Add(const SPKISexp: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := SPKISexp;
end;

function TXMLSPKIDataType_ds.Insert(const Index: Integer; const SPKISexp: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := SPKISexp;
end;

{ TXMLSPKIDataType_dsList }

function TXMLSPKIDataType_dsList.Add: IXMLSPKIDataType_ds;
begin
  Result := AddItem(-1) as IXMLSPKIDataType_ds;
end;

function TXMLSPKIDataType_dsList.Insert(const Index: Integer): IXMLSPKIDataType_ds;
begin
  Result := AddItem(Index) as IXMLSPKIDataType_ds;
end;

function TXMLSPKIDataType_dsList.Get_Item(Index: Integer): IXMLSPKIDataType_ds;
begin
  Result := List[Index] as IXMLSPKIDataType_ds;
end;

{ TXMLObjectType_ds }

function TXMLObjectType_ds.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLObjectType_ds.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLObjectType_ds.Get_MimeType: UnicodeString;
begin
  Result := AttributeNodes['MimeType'].Text;
end;

procedure TXMLObjectType_ds.Set_MimeType(Value: UnicodeString);
begin
  SetAttribute('MimeType', Value);
end;

function TXMLObjectType_ds.Get_Encoding: UnicodeString;
begin
  Result := AttributeNodes['Encoding'].Text;
end;

procedure TXMLObjectType_ds.Set_Encoding(Value: UnicodeString);
begin
  SetAttribute('Encoding', Value);
end;

{ TXMLObjectType_dsList }

function TXMLObjectType_dsList.Add: IXMLObjectType_ds;
begin
  Result := AddItem(-1) as IXMLObjectType_ds;
end;

function TXMLObjectType_dsList.Insert(const Index: Integer): IXMLObjectType_ds;
begin
  Result := AddItem(Index) as IXMLObjectType_ds;
end;

function TXMLObjectType_dsList.Get_Item(Index: Integer): IXMLObjectType_ds;
begin
  Result := List[Index] as IXMLObjectType_ds;
end;

{ TXMLString_List }

function TXMLString_List.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLString_List.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLString_List.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

{ TXMLBase64BinaryList }

function TXMLBase64BinaryList.Add(const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLBase64BinaryList.Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLBase64BinaryList.Get_Item(Index: Integer): UnicodeString;
begin
  Result := List[Index].NodeValue;
end;

end.