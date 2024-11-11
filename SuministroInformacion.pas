
{*************************************************************************}
{                                                                         }
{                            XML Data Binding                             }
{                                                                         }
{         Generated on: 27/09/2024 11:46:57                               }
{       Generated from: D:\VeriFactu\Esquemas\SuministroInformacion.xsd   }
{   Settings stored in: D:\VeriFactu\Esquemas\SuministroInformacion.xdb   }
{                                                                         }
{*************************************************************************}

unit SuministroInformacion;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLSistemaFacturacionFact = interface;
  IXMLCabecera = interface;
  IXMLPersonaFisicaJuridicaESType = interface;
  IXMLCabecera_RemisionVoluntaria = interface;
  IXMLCabecera_RemisionRequerimiento = interface;
  IXMLDatosPresentacionType = interface;
  IXMLDatosPresentacion2Type = interface;
  IXMLRegistroSf = interface;
  IXMLRegistroSf_PeriodoImputacion = interface;
  IXMLIDFacturaExpedidaBCType = interface;
  IXMLIDFacturaExpedidaBajaType = interface;
  IXMLRegistroFacturacionAltaType = interface;
  IXMLIDFacturaExpedidaType = interface;
  IXMLRegistroFacturacionAltaType_FacturasRectificadas = interface;
  IXMLIDFacturaARType = interface;
  IXMLRegistroFacturacionAltaType_FacturasSustituidas = interface;
  IXMLDesgloseRectificacionType = interface;
  IXMLPersonaFisicaJuridicaType = interface;
  IXMLIDOtroType = interface;
  IXMLRegistroFacturacionAltaType_Destinatarios = interface;
  IXMLDesgloseType = interface;
  IXMLDetalleType = interface;
  IXMLRegistroFacturacionAltaType_Encadenamiento = interface;
  IXMLEncadenamientoFacturaAnteriorType = interface;
  IXMLSistemaInformaticoType = interface;
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
  IXMLRegistroFacturacionAnulacionType = interface;
  IXMLRegistroFacturacionAnulacionType_Encadenamiento = interface;
  IXMLRangoFechaExpedicionType = interface;
  IXMLFechaExpedicionConsultaType = interface;
  IXMLRegistroDuplicadoType = interface;
  IXMLContraparteConsultaType = interface;
  IXMLConsultaInformacion = interface;
  IXMLCabeceraConsultaSf = interface;
  IXMLObligadoEmisionConsultaType = interface;
  IXMLObligadoGeneracionType = interface;
  IXMLString_List = interface;
  IXMLBase64BinaryList = interface;

{ IXMLSistemaFacturacionFact }

  IXMLSistemaFacturacionFact = interface(IXMLNode)
    ['{7CDC4E8E-7D77-45E8-A0BC-C0CDC1CB0054}']
    { Property Accessors }
    function Get_Cabecera: IXMLCabecera;
    { Methods & Properties }
    property Cabecera: IXMLCabecera read Get_Cabecera;
  end;

{ IXMLCabecera }

  IXMLCabecera = interface(IXMLNode)
    ['{33B79883-2235-44CB-A808-4C3A775E2F3E}']
    { Property Accessors }
    function Get_ObligadoEmision: IXMLPersonaFisicaJuridicaESType;
    function Get_Representante: IXMLPersonaFisicaJuridicaESType;
    function Get_RemisionVoluntaria: IXMLCabecera_RemisionVoluntaria;
    function Get_RemisionRequerimiento: IXMLCabecera_RemisionRequerimiento;
    { Methods & Properties }
    property ObligadoEmision: IXMLPersonaFisicaJuridicaESType read Get_ObligadoEmision;
    property Representante: IXMLPersonaFisicaJuridicaESType read Get_Representante;
    property RemisionVoluntaria: IXMLCabecera_RemisionVoluntaria read Get_RemisionVoluntaria;
    property RemisionRequerimiento: IXMLCabecera_RemisionRequerimiento read Get_RemisionRequerimiento;
  end;

{ IXMLPersonaFisicaJuridicaESType }

  IXMLPersonaFisicaJuridicaESType = interface(IXMLNode)
    ['{73AC65CE-6291-4FB5-A076-B6B5D183DEBB}']
    { Property Accessors }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
    { Methods & Properties }
    property NombreRazon: UnicodeString read Get_NombreRazon write Set_NombreRazon;
    property NIF: UnicodeString read Get_NIF write Set_NIF;
  end;

{ IXMLCabecera_RemisionVoluntaria }

  IXMLCabecera_RemisionVoluntaria = interface(IXMLNode)
    ['{5C9BDAF9-08B3-46C1-AA66-503EC0B01CCB}']
    { Property Accessors }
    function Get_FechaFinVeriFactu: UnicodeString;
    function Get_Incidencia: UnicodeString;
    procedure Set_FechaFinVeriFactu(Value: UnicodeString);
    procedure Set_Incidencia(Value: UnicodeString);
    { Methods & Properties }
    property FechaFinVeriFactu: UnicodeString read Get_FechaFinVeriFactu write Set_FechaFinVeriFactu;
    property Incidencia: UnicodeString read Get_Incidencia write Set_Incidencia;
  end;

{ IXMLCabecera_RemisionRequerimiento }

  IXMLCabecera_RemisionRequerimiento = interface(IXMLNode)
    ['{0A0097BB-DBAE-43CF-9DA8-1736CFEC0776}']
    { Property Accessors }
    function Get_RefRequerimiento: UnicodeString;
    function Get_FinRequerimiento: UnicodeString;
    procedure Set_RefRequerimiento(Value: UnicodeString);
    procedure Set_FinRequerimiento(Value: UnicodeString);
    { Methods & Properties }
    property RefRequerimiento: UnicodeString read Get_RefRequerimiento write Set_RefRequerimiento;
    property FinRequerimiento: UnicodeString read Get_FinRequerimiento write Set_FinRequerimiento;
  end;

{ IXMLDatosPresentacionType }

  IXMLDatosPresentacionType = interface(IXMLNode)
    ['{E53C9BCB-369D-49B3-B99B-EFFAE3FC1B44}']
    { Property Accessors }
    function Get_NIFPresentador: UnicodeString;
    function Get_TimestampPresentacion: UnicodeString;
    procedure Set_NIFPresentador(Value: UnicodeString);
    procedure Set_TimestampPresentacion(Value: UnicodeString);
    { Methods & Properties }
    property NIFPresentador: UnicodeString read Get_NIFPresentador write Set_NIFPresentador;
    property TimestampPresentacion: UnicodeString read Get_TimestampPresentacion write Set_TimestampPresentacion;
  end;

{ IXMLDatosPresentacion2Type }

  IXMLDatosPresentacion2Type = interface(IXMLNode)
    ['{A9FFE35E-A332-4B77-B92D-72DA648D4A34}']
    { Property Accessors }
    function Get_NIFPresentador: UnicodeString;
    function Get_TimestampPresentacion: UnicodeString;
    function Get_IdPeticion: UnicodeString;
    procedure Set_NIFPresentador(Value: UnicodeString);
    procedure Set_TimestampPresentacion(Value: UnicodeString);
    procedure Set_IdPeticion(Value: UnicodeString);
    { Methods & Properties }
    property NIFPresentador: UnicodeString read Get_NIFPresentador write Set_NIFPresentador;
    property TimestampPresentacion: UnicodeString read Get_TimestampPresentacion write Set_TimestampPresentacion;
    property IdPeticion: UnicodeString read Get_IdPeticion write Set_IdPeticion;
  end;

{ IXMLRegistroSf }

  IXMLRegistroSf = interface(IXMLNode)
    ['{FB9634CC-F4A3-40EC-94F1-91F550C1D8C1}']
    { Property Accessors }
    function Get_PeriodoImputacion: IXMLRegistroSf_PeriodoImputacion;
    { Methods & Properties }
    property PeriodoImputacion: IXMLRegistroSf_PeriodoImputacion read Get_PeriodoImputacion;
  end;

{ IXMLRegistroSf_PeriodoImputacion }

  IXMLRegistroSf_PeriodoImputacion = interface(IXMLNode)
    ['{3B852252-5687-41C9-A11F-F6FAA482F86A}']
    { Property Accessors }
    function Get_Ejercicio: UnicodeString;
    function Get_Periodo: UnicodeString;
    procedure Set_Ejercicio(Value: UnicodeString);
    procedure Set_Periodo(Value: UnicodeString);
    { Methods & Properties }
    property Ejercicio: UnicodeString read Get_Ejercicio write Set_Ejercicio;
    property Periodo: UnicodeString read Get_Periodo write Set_Periodo;
  end;

{ IXMLIDFacturaExpedidaBCType }

  IXMLIDFacturaExpedidaBCType = interface(IXMLNode)
    ['{16781E8D-0401-419F-9E4D-7AB9E62F5CD3}']
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

{ IXMLIDFacturaExpedidaBajaType }

  IXMLIDFacturaExpedidaBajaType = interface(IXMLNode)
    ['{4B60C30D-28A2-49EE-8FFA-D813F73061C8}']
    { Property Accessors }
    function Get_IDEmisorFacturaAnulada: UnicodeString;
    function Get_NumSerieFacturaAnulada: UnicodeString;
    function Get_FechaExpedicionFacturaAnulada: UnicodeString;
    procedure Set_IDEmisorFacturaAnulada(Value: UnicodeString);
    procedure Set_NumSerieFacturaAnulada(Value: UnicodeString);
    procedure Set_FechaExpedicionFacturaAnulada(Value: UnicodeString);
    { Methods & Properties }
    property IDEmisorFacturaAnulada: UnicodeString read Get_IDEmisorFacturaAnulada write Set_IDEmisorFacturaAnulada;
    property NumSerieFacturaAnulada: UnicodeString read Get_NumSerieFacturaAnulada write Set_NumSerieFacturaAnulada;
    property FechaExpedicionFacturaAnulada: UnicodeString read Get_FechaExpedicionFacturaAnulada write Set_FechaExpedicionFacturaAnulada;
  end;

{ IXMLRegistroFacturacionAltaType }

  IXMLRegistroFacturacionAltaType = interface(IXMLNode)
    ['{00AA409D-5BF8-48F4-A4F6-D0CE08926881}']
    { Property Accessors }
    function Get_IDVersion: UnicodeString;
    function Get_IDFactura: IXMLIDFacturaExpedidaType;
    function Get_NombreRazonEmisor: UnicodeString;
    function Get_Subsanacion: UnicodeString;
    function Get_RechazoPrevio: UnicodeString;
    function Get_TipoFactura: UnicodeString;
    function Get_TipoRectificativa: UnicodeString;
    function Get_FacturasRectificadas: IXMLRegistroFacturacionAltaType_FacturasRectificadas;
    function Get_FacturasSustituidas: IXMLRegistroFacturacionAltaType_FacturasSustituidas;
    function Get_ImporteRectificacion: IXMLDesgloseRectificacionType;
    function Get_FechaOperacion: UnicodeString;
    function Get_DescripcionOperacion: UnicodeString;
    function Get_FacturaSimplificadaArt7273: UnicodeString;
    function Get_FacturaSinIdentifDestinatarioArt61d: UnicodeString;
    function Get_Macrodato: UnicodeString;
    function Get_EmitidaPorTerceroODestinatario: UnicodeString;
    function Get_Tercero: IXMLPersonaFisicaJuridicaType;
    function Get_Destinatarios: IXMLRegistroFacturacionAltaType_Destinatarios;
    function Get_Cupon: UnicodeString;
    function Get_Desglose: IXMLDesgloseType;
    function Get_CuotaTotal: UnicodeString;
    function Get_ImporteTotal: UnicodeString;
    function Get_Encadenamiento: IXMLRegistroFacturacionAltaType_Encadenamiento;
    function Get_SistemaInformatico: IXMLSistemaInformaticoType;
    function Get_FechaHoraHusoGenRegistro: UnicodeString;
    function Get_NumRegistroAcuerdoFacturacion: UnicodeString;
    function Get_IdAcuerdoSistemaInformatico: UnicodeString;
    function Get_TipoHuella: UnicodeString;
    function Get_Huella: UnicodeString;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_IDVersion(Value: UnicodeString);
    procedure Set_NombreRazonEmisor(Value: UnicodeString);
    procedure Set_Subsanacion(Value: UnicodeString);
    procedure Set_RechazoPrevio(Value: UnicodeString);
    procedure Set_TipoFactura(Value: UnicodeString);
    procedure Set_TipoRectificativa(Value: UnicodeString);
    procedure Set_FechaOperacion(Value: UnicodeString);
    procedure Set_DescripcionOperacion(Value: UnicodeString);
    procedure Set_FacturaSimplificadaArt7273(Value: UnicodeString);
    procedure Set_FacturaSinIdentifDestinatarioArt61d(Value: UnicodeString);
    procedure Set_Macrodato(Value: UnicodeString);
    procedure Set_EmitidaPorTerceroODestinatario(Value: UnicodeString);
    procedure Set_Cupon(Value: UnicodeString);
    procedure Set_CuotaTotal(Value: UnicodeString);
    procedure Set_ImporteTotal(Value: UnicodeString);
    procedure Set_FechaHoraHusoGenRegistro(Value: UnicodeString);
    procedure Set_NumRegistroAcuerdoFacturacion(Value: UnicodeString);
    procedure Set_IdAcuerdoSistemaInformatico(Value: UnicodeString);
    procedure Set_TipoHuella(Value: UnicodeString);
    procedure Set_Huella(Value: UnicodeString);
    { Methods & Properties }
    property IDVersion: UnicodeString read Get_IDVersion write Set_IDVersion;
    property IDFactura: IXMLIDFacturaExpedidaType read Get_IDFactura;
    property NombreRazonEmisor: UnicodeString read Get_NombreRazonEmisor write Set_NombreRazonEmisor;
    property Subsanacion: UnicodeString read Get_Subsanacion write Set_Subsanacion;
    property RechazoPrevio: UnicodeString read Get_RechazoPrevio write Set_RechazoPrevio;
    property TipoFactura: UnicodeString read Get_TipoFactura write Set_TipoFactura;
    property TipoRectificativa: UnicodeString read Get_TipoRectificativa write Set_TipoRectificativa;
    property FacturasRectificadas: IXMLRegistroFacturacionAltaType_FacturasRectificadas read Get_FacturasRectificadas;
    property FacturasSustituidas: IXMLRegistroFacturacionAltaType_FacturasSustituidas read Get_FacturasSustituidas;
    property ImporteRectificacion: IXMLDesgloseRectificacionType read Get_ImporteRectificacion;
    property FechaOperacion: UnicodeString read Get_FechaOperacion write Set_FechaOperacion;
    property DescripcionOperacion: UnicodeString read Get_DescripcionOperacion write Set_DescripcionOperacion;
    property FacturaSimplificadaArt7273: UnicodeString read Get_FacturaSimplificadaArt7273 write Set_FacturaSimplificadaArt7273;
    property FacturaSinIdentifDestinatarioArt61d: UnicodeString read Get_FacturaSinIdentifDestinatarioArt61d write Set_FacturaSinIdentifDestinatarioArt61d;
    property Macrodato: UnicodeString read Get_Macrodato write Set_Macrodato;
    property EmitidaPorTerceroODestinatario: UnicodeString read Get_EmitidaPorTerceroODestinatario write Set_EmitidaPorTerceroODestinatario;
    property Tercero: IXMLPersonaFisicaJuridicaType read Get_Tercero;
    property Destinatarios: IXMLRegistroFacturacionAltaType_Destinatarios read Get_Destinatarios;
    property Cupon: UnicodeString read Get_Cupon write Set_Cupon;
    property Desglose: IXMLDesgloseType read Get_Desglose;
    property CuotaTotal: UnicodeString read Get_CuotaTotal write Set_CuotaTotal;
    property ImporteTotal: UnicodeString read Get_ImporteTotal write Set_ImporteTotal;
    property Encadenamiento: IXMLRegistroFacturacionAltaType_Encadenamiento read Get_Encadenamiento;
    property SistemaInformatico: IXMLSistemaInformaticoType read Get_SistemaInformatico;
    property FechaHoraHusoGenRegistro: UnicodeString read Get_FechaHoraHusoGenRegistro write Set_FechaHoraHusoGenRegistro;
    property NumRegistroAcuerdoFacturacion: UnicodeString read Get_NumRegistroAcuerdoFacturacion write Set_NumRegistroAcuerdoFacturacion;
    property IdAcuerdoSistemaInformatico: UnicodeString read Get_IdAcuerdoSistemaInformatico write Set_IdAcuerdoSistemaInformatico;
    property TipoHuella: UnicodeString read Get_TipoHuella write Set_TipoHuella;
    property Huella: UnicodeString read Get_Huella write Set_Huella;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLIDFacturaExpedidaType }

  IXMLIDFacturaExpedidaType = interface(IXMLNode)
    ['{BDD014C7-485E-458A-9C53-7C0CBC68B1E7}']
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

{ IXMLRegistroFacturacionAltaType_FacturasRectificadas }

  IXMLRegistroFacturacionAltaType_FacturasRectificadas = interface(IXMLNodeCollection)
    ['{FCFC55DC-3CCB-4F21-80DE-DA0ED139BEBD}']
    { Property Accessors }
    function Get_IDFacturaRectificada(Index: Integer): IXMLIDFacturaARType;
    { Methods & Properties }
    function Add: IXMLIDFacturaARType;
    function Insert(const Index: Integer): IXMLIDFacturaARType;
    property IDFacturaRectificada[Index: Integer]: IXMLIDFacturaARType read Get_IDFacturaRectificada; default;
  end;

{ IXMLIDFacturaARType }

  IXMLIDFacturaARType = interface(IXMLNode)
    ['{9C1D72B7-EB3F-47B0-BAD5-1BC344FE7C4C}']
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

{ IXMLRegistroFacturacionAltaType_FacturasSustituidas }

  IXMLRegistroFacturacionAltaType_FacturasSustituidas = interface(IXMLNodeCollection)
    ['{A5337D0B-B7E1-4E2D-B3B7-D16A3AF706F4}']
    { Property Accessors }
    function Get_IDFacturaSustituida(Index: Integer): IXMLIDFacturaARType;
    { Methods & Properties }
    function Add: IXMLIDFacturaARType;
    function Insert(const Index: Integer): IXMLIDFacturaARType;
    property IDFacturaSustituida[Index: Integer]: IXMLIDFacturaARType read Get_IDFacturaSustituida; default;
  end;

{ IXMLDesgloseRectificacionType }

  IXMLDesgloseRectificacionType = interface(IXMLNode)
    ['{D635F41D-C6E7-4745-922C-2383390F51AB}']
    { Property Accessors }
    function Get_BaseRectificada: UnicodeString;
    function Get_CuotaRectificada: UnicodeString;
    function Get_CuotaRecargoRectificado: UnicodeString;
    procedure Set_BaseRectificada(Value: UnicodeString);
    procedure Set_CuotaRectificada(Value: UnicodeString);
    procedure Set_CuotaRecargoRectificado(Value: UnicodeString);
    { Methods & Properties }
    property BaseRectificada: UnicodeString read Get_BaseRectificada write Set_BaseRectificada;
    property CuotaRectificada: UnicodeString read Get_CuotaRectificada write Set_CuotaRectificada;
    property CuotaRecargoRectificado: UnicodeString read Get_CuotaRecargoRectificado write Set_CuotaRecargoRectificado;
  end;

{ IXMLPersonaFisicaJuridicaType }

  IXMLPersonaFisicaJuridicaType = interface(IXMLNode)
    ['{D7EB7C3A-89A5-4202-AD74-A9738E543E83}']
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

{ IXMLIDOtroType }

  IXMLIDOtroType = interface(IXMLNode)
    ['{E3D1C633-0AA3-4615-9D34-021FE73A8A0F}']
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

{ IXMLRegistroFacturacionAltaType_Destinatarios }

  IXMLRegistroFacturacionAltaType_Destinatarios = interface(IXMLNodeCollection)
    ['{4E40BF65-0DEA-4F07-BEE1-0A2A1DF96F9D}']
    { Property Accessors }
    function Get_IDDestinatario(Index: Integer): IXMLPersonaFisicaJuridicaType;
    { Methods & Properties }
    function Add: IXMLPersonaFisicaJuridicaType;
    function Insert(const Index: Integer): IXMLPersonaFisicaJuridicaType;
    property IDDestinatario[Index: Integer]: IXMLPersonaFisicaJuridicaType read Get_IDDestinatario; default;
  end;

{ IXMLDesgloseType }

  IXMLDesgloseType = interface(IXMLNodeCollection)
    ['{6F898D67-64EC-4A2C-9B8E-151B6ADF10E1}']
    { Property Accessors }
    function Get_DetalleDesglose(Index: Integer): IXMLDetalleType;
    { Methods & Properties }
    function Add: IXMLDetalleType;
    function Insert(const Index: Integer): IXMLDetalleType;
    property DetalleDesglose[Index: Integer]: IXMLDetalleType read Get_DetalleDesglose; default;
  end;

{ IXMLDetalleType }

  IXMLDetalleType = interface(IXMLNode)
    ['{077440E7-A55E-401F-89A2-07441DFCF9CB}']
    { Property Accessors }
    function Get_Impuesto: UnicodeString;
    function Get_ClaveRegimen: UnicodeString;
    function Get_CalificacionOperacion: UnicodeString;
    function Get_OperacionExenta: UnicodeString;
    function Get_TipoImpositivo: UnicodeString;
    function Get_BaseImponibleOimporteNoSujeto: UnicodeString;
    function Get_BaseImponibleACoste: UnicodeString;
    function Get_CuotaRepercutida: UnicodeString;
    function Get_TipoRecargoEquivalencia: UnicodeString;
    function Get_CuotaRecargoEquivalencia: UnicodeString;
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_ClaveRegimen(Value: UnicodeString);
    procedure Set_CalificacionOperacion(Value: UnicodeString);
    procedure Set_OperacionExenta(Value: UnicodeString);
    procedure Set_TipoImpositivo(Value: UnicodeString);
    procedure Set_BaseImponibleOimporteNoSujeto(Value: UnicodeString);
    procedure Set_BaseImponibleACoste(Value: UnicodeString);
    procedure Set_CuotaRepercutida(Value: UnicodeString);
    procedure Set_TipoRecargoEquivalencia(Value: UnicodeString);
    procedure Set_CuotaRecargoEquivalencia(Value: UnicodeString);
    { Methods & Properties }
    property Impuesto: UnicodeString read Get_Impuesto write Set_Impuesto;
    property ClaveRegimen: UnicodeString read Get_ClaveRegimen write Set_ClaveRegimen;
    property CalificacionOperacion: UnicodeString read Get_CalificacionOperacion write Set_CalificacionOperacion;
    property OperacionExenta: UnicodeString read Get_OperacionExenta write Set_OperacionExenta;
    property TipoImpositivo: UnicodeString read Get_TipoImpositivo write Set_TipoImpositivo;
    property BaseImponibleOimporteNoSujeto: UnicodeString read Get_BaseImponibleOimporteNoSujeto write Set_BaseImponibleOimporteNoSujeto;
    property BaseImponibleACoste: UnicodeString read Get_BaseImponibleACoste write Set_BaseImponibleACoste;
    property CuotaRepercutida: UnicodeString read Get_CuotaRepercutida write Set_CuotaRepercutida;
    property TipoRecargoEquivalencia: UnicodeString read Get_TipoRecargoEquivalencia write Set_TipoRecargoEquivalencia;
    property CuotaRecargoEquivalencia: UnicodeString read Get_CuotaRecargoEquivalencia write Set_CuotaRecargoEquivalencia;
  end;

{ IXMLRegistroFacturacionAltaType_Encadenamiento }

  IXMLRegistroFacturacionAltaType_Encadenamiento = interface(IXMLNode)
    ['{FC2DDB1D-1074-4A4D-B797-F4BA2CF13AB2}']
    { Property Accessors }
    function Get_PrimerRegistro: UnicodeString;
    function Get_RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType;
    procedure Set_PrimerRegistro(Value: UnicodeString);
    { Methods & Properties }
    property PrimerRegistro: UnicodeString read Get_PrimerRegistro write Set_PrimerRegistro;
    property RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType read Get_RegistroAnterior;
  end;

{ IXMLEncadenamientoFacturaAnteriorType }

  IXMLEncadenamientoFacturaAnteriorType = interface(IXMLNode)
    ['{951DC9A3-E360-44AD-AB13-B567C91CCA9B}']
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

{ IXMLSistemaInformaticoType }

  IXMLSistemaInformaticoType = interface(IXMLNode)
    ['{C32F0327-71CE-498B-AA29-225266BF89F5}']
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

{ IXMLSignatureType_ds }

  IXMLSignatureType_ds = interface(IXMLNode)
    ['{0F43233D-6BDB-4B78-98CA-6C7522FDB6DF}']
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
    ['{6DC020DC-82C1-4672-9447-AAB4EA0838C8}']
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
    ['{4EABC50C-668E-4647-90BB-A5A6E27F4FF7}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureMethodType_ds }

  IXMLSignatureMethodType_ds = interface(IXMLNode)
    ['{C4291703-A28A-437B-9700-586846F4AA00}']
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
    ['{9B870627-0B4D-451B-AF31-13FC55BAA62A}']
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
    ['{E8712B41-225C-4CF2-BD50-C1ADDCB0DEC9}']
    { Methods & Properties }
    function Add: IXMLReferenceType_ds;
    function Insert(const Index: Integer): IXMLReferenceType_ds;

    function Get_Item(Index: Integer): IXMLReferenceType_ds;
    property Items[Index: Integer]: IXMLReferenceType_ds read Get_Item; default;
  end;

{ IXMLTransformsType_ds }

  IXMLTransformsType_ds = interface(IXMLNodeCollection)
    ['{1C48FFCF-8F7F-4A3C-B698-AE596CC84608}']
    { Property Accessors }
    function Get_Transform(Index: Integer): IXMLTransformType_ds;
    { Methods & Properties }
    function Add: IXMLTransformType_ds;
    function Insert(const Index: Integer): IXMLTransformType_ds;
    property Transform[Index: Integer]: IXMLTransformType_ds read Get_Transform; default;
  end;

{ IXMLTransformType_ds }

  IXMLTransformType_ds = interface(IXMLNodeCollection)
    ['{0466C44F-8F46-4719-83FD-B0D580CB55B6}']
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
    ['{557C7455-22A0-4260-94F1-ECAEC303EB7B}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureValueType_ds }

  IXMLSignatureValueType_ds = interface(IXMLNode)
    ['{7A7FD167-4F64-46C9-8767-1343010A355C}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLKeyInfoType_ds }

  IXMLKeyInfoType_ds = interface(IXMLNode)
    ['{2DCE1D59-8FA8-49EB-A9AA-86E1EA5D34D4}']
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
    ['{572632B6-2C13-4859-8FC0-7EBE7FA20F58}']
    { Property Accessors }
    function Get_DSAKeyValue: IXMLDSAKeyValueType_ds;
    function Get_RSAKeyValue: IXMLRSAKeyValueType_ds;
    { Methods & Properties }
    property DSAKeyValue: IXMLDSAKeyValueType_ds read Get_DSAKeyValue;
    property RSAKeyValue: IXMLRSAKeyValueType_ds read Get_RSAKeyValue;
  end;

{ IXMLKeyValueType_dsList }

  IXMLKeyValueType_dsList = interface(IXMLNodeCollection)
    ['{DE963C52-30A7-42AB-907A-9EE8CF0C6162}']
    { Methods & Properties }
    function Add: IXMLKeyValueType_ds;
    function Insert(const Index: Integer): IXMLKeyValueType_ds;

    function Get_Item(Index: Integer): IXMLKeyValueType_ds;
    property Items[Index: Integer]: IXMLKeyValueType_ds read Get_Item; default;
  end;

{ IXMLDSAKeyValueType_ds }

  IXMLDSAKeyValueType_ds = interface(IXMLNode)
    ['{E5843261-883E-4B42-ADC1-7ADC943AFC1C}']
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
    ['{818F5892-19F0-452C-8517-27CA03584188}']
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
    ['{992B27C0-E7F9-4753-ACF4-AC087906B724}']
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
    ['{FC96FD38-0259-4251-80B9-AF41E30930A5}']
    { Methods & Properties }
    function Add: IXMLRetrievalMethodType_ds;
    function Insert(const Index: Integer): IXMLRetrievalMethodType_ds;

    function Get_Item(Index: Integer): IXMLRetrievalMethodType_ds;
    property Items[Index: Integer]: IXMLRetrievalMethodType_ds read Get_Item; default;
  end;

{ IXMLX509DataType_ds }

  IXMLX509DataType_ds = interface(IXMLNode)
    ['{C9C98061-2C00-476A-AB24-127DCE8B1630}']
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
    ['{1FCD8566-DDDF-42E1-A923-AF01BFC14E0D}']
    { Methods & Properties }
    function Add: IXMLX509DataType_ds;
    function Insert(const Index: Integer): IXMLX509DataType_ds;

    function Get_Item(Index: Integer): IXMLX509DataType_ds;
    property Items[Index: Integer]: IXMLX509DataType_ds read Get_Item; default;
  end;

{ IXMLX509IssuerSerialType_ds }

  IXMLX509IssuerSerialType_ds = interface(IXMLNode)
    ['{09C766BE-5703-45AD-AF5A-743E67D4D5E4}']
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
    ['{8CDB7806-D71D-4BDC-B0B2-CEBAE2DE3619}']
    { Methods & Properties }
    function Add: IXMLX509IssuerSerialType_ds;
    function Insert(const Index: Integer): IXMLX509IssuerSerialType_ds;

    function Get_Item(Index: Integer): IXMLX509IssuerSerialType_ds;
    property Items[Index: Integer]: IXMLX509IssuerSerialType_ds read Get_Item; default;
  end;

{ IXMLPGPDataType_ds }

  IXMLPGPDataType_ds = interface(IXMLNode)
    ['{A826E262-498F-49BB-BDE1-88AB0908A323}']
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
    ['{B1D175C1-EDB3-444F-8D6E-4EE653B4EB3B}']
    { Methods & Properties }
    function Add: IXMLPGPDataType_ds;
    function Insert(const Index: Integer): IXMLPGPDataType_ds;

    function Get_Item(Index: Integer): IXMLPGPDataType_ds;
    property Items[Index: Integer]: IXMLPGPDataType_ds read Get_Item; default;
  end;

{ IXMLSPKIDataType_ds }

  IXMLSPKIDataType_ds = interface(IXMLNodeCollection)
    ['{ACD071F8-D60E-4615-889A-39721D278C8C}']
    { Property Accessors }
    function Get_SPKISexp(Index: Integer): UnicodeString;
    { Methods & Properties }
    function Add(const SPKISexp: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const SPKISexp: UnicodeString): IXMLNode;
    property SPKISexp[Index: Integer]: UnicodeString read Get_SPKISexp; default;
  end;

{ IXMLSPKIDataType_dsList }

  IXMLSPKIDataType_dsList = interface(IXMLNodeCollection)
    ['{8284347D-7201-4CA6-A9F2-B6A75037A3D5}']
    { Methods & Properties }
    function Add: IXMLSPKIDataType_ds;
    function Insert(const Index: Integer): IXMLSPKIDataType_ds;

    function Get_Item(Index: Integer): IXMLSPKIDataType_ds;
    property Items[Index: Integer]: IXMLSPKIDataType_ds read Get_Item; default;
  end;

{ IXMLObjectType_ds }

  IXMLObjectType_ds = interface(IXMLNode)
    ['{CFC4866A-B75C-403F-BB25-3946E0F95161}']
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
    ['{26D82462-1D26-4D0E-99E3-3ABB638BFD65}']
    { Methods & Properties }
    function Add: IXMLObjectType_ds;
    function Insert(const Index: Integer): IXMLObjectType_ds;

    function Get_Item(Index: Integer): IXMLObjectType_ds;
    property Items[Index: Integer]: IXMLObjectType_ds read Get_Item; default;
  end;

{ IXMLRegistroFacturacionAnulacionType }

  IXMLRegistroFacturacionAnulacionType = interface(IXMLNode)
    ['{57662CA7-1548-4548-B3F8-D0412799E80A}']
    { Property Accessors }
    function Get_IDVersion: UnicodeString;
    function Get_IDFactura: IXMLIDFacturaExpedidaBajaType;
    function Get_SinRegistroPrevio: UnicodeString;
    function Get_RechazoPrevio: UnicodeString;
    function Get_GeneradoPor: UnicodeString;
    function Get_Generador: IXMLPersonaFisicaJuridicaType;
    function Get_Encadenamiento: IXMLRegistroFacturacionAnulacionType_Encadenamiento;
    function Get_SistemaInformatico: IXMLSistemaInformaticoType;
    function Get_FechaHoraHusoGenRegistro: UnicodeString;
    function Get_TipoHuella: UnicodeString;
    function Get_Huella: UnicodeString;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_IDVersion(Value: UnicodeString);
    procedure Set_SinRegistroPrevio(Value: UnicodeString);
    procedure Set_RechazoPrevio(Value: UnicodeString);
    procedure Set_GeneradoPor(Value: UnicodeString);
    procedure Set_FechaHoraHusoGenRegistro(Value: UnicodeString);
    procedure Set_TipoHuella(Value: UnicodeString);
    procedure Set_Huella(Value: UnicodeString);
    { Methods & Properties }
    property IDVersion: UnicodeString read Get_IDVersion write Set_IDVersion;
    property IDFactura: IXMLIDFacturaExpedidaBajaType read Get_IDFactura;
    property SinRegistroPrevio: UnicodeString read Get_SinRegistroPrevio write Set_SinRegistroPrevio;
    property RechazoPrevio: UnicodeString read Get_RechazoPrevio write Set_RechazoPrevio;
    property GeneradoPor: UnicodeString read Get_GeneradoPor write Set_GeneradoPor;
    property Generador: IXMLPersonaFisicaJuridicaType read Get_Generador;
    property Encadenamiento: IXMLRegistroFacturacionAnulacionType_Encadenamiento read Get_Encadenamiento;
    property SistemaInformatico: IXMLSistemaInformaticoType read Get_SistemaInformatico;
    property FechaHoraHusoGenRegistro: UnicodeString read Get_FechaHoraHusoGenRegistro write Set_FechaHoraHusoGenRegistro;
    property TipoHuella: UnicodeString read Get_TipoHuella write Set_TipoHuella;
    property Huella: UnicodeString read Get_Huella write Set_Huella;
    property Signature: IXMLSignatureType_ds read Get_Signature;
  end;

{ IXMLRegistroFacturacionAnulacionType_Encadenamiento }

  IXMLRegistroFacturacionAnulacionType_Encadenamiento = interface(IXMLNode)
    ['{0C464955-2962-47F0-965C-2A85F1F47B8D}']
    { Property Accessors }
    function Get_PrimerRegistro: UnicodeString;
    function Get_RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType;
    procedure Set_PrimerRegistro(Value: UnicodeString);
    { Methods & Properties }
    property PrimerRegistro: UnicodeString read Get_PrimerRegistro write Set_PrimerRegistro;
    property RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType read Get_RegistroAnterior;
  end;

{ IXMLRangoFechaExpedicionType }

  IXMLRangoFechaExpedicionType = interface(IXMLNode)
    ['{5DFD040A-582B-45BE-80B5-7A50126804A1}']
    { Property Accessors }
    function Get_Desde: UnicodeString;
    function Get_Hasta: UnicodeString;
    procedure Set_Desde(Value: UnicodeString);
    procedure Set_Hasta(Value: UnicodeString);
    { Methods & Properties }
    property Desde: UnicodeString read Get_Desde write Set_Desde;
    property Hasta: UnicodeString read Get_Hasta write Set_Hasta;
  end;

{ IXMLFechaExpedicionConsultaType }

  IXMLFechaExpedicionConsultaType = interface(IXMLNode)
    ['{6A9A7AE1-C9DD-46B5-B11D-EA81D1C5ECC4}']
    { Property Accessors }
    function Get_FechaExpedicionFactura: UnicodeString;
    function Get_RangoFechaExpedicion: IXMLRangoFechaExpedicionType;
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
    { Methods & Properties }
    property FechaExpedicionFactura: UnicodeString read Get_FechaExpedicionFactura write Set_FechaExpedicionFactura;
    property RangoFechaExpedicion: IXMLRangoFechaExpedicionType read Get_RangoFechaExpedicion;
  end;

{ IXMLRegistroDuplicadoType }

  IXMLRegistroDuplicadoType = interface(IXMLNode)
    ['{B21B9849-4254-4C34-8390-540E253204E0}']
    { Property Accessors }
    function Get_IdPeticionRegistroDuplicado: UnicodeString;
    function Get_EstadoRegistroDuplicado: UnicodeString;
    function Get_CodigoErrorRegistro: Integer;
    function Get_DescripcionErrorRegistro: UnicodeString;
    procedure Set_IdPeticionRegistroDuplicado(Value: UnicodeString);
    procedure Set_EstadoRegistroDuplicado(Value: UnicodeString);
    procedure Set_CodigoErrorRegistro(Value: Integer);
    procedure Set_DescripcionErrorRegistro(Value: UnicodeString);
    { Methods & Properties }
    property IdPeticionRegistroDuplicado: UnicodeString read Get_IdPeticionRegistroDuplicado write Set_IdPeticionRegistroDuplicado;
    property EstadoRegistroDuplicado: UnicodeString read Get_EstadoRegistroDuplicado write Set_EstadoRegistroDuplicado;
    property CodigoErrorRegistro: Integer read Get_CodigoErrorRegistro write Set_CodigoErrorRegistro;
    property DescripcionErrorRegistro: UnicodeString read Get_DescripcionErrorRegistro write Set_DescripcionErrorRegistro;
  end;

{ IXMLContraparteConsultaType }

  IXMLContraparteConsultaType = interface(IXMLNode)
    ['{DB8335A1-2D4C-4C32-BEAE-E7C47979D8EB}']
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

{ IXMLConsultaInformacion }

  IXMLConsultaInformacion = interface(IXMLNode)
    ['{54EC1AAB-758B-4776-8BBB-50059E19A8E1}']
    { Property Accessors }
    function Get_Cabecera: IXMLCabeceraConsultaSf;
    { Methods & Properties }
    property Cabecera: IXMLCabeceraConsultaSf read Get_Cabecera;
  end;

{ IXMLCabeceraConsultaSf }

  IXMLCabeceraConsultaSf = interface(IXMLNode)
    ['{A622A16D-C799-4E4E-A819-95190897F3C6}']
    { Property Accessors }
    function Get_IDVersion: UnicodeString;
    function Get_ObligadoEmision: IXMLObligadoEmisionConsultaType;
    function Get_Destinatario: IXMLPersonaFisicaJuridicaESType;
    function Get_IndicadorRepresentante: UnicodeString;
    procedure Set_IDVersion(Value: UnicodeString);
    procedure Set_IndicadorRepresentante(Value: UnicodeString);
    { Methods & Properties }
    property IDVersion: UnicodeString read Get_IDVersion write Set_IDVersion;
    property ObligadoEmision: IXMLObligadoEmisionConsultaType read Get_ObligadoEmision;
    property Destinatario: IXMLPersonaFisicaJuridicaESType read Get_Destinatario;
    property IndicadorRepresentante: UnicodeString read Get_IndicadorRepresentante write Set_IndicadorRepresentante;
  end;

{ IXMLObligadoEmisionConsultaType }

  IXMLObligadoEmisionConsultaType = interface(IXMLNode)
    ['{675B0A1F-1019-409A-B848-2ACABA0E3777}']
    { Property Accessors }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
    { Methods & Properties }
    property NombreRazon: UnicodeString read Get_NombreRazon write Set_NombreRazon;
    property NIF: UnicodeString read Get_NIF write Set_NIF;
  end;

{ IXMLObligadoGeneracionType }

  IXMLObligadoGeneracionType = interface(IXMLNode)
    ['{FDC39C30-C600-4C34-8E34-623A9193C020}']
    { Property Accessors }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
    { Methods & Properties }
    property NombreRazon: UnicodeString read Get_NombreRazon write Set_NombreRazon;
    property NIF: UnicodeString read Get_NIF write Set_NIF;
  end;

{ IXMLString_List }

  IXMLString_List = interface(IXMLNodeCollection)
    ['{BB08FDEC-17A1-4DA6-983E-FF7A9D1113F8}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ IXMLBase64BinaryList }

  IXMLBase64BinaryList = interface(IXMLNodeCollection)
    ['{9C0C17EE-BF06-4B0C-8BFB-9CE70EFE371D}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLSistemaFacturacionFact = class;
  TXMLCabecera = class;
  TXMLPersonaFisicaJuridicaESType = class;
  TXMLCabecera_RemisionVoluntaria = class;
  TXMLCabecera_RemisionRequerimiento = class;
  TXMLDatosPresentacionType = class;
  TXMLDatosPresentacion2Type = class;
  TXMLRegistroSf = class;
  TXMLRegistroSf_PeriodoImputacion = class;
  TXMLIDFacturaExpedidaBCType = class;
  TXMLIDFacturaExpedidaBajaType = class;
  TXMLRegistroFacturacionAltaType = class;
  TXMLIDFacturaExpedidaType = class;
  TXMLRegistroFacturacionAltaType_FacturasRectificadas = class;
  TXMLIDFacturaARType = class;
  TXMLRegistroFacturacionAltaType_FacturasSustituidas = class;
  TXMLDesgloseRectificacionType = class;
  TXMLPersonaFisicaJuridicaType = class;
  TXMLIDOtroType = class;
  TXMLRegistroFacturacionAltaType_Destinatarios = class;
  TXMLDesgloseType = class;
  TXMLDetalleType = class;
  TXMLRegistroFacturacionAltaType_Encadenamiento = class;
  TXMLEncadenamientoFacturaAnteriorType = class;
  TXMLSistemaInformaticoType = class;
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
  TXMLRegistroFacturacionAnulacionType = class;
  TXMLRegistroFacturacionAnulacionType_Encadenamiento = class;
  TXMLRangoFechaExpedicionType = class;
  TXMLFechaExpedicionConsultaType = class;
  TXMLRegistroDuplicadoType = class;
  TXMLContraparteConsultaType = class;
  TXMLConsultaInformacion = class;
  TXMLCabeceraConsultaSf = class;
  TXMLObligadoEmisionConsultaType = class;
  TXMLObligadoGeneracionType = class;
  TXMLString_List = class;
  TXMLBase64BinaryList = class;

{ TXMLSistemaFacturacionFact }

  TXMLSistemaFacturacionFact = class(TXMLNode, IXMLSistemaFacturacionFact)
  protected
    { IXMLSistemaFacturacionFact }
    function Get_Cabecera: IXMLCabecera;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCabecera }

  TXMLCabecera = class(TXMLNode, IXMLCabecera)
  protected
    { IXMLCabecera }
    function Get_ObligadoEmision: IXMLPersonaFisicaJuridicaESType;
    function Get_Representante: IXMLPersonaFisicaJuridicaESType;
    function Get_RemisionVoluntaria: IXMLCabecera_RemisionVoluntaria;
    function Get_RemisionRequerimiento: IXMLCabecera_RemisionRequerimiento;
  public
    procedure AfterConstruction; override;
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

{ TXMLCabecera_RemisionVoluntaria }

  TXMLCabecera_RemisionVoluntaria = class(TXMLNode, IXMLCabecera_RemisionVoluntaria)
  protected
    { IXMLCabecera_RemisionVoluntaria }
    function Get_FechaFinVeriFactu: UnicodeString;
    function Get_Incidencia: UnicodeString;
    procedure Set_FechaFinVeriFactu(Value: UnicodeString);
    procedure Set_Incidencia(Value: UnicodeString);
  end;

{ TXMLCabecera_RemisionRequerimiento }

  TXMLCabecera_RemisionRequerimiento = class(TXMLNode, IXMLCabecera_RemisionRequerimiento)
  protected
    { IXMLCabecera_RemisionRequerimiento }
    function Get_RefRequerimiento: UnicodeString;
    function Get_FinRequerimiento: UnicodeString;
    procedure Set_RefRequerimiento(Value: UnicodeString);
    procedure Set_FinRequerimiento(Value: UnicodeString);
  end;

{ TXMLDatosPresentacionType }

  TXMLDatosPresentacionType = class(TXMLNode, IXMLDatosPresentacionType)
  protected
    { IXMLDatosPresentacionType }
    function Get_NIFPresentador: UnicodeString;
    function Get_TimestampPresentacion: UnicodeString;
    procedure Set_NIFPresentador(Value: UnicodeString);
    procedure Set_TimestampPresentacion(Value: UnicodeString);
  end;

{ TXMLDatosPresentacion2Type }

  TXMLDatosPresentacion2Type = class(TXMLNode, IXMLDatosPresentacion2Type)
  protected
    { IXMLDatosPresentacion2Type }
    function Get_NIFPresentador: UnicodeString;
    function Get_TimestampPresentacion: UnicodeString;
    function Get_IdPeticion: UnicodeString;
    procedure Set_NIFPresentador(Value: UnicodeString);
    procedure Set_TimestampPresentacion(Value: UnicodeString);
    procedure Set_IdPeticion(Value: UnicodeString);
  end;

{ TXMLRegistroSf }

  TXMLRegistroSf = class(TXMLNode, IXMLRegistroSf)
  protected
    { IXMLRegistroSf }
    function Get_PeriodoImputacion: IXMLRegistroSf_PeriodoImputacion;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRegistroSf_PeriodoImputacion }

  TXMLRegistroSf_PeriodoImputacion = class(TXMLNode, IXMLRegistroSf_PeriodoImputacion)
  protected
    { IXMLRegistroSf_PeriodoImputacion }
    function Get_Ejercicio: UnicodeString;
    function Get_Periodo: UnicodeString;
    procedure Set_Ejercicio(Value: UnicodeString);
    procedure Set_Periodo(Value: UnicodeString);
  end;

{ TXMLIDFacturaExpedidaBCType }

  TXMLIDFacturaExpedidaBCType = class(TXMLNode, IXMLIDFacturaExpedidaBCType)
  protected
    { IXMLIDFacturaExpedidaBCType }
    function Get_IDEmisorFactura: UnicodeString;
    function Get_NumSerieFactura: UnicodeString;
    function Get_FechaExpedicionFactura: UnicodeString;
    procedure Set_IDEmisorFactura(Value: UnicodeString);
    procedure Set_NumSerieFactura(Value: UnicodeString);
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
  end;

{ TXMLIDFacturaExpedidaBajaType }

  TXMLIDFacturaExpedidaBajaType = class(TXMLNode, IXMLIDFacturaExpedidaBajaType)
  protected
    { IXMLIDFacturaExpedidaBajaType }
    function Get_IDEmisorFacturaAnulada: UnicodeString;
    function Get_NumSerieFacturaAnulada: UnicodeString;
    function Get_FechaExpedicionFacturaAnulada: UnicodeString;
    procedure Set_IDEmisorFacturaAnulada(Value: UnicodeString);
    procedure Set_NumSerieFacturaAnulada(Value: UnicodeString);
    procedure Set_FechaExpedicionFacturaAnulada(Value: UnicodeString);
  end;

{ TXMLRegistroFacturacionAltaType }

  TXMLRegistroFacturacionAltaType = class(TXMLNode, IXMLRegistroFacturacionAltaType)
  protected
    { IXMLRegistroFacturacionAltaType }
    function Get_IDVersion: UnicodeString;
    function Get_IDFactura: IXMLIDFacturaExpedidaType;
    function Get_NombreRazonEmisor: UnicodeString;
    function Get_Subsanacion: UnicodeString;
    function Get_RechazoPrevio: UnicodeString;
    function Get_TipoFactura: UnicodeString;
    function Get_TipoRectificativa: UnicodeString;
    function Get_FacturasRectificadas: IXMLRegistroFacturacionAltaType_FacturasRectificadas;
    function Get_FacturasSustituidas: IXMLRegistroFacturacionAltaType_FacturasSustituidas;
    function Get_ImporteRectificacion: IXMLDesgloseRectificacionType;
    function Get_FechaOperacion: UnicodeString;
    function Get_DescripcionOperacion: UnicodeString;
    function Get_FacturaSimplificadaArt7273: UnicodeString;
    function Get_FacturaSinIdentifDestinatarioArt61d: UnicodeString;
    function Get_Macrodato: UnicodeString;
    function Get_EmitidaPorTerceroODestinatario: UnicodeString;
    function Get_Tercero: IXMLPersonaFisicaJuridicaType;
    function Get_Destinatarios: IXMLRegistroFacturacionAltaType_Destinatarios;
    function Get_Cupon: UnicodeString;
    function Get_Desglose: IXMLDesgloseType;
    function Get_CuotaTotal: UnicodeString;
    function Get_ImporteTotal: UnicodeString;
    function Get_Encadenamiento: IXMLRegistroFacturacionAltaType_Encadenamiento;
    function Get_SistemaInformatico: IXMLSistemaInformaticoType;
    function Get_FechaHoraHusoGenRegistro: UnicodeString;
    function Get_NumRegistroAcuerdoFacturacion: UnicodeString;
    function Get_IdAcuerdoSistemaInformatico: UnicodeString;
    function Get_TipoHuella: UnicodeString;
    function Get_Huella: UnicodeString;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_IDVersion(Value: UnicodeString);
    procedure Set_NombreRazonEmisor(Value: UnicodeString);
    procedure Set_Subsanacion(Value: UnicodeString);
    procedure Set_RechazoPrevio(Value: UnicodeString);
    procedure Set_TipoFactura(Value: UnicodeString);
    procedure Set_TipoRectificativa(Value: UnicodeString);
    procedure Set_FechaOperacion(Value: UnicodeString);
    procedure Set_DescripcionOperacion(Value: UnicodeString);
    procedure Set_FacturaSimplificadaArt7273(Value: UnicodeString);
    procedure Set_FacturaSinIdentifDestinatarioArt61d(Value: UnicodeString);
    procedure Set_Macrodato(Value: UnicodeString);
    procedure Set_EmitidaPorTerceroODestinatario(Value: UnicodeString);
    procedure Set_Cupon(Value: UnicodeString);
    procedure Set_CuotaTotal(Value: UnicodeString);
    procedure Set_ImporteTotal(Value: UnicodeString);
    procedure Set_FechaHoraHusoGenRegistro(Value: UnicodeString);
    procedure Set_NumRegistroAcuerdoFacturacion(Value: UnicodeString);
    procedure Set_IdAcuerdoSistemaInformatico(Value: UnicodeString);
    procedure Set_TipoHuella(Value: UnicodeString);
    procedure Set_Huella(Value: UnicodeString);
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

{ TXMLRegistroFacturacionAltaType_FacturasRectificadas }

  TXMLRegistroFacturacionAltaType_FacturasRectificadas = class(TXMLNodeCollection, IXMLRegistroFacturacionAltaType_FacturasRectificadas)
  protected
    { IXMLRegistroFacturacionAltaType_FacturasRectificadas }
    function Get_IDFacturaRectificada(Index: Integer): IXMLIDFacturaARType;
    function Add: IXMLIDFacturaARType;
    function Insert(const Index: Integer): IXMLIDFacturaARType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIDFacturaARType }

  TXMLIDFacturaARType = class(TXMLNode, IXMLIDFacturaARType)
  protected
    { IXMLIDFacturaARType }
    function Get_IDEmisorFactura: UnicodeString;
    function Get_NumSerieFactura: UnicodeString;
    function Get_FechaExpedicionFactura: UnicodeString;
    procedure Set_IDEmisorFactura(Value: UnicodeString);
    procedure Set_NumSerieFactura(Value: UnicodeString);
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
  end;

{ TXMLRegistroFacturacionAltaType_FacturasSustituidas }

  TXMLRegistroFacturacionAltaType_FacturasSustituidas = class(TXMLNodeCollection, IXMLRegistroFacturacionAltaType_FacturasSustituidas)
  protected
    { IXMLRegistroFacturacionAltaType_FacturasSustituidas }
    function Get_IDFacturaSustituida(Index: Integer): IXMLIDFacturaARType;
    function Add: IXMLIDFacturaARType;
    function Insert(const Index: Integer): IXMLIDFacturaARType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDesgloseRectificacionType }

  TXMLDesgloseRectificacionType = class(TXMLNode, IXMLDesgloseRectificacionType)
  protected
    { IXMLDesgloseRectificacionType }
    function Get_BaseRectificada: UnicodeString;
    function Get_CuotaRectificada: UnicodeString;
    function Get_CuotaRecargoRectificado: UnicodeString;
    procedure Set_BaseRectificada(Value: UnicodeString);
    procedure Set_CuotaRectificada(Value: UnicodeString);
    procedure Set_CuotaRecargoRectificado(Value: UnicodeString);
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

{ TXMLRegistroFacturacionAltaType_Destinatarios }

  TXMLRegistroFacturacionAltaType_Destinatarios = class(TXMLNodeCollection, IXMLRegistroFacturacionAltaType_Destinatarios)
  protected
    { IXMLRegistroFacturacionAltaType_Destinatarios }
    function Get_IDDestinatario(Index: Integer): IXMLPersonaFisicaJuridicaType;
    function Add: IXMLPersonaFisicaJuridicaType;
    function Insert(const Index: Integer): IXMLPersonaFisicaJuridicaType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDesgloseType }

  TXMLDesgloseType = class(TXMLNodeCollection, IXMLDesgloseType)
  protected
    { IXMLDesgloseType }
    function Get_DetalleDesglose(Index: Integer): IXMLDetalleType;
    function Add: IXMLDetalleType;
    function Insert(const Index: Integer): IXMLDetalleType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetalleType }

  TXMLDetalleType = class(TXMLNode, IXMLDetalleType)
  protected
    { IXMLDetalleType }
    function Get_Impuesto: UnicodeString;
    function Get_ClaveRegimen: UnicodeString;
    function Get_CalificacionOperacion: UnicodeString;
    function Get_OperacionExenta: UnicodeString;
    function Get_TipoImpositivo: UnicodeString;
    function Get_BaseImponibleOimporteNoSujeto: UnicodeString;
    function Get_BaseImponibleACoste: UnicodeString;
    function Get_CuotaRepercutida: UnicodeString;
    function Get_TipoRecargoEquivalencia: UnicodeString;
    function Get_CuotaRecargoEquivalencia: UnicodeString;
    procedure Set_Impuesto(Value: UnicodeString);
    procedure Set_ClaveRegimen(Value: UnicodeString);
    procedure Set_CalificacionOperacion(Value: UnicodeString);
    procedure Set_OperacionExenta(Value: UnicodeString);
    procedure Set_TipoImpositivo(Value: UnicodeString);
    procedure Set_BaseImponibleOimporteNoSujeto(Value: UnicodeString);
    procedure Set_BaseImponibleACoste(Value: UnicodeString);
    procedure Set_CuotaRepercutida(Value: UnicodeString);
    procedure Set_TipoRecargoEquivalencia(Value: UnicodeString);
    procedure Set_CuotaRecargoEquivalencia(Value: UnicodeString);
  end;

{ TXMLRegistroFacturacionAltaType_Encadenamiento }

  TXMLRegistroFacturacionAltaType_Encadenamiento = class(TXMLNode, IXMLRegistroFacturacionAltaType_Encadenamiento)
  protected
    { IXMLRegistroFacturacionAltaType_Encadenamiento }
    function Get_PrimerRegistro: UnicodeString;
    function Get_RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType;
    procedure Set_PrimerRegistro(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLEncadenamientoFacturaAnteriorType }

  TXMLEncadenamientoFacturaAnteriorType = class(TXMLNode, IXMLEncadenamientoFacturaAnteriorType)
  protected
    { IXMLEncadenamientoFacturaAnteriorType }
    function Get_IDEmisorFactura: UnicodeString;
    function Get_NumSerieFactura: UnicodeString;
    function Get_FechaExpedicionFactura: UnicodeString;
    function Get_Huella: UnicodeString;
    procedure Set_IDEmisorFactura(Value: UnicodeString);
    procedure Set_NumSerieFactura(Value: UnicodeString);
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
    procedure Set_Huella(Value: UnicodeString);
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

{ TXMLRegistroFacturacionAnulacionType }

  TXMLRegistroFacturacionAnulacionType = class(TXMLNode, IXMLRegistroFacturacionAnulacionType)
  protected
    { IXMLRegistroFacturacionAnulacionType }
    function Get_IDVersion: UnicodeString;
    function Get_IDFactura: IXMLIDFacturaExpedidaBajaType;
    function Get_SinRegistroPrevio: UnicodeString;
    function Get_RechazoPrevio: UnicodeString;
    function Get_GeneradoPor: UnicodeString;
    function Get_Generador: IXMLPersonaFisicaJuridicaType;
    function Get_Encadenamiento: IXMLRegistroFacturacionAnulacionType_Encadenamiento;
    function Get_SistemaInformatico: IXMLSistemaInformaticoType;
    function Get_FechaHoraHusoGenRegistro: UnicodeString;
    function Get_TipoHuella: UnicodeString;
    function Get_Huella: UnicodeString;
    function Get_Signature: IXMLSignatureType_ds;
    procedure Set_IDVersion(Value: UnicodeString);
    procedure Set_SinRegistroPrevio(Value: UnicodeString);
    procedure Set_RechazoPrevio(Value: UnicodeString);
    procedure Set_GeneradoPor(Value: UnicodeString);
    procedure Set_FechaHoraHusoGenRegistro(Value: UnicodeString);
    procedure Set_TipoHuella(Value: UnicodeString);
    procedure Set_Huella(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRegistroFacturacionAnulacionType_Encadenamiento }

  TXMLRegistroFacturacionAnulacionType_Encadenamiento = class(TXMLNode, IXMLRegistroFacturacionAnulacionType_Encadenamiento)
  protected
    { IXMLRegistroFacturacionAnulacionType_Encadenamiento }
    function Get_PrimerRegistro: UnicodeString;
    function Get_RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType;
    procedure Set_PrimerRegistro(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRangoFechaExpedicionType }

  TXMLRangoFechaExpedicionType = class(TXMLNode, IXMLRangoFechaExpedicionType)
  protected
    { IXMLRangoFechaExpedicionType }
    function Get_Desde: UnicodeString;
    function Get_Hasta: UnicodeString;
    procedure Set_Desde(Value: UnicodeString);
    procedure Set_Hasta(Value: UnicodeString);
  end;

{ TXMLFechaExpedicionConsultaType }

  TXMLFechaExpedicionConsultaType = class(TXMLNode, IXMLFechaExpedicionConsultaType)
  protected
    { IXMLFechaExpedicionConsultaType }
    function Get_FechaExpedicionFactura: UnicodeString;
    function Get_RangoFechaExpedicion: IXMLRangoFechaExpedicionType;
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRegistroDuplicadoType }

  TXMLRegistroDuplicadoType = class(TXMLNode, IXMLRegistroDuplicadoType)
  protected
    { IXMLRegistroDuplicadoType }
    function Get_IdPeticionRegistroDuplicado: UnicodeString;
    function Get_EstadoRegistroDuplicado: UnicodeString;
    function Get_CodigoErrorRegistro: Integer;
    function Get_DescripcionErrorRegistro: UnicodeString;
    procedure Set_IdPeticionRegistroDuplicado(Value: UnicodeString);
    procedure Set_EstadoRegistroDuplicado(Value: UnicodeString);
    procedure Set_CodigoErrorRegistro(Value: Integer);
    procedure Set_DescripcionErrorRegistro(Value: UnicodeString);
  end;

{ TXMLContraparteConsultaType }

  TXMLContraparteConsultaType = class(TXMLNode, IXMLContraparteConsultaType)
  protected
    { IXMLContraparteConsultaType }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    function Get_IDOtro: IXMLIDOtroType;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLConsultaInformacion }

  TXMLConsultaInformacion = class(TXMLNode, IXMLConsultaInformacion)
  protected
    { IXMLConsultaInformacion }
    function Get_Cabecera: IXMLCabeceraConsultaSf;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCabeceraConsultaSf }

  TXMLCabeceraConsultaSf = class(TXMLNode, IXMLCabeceraConsultaSf)
  protected
    { IXMLCabeceraConsultaSf }
    function Get_IDVersion: UnicodeString;
    function Get_ObligadoEmision: IXMLObligadoEmisionConsultaType;
    function Get_Destinatario: IXMLPersonaFisicaJuridicaESType;
    function Get_IndicadorRepresentante: UnicodeString;
    procedure Set_IDVersion(Value: UnicodeString);
    procedure Set_IndicadorRepresentante(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLObligadoEmisionConsultaType }

  TXMLObligadoEmisionConsultaType = class(TXMLNode, IXMLObligadoEmisionConsultaType)
  protected
    { IXMLObligadoEmisionConsultaType }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
  end;

{ TXMLObligadoGeneracionType }

  TXMLObligadoGeneracionType = class(TXMLNode, IXMLObligadoGeneracionType)
  protected
    { IXMLObligadoGeneracionType }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
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

implementation

{ TXMLSistemaFacturacionFact }

procedure TXMLSistemaFacturacionFact.AfterConstruction;
begin
  RegisterChildNode('Cabecera', TXMLCabecera);
  inherited;
end;

function TXMLSistemaFacturacionFact.Get_Cabecera: IXMLCabecera;
begin
  Result := ChildNodes['Cabecera'] as IXMLCabecera;
end;

{ TXMLCabecera }

procedure TXMLCabecera.AfterConstruction;
begin
  RegisterChildNode('ObligadoEmision', TXMLPersonaFisicaJuridicaESType);
  RegisterChildNode('Representante', TXMLPersonaFisicaJuridicaESType);
  RegisterChildNode('RemisionVoluntaria', TXMLCabecera_RemisionVoluntaria);
  RegisterChildNode('RemisionRequerimiento', TXMLCabecera_RemisionRequerimiento);
  inherited;
end;

function TXMLCabecera.Get_ObligadoEmision: IXMLPersonaFisicaJuridicaESType;
begin
  Result := ChildNodes['ObligadoEmision'] as IXMLPersonaFisicaJuridicaESType;
end;

function TXMLCabecera.Get_Representante: IXMLPersonaFisicaJuridicaESType;
begin
  Result := ChildNodes['Representante'] as IXMLPersonaFisicaJuridicaESType;
end;

function TXMLCabecera.Get_RemisionVoluntaria: IXMLCabecera_RemisionVoluntaria;
begin
  Result := ChildNodes['RemisionVoluntaria'] as IXMLCabecera_RemisionVoluntaria;
end;

function TXMLCabecera.Get_RemisionRequerimiento: IXMLCabecera_RemisionRequerimiento;
begin
  Result := ChildNodes['RemisionRequerimiento'] as IXMLCabecera_RemisionRequerimiento;
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

{ TXMLCabecera_RemisionVoluntaria }

function TXMLCabecera_RemisionVoluntaria.Get_FechaFinVeriFactu: UnicodeString;
begin
  Result := ChildNodes['FechaFinVeriFactu'].Text;
end;

procedure TXMLCabecera_RemisionVoluntaria.Set_FechaFinVeriFactu(Value: UnicodeString);
begin
  ChildNodes['FechaFinVeriFactu'].NodeValue := Value;
end;

function TXMLCabecera_RemisionVoluntaria.Get_Incidencia: UnicodeString;
begin
  Result := ChildNodes['Incidencia'].Text;
end;

procedure TXMLCabecera_RemisionVoluntaria.Set_Incidencia(Value: UnicodeString);
begin
  ChildNodes['Incidencia'].NodeValue := Value;
end;

{ TXMLCabecera_RemisionRequerimiento }

function TXMLCabecera_RemisionRequerimiento.Get_RefRequerimiento: UnicodeString;
begin
  Result := ChildNodes['RefRequerimiento'].Text;
end;

procedure TXMLCabecera_RemisionRequerimiento.Set_RefRequerimiento(Value: UnicodeString);
begin
  ChildNodes['RefRequerimiento'].NodeValue := Value;
end;

function TXMLCabecera_RemisionRequerimiento.Get_FinRequerimiento: UnicodeString;
begin
  Result := ChildNodes['FinRequerimiento'].Text;
end;

procedure TXMLCabecera_RemisionRequerimiento.Set_FinRequerimiento(Value: UnicodeString);
begin
  ChildNodes['FinRequerimiento'].NodeValue := Value;
end;

{ TXMLDatosPresentacionType }

function TXMLDatosPresentacionType.Get_NIFPresentador: UnicodeString;
begin
  Result := ChildNodes['NIFPresentador'].Text;
end;

procedure TXMLDatosPresentacionType.Set_NIFPresentador(Value: UnicodeString);
begin
  ChildNodes['NIFPresentador'].NodeValue := Value;
end;

function TXMLDatosPresentacionType.Get_TimestampPresentacion: UnicodeString;
begin
  Result := ChildNodes['TimestampPresentacion'].Text;
end;

procedure TXMLDatosPresentacionType.Set_TimestampPresentacion(Value: UnicodeString);
begin
  ChildNodes['TimestampPresentacion'].NodeValue := Value;
end;

{ TXMLDatosPresentacion2Type }

function TXMLDatosPresentacion2Type.Get_NIFPresentador: UnicodeString;
begin
  Result := ChildNodes['NIFPresentador'].Text;
end;

procedure TXMLDatosPresentacion2Type.Set_NIFPresentador(Value: UnicodeString);
begin
  ChildNodes['NIFPresentador'].NodeValue := Value;
end;

function TXMLDatosPresentacion2Type.Get_TimestampPresentacion: UnicodeString;
begin
  Result := ChildNodes['TimestampPresentacion'].Text;
end;

procedure TXMLDatosPresentacion2Type.Set_TimestampPresentacion(Value: UnicodeString);
begin
  ChildNodes['TimestampPresentacion'].NodeValue := Value;
end;

function TXMLDatosPresentacion2Type.Get_IdPeticion: UnicodeString;
begin
  Result := ChildNodes['IdPeticion'].Text;
end;

procedure TXMLDatosPresentacion2Type.Set_IdPeticion(Value: UnicodeString);
begin
  ChildNodes['IdPeticion'].NodeValue := Value;
end;

{ TXMLRegistroSf }

procedure TXMLRegistroSf.AfterConstruction;
begin
  RegisterChildNode('PeriodoImputacion', TXMLRegistroSf_PeriodoImputacion);
  inherited;
end;

function TXMLRegistroSf.Get_PeriodoImputacion: IXMLRegistroSf_PeriodoImputacion;
begin
  Result := ChildNodes['PeriodoImputacion'] as IXMLRegistroSf_PeriodoImputacion;
end;

{ TXMLRegistroSf_PeriodoImputacion }

function TXMLRegistroSf_PeriodoImputacion.Get_Ejercicio: UnicodeString;
begin
  Result := ChildNodes['Ejercicio'].Text;
end;

procedure TXMLRegistroSf_PeriodoImputacion.Set_Ejercicio(Value: UnicodeString);
begin
  ChildNodes['Ejercicio'].NodeValue := Value;
end;

function TXMLRegistroSf_PeriodoImputacion.Get_Periodo: UnicodeString;
begin
  Result := ChildNodes['Periodo'].Text;
end;

procedure TXMLRegistroSf_PeriodoImputacion.Set_Periodo(Value: UnicodeString);
begin
  ChildNodes['Periodo'].NodeValue := Value;
end;

{ TXMLIDFacturaExpedidaBCType }

function TXMLIDFacturaExpedidaBCType.Get_IDEmisorFactura: UnicodeString;
begin
  Result := ChildNodes['IDEmisorFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaBCType.Set_IDEmisorFactura(Value: UnicodeString);
begin
  ChildNodes['IDEmisorFactura'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaBCType.Get_NumSerieFactura: UnicodeString;
begin
  Result := ChildNodes['NumSerieFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaBCType.Set_NumSerieFactura(Value: UnicodeString);
begin
  ChildNodes['NumSerieFactura'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaBCType.Get_FechaExpedicionFactura: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaBCType.Set_FechaExpedicionFactura(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFactura'].NodeValue := Value;
end;

{ TXMLIDFacturaExpedidaBajaType }

function TXMLIDFacturaExpedidaBajaType.Get_IDEmisorFacturaAnulada: UnicodeString;
begin
  Result := ChildNodes['IDEmisorFacturaAnulada'].Text;
end;

procedure TXMLIDFacturaExpedidaBajaType.Set_IDEmisorFacturaAnulada(Value: UnicodeString);
begin
  ChildNodes['IDEmisorFacturaAnulada'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaBajaType.Get_NumSerieFacturaAnulada: UnicodeString;
begin
  Result := ChildNodes['NumSerieFacturaAnulada'].Text;
end;

procedure TXMLIDFacturaExpedidaBajaType.Set_NumSerieFacturaAnulada(Value: UnicodeString);
begin
  ChildNodes['NumSerieFacturaAnulada'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaBajaType.Get_FechaExpedicionFacturaAnulada: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFacturaAnulada'].Text;
end;

procedure TXMLIDFacturaExpedidaBajaType.Set_FechaExpedicionFacturaAnulada(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFacturaAnulada'].NodeValue := Value;
end;

{ TXMLRegistroFacturacionAltaType }

procedure TXMLRegistroFacturacionAltaType.AfterConstruction;
begin
  RegisterChildNode('IDFactura', TXMLIDFacturaExpedidaType);
  RegisterChildNode('FacturasRectificadas', TXMLRegistroFacturacionAltaType_FacturasRectificadas);
  RegisterChildNode('FacturasSustituidas', TXMLRegistroFacturacionAltaType_FacturasSustituidas);
  RegisterChildNode('ImporteRectificacion', TXMLDesgloseRectificacionType);
  RegisterChildNode('Tercero', TXMLPersonaFisicaJuridicaType);
  RegisterChildNode('Destinatarios', TXMLRegistroFacturacionAltaType_Destinatarios);
  RegisterChildNode('Desglose', TXMLDesgloseType);
  RegisterChildNode('Encadenamiento', TXMLRegistroFacturacionAltaType_Encadenamiento);
  RegisterChildNode('SistemaInformatico', TXMLSistemaInformaticoType);
  RegisterChildNode('Signature', TXMLSignatureType_ds);
  inherited;
end;

function TXMLRegistroFacturacionAltaType.Get_IDVersion: UnicodeString;
begin
  Result := ChildNodes['IDVersion'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_IDVersion(Value: UnicodeString);
begin
  ChildNodes['IDVersion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_IDFactura: IXMLIDFacturaExpedidaType;
begin
  Result := ChildNodes['IDFactura'] as IXMLIDFacturaExpedidaType;
end;

function TXMLRegistroFacturacionAltaType.Get_NombreRazonEmisor: UnicodeString;
begin
  Result := ChildNodes['NombreRazonEmisor'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_NombreRazonEmisor(Value: UnicodeString);
begin
  ChildNodes['NombreRazonEmisor'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_Subsanacion: UnicodeString;
begin
  Result := ChildNodes['Subsanacion'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_Subsanacion(Value: UnicodeString);
begin
  ChildNodes['Subsanacion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_RechazoPrevio: UnicodeString;
begin
  Result := ChildNodes['RechazoPrevio'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_RechazoPrevio(Value: UnicodeString);
begin
  ChildNodes['RechazoPrevio'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_TipoFactura: UnicodeString;
begin
  Result := ChildNodes['TipoFactura'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_TipoFactura(Value: UnicodeString);
begin
  ChildNodes['TipoFactura'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_TipoRectificativa: UnicodeString;
begin
  Result := ChildNodes['TipoRectificativa'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_TipoRectificativa(Value: UnicodeString);
begin
  ChildNodes['TipoRectificativa'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_FacturasRectificadas: IXMLRegistroFacturacionAltaType_FacturasRectificadas;
begin
  Result := ChildNodes['FacturasRectificadas'] as IXMLRegistroFacturacionAltaType_FacturasRectificadas;
end;

function TXMLRegistroFacturacionAltaType.Get_FacturasSustituidas: IXMLRegistroFacturacionAltaType_FacturasSustituidas;
begin
  Result := ChildNodes['FacturasSustituidas'] as IXMLRegistroFacturacionAltaType_FacturasSustituidas;
end;

function TXMLRegistroFacturacionAltaType.Get_ImporteRectificacion: IXMLDesgloseRectificacionType;
begin
  Result := ChildNodes['ImporteRectificacion'] as IXMLDesgloseRectificacionType;
end;

function TXMLRegistroFacturacionAltaType.Get_FechaOperacion: UnicodeString;
begin
  Result := ChildNodes['FechaOperacion'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_FechaOperacion(Value: UnicodeString);
begin
  ChildNodes['FechaOperacion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_DescripcionOperacion: UnicodeString;
begin
  Result := ChildNodes['DescripcionOperacion'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_DescripcionOperacion(Value: UnicodeString);
begin
  ChildNodes['DescripcionOperacion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_FacturaSimplificadaArt7273: UnicodeString;
begin
  Result := ChildNodes['FacturaSimplificadaArt7273'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_FacturaSimplificadaArt7273(Value: UnicodeString);
begin
  ChildNodes['FacturaSimplificadaArt7273'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_FacturaSinIdentifDestinatarioArt61d: UnicodeString;
begin
  Result := ChildNodes['FacturaSinIdentifDestinatarioArt61d'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_FacturaSinIdentifDestinatarioArt61d(Value: UnicodeString);
begin
  ChildNodes['FacturaSinIdentifDestinatarioArt61d'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_Macrodato: UnicodeString;
begin
  Result := ChildNodes['Macrodato'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_Macrodato(Value: UnicodeString);
begin
  ChildNodes['Macrodato'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_EmitidaPorTerceroODestinatario: UnicodeString;
begin
  Result := ChildNodes['EmitidaPorTerceroODestinatario'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_EmitidaPorTerceroODestinatario(Value: UnicodeString);
begin
  ChildNodes['EmitidaPorTerceroODestinatario'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_Tercero: IXMLPersonaFisicaJuridicaType;
begin
  Result := ChildNodes['Tercero'] as IXMLPersonaFisicaJuridicaType;
end;

function TXMLRegistroFacturacionAltaType.Get_Destinatarios: IXMLRegistroFacturacionAltaType_Destinatarios;
begin
  Result := ChildNodes['Destinatarios'] as IXMLRegistroFacturacionAltaType_Destinatarios;
end;

function TXMLRegistroFacturacionAltaType.Get_Cupon: UnicodeString;
begin
  Result := ChildNodes['Cupon'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_Cupon(Value: UnicodeString);
begin
  ChildNodes['Cupon'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_Desglose: IXMLDesgloseType;
begin
  Result := ChildNodes['Desglose'] as IXMLDesgloseType;
end;

function TXMLRegistroFacturacionAltaType.Get_CuotaTotal: UnicodeString;
begin
  Result := ChildNodes['CuotaTotal'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_CuotaTotal(Value: UnicodeString);
begin
  ChildNodes['CuotaTotal'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_ImporteTotal: UnicodeString;
begin
  Result := ChildNodes['ImporteTotal'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_ImporteTotal(Value: UnicodeString);
begin
  ChildNodes['ImporteTotal'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_Encadenamiento: IXMLRegistroFacturacionAltaType_Encadenamiento;
begin
  Result := ChildNodes['Encadenamiento'] as IXMLRegistroFacturacionAltaType_Encadenamiento;
end;

function TXMLRegistroFacturacionAltaType.Get_SistemaInformatico: IXMLSistemaInformaticoType;
begin
  Result := ChildNodes['SistemaInformatico'] as IXMLSistemaInformaticoType;
end;

function TXMLRegistroFacturacionAltaType.Get_FechaHoraHusoGenRegistro: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoGenRegistro'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_FechaHoraHusoGenRegistro(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoGenRegistro'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_NumRegistroAcuerdoFacturacion: UnicodeString;
begin
  Result := ChildNodes['NumRegistroAcuerdoFacturacion'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_NumRegistroAcuerdoFacturacion(Value: UnicodeString);
begin
  ChildNodes['NumRegistroAcuerdoFacturacion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_IdAcuerdoSistemaInformatico: UnicodeString;
begin
  Result := ChildNodes['IdAcuerdoSistemaInformatico'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_IdAcuerdoSistemaInformatico(Value: UnicodeString);
begin
  ChildNodes['IdAcuerdoSistemaInformatico'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_TipoHuella: UnicodeString;
begin
  Result := ChildNodes['TipoHuella'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_TipoHuella(Value: UnicodeString);
begin
  ChildNodes['TipoHuella'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_Huella: UnicodeString;
begin
  Result := ChildNodes['Huella'].Text;
end;

procedure TXMLRegistroFacturacionAltaType.Set_Huella(Value: UnicodeString);
begin
  ChildNodes['Huella'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType.Get_Signature: IXMLSignatureType_ds;
begin
  Result := ChildNodes['Signature'] as IXMLSignatureType_ds;
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

{ TXMLRegistroFacturacionAltaType_FacturasRectificadas }

procedure TXMLRegistroFacturacionAltaType_FacturasRectificadas.AfterConstruction;
begin
  RegisterChildNode('IDFacturaRectificada', TXMLIDFacturaARType);
  ItemTag := 'IDFacturaRectificada';
  ItemInterface := IXMLIDFacturaARType;
  inherited;
end;

function TXMLRegistroFacturacionAltaType_FacturasRectificadas.Get_IDFacturaRectificada(Index: Integer): IXMLIDFacturaARType;
begin
  Result := List[Index] as IXMLIDFacturaARType;
end;

function TXMLRegistroFacturacionAltaType_FacturasRectificadas.Add: IXMLIDFacturaARType;
begin
  Result := AddItem(-1) as IXMLIDFacturaARType;
end;

function TXMLRegistroFacturacionAltaType_FacturasRectificadas.Insert(const Index: Integer): IXMLIDFacturaARType;
begin
  Result := AddItem(Index) as IXMLIDFacturaARType;
end;

{ TXMLIDFacturaARType }

function TXMLIDFacturaARType.Get_IDEmisorFactura: UnicodeString;
begin
  Result := ChildNodes['IDEmisorFactura'].Text;
end;

procedure TXMLIDFacturaARType.Set_IDEmisorFactura(Value: UnicodeString);
begin
  ChildNodes['IDEmisorFactura'].NodeValue := Value;
end;

function TXMLIDFacturaARType.Get_NumSerieFactura: UnicodeString;
begin
  Result := ChildNodes['NumSerieFactura'].Text;
end;

procedure TXMLIDFacturaARType.Set_NumSerieFactura(Value: UnicodeString);
begin
  ChildNodes['NumSerieFactura'].NodeValue := Value;
end;

function TXMLIDFacturaARType.Get_FechaExpedicionFactura: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFactura'].Text;
end;

procedure TXMLIDFacturaARType.Set_FechaExpedicionFactura(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFactura'].NodeValue := Value;
end;

{ TXMLRegistroFacturacionAltaType_FacturasSustituidas }

procedure TXMLRegistroFacturacionAltaType_FacturasSustituidas.AfterConstruction;
begin
  RegisterChildNode('IDFacturaSustituida', TXMLIDFacturaARType);
  ItemTag := 'IDFacturaSustituida';
  ItemInterface := IXMLIDFacturaARType;
  inherited;
end;

function TXMLRegistroFacturacionAltaType_FacturasSustituidas.Get_IDFacturaSustituida(Index: Integer): IXMLIDFacturaARType;
begin
  Result := List[Index] as IXMLIDFacturaARType;
end;

function TXMLRegistroFacturacionAltaType_FacturasSustituidas.Add: IXMLIDFacturaARType;
begin
  Result := AddItem(-1) as IXMLIDFacturaARType;
end;

function TXMLRegistroFacturacionAltaType_FacturasSustituidas.Insert(const Index: Integer): IXMLIDFacturaARType;
begin
  Result := AddItem(Index) as IXMLIDFacturaARType;
end;

{ TXMLDesgloseRectificacionType }

function TXMLDesgloseRectificacionType.Get_BaseRectificada: UnicodeString;
begin
  Result := ChildNodes['BaseRectificada'].Text;
end;

procedure TXMLDesgloseRectificacionType.Set_BaseRectificada(Value: UnicodeString);
begin
  ChildNodes['BaseRectificada'].NodeValue := Value;
end;

function TXMLDesgloseRectificacionType.Get_CuotaRectificada: UnicodeString;
begin
  Result := ChildNodes['CuotaRectificada'].Text;
end;

procedure TXMLDesgloseRectificacionType.Set_CuotaRectificada(Value: UnicodeString);
begin
  ChildNodes['CuotaRectificada'].NodeValue := Value;
end;

function TXMLDesgloseRectificacionType.Get_CuotaRecargoRectificado: UnicodeString;
begin
  Result := ChildNodes['CuotaRecargoRectificado'].Text;
end;

procedure TXMLDesgloseRectificacionType.Set_CuotaRecargoRectificado(Value: UnicodeString);
begin
  ChildNodes['CuotaRecargoRectificado'].NodeValue := Value;
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

{ TXMLRegistroFacturacionAltaType_Destinatarios }

procedure TXMLRegistroFacturacionAltaType_Destinatarios.AfterConstruction;
begin
  RegisterChildNode('IDDestinatario', TXMLPersonaFisicaJuridicaType);
  ItemTag := 'IDDestinatario';
  ItemInterface := IXMLPersonaFisicaJuridicaType;
  inherited;
end;

function TXMLRegistroFacturacionAltaType_Destinatarios.Get_IDDestinatario(Index: Integer): IXMLPersonaFisicaJuridicaType;
begin
  Result := List[Index] as IXMLPersonaFisicaJuridicaType;
end;

function TXMLRegistroFacturacionAltaType_Destinatarios.Add: IXMLPersonaFisicaJuridicaType;
begin
  Result := AddItem(-1) as IXMLPersonaFisicaJuridicaType;
end;

function TXMLRegistroFacturacionAltaType_Destinatarios.Insert(const Index: Integer): IXMLPersonaFisicaJuridicaType;
begin
  Result := AddItem(Index) as IXMLPersonaFisicaJuridicaType;
end;

{ TXMLDesgloseType }

procedure TXMLDesgloseType.AfterConstruction;
begin
  RegisterChildNode('DetalleDesglose', TXMLDetalleType);
  ItemTag := 'DetalleDesglose';
  ItemInterface := IXMLDetalleType;
  inherited;
end;

function TXMLDesgloseType.Get_DetalleDesglose(Index: Integer): IXMLDetalleType;
begin
  Result := List[Index] as IXMLDetalleType;
end;

function TXMLDesgloseType.Add: IXMLDetalleType;
begin
  Result := AddItem(-1) as IXMLDetalleType;
end;

function TXMLDesgloseType.Insert(const Index: Integer): IXMLDetalleType;
begin
  Result := AddItem(Index) as IXMLDetalleType;
end;

{ TXMLDetalleType }

function TXMLDetalleType.Get_Impuesto: UnicodeString;
begin
  Result := ChildNodes['Impuesto'].Text;
end;

procedure TXMLDetalleType.Set_Impuesto(Value: UnicodeString);
begin
  ChildNodes['Impuesto'].NodeValue := Value;
end;

function TXMLDetalleType.Get_ClaveRegimen: UnicodeString;
begin
  Result := ChildNodes['ClaveRegimen'].Text;
end;

procedure TXMLDetalleType.Set_ClaveRegimen(Value: UnicodeString);
begin
  ChildNodes['ClaveRegimen'].NodeValue := Value;
end;

function TXMLDetalleType.Get_CalificacionOperacion: UnicodeString;
begin
  Result := ChildNodes['CalificacionOperacion'].Text;
end;

procedure TXMLDetalleType.Set_CalificacionOperacion(Value: UnicodeString);
begin
  ChildNodes['CalificacionOperacion'].NodeValue := Value;
end;

function TXMLDetalleType.Get_OperacionExenta: UnicodeString;
begin
  Result := ChildNodes['OperacionExenta'].Text;
end;

procedure TXMLDetalleType.Set_OperacionExenta(Value: UnicodeString);
begin
  ChildNodes['OperacionExenta'].NodeValue := Value;
end;

function TXMLDetalleType.Get_TipoImpositivo: UnicodeString;
begin
  Result := ChildNodes['TipoImpositivo'].Text;
end;

procedure TXMLDetalleType.Set_TipoImpositivo(Value: UnicodeString);
begin
  ChildNodes['TipoImpositivo'].NodeValue := Value;
end;

function TXMLDetalleType.Get_BaseImponibleOimporteNoSujeto: UnicodeString;
begin
  Result := ChildNodes['BaseImponibleOimporteNoSujeto'].Text;
end;

procedure TXMLDetalleType.Set_BaseImponibleOimporteNoSujeto(Value: UnicodeString);
begin
  ChildNodes['BaseImponibleOimporteNoSujeto'].NodeValue := Value;
end;

function TXMLDetalleType.Get_BaseImponibleACoste: UnicodeString;
begin
  Result := ChildNodes['BaseImponibleACoste'].Text;
end;

procedure TXMLDetalleType.Set_BaseImponibleACoste(Value: UnicodeString);
begin
  ChildNodes['BaseImponibleACoste'].NodeValue := Value;
end;

function TXMLDetalleType.Get_CuotaRepercutida: UnicodeString;
begin
  Result := ChildNodes['CuotaRepercutida'].Text;
end;

procedure TXMLDetalleType.Set_CuotaRepercutida(Value: UnicodeString);
begin
  ChildNodes['CuotaRepercutida'].NodeValue := Value;
end;

function TXMLDetalleType.Get_TipoRecargoEquivalencia: UnicodeString;
begin
  Result := ChildNodes['TipoRecargoEquivalencia'].Text;
end;

procedure TXMLDetalleType.Set_TipoRecargoEquivalencia(Value: UnicodeString);
begin
  ChildNodes['TipoRecargoEquivalencia'].NodeValue := Value;
end;

function TXMLDetalleType.Get_CuotaRecargoEquivalencia: UnicodeString;
begin
  Result := ChildNodes['CuotaRecargoEquivalencia'].Text;
end;

procedure TXMLDetalleType.Set_CuotaRecargoEquivalencia(Value: UnicodeString);
begin
  ChildNodes['CuotaRecargoEquivalencia'].NodeValue := Value;
end;

{ TXMLRegistroFacturacionAltaType_Encadenamiento }

procedure TXMLRegistroFacturacionAltaType_Encadenamiento.AfterConstruction;
begin
  RegisterChildNode('RegistroAnterior', TXMLEncadenamientoFacturaAnteriorType);
  inherited;
end;

function TXMLRegistroFacturacionAltaType_Encadenamiento.Get_PrimerRegistro: UnicodeString;
begin
  Result := ChildNodes['PrimerRegistro'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_Encadenamiento.Set_PrimerRegistro(Value: UnicodeString);
begin
  ChildNodes['PrimerRegistro'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_Encadenamiento.Get_RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType;
begin
  Result := ChildNodes['RegistroAnterior'] as IXMLEncadenamientoFacturaAnteriorType;
end;

{ TXMLEncadenamientoFacturaAnteriorType }

function TXMLEncadenamientoFacturaAnteriorType.Get_IDEmisorFactura: UnicodeString;
begin
  Result := ChildNodes['IDEmisorFactura'].Text;
end;

procedure TXMLEncadenamientoFacturaAnteriorType.Set_IDEmisorFactura(Value: UnicodeString);
begin
  ChildNodes['IDEmisorFactura'].NodeValue := Value;
end;

function TXMLEncadenamientoFacturaAnteriorType.Get_NumSerieFactura: UnicodeString;
begin
  Result := ChildNodes['NumSerieFactura'].Text;
end;

procedure TXMLEncadenamientoFacturaAnteriorType.Set_NumSerieFactura(Value: UnicodeString);
begin
  ChildNodes['NumSerieFactura'].NodeValue := Value;
end;

function TXMLEncadenamientoFacturaAnteriorType.Get_FechaExpedicionFactura: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFactura'].Text;
end;

procedure TXMLEncadenamientoFacturaAnteriorType.Set_FechaExpedicionFactura(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFactura'].NodeValue := Value;
end;

function TXMLEncadenamientoFacturaAnteriorType.Get_Huella: UnicodeString;
begin
  Result := ChildNodes['Huella'].Text;
end;

procedure TXMLEncadenamientoFacturaAnteriorType.Set_Huella(Value: UnicodeString);
begin
  ChildNodes['Huella'].NodeValue := Value;
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

{ TXMLRegistroFacturacionAnulacionType }

procedure TXMLRegistroFacturacionAnulacionType.AfterConstruction;
begin
  RegisterChildNode('IDFactura', TXMLIDFacturaExpedidaBajaType);
  RegisterChildNode('Generador', TXMLPersonaFisicaJuridicaType);
  RegisterChildNode('Encadenamiento', TXMLRegistroFacturacionAnulacionType_Encadenamiento);
  RegisterChildNode('SistemaInformatico', TXMLSistemaInformaticoType);
  RegisterChildNode('Signature', TXMLSignatureType_ds);
  inherited;
end;

function TXMLRegistroFacturacionAnulacionType.Get_IDVersion: UnicodeString;
begin
  Result := ChildNodes['IDVersion'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType.Set_IDVersion(Value: UnicodeString);
begin
  ChildNodes['IDVersion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType.Get_IDFactura: IXMLIDFacturaExpedidaBajaType;
begin
  Result := ChildNodes['IDFactura'] as IXMLIDFacturaExpedidaBajaType;
end;

function TXMLRegistroFacturacionAnulacionType.Get_SinRegistroPrevio: UnicodeString;
begin
  Result := ChildNodes['SinRegistroPrevio'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType.Set_SinRegistroPrevio(Value: UnicodeString);
begin
  ChildNodes['SinRegistroPrevio'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType.Get_RechazoPrevio: UnicodeString;
begin
  Result := ChildNodes['RechazoPrevio'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType.Set_RechazoPrevio(Value: UnicodeString);
begin
  ChildNodes['RechazoPrevio'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType.Get_GeneradoPor: UnicodeString;
begin
  Result := ChildNodes['GeneradoPor'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType.Set_GeneradoPor(Value: UnicodeString);
begin
  ChildNodes['GeneradoPor'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType.Get_Generador: IXMLPersonaFisicaJuridicaType;
begin
  Result := ChildNodes['Generador'] as IXMLPersonaFisicaJuridicaType;
end;

function TXMLRegistroFacturacionAnulacionType.Get_Encadenamiento: IXMLRegistroFacturacionAnulacionType_Encadenamiento;
begin
  Result := ChildNodes['Encadenamiento'] as IXMLRegistroFacturacionAnulacionType_Encadenamiento;
end;

function TXMLRegistroFacturacionAnulacionType.Get_SistemaInformatico: IXMLSistemaInformaticoType;
begin
  Result := ChildNodes['SistemaInformatico'] as IXMLSistemaInformaticoType;
end;

function TXMLRegistroFacturacionAnulacionType.Get_FechaHoraHusoGenRegistro: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoGenRegistro'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType.Set_FechaHoraHusoGenRegistro(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoGenRegistro'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType.Get_TipoHuella: UnicodeString;
begin
  Result := ChildNodes['TipoHuella'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType.Set_TipoHuella(Value: UnicodeString);
begin
  ChildNodes['TipoHuella'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType.Get_Huella: UnicodeString;
begin
  Result := ChildNodes['Huella'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType.Set_Huella(Value: UnicodeString);
begin
  ChildNodes['Huella'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType.Get_Signature: IXMLSignatureType_ds;
begin
  Result := ChildNodes['Signature'] as IXMLSignatureType_ds;
end;

{ TXMLRegistroFacturacionAnulacionType_Encadenamiento }

procedure TXMLRegistroFacturacionAnulacionType_Encadenamiento.AfterConstruction;
begin
  RegisterChildNode('RegistroAnterior', TXMLEncadenamientoFacturaAnteriorType);
  inherited;
end;

function TXMLRegistroFacturacionAnulacionType_Encadenamiento.Get_PrimerRegistro: UnicodeString;
begin
  Result := ChildNodes['PrimerRegistro'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType_Encadenamiento.Set_PrimerRegistro(Value: UnicodeString);
begin
  ChildNodes['PrimerRegistro'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType_Encadenamiento.Get_RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType;
begin
  Result := ChildNodes['RegistroAnterior'] as IXMLEncadenamientoFacturaAnteriorType;
end;

{ TXMLRangoFechaExpedicionType }

function TXMLRangoFechaExpedicionType.Get_Desde: UnicodeString;
begin
  Result := ChildNodes['Desde'].Text;
end;

procedure TXMLRangoFechaExpedicionType.Set_Desde(Value: UnicodeString);
begin
  ChildNodes['Desde'].NodeValue := Value;
end;

function TXMLRangoFechaExpedicionType.Get_Hasta: UnicodeString;
begin
  Result := ChildNodes['Hasta'].Text;
end;

procedure TXMLRangoFechaExpedicionType.Set_Hasta(Value: UnicodeString);
begin
  ChildNodes['Hasta'].NodeValue := Value;
end;

{ TXMLFechaExpedicionConsultaType }

procedure TXMLFechaExpedicionConsultaType.AfterConstruction;
begin
  RegisterChildNode('RangoFechaExpedicion', TXMLRangoFechaExpedicionType);
  inherited;
end;

function TXMLFechaExpedicionConsultaType.Get_FechaExpedicionFactura: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFactura'].Text;
end;

procedure TXMLFechaExpedicionConsultaType.Set_FechaExpedicionFactura(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFactura'].NodeValue := Value;
end;

function TXMLFechaExpedicionConsultaType.Get_RangoFechaExpedicion: IXMLRangoFechaExpedicionType;
begin
  Result := ChildNodes['RangoFechaExpedicion'] as IXMLRangoFechaExpedicionType;
end;

{ TXMLRegistroDuplicadoType }

function TXMLRegistroDuplicadoType.Get_IdPeticionRegistroDuplicado: UnicodeString;
begin
  Result := ChildNodes['IdPeticionRegistroDuplicado'].Text;
end;

procedure TXMLRegistroDuplicadoType.Set_IdPeticionRegistroDuplicado(Value: UnicodeString);
begin
  ChildNodes['IdPeticionRegistroDuplicado'].NodeValue := Value;
end;

function TXMLRegistroDuplicadoType.Get_EstadoRegistroDuplicado: UnicodeString;
begin
  Result := ChildNodes['EstadoRegistroDuplicado'].Text;
end;

procedure TXMLRegistroDuplicadoType.Set_EstadoRegistroDuplicado(Value: UnicodeString);
begin
  ChildNodes['EstadoRegistroDuplicado'].NodeValue := Value;
end;

function TXMLRegistroDuplicadoType.Get_CodigoErrorRegistro: Integer;
begin
  Result := ChildNodes['CodigoErrorRegistro'].NodeValue;
end;

procedure TXMLRegistroDuplicadoType.Set_CodigoErrorRegistro(Value: Integer);
begin
  ChildNodes['CodigoErrorRegistro'].NodeValue := Value;
end;

function TXMLRegistroDuplicadoType.Get_DescripcionErrorRegistro: UnicodeString;
begin
  Result := ChildNodes['DescripcionErrorRegistro'].Text;
end;

procedure TXMLRegistroDuplicadoType.Set_DescripcionErrorRegistro(Value: UnicodeString);
begin
  ChildNodes['DescripcionErrorRegistro'].NodeValue := Value;
end;

{ TXMLContraparteConsultaType }

procedure TXMLContraparteConsultaType.AfterConstruction;
begin
  RegisterChildNode('IDOtro', TXMLIDOtroType);
  inherited;
end;

function TXMLContraparteConsultaType.Get_NombreRazon: UnicodeString;
begin
  Result := ChildNodes['NombreRazon'].Text;
end;

procedure TXMLContraparteConsultaType.Set_NombreRazon(Value: UnicodeString);
begin
  ChildNodes['NombreRazon'].NodeValue := Value;
end;

function TXMLContraparteConsultaType.Get_NIF: UnicodeString;
begin
  Result := ChildNodes['NIF'].Text;
end;

procedure TXMLContraparteConsultaType.Set_NIF(Value: UnicodeString);
begin
  ChildNodes['NIF'].NodeValue := Value;
end;

function TXMLContraparteConsultaType.Get_IDOtro: IXMLIDOtroType;
begin
  Result := ChildNodes['IDOtro'] as IXMLIDOtroType;
end;

{ TXMLConsultaInformacion }

procedure TXMLConsultaInformacion.AfterConstruction;
begin
  RegisterChildNode('Cabecera', TXMLCabeceraConsultaSf);
  inherited;
end;

function TXMLConsultaInformacion.Get_Cabecera: IXMLCabeceraConsultaSf;
begin
  Result := ChildNodes['Cabecera'] as IXMLCabeceraConsultaSf;
end;

{ TXMLCabeceraConsultaSf }

procedure TXMLCabeceraConsultaSf.AfterConstruction;
begin
  RegisterChildNode('ObligadoEmision', TXMLObligadoEmisionConsultaType);
  RegisterChildNode('Destinatario', TXMLPersonaFisicaJuridicaESType);
  inherited;
end;

function TXMLCabeceraConsultaSf.Get_IDVersion: UnicodeString;
begin
  Result := ChildNodes['IDVersion'].Text;
end;

procedure TXMLCabeceraConsultaSf.Set_IDVersion(Value: UnicodeString);
begin
  ChildNodes['IDVersion'].NodeValue := Value;
end;

function TXMLCabeceraConsultaSf.Get_ObligadoEmision: IXMLObligadoEmisionConsultaType;
begin
  Result := ChildNodes['ObligadoEmision'] as IXMLObligadoEmisionConsultaType;
end;

function TXMLCabeceraConsultaSf.Get_Destinatario: IXMLPersonaFisicaJuridicaESType;
begin
  Result := ChildNodes['Destinatario'] as IXMLPersonaFisicaJuridicaESType;
end;

function TXMLCabeceraConsultaSf.Get_IndicadorRepresentante: UnicodeString;
begin
  Result := ChildNodes['IndicadorRepresentante'].Text;
end;

procedure TXMLCabeceraConsultaSf.Set_IndicadorRepresentante(Value: UnicodeString);
begin
  ChildNodes['IndicadorRepresentante'].NodeValue := Value;
end;

{ TXMLObligadoEmisionConsultaType }

function TXMLObligadoEmisionConsultaType.Get_NombreRazon: UnicodeString;
begin
  Result := ChildNodes['NombreRazon'].Text;
end;

procedure TXMLObligadoEmisionConsultaType.Set_NombreRazon(Value: UnicodeString);
begin
  ChildNodes['NombreRazon'].NodeValue := Value;
end;

function TXMLObligadoEmisionConsultaType.Get_NIF: UnicodeString;
begin
  Result := ChildNodes['NIF'].Text;
end;

procedure TXMLObligadoEmisionConsultaType.Set_NIF(Value: UnicodeString);
begin
  ChildNodes['NIF'].NodeValue := Value;
end;

{ TXMLObligadoGeneracionType }

function TXMLObligadoGeneracionType.Get_NombreRazon: UnicodeString;
begin
  Result := ChildNodes['NombreRazon'].Text;
end;

procedure TXMLObligadoGeneracionType.Set_NombreRazon(Value: UnicodeString);
begin
  ChildNodes['NombreRazon'].NodeValue := Value;
end;

function TXMLObligadoGeneracionType.Get_NIF: UnicodeString;
begin
  Result := ChildNodes['NIF'].Text;
end;

procedure TXMLObligadoGeneracionType.Set_NIF(Value: UnicodeString);
begin
  ChildNodes['NIF'].NodeValue := Value;
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