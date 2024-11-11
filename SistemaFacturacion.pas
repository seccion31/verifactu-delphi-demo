// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://prewww2.aeat.es/static_files/common/internet/dep/aplicaciones/es/aeat/tikeV1.0/cont/ws/SistemaFacturacion.wsdl
//  >Import : https://prewww2.aeat.es/static_files/common/internet/dep/aplicaciones/es/aeat/tikeV1.0/cont/ws/SistemaFacturacion.wsdl>0
//  >Import : https://prewww2.aeat.es/static_files/common/internet/dep/aplicaciones/es/aeat/tikeV1.0/cont/ws/SuministroInformacion.xsd
//  >Import : http://www.w3.org/TR/xmldsig-core/xmldsig-core-schema.xsd
//  >Import : https://prewww2.aeat.es/static_files/common/internet/dep/aplicaciones/es/aeat/tikeV1.0/cont/ws/SuministroLR.xsd
//  >Import : https://prewww2.aeat.es/static_files/common/internet/dep/aplicaciones/es/aeat/tikeV1.0/cont/ws/RespuestaSuministro.xsd
// Encoding : UTF-8
// Codegen  : [wfForceSOAP11+, wfForceSOAP12+]
// Version  : 1.0
// (28/10/2024 18:27:08 - - $Rev: 90173 $)
// ************************************************************************ //

unit SistemaFacturacion;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_ATTR = $0010;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:integer         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:ID              - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:anyURI          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:schema          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]

  Encadenamiento       = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[Cplx] }
  Encadenamiento2      = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[Cplx] }
  RegFactuSistemaFacturacion = class;           { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroLR.xsd"[GblElm] }
  RegistroFacturaType  = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroLR.xsd"[GblCplx] }
  RespuestaBaseType    = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd"[GblCplx] }
  RespuestaRegFactuSistemaFacturacionType = class;   { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd"[GblCplx] }
  RespuestaRegFactuSistemaFacturacion = class;   { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd"[GblElm] }
  DetalleType          = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  X509IssuerSerialType = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  KeyValueType         = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  KeyValue             = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  SignatureValueType   = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  SignatureValue       = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  SignatureMethodType  = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  SignatureMethod      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  RetrievalMethodType  = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  RetrievalMethod      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  TransformType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  Transform            = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  SignedInfoType       = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  SignedInfo           = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  PGPDataType          = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  PGPData              = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  OperacionType        = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  RespuestaExpedidaType = class;                { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd"[GblCplx] }
  DesgloseRectificacionType = class;            { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  ReferenceType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  Reference            = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  CabeceraType         = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  SignatureType        = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  Signature            = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  KeyInfoType          = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  KeyInfo              = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  X509DataType         = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  X509Data             = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  RSAKeyValueType      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  RSAKeyValue          = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  DSAKeyValueType      = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  DSAKeyValue          = class;                 { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  PersonaFisicaJuridicaESType = class;          { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  PersonaFisicaJuridicaType = class;            { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  SistemaInformaticoType = class;               { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  DatosPresentacionType = class;                { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  RegistroFacturacionAnulacionType = class;     { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  RegistroAnulacion    = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblElm] }
  RegistroDuplicadoType = class;                { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  IDOtroType           = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  RemisionVoluntaria   = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[Cplx] }
  IDFacturaExpedidaBajaType = class;            { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  IDFacturaARType      = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  IDFacturaExpedidaType = class;                { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  RegistroFacturacionAltaType = class;          { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  RegistroAlta         = class;                 { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblElm] }
  EncadenamientoFacturaAnteriorType = class;    { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }
  RemisionRequerimiento = class;                { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[Cplx] }

  {$SCOPEDENUMS ON}
  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  SiNoType = (S, N);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  ImpuestoType = (_01, _02, _03, _05);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  IdOperacionesTrascendenciaTributariaType = (
      _01,
      _02,
      _03,
      _04,
      _05,
      _06,
      _07,
      _08,
      _09,
      _10,
      _11,
      _14,
      _15,
      _17,
      _18,
      _19,
      _20
  );

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  PrimerRegistroCadenaType = (S);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  SinRegistroPrevioType = (S, N);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  RechazoPrevioAnulacionType = (S, N);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  GeneradoPorType = (E, D, T);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TipoHuellaType = (_01);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd"[GblSmpl] }
  EstadoEnvioType = (Correcto, ParcialmenteCorrecto, Incorrecto);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd"[GblSmpl] }
  EstadoRegistroType = (Correcto, AceptadoConErrores, Incorrecto);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TipoOperacionType = (Alta, Anulacion);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  PersonaFisicaJuridicaIDTypeType = (_02, _03, _04, _05, _06, _07);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  CountryType2 = (
      AF,
      AL,
      DE,
      AD,
      AO,
      AI,
      AQ,
      AG,
      SA,
      DZ,
      AR,
      AM,
      AW,
      AU,
      AT,
      AZ,
      BS,
      BH,
      BD,
      BB,
      BE,
      BZ,
      BJ,
      BM,
      BY,
      BO,
      BA,
      BW,
      BV,
      BR,
      BN,
      BG,
      BF,
      BI,
      BT,
      CV,
      KY,
      KH,
      CM,
      CA,
      CF,
      CC,
      CO,
      KM,
      CG,
      CD,
      CK,
      KP,
      KR,
      CI,
      CR,
      HR,
      CU,
      TD,
      CZ,
      CL,
      CN,
      CY,
      CW,
      DK,
      DM,
      DO_,
      EC,
      EG,
      AE,
      ER,
      SK,
      SI,
      ES,
      US,
      EE,
      ET,
      FO,
      PH,
      FI,
      FJ,
      FR,
      GA,
      GM,
      GE,
      GS,
      GH,
      GI,
      GD,
      GR,
      GL,
      GU,
      GT,
      GG,
      GN,
      GQ,
      GW,
      GY,
      HT,
      HM,
      HN,
      HK,
      HU,
      IN_,
      ID,
      IR,
      IQ,
      IE,
      IM,
      IS_,
      IL,
      IT,
      JM,
      JP,
      JE,
      JO,
      KZ,
      KE,
      KG,
      KI,
      KW,
      LA,
      LS,
      LV,
      LB,
      LR,
      LY,
      LI,
      LT,
      LU,
      XG,
      MO,
      MK,
      MG,
      MY,
      MW,
      MV,
      ML,
      MT,
      FK,
      MP,
      MA,
      MH,
      MU,
      MR,
      YT,
      UM,
      MX,
      FM,
      MD,
      MC,
      MN,
      ME,
      MS,
      MZ,
      MM,
      NA,
      NR,
      CX,
      NP,
      NI,
      NE,
      NG,
      NU,
      NF,
      NO,
      NC,
      NZ,
      IO,
      OM,
      NL,
      BQ,
      PK,
      PW,
      PA,
      PG,
      PY,
      PE,
      PN,
      PF,
      PL,
      PT,
      PR,
      QA,
      GB,
      RW,
      RO,
      RU,
      SB,
      SV,
      WS,
      AS_,
      KN,
      SM,
      SX,
      PM,
      VC,
      SH,
      LC,
      ST,
      SN,
      RS,
      SC,
      SL,
      SG,
      SY,
      SO,
      LK,
      SZ,
      ZA,
      SD,
      SS,
      SE,
      CH,
      SR,
      TH,
      TW,
      TZ,
      TJ,
      PS,
      TF,
      TL,
      TG,
      TK,
      TO_,
      TT,
      TN,
      TC,
      TM,
      TR,
      TV,
      UA,
      UG,
      UY,
      UZ,
      VU,
      VA,
      VE,
      VN,
      VG,
      VI,
      WF,
      YE,
      DJ,
      ZM,
      ZW,
      QU,
      XB,
      XU,
      XN
  );

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  CalificacionOperacionType = (S1, S2, N1, N2);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  OperacionExentaType = (E1, E2, E3, E4, E5, E6);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  EstadoRegistroSFType = (Correcta, AceptadaConErrores, Anulada);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  CuponType = (S, N);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  RechazoPrevioType = (N, S, X);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  SubsanacionType = (S, N);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  ClaveTipoFacturaType = (F1, F2, R1, R2, R3, R4, R5, F3);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  ClaveTipoRectificativaType = (S, I);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  VersionType = (_1_0);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  MacrodatoType = (S, N);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  CompletaSinDestinatarioType = (S, N);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TercerosODestinatarioType = (D, T);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  SimplificadaCualificadaType = (S, N);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  IncidenciaType = (S, N);

  { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  FinRequerimientoType = (S, N);

  {$SCOPEDENUMS OFF}

  Array_Of_RespuestaExpedidaType = array of RespuestaExpedidaType;   { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd"[GblUbnd] }
  Array_Of_RegistroFacturaType = array of RegistroFacturaType;   { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroLR.xsd"[GblUbnd] }
  Array_Of_X509IssuerSerialType = array of X509IssuerSerialType;   { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }


  // ************************************************************************ //
  // XML       : Encadenamiento, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  Encadenamiento = class(TRemotable)
  private
    FPrimerRegistro: PrimerRegistroCadenaType;
    FPrimerRegistro_Specified: boolean;
    FRegistroAnterior: EncadenamientoFacturaAnteriorType;
    FRegistroAnterior_Specified: boolean;
    procedure SetPrimerRegistro(Index: Integer; const APrimerRegistroCadenaType: PrimerRegistroCadenaType);
    function  PrimerRegistro_Specified(Index: Integer): boolean;
    procedure SetRegistroAnterior(Index: Integer; const AEncadenamientoFacturaAnteriorType: EncadenamientoFacturaAnteriorType);
    function  RegistroAnterior_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property PrimerRegistro:   PrimerRegistroCadenaType           Index (IS_OPTN) read FPrimerRegistro write SetPrimerRegistro stored PrimerRegistro_Specified;
    property RegistroAnterior: EncadenamientoFacturaAnteriorType  Index (IS_OPTN) read FRegistroAnterior write SetRegistroAnterior stored RegistroAnterior_Specified;
  end;

  DesgloseType = array of DetalleType;          { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblCplx] }


  // ************************************************************************ //
  // XML       : Encadenamiento, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  Encadenamiento2 = class(TRemotable)
  private
    FPrimerRegistro: PrimerRegistroCadenaType;
    FPrimerRegistro_Specified: boolean;
    FRegistroAnterior: EncadenamientoFacturaAnteriorType;
    FRegistroAnterior_Specified: boolean;
    procedure SetPrimerRegistro(Index: Integer; const APrimerRegistroCadenaType: PrimerRegistroCadenaType);
    function  PrimerRegistro_Specified(Index: Integer): boolean;
    procedure SetRegistroAnterior(Index: Integer; const AEncadenamientoFacturaAnteriorType: EncadenamientoFacturaAnteriorType);
    function  RegistroAnterior_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property PrimerRegistro:   PrimerRegistroCadenaType           Index (IS_OPTN) read FPrimerRegistro write SetPrimerRegistro stored PrimerRegistro_Specified;
    property RegistroAnterior: EncadenamientoFacturaAnteriorType  Index (IS_OPTN) read FRegistroAnterior write SetRegistroAnterior stored RegistroAnterior_Specified;
  end;



  // ************************************************************************ //
  // XML       : RegFactuSistemaFacturacion, global, <element>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroLR.xsd
  // ************************************************************************ //
  RegFactuSistemaFacturacion = class(TRemotable)
  private
    FCabecera: CabeceraType;
    FRegistroFactura: Array_Of_RegistroFacturaType;
  public
    destructor Destroy; override;
  published
    property Cabecera:        CabeceraType                  read FCabecera write FCabecera;
    property RegistroFactura: Array_Of_RegistroFacturaType  Index (IS_UNBD) read FRegistroFactura write FRegistroFactura;
  end;



  // ************************************************************************ //
  // XML       : RegistroFacturaType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroLR.xsd
  // ************************************************************************ //
  RegistroFacturaType = class(TRemotable)
  private
    FRegistroAlta: RegistroAlta;
    FRegistroAlta_Specified: boolean;
    FRegistroAnulacion: RegistroAnulacion;
    FRegistroAnulacion_Specified: boolean;
    procedure SetRegistroAlta(Index: Integer; const ARegistroAlta: RegistroAlta);
    function  RegistroAlta_Specified(Index: Integer): boolean;
    procedure SetRegistroAnulacion(Index: Integer; const ARegistroAnulacion: RegistroAnulacion);
    function  RegistroAnulacion_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property RegistroAlta:      RegistroAlta       Index (IS_OPTN) read FRegistroAlta write SetRegistroAlta stored RegistroAlta_Specified;
    property RegistroAnulacion: RegistroAnulacion  Index (IS_OPTN) read FRegistroAnulacion write SetRegistroAnulacion stored RegistroAnulacion_Specified;
  end;

  Array_Of_PGPData = array of PGPData;          { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  Array_Of_X509Data = array of X509Data;        { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  Array_Of_Reference = array of Reference;      { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  Array_Of_RetrievalMethod = array of RetrievalMethod;   { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  Array_Of_KeyValue = array of KeyValue;        { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  TransformsType = array of Transform;          { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  KeyName         = string;         { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  Array_Of_KeyName = array of KeyName;          { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }
  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }
  Tipo2_2Type     = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TextMax1500Type = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  Tipo6Type       = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }


  // ************************************************************************ //
  // XML       : RespuestaBaseType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd
  // ************************************************************************ //
  RespuestaBaseType = class(TRemotable)
  private
    FCSV: string;
    FCSV_Specified: boolean;
    FDatosPresentacion: DatosPresentacionType;
    FDatosPresentacion_Specified: boolean;
    FCabecera: CabeceraType;
    FTiempoEsperaEnvio: Tipo6Type;
    FEstadoEnvio: EstadoEnvioType;
    procedure SetCSV(Index: Integer; const Astring: string);
    function  CSV_Specified(Index: Integer): boolean;
    procedure SetDatosPresentacion(Index: Integer; const ADatosPresentacionType: DatosPresentacionType);
    function  DatosPresentacion_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CSV:               string                 Index (IS_OPTN) read FCSV write SetCSV stored CSV_Specified;
    property DatosPresentacion: DatosPresentacionType  Index (IS_OPTN) read FDatosPresentacion write SetDatosPresentacion stored DatosPresentacion_Specified;
    property Cabecera:          CabeceraType           read FCabecera write FCabecera;
    property TiempoEsperaEnvio: Tipo6Type              read FTiempoEsperaEnvio write FTiempoEsperaEnvio;
    property EstadoEnvio:       EstadoEnvioType        read FEstadoEnvio write FEstadoEnvio;
  end;



  // ************************************************************************ //
  // XML       : RespuestaRegFactuSistemaFacturacionType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd
  // ************************************************************************ //
  RespuestaRegFactuSistemaFacturacionType = class(RespuestaBaseType)
  private
    FRespuestaLinea: Array_Of_RespuestaExpedidaType;
    FRespuestaLinea_Specified: boolean;
    procedure SetRespuestaLinea(Index: Integer; const AArray_Of_RespuestaExpedidaType: Array_Of_RespuestaExpedidaType);
    function  RespuestaLinea_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property RespuestaLinea: Array_Of_RespuestaExpedidaType  Index (IS_OPTN or IS_UNBD) read FRespuestaLinea write SetRespuestaLinea stored RespuestaLinea_Specified;
  end;



  // ************************************************************************ //
  // XML       : RespuestaRegFactuSistemaFacturacion, global, <element>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd
  // ************************************************************************ //
  RespuestaRegFactuSistemaFacturacion = class(RespuestaRegFactuSistemaFacturacionType)
  private
  published
  end;

  TextMax64Type   = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TextMax60Type   = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TextMax16Type   = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  ImporteSgn12_2Type = string;      { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TextMax15Type   = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }


  // ************************************************************************ //
  // XML       : DetalleType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  DetalleType = class(TRemotable)
  private
    FImpuesto: ImpuestoType;
    FImpuesto_Specified: boolean;
    FClaveRegimen: IdOperacionesTrascendenciaTributariaType;
    FClaveRegimen_Specified: boolean;
    FCalificacionOperacion: CalificacionOperacionType;
    FCalificacionOperacion_Specified: boolean;
    FOperacionExenta: OperacionExentaType;
    FOperacionExenta_Specified: boolean;
    FTipoImpositivo: Tipo2_2Type;
    FTipoImpositivo_Specified: boolean;
    FBaseImponibleOimporteNoSujeto: ImporteSgn12_2Type;
    FBaseImponibleACoste: ImporteSgn12_2Type;
    FBaseImponibleACoste_Specified: boolean;
    FCuotaRepercutida: ImporteSgn12_2Type;
    FCuotaRepercutida_Specified: boolean;
    FTipoRecargoEquivalencia: Tipo2_2Type;
    FTipoRecargoEquivalencia_Specified: boolean;
    FCuotaRecargoEquivalencia: ImporteSgn12_2Type;
    FCuotaRecargoEquivalencia_Specified: boolean;
    procedure SetImpuesto(Index: Integer; const AImpuestoType: ImpuestoType);
    function  Impuesto_Specified(Index: Integer): boolean;
    procedure SetClaveRegimen(Index: Integer; const AIdOperacionesTrascendenciaTributariaType: IdOperacionesTrascendenciaTributariaType);
    function  ClaveRegimen_Specified(Index: Integer): boolean;
    procedure SetCalificacionOperacion(Index: Integer; const ACalificacionOperacionType: CalificacionOperacionType);
    function  CalificacionOperacion_Specified(Index: Integer): boolean;
    procedure SetOperacionExenta(Index: Integer; const AOperacionExentaType: OperacionExentaType);
    function  OperacionExenta_Specified(Index: Integer): boolean;
    procedure SetTipoImpositivo(Index: Integer; const ATipo2_2Type: Tipo2_2Type);
    function  TipoImpositivo_Specified(Index: Integer): boolean;
    procedure SetBaseImponibleACoste(Index: Integer; const AImporteSgn12_2Type: ImporteSgn12_2Type);
    function  BaseImponibleACoste_Specified(Index: Integer): boolean;
    procedure SetCuotaRepercutida(Index: Integer; const AImporteSgn12_2Type: ImporteSgn12_2Type);
    function  CuotaRepercutida_Specified(Index: Integer): boolean;
    procedure SetTipoRecargoEquivalencia(Index: Integer; const ATipo2_2Type: Tipo2_2Type);
    function  TipoRecargoEquivalencia_Specified(Index: Integer): boolean;
    procedure SetCuotaRecargoEquivalencia(Index: Integer; const AImporteSgn12_2Type: ImporteSgn12_2Type);
    function  CuotaRecargoEquivalencia_Specified(Index: Integer): boolean;
  published
    property Impuesto:                      ImpuestoType                              Index (IS_OPTN) read FImpuesto write SetImpuesto stored Impuesto_Specified;
    property ClaveRegimen:                  IdOperacionesTrascendenciaTributariaType  Index (IS_OPTN) read FClaveRegimen write SetClaveRegimen stored ClaveRegimen_Specified;
    property CalificacionOperacion:         CalificacionOperacionType                 Index (IS_OPTN) read FCalificacionOperacion write SetCalificacionOperacion stored CalificacionOperacion_Specified;
    property OperacionExenta:               OperacionExentaType                       Index (IS_OPTN) read FOperacionExenta write SetOperacionExenta stored OperacionExenta_Specified;
    property TipoImpositivo:                Tipo2_2Type                               Index (IS_OPTN) read FTipoImpositivo write SetTipoImpositivo stored TipoImpositivo_Specified;
    property BaseImponibleOimporteNoSujeto: ImporteSgn12_2Type                        read FBaseImponibleOimporteNoSujeto write FBaseImponibleOimporteNoSujeto;
    property BaseImponibleACoste:           ImporteSgn12_2Type                        Index (IS_OPTN) read FBaseImponibleACoste write SetBaseImponibleACoste stored BaseImponibleACoste_Specified;
    property CuotaRepercutida:              ImporteSgn12_2Type                        Index (IS_OPTN) read FCuotaRepercutida write SetCuotaRepercutida stored CuotaRepercutida_Specified;
    property TipoRecargoEquivalencia:       Tipo2_2Type                               Index (IS_OPTN) read FTipoRecargoEquivalencia write SetTipoRecargoEquivalencia stored TipoRecargoEquivalencia_Specified;
    property CuotaRecargoEquivalencia:      ImporteSgn12_2Type                        Index (IS_OPTN) read FCuotaRecargoEquivalencia write SetCuotaRecargoEquivalencia stored CuotaRecargoEquivalencia_Specified;
  end;

  TextMax2Type    = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TextMax50Type   = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TextMax30Type   = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TextMax100Type  = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  ErrorDetalleType = Int64;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  ErrorDetalleType2 = Int64;        { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd"[GblSmpl] }


  // ************************************************************************ //
  // XML       : X509IssuerSerialType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  X509IssuerSerialType = class(TRemotable)
  private
    FX509IssuerName: string;
    FX509SerialNumber: Int64;
  published
    property X509IssuerName:   string  read FX509IssuerName write FX509IssuerName;
    property X509SerialNumber: Int64   read FX509SerialNumber write FX509SerialNumber;
  end;

  MgmtData        = string;         { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  Array_Of_MgmtData = array of MgmtData;        { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }


  // ************************************************************************ //
  // XML       : KeyValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  KeyValueType = class(TRemotable)
  private
    FDSAKeyValue: DSAKeyValue;
    FDSAKeyValue_Specified: boolean;
    FRSAKeyValue: RSAKeyValue;
    FRSAKeyValue_Specified: boolean;
    procedure SetDSAKeyValue(Index: Integer; const ADSAKeyValue: DSAKeyValue);
    function  DSAKeyValue_Specified(Index: Integer): boolean;
    procedure SetRSAKeyValue(Index: Integer; const ARSAKeyValue: RSAKeyValue);
    function  RSAKeyValue_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property DSAKeyValue: DSAKeyValue  Index (IS_OPTN) read FDSAKeyValue write SetDSAKeyValue stored DSAKeyValue_Specified;
    property RSAKeyValue: RSAKeyValue  Index (IS_OPTN) read FRSAKeyValue write SetRSAKeyValue stored RSAKeyValue_Specified;
  end;



  // ************************************************************************ //
  // XML       : KeyValue, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  KeyValue = class(KeyValueType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SignatureValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureValueType = class(TRemotable)
  private
    FText: TByteDynArray;
    FId: string;
    FId_Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
  published
    property Text: TByteDynArray  read FText write FText;
    property Id:   string         Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
  end;



  // ************************************************************************ //
  // XML       : SignatureValue, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureValue = class(SignatureValueType)
  private
  published
  end;

  HMACOutputLengthType = Int64;      { "http://www.w3.org/2000/09/xmldsig#"[GblSmpl] }
  Transforms      = TransformsType;      { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }


  // ************************************************************************ //
  // XML       : SignatureMethodType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureMethodType = class(TRemotable)
  private
    FAlgorithm: string;
    FHMACOutputLength: HMACOutputLengthType;
    FHMACOutputLength_Specified: boolean;
    procedure SetHMACOutputLength(Index: Integer; const AHMACOutputLengthType: HMACOutputLengthType);
    function  HMACOutputLength_Specified(Index: Integer): boolean;
  published
    property Algorithm:        string                Index (IS_ATTR) read FAlgorithm write FAlgorithm;
    property HMACOutputLength: HMACOutputLengthType  Index (IS_OPTN) read FHMACOutputLength write SetHMACOutputLength stored HMACOutputLength_Specified;
  end;



  // ************************************************************************ //
  // XML       : SignatureMethod, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureMethod = class(SignatureMethodType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : RetrievalMethodType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RetrievalMethodType = class(TRemotable)
  private
    FURI: string;
    FURI_Specified: boolean;
    FType_: string;
    FType__Specified: boolean;
    FTransforms: Transforms;
    FTransforms_Specified: boolean;
    procedure SetURI(Index: Integer; const Astring: string);
    function  URI_Specified(Index: Integer): boolean;
    procedure SetType_(Index: Integer; const Astring: string);
    function  Type__Specified(Index: Integer): boolean;
    procedure SetTransforms(Index: Integer; const ATransforms: Transforms);
    function  Transforms_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property URI:        string      Index (IS_ATTR or IS_OPTN) read FURI write SetURI stored URI_Specified;
    property Type_:      string      Index (IS_ATTR or IS_OPTN) read FType_ write SetType_ stored Type__Specified;
    property Transforms: Transforms  Index (IS_OPTN) read FTransforms write SetTransforms stored Transforms_Specified;
  end;



  // ************************************************************************ //
  // XML       : RetrievalMethod, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RetrievalMethod = class(RetrievalMethodType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : TransformType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  TransformType = class(TRemotable)
  private
    FAlgorithm: string;
    FXPath: Array_Of_string;
    FXPath_Specified: boolean;
    procedure SetXPath(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  XPath_Specified(Index: Integer): boolean;
  published
    property Algorithm: string           Index (IS_ATTR) read FAlgorithm write FAlgorithm;
    property XPath:     Array_Of_string  Index (IS_OPTN or IS_UNBD) read FXPath write SetXPath stored XPath_Specified;
  end;



  // ************************************************************************ //
  // XML       : Transform, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  Transform = class(TransformType)
  private
  published
  end;


  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Algorithm, Type:string }
  CanonicalizationMethodType = TXMLData;      { "http://www.w3.org/2000/09/xmldsig#"[GblCplxMxd] }

  CanonicalizationMethod = CanonicalizationMethodType;      { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }


  // ************************************************************************ //
  // XML       : SignedInfoType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignedInfoType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FCanonicalizationMethod: CanonicalizationMethod;
    FSignatureMethod: SignatureMethod;
    FReference: Array_Of_Reference;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:                     string                  Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property CanonicalizationMethod: CanonicalizationMethod  read FCanonicalizationMethod write FCanonicalizationMethod;
    property SignatureMethod:        SignatureMethod         read FSignatureMethod write FSignatureMethod;
    property Reference:              Array_Of_Reference      Index (IS_UNBD) read FReference write FReference;
  end;



  // ************************************************************************ //
  // XML       : SignedInfo, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignedInfo = class(SignedInfoType)
  private
  published
  end;


  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Algorithm, Type:string }
  DigestMethodType = TXMLData;      { "http://www.w3.org/2000/09/xmldsig#"[GblCplxMxd] }

  DigestMethod    = DigestMethodType;      { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }


  // ************************************************************************ //
  // XML       : PGPDataType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  PGPDataType = class(TRemotable)
  private
    FPGPKeyID: TByteDynArray;
    FPGPKeyPacket: TByteDynArray;
    FPGPKeyPacket_Specified: boolean;
    FPGPKeyPacket_: TByteDynArray;
    procedure SetPGPKeyPacket(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  PGPKeyPacket_Specified(Index: Integer): boolean;
  published
    property PGPKeyID:      TByteDynArray  read FPGPKeyID write FPGPKeyID;
    property PGPKeyPacket:  TByteDynArray  Index (IS_OPTN) read FPGPKeyPacket write SetPGPKeyPacket stored PGPKeyPacket_Specified;
    property PGPKeyPacket_: TByteDynArray  read FPGPKeyPacket_ write FPGPKeyPacket_;
  end;



  // ************************************************************************ //
  // XML       : PGPData, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  PGPData = class(PGPDataType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OperacionType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  OperacionType = class(TRemotable)
  private
    FTipoOperacion: TipoOperacionType;
    FSubsanacion: SubsanacionType;
    FSubsanacion_Specified: boolean;
    FRechazoPrevio: RechazoPrevioType;
    FRechazoPrevio_Specified: boolean;
    FSinRegistroPrevio: SinRegistroPrevioType;
    FSinRegistroPrevio_Specified: boolean;
    procedure SetSubsanacion(Index: Integer; const ASubsanacionType: SubsanacionType);
    function  Subsanacion_Specified(Index: Integer): boolean;
    procedure SetRechazoPrevio(Index: Integer; const ARechazoPrevioType: RechazoPrevioType);
    function  RechazoPrevio_Specified(Index: Integer): boolean;
    procedure SetSinRegistroPrevio(Index: Integer; const ASinRegistroPrevioType: SinRegistroPrevioType);
    function  SinRegistroPrevio_Specified(Index: Integer): boolean;
  published
    property TipoOperacion:     TipoOperacionType      read FTipoOperacion write FTipoOperacion;
    property Subsanacion:       SubsanacionType        Index (IS_OPTN) read FSubsanacion write SetSubsanacion stored Subsanacion_Specified;
    property RechazoPrevio:     RechazoPrevioType      Index (IS_OPTN) read FRechazoPrevio write SetRechazoPrevio stored RechazoPrevio_Specified;
    property SinRegistroPrevio: SinRegistroPrevioType  Index (IS_OPTN) read FSinRegistroPrevio write SetSinRegistroPrevio stored SinRegistroPrevio_Specified;
  end;

  FacturasRectificadas = array of IDFacturaARType;   { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[Cplx] }
  TextMax120Type  = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TextMax70Type   = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }


  // ************************************************************************ //
  // XML       : RespuestaExpedidaType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd
  // ************************************************************************ //
  RespuestaExpedidaType = class(TRemotable)
  private
    FIDFactura: IDFacturaExpedidaType;
    FOperacion: OperacionType;
    FRefExterna: TextMax70Type;
    FRefExterna_Specified: boolean;
    FEstadoRegistro: EstadoRegistroType;
    FCodigoErrorRegistro: ErrorDetalleType2;
    FCodigoErrorRegistro_Specified: boolean;
    FDescripcionErrorRegistro: TextMax1500Type;
    FDescripcionErrorRegistro_Specified: boolean;
    FRegistroDuplicado: RegistroDuplicadoType;
    FRegistroDuplicado_Specified: boolean;
    procedure SetRefExterna(Index: Integer; const ATextMax70Type: TextMax70Type);
    function  RefExterna_Specified(Index: Integer): boolean;
    procedure SetCodigoErrorRegistro(Index: Integer; const AErrorDetalleType2: ErrorDetalleType2);
    function  CodigoErrorRegistro_Specified(Index: Integer): boolean;
    procedure SetDescripcionErrorRegistro(Index: Integer; const ATextMax1500Type: TextMax1500Type);
    function  DescripcionErrorRegistro_Specified(Index: Integer): boolean;
    procedure SetRegistroDuplicado(Index: Integer; const ARegistroDuplicadoType: RegistroDuplicadoType);
    function  RegistroDuplicado_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property IDFactura:                IDFacturaExpedidaType  read FIDFactura write FIDFactura;
    property Operacion:                OperacionType          read FOperacion write FOperacion;
    property RefExterna:               TextMax70Type          Index (IS_OPTN) read FRefExterna write SetRefExterna stored RefExterna_Specified;
    property EstadoRegistro:           EstadoRegistroType     read FEstadoRegistro write FEstadoRegistro;
    property CodigoErrorRegistro:      ErrorDetalleType2      Index (IS_OPTN) read FCodigoErrorRegistro write SetCodigoErrorRegistro stored CodigoErrorRegistro_Specified;
    property DescripcionErrorRegistro: TextMax1500Type        Index (IS_OPTN) read FDescripcionErrorRegistro write SetDescripcionErrorRegistro stored DescripcionErrorRegistro_Specified;
    property RegistroDuplicado:        RegistroDuplicadoType  Index (IS_OPTN) read FRegistroDuplicado write SetRegistroDuplicado stored RegistroDuplicado_Specified;
  end;

  Destinatarios = array of PersonaFisicaJuridicaType;   { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[Cplx] }
  FacturasSustituidas = array of IDFacturaARType;   { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[Cplx] }


  // ************************************************************************ //
  // XML       : DesgloseRectificacionType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  DesgloseRectificacionType = class(TRemotable)
  private
    FBaseRectificada: ImporteSgn12_2Type;
    FCuotaRectificada: ImporteSgn12_2Type;
    FCuotaRecargoRectificado: ImporteSgn12_2Type;
    FCuotaRecargoRectificado_Specified: boolean;
    procedure SetCuotaRecargoRectificado(Index: Integer; const AImporteSgn12_2Type: ImporteSgn12_2Type);
    function  CuotaRecargoRectificado_Specified(Index: Integer): boolean;
  published
    property BaseRectificada:         ImporteSgn12_2Type  read FBaseRectificada write FBaseRectificada;
    property CuotaRectificada:        ImporteSgn12_2Type  read FCuotaRectificada write FCuotaRectificada;
    property CuotaRecargoRectificado: ImporteSgn12_2Type  Index (IS_OPTN) read FCuotaRecargoRectificado write SetCuotaRecargoRectificado stored CuotaRecargoRectificado_Specified;
  end;

  TextMax500Type  = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  DigestValueType = TByteDynArray;      { "http://www.w3.org/2000/09/xmldsig#"[GblSmpl] }
  DigestValue     = DigestValueType;      { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }


  // ************************************************************************ //
  // XML       : ReferenceType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  ReferenceType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FURI: string;
    FURI_Specified: boolean;
    FType_: string;
    FType__Specified: boolean;
    FTransforms: Transforms;
    FTransforms_Specified: boolean;
    FDigestMethod: DigestMethod;
    FDigestValue: DigestValue;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetURI(Index: Integer; const Astring: string);
    function  URI_Specified(Index: Integer): boolean;
    procedure SetType_(Index: Integer; const Astring: string);
    function  Type__Specified(Index: Integer): boolean;
    procedure SetTransforms(Index: Integer; const ATransforms: Transforms);
    function  Transforms_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:           string        Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property URI:          string        Index (IS_ATTR or IS_OPTN) read FURI write SetURI stored URI_Specified;
    property Type_:        string        Index (IS_ATTR or IS_OPTN) read FType_ write SetType_ stored Type__Specified;
    property Transforms:   Transforms    Index (IS_OPTN) read FTransforms write SetTransforms stored Transforms_Specified;
    property DigestMethod: DigestMethod  read FDigestMethod write FDigestMethod;
    property DigestValue:  DigestValue   read FDigestValue write FDigestValue;
  end;



  // ************************************************************************ //
  // XML       : Reference, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  Reference = class(ReferenceType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CabeceraType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  CabeceraType = class(TRemotable)
  private
    FObligadoEmision: PersonaFisicaJuridicaESType;
    FRepresentante: PersonaFisicaJuridicaESType;
    FRepresentante_Specified: boolean;
    FRemisionVoluntaria: RemisionVoluntaria;
    FRemisionVoluntaria_Specified: boolean;
    FRemisionRequerimiento: RemisionRequerimiento;
    FRemisionRequerimiento_Specified: boolean;
    procedure SetRepresentante(Index: Integer; const APersonaFisicaJuridicaESType: PersonaFisicaJuridicaESType);
    function  Representante_Specified(Index: Integer): boolean;
    procedure SetRemisionVoluntaria(Index: Integer; const ARemisionVoluntaria: RemisionVoluntaria);
    function  RemisionVoluntaria_Specified(Index: Integer): boolean;
    procedure SetRemisionRequerimiento(Index: Integer; const ARemisionRequerimiento: RemisionRequerimiento);
    function  RemisionRequerimiento_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ObligadoEmision:       PersonaFisicaJuridicaESType  read FObligadoEmision write FObligadoEmision;
    property Representante:         PersonaFisicaJuridicaESType  Index (IS_OPTN) read FRepresentante write SetRepresentante stored Representante_Specified;
    property RemisionVoluntaria:    RemisionVoluntaria           Index (IS_OPTN) read FRemisionVoluntaria write SetRemisionVoluntaria stored RemisionVoluntaria_Specified;
    property RemisionRequerimiento: RemisionRequerimiento        Index (IS_OPTN) read FRemisionRequerimiento write SetRemisionRequerimiento stored RemisionRequerimiento_Specified;
  end;


  { ================== WARNING ================== }
  { WARNING - Attribute - Name:Id, Type:string }
  { WARNING - Attribute - Name:MimeType, Type:string }
  { WARNING - Attribute - Name:Encoding, Type:string }
  ObjectType      = TXMLData;       { "http://www.w3.org/2000/09/xmldsig#"[GblCplxMxd] }

  Object_         = ObjectType;      { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  Array_Of_Object = array of Object_;           { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }


  // ************************************************************************ //
  // XML       : SignatureType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  SignatureType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FSignedInfo: SignedInfo;
    FSignatureValue: SignatureValue;
    FKeyInfo: KeyInfo;
    FKeyInfo_Specified: boolean;
    FObject_: Array_Of_Object;
    FObject__Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetKeyInfo(Index: Integer; const AKeyInfo: KeyInfo);
    function  KeyInfo_Specified(Index: Integer): boolean;
    procedure SetObject_(Index: Integer; const AArray_Of_Object: Array_Of_Object);
    function  Object__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:             string           Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property SignedInfo:     SignedInfo       read FSignedInfo write FSignedInfo;
    property SignatureValue: SignatureValue   read FSignatureValue write FSignatureValue;
    property KeyInfo:        KeyInfo          Index (IS_OPTN) read FKeyInfo write SetKeyInfo stored KeyInfo_Specified;
    property Object_:        Array_Of_Object  Index (IS_OPTN or IS_UNBD) read FObject_ write SetObject_ stored Object__Specified;
  end;



  // ************************************************************************ //
  // XML       : Signature, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  Signature = class(SignatureType)
  private
  published
  end;

  SPKIDataType = array of TByteDynArray;        { "http://www.w3.org/2000/09/xmldsig#"[GblCplx] }
  SPKIData        = SPKIDataType;      { "http://www.w3.org/2000/09/xmldsig#"[GblElm] }
  Array_Of_SPKIData = array of SPKIData;        { "http://www.w3.org/2000/09/xmldsig#"[GblUbnd] }


  // ************************************************************************ //
  // XML       : KeyInfoType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  KeyInfoType = class(TRemotable)
  private
    FId: string;
    FId_Specified: boolean;
    FKeyName: Array_Of_KeyName;
    FKeyName_Specified: boolean;
    FKeyValue: Array_Of_KeyValue;
    FKeyValue_Specified: boolean;
    FRetrievalMethod: Array_Of_RetrievalMethod;
    FRetrievalMethod_Specified: boolean;
    FX509Data: Array_Of_X509Data;
    FX509Data_Specified: boolean;
    FPGPData: Array_Of_PGPData;
    FPGPData_Specified: boolean;
    FSPKIData: Array_Of_SPKIData;
    FSPKIData_Specified: boolean;
    FMgmtData: Array_Of_MgmtData;
    FMgmtData_Specified: boolean;
    procedure SetId(Index: Integer; const Astring: string);
    function  Id_Specified(Index: Integer): boolean;
    procedure SetKeyName(Index: Integer; const AArray_Of_KeyName: Array_Of_KeyName);
    function  KeyName_Specified(Index: Integer): boolean;
    procedure SetKeyValue(Index: Integer; const AArray_Of_KeyValue: Array_Of_KeyValue);
    function  KeyValue_Specified(Index: Integer): boolean;
    procedure SetRetrievalMethod(Index: Integer; const AArray_Of_RetrievalMethod: Array_Of_RetrievalMethod);
    function  RetrievalMethod_Specified(Index: Integer): boolean;
    procedure SetX509Data(Index: Integer; const AArray_Of_X509Data: Array_Of_X509Data);
    function  X509Data_Specified(Index: Integer): boolean;
    procedure SetPGPData(Index: Integer; const AArray_Of_PGPData: Array_Of_PGPData);
    function  PGPData_Specified(Index: Integer): boolean;
    procedure SetSPKIData(Index: Integer; const AArray_Of_SPKIData: Array_Of_SPKIData);
    function  SPKIData_Specified(Index: Integer): boolean;
    procedure SetMgmtData(Index: Integer; const AArray_Of_MgmtData: Array_Of_MgmtData);
    function  MgmtData_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Id:              string                    Index (IS_ATTR or IS_OPTN) read FId write SetId stored Id_Specified;
    property KeyName:         Array_Of_KeyName          Index (IS_OPTN or IS_UNBD) read FKeyName write SetKeyName stored KeyName_Specified;
    property KeyValue:        Array_Of_KeyValue         Index (IS_OPTN or IS_UNBD) read FKeyValue write SetKeyValue stored KeyValue_Specified;
    property RetrievalMethod: Array_Of_RetrievalMethod  Index (IS_OPTN or IS_UNBD) read FRetrievalMethod write SetRetrievalMethod stored RetrievalMethod_Specified;
    property X509Data:        Array_Of_X509Data         Index (IS_OPTN or IS_UNBD) read FX509Data write SetX509Data stored X509Data_Specified;
    property PGPData:         Array_Of_PGPData          Index (IS_OPTN or IS_UNBD) read FPGPData write SetPGPData stored PGPData_Specified;
    property SPKIData:        Array_Of_SPKIData         Index (IS_OPTN or IS_UNBD) read FSPKIData write SetSPKIData stored SPKIData_Specified;
    property MgmtData:        Array_Of_MgmtData         Index (IS_OPTN or IS_UNBD) read FMgmtData write SetMgmtData stored MgmtData_Specified;
  end;



  // ************************************************************************ //
  // XML       : KeyInfo, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  KeyInfo = class(KeyInfoType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : X509DataType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  X509DataType = class(TRemotable)
  private
    FX509IssuerSerial: Array_Of_X509IssuerSerialType;
    FX509IssuerSerial_Specified: boolean;
    FX509SKI: SPKIDataType;
    FX509SKI_Specified: boolean;
    FX509SubjectName: Array_Of_string;
    FX509SubjectName_Specified: boolean;
    FX509Certificate: SPKIDataType;
    FX509Certificate_Specified: boolean;
    FX509CRL: SPKIDataType;
    FX509CRL_Specified: boolean;
    procedure SetX509IssuerSerial(Index: Integer; const AArray_Of_X509IssuerSerialType: Array_Of_X509IssuerSerialType);
    function  X509IssuerSerial_Specified(Index: Integer): boolean;
    procedure SetX509SKI(Index: Integer; const ASPKIDataType: SPKIDataType);
    function  X509SKI_Specified(Index: Integer): boolean;
    procedure SetX509SubjectName(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  X509SubjectName_Specified(Index: Integer): boolean;
    procedure SetX509Certificate(Index: Integer; const ASPKIDataType: SPKIDataType);
    function  X509Certificate_Specified(Index: Integer): boolean;
    procedure SetX509CRL(Index: Integer; const ASPKIDataType: SPKIDataType);
    function  X509CRL_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property X509IssuerSerial: Array_Of_X509IssuerSerialType  Index (IS_OPTN or IS_UNBD) read FX509IssuerSerial write SetX509IssuerSerial stored X509IssuerSerial_Specified;
    property X509SKI:          SPKIDataType                   Index (IS_OPTN or IS_UNBD) read FX509SKI write SetX509SKI stored X509SKI_Specified;
    property X509SubjectName:  Array_Of_string                Index (IS_OPTN or IS_UNBD) read FX509SubjectName write SetX509SubjectName stored X509SubjectName_Specified;
    property X509Certificate:  SPKIDataType                   Index (IS_OPTN or IS_UNBD) read FX509Certificate write SetX509Certificate stored X509Certificate_Specified;
    property X509CRL:          SPKIDataType                   Index (IS_OPTN or IS_UNBD) read FX509CRL write SetX509CRL stored X509CRL_Specified;
  end;



  // ************************************************************************ //
  // XML       : X509Data, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  X509Data = class(X509DataType)
  private
  published
  end;

  CryptoBinary    = TByteDynArray;      { "http://www.w3.org/2000/09/xmldsig#"[GblSmpl] }


  // ************************************************************************ //
  // XML       : RSAKeyValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RSAKeyValueType = class(TRemotable)
  private
    FModulus: CryptoBinary;
    FExponent: CryptoBinary;
  published
    property Modulus:  CryptoBinary  read FModulus write FModulus;
    property Exponent: CryptoBinary  read FExponent write FExponent;
  end;



  // ************************************************************************ //
  // XML       : RSAKeyValue, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  RSAKeyValue = class(RSAKeyValueType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : DSAKeyValueType, global, <complexType>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  DSAKeyValueType = class(TRemotable)
  private
    FP: CryptoBinary;
    FQ: CryptoBinary;
    FG: CryptoBinary;
    FG_Specified: boolean;
    FY: CryptoBinary;
    FJ: CryptoBinary;
    FJ_Specified: boolean;
    FSeed: CryptoBinary;
    FPgenCounter: CryptoBinary;
    procedure SetG(Index: Integer; const ACryptoBinary: CryptoBinary);
    function  G_Specified(Index: Integer): boolean;
    procedure SetJ(Index: Integer; const ACryptoBinary: CryptoBinary);
    function  J_Specified(Index: Integer): boolean;
  published
    property P:           CryptoBinary  read FP write FP;
    property Q:           CryptoBinary  read FQ write FQ;
    property G:           CryptoBinary  Index (IS_OPTN) read FG write SetG stored G_Specified;
    property Y:           CryptoBinary  read FY write FY;
    property J:           CryptoBinary  Index (IS_OPTN) read FJ write SetJ stored J_Specified;
    property Seed:        CryptoBinary  read FSeed write FSeed;
    property PgenCounter: CryptoBinary  read FPgenCounter write FPgenCounter;
  end;



  // ************************************************************************ //
  // XML       : DSAKeyValue, global, <element>
  // Namespace : http://www.w3.org/2000/09/xmldsig#
  // ************************************************************************ //
  DSAKeyValue = class(DSAKeyValueType)
  private
  published
  end;

  NIFType         = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }


  // ************************************************************************ //
  // XML       : PersonaFisicaJuridicaESType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  PersonaFisicaJuridicaESType = class(TRemotable)
  private
    FNombreRazon: TextMax120Type;
    FNIF: NIFType;
  published
    property NombreRazon: TextMax120Type  read FNombreRazon write FNombreRazon;
    property NIF:         NIFType         read FNIF write FNIF;
  end;



  // ************************************************************************ //
  // XML       : PersonaFisicaJuridicaType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  PersonaFisicaJuridicaType = class(TRemotable)
  private
    FNombreRazon: TextMax120Type;
    FNIF: NIFType;
    FNIF_Specified: boolean;
    FIDOtro: IDOtroType;
    FIDOtro_Specified: boolean;
    procedure SetNIF(Index: Integer; const ANIFType: NIFType);
    function  NIF_Specified(Index: Integer): boolean;
    procedure SetIDOtro(Index: Integer; const AIDOtroType: IDOtroType);
    function  IDOtro_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property NombreRazon: TextMax120Type  read FNombreRazon write FNombreRazon;
    property NIF:         NIFType         Index (IS_OPTN) read FNIF write SetNIF stored NIF_Specified;
    property IDOtro:      IDOtroType      Index (IS_OPTN) read FIDOtro write SetIDOtro stored IDOtro_Specified;
  end;



  // ************************************************************************ //
  // XML       : SistemaInformaticoType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  SistemaInformaticoType = class(TRemotable)
  private
    FNombreRazon: TextMax120Type;
    FNIF: NIFType;
    FNIF_Specified: boolean;
    FIDOtro: IDOtroType;
    FIDOtro_Specified: boolean;
    FNombreSistemaInformatico: TextMax30Type;
    FIdSistemaInformatico: TextMax2Type;
    FVersion: TextMax50Type;
    FNumeroInstalacion: TextMax100Type;
    FTipoUsoPosibleSoloVerifactu: SiNoType;
    FTipoUsoPosibleMultiOT: SiNoType;
    FIndicadorMultiplesOT: SiNoType;
    procedure SetNIF(Index: Integer; const ANIFType: NIFType);
    function  NIF_Specified(Index: Integer): boolean;
    procedure SetIDOtro(Index: Integer; const AIDOtroType: IDOtroType);
    function  IDOtro_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property NombreRazon:                 TextMax120Type  read FNombreRazon write FNombreRazon;
    property NIF:                         NIFType         Index (IS_OPTN) read FNIF write SetNIF stored NIF_Specified;
    property IDOtro:                      IDOtroType      Index (IS_OPTN) read FIDOtro write SetIDOtro stored IDOtro_Specified;
    property NombreSistemaInformatico:    TextMax30Type   read FNombreSistemaInformatico write FNombreSistemaInformatico;
    property IdSistemaInformatico:        TextMax2Type    read FIdSistemaInformatico write FIdSistemaInformatico;
    property Version:                     TextMax50Type   read FVersion write FVersion;
    property NumeroInstalacion:           TextMax100Type  read FNumeroInstalacion write FNumeroInstalacion;
    property TipoUsoPosibleSoloVerifactu: SiNoType        read FTipoUsoPosibleSoloVerifactu write FTipoUsoPosibleSoloVerifactu;
    property TipoUsoPosibleMultiOT:       SiNoType        read FTipoUsoPosibleMultiOT write FTipoUsoPosibleMultiOT;
    property IndicadorMultiplesOT:        SiNoType        read FIndicadorMultiplesOT write FIndicadorMultiplesOT;
  end;



  // ************************************************************************ //
  // XML       : DatosPresentacionType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  DatosPresentacionType = class(TRemotable)
  private
    FNIFPresentador: NIFType;
    FTimestampPresentacion: TXSDateTime;
  public
    destructor Destroy; override;
  published
    property NIFPresentador:        NIFType      read FNIFPresentador write FNIFPresentador;
    property TimestampPresentacion: TXSDateTime  read FTimestampPresentacion write FTimestampPresentacion;
  end;



  // ************************************************************************ //
  // XML       : RegistroFacturacionAnulacionType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  RegistroFacturacionAnulacionType = class(TRemotable)
  private
    FIDVersion: VersionType;
    FIDFactura: IDFacturaExpedidaBajaType;
    FRefExterna: TextMax60Type;
    FRefExterna_Specified: boolean;
    FSinRegistroPrevio: SinRegistroPrevioType;
    FSinRegistroPrevio_Specified: boolean;
    FRechazoPrevio: RechazoPrevioAnulacionType;
    FRechazoPrevio_Specified: boolean;
    FGeneradoPor: GeneradoPorType;
    FGeneradoPor_Specified: boolean;
    FGenerador: PersonaFisicaJuridicaType;
    FGenerador_Specified: boolean;
    FEncadenamiento: Encadenamiento;
    FSistemaInformatico: SistemaInformaticoType;
    FFechaHoraHusoGenRegistro: TXSDateTime;
    FTipoHuella: TipoHuellaType;
    FHuella: TextMax64Type;
    FSignature: Signature;
    FSignature_Specified: boolean;
    procedure SetRefExterna(Index: Integer; const ATextMax60Type: TextMax60Type);
    function  RefExterna_Specified(Index: Integer): boolean;
    procedure SetSinRegistroPrevio(Index: Integer; const ASinRegistroPrevioType: SinRegistroPrevioType);
    function  SinRegistroPrevio_Specified(Index: Integer): boolean;
    procedure SetRechazoPrevio(Index: Integer; const ARechazoPrevioAnulacionType: RechazoPrevioAnulacionType);
    function  RechazoPrevio_Specified(Index: Integer): boolean;
    procedure SetGeneradoPor(Index: Integer; const AGeneradoPorType: GeneradoPorType);
    function  GeneradoPor_Specified(Index: Integer): boolean;
    procedure SetGenerador(Index: Integer; const APersonaFisicaJuridicaType: PersonaFisicaJuridicaType);
    function  Generador_Specified(Index: Integer): boolean;
    procedure SetSignature(Index: Integer; const ASignature: Signature);
    function  Signature_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property IDVersion:                VersionType                 read FIDVersion write FIDVersion;
    property IDFactura:                IDFacturaExpedidaBajaType   read FIDFactura write FIDFactura;
    property RefExterna:               TextMax60Type               Index (IS_OPTN) read FRefExterna write SetRefExterna stored RefExterna_Specified;
    property SinRegistroPrevio:        SinRegistroPrevioType       Index (IS_OPTN) read FSinRegistroPrevio write SetSinRegistroPrevio stored SinRegistroPrevio_Specified;
    property RechazoPrevio:            RechazoPrevioAnulacionType  Index (IS_OPTN) read FRechazoPrevio write SetRechazoPrevio stored RechazoPrevio_Specified;
    property GeneradoPor:              GeneradoPorType             Index (IS_OPTN) read FGeneradoPor write SetGeneradoPor stored GeneradoPor_Specified;
    property Generador:                PersonaFisicaJuridicaType   Index (IS_OPTN) read FGenerador write SetGenerador stored Generador_Specified;
    property Encadenamiento:           Encadenamiento              read FEncadenamiento write FEncadenamiento;
    property SistemaInformatico:       SistemaInformaticoType      read FSistemaInformatico write FSistemaInformatico;
    property FechaHoraHusoGenRegistro: TXSDateTime                 read FFechaHoraHusoGenRegistro write FFechaHoraHusoGenRegistro;
    property TipoHuella:               TipoHuellaType              read FTipoHuella write FTipoHuella;
    property Huella:                   TextMax64Type               read FHuella write FHuella;
    property Signature:                Signature                   Index (IS_OPTN) read FSignature write SetSignature stored Signature_Specified;
  end;



  // ************************************************************************ //
  // XML       : RegistroAnulacion, global, <element>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  RegistroAnulacion = class(RegistroFacturacionAnulacionType)
  private
  published
  end;

  TextoIDFacturaType = string;      { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }
  TextMax20Type   = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }


  // ************************************************************************ //
  // XML       : RegistroDuplicadoType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  RegistroDuplicadoType = class(TRemotable)
  private
    FIdPeticionRegistroDuplicado: TextMax20Type;
    FEstadoRegistroDuplicado: EstadoRegistroSFType;
    FCodigoErrorRegistro: ErrorDetalleType;
    FCodigoErrorRegistro_Specified: boolean;
    FDescripcionErrorRegistro: TextMax500Type;
    FDescripcionErrorRegistro_Specified: boolean;
    procedure SetCodigoErrorRegistro(Index: Integer; const AErrorDetalleType: ErrorDetalleType);
    function  CodigoErrorRegistro_Specified(Index: Integer): boolean;
    procedure SetDescripcionErrorRegistro(Index: Integer; const ATextMax500Type: TextMax500Type);
    function  DescripcionErrorRegistro_Specified(Index: Integer): boolean;
  published
    property IdPeticionRegistroDuplicado: TextMax20Type         read FIdPeticionRegistroDuplicado write FIdPeticionRegistroDuplicado;
    property EstadoRegistroDuplicado:     EstadoRegistroSFType  read FEstadoRegistroDuplicado write FEstadoRegistroDuplicado;
    property CodigoErrorRegistro:         ErrorDetalleType      Index (IS_OPTN) read FCodigoErrorRegistro write SetCodigoErrorRegistro stored CodigoErrorRegistro_Specified;
    property DescripcionErrorRegistro:    TextMax500Type        Index (IS_OPTN) read FDescripcionErrorRegistro write SetDescripcionErrorRegistro stored DescripcionErrorRegistro_Specified;
  end;



  // ************************************************************************ //
  // XML       : IDOtroType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  IDOtroType = class(TRemotable)
  private
    FCodigoPais: CountryType2;
    FCodigoPais_Specified: boolean;
    FIDType: PersonaFisicaJuridicaIDTypeType;
    FID: TextMax20Type;
    procedure SetCodigoPais(Index: Integer; const ACountryType2: CountryType2);
    function  CodigoPais_Specified(Index: Integer): boolean;
  published
    property CodigoPais: CountryType2                     Index (IS_OPTN) read FCodigoPais write SetCodigoPais stored CodigoPais_Specified;
    property IDType:     PersonaFisicaJuridicaIDTypeType  read FIDType write FIDType;
    property ID:         TextMax20Type                    read FID write FID;
  end;

  fecha           = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }


  // ************************************************************************ //
  // XML       : RemisionVoluntaria, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  RemisionVoluntaria = class(TRemotable)
  private
    FFechaFinVeriFactu: fecha;
    FFechaFinVeriFactu_Specified: boolean;
    FIncidencia: IncidenciaType;
    FIncidencia_Specified: boolean;
    procedure SetFechaFinVeriFactu(Index: Integer; const Afecha: fecha);
    function  FechaFinVeriFactu_Specified(Index: Integer): boolean;
    procedure SetIncidencia(Index: Integer; const AIncidenciaType: IncidenciaType);
    function  Incidencia_Specified(Index: Integer): boolean;
  published
    property FechaFinVeriFactu: fecha           Index (IS_OPTN) read FFechaFinVeriFactu write SetFechaFinVeriFactu stored FechaFinVeriFactu_Specified;
    property Incidencia:        IncidenciaType  Index (IS_OPTN) read FIncidencia write SetIncidencia stored Incidencia_Specified;
  end;



  // ************************************************************************ //
  // XML       : IDFacturaExpedidaBajaType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  IDFacturaExpedidaBajaType = class(TRemotable)
  private
    FIDEmisorFacturaAnulada: NIFType;
    FNumSerieFacturaAnulada: TextoIDFacturaType;
    FFechaExpedicionFacturaAnulada: fecha;
  published
    property IDEmisorFacturaAnulada:        NIFType             read FIDEmisorFacturaAnulada write FIDEmisorFacturaAnulada;
    property NumSerieFacturaAnulada:        TextoIDFacturaType  read FNumSerieFacturaAnulada write FNumSerieFacturaAnulada;
    property FechaExpedicionFacturaAnulada: fecha               read FFechaExpedicionFacturaAnulada write FFechaExpedicionFacturaAnulada;
  end;



  // ************************************************************************ //
  // XML       : IDFacturaARType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  IDFacturaARType = class(TRemotable)
  private
    FIDEmisorFactura: NIFType;
    FNumSerieFactura: TextoIDFacturaType;
    FFechaExpedicionFactura: fecha;
  published
    property IDEmisorFactura:        NIFType             read FIDEmisorFactura write FIDEmisorFactura;
    property NumSerieFactura:        TextoIDFacturaType  read FNumSerieFactura write FNumSerieFactura;
    property FechaExpedicionFactura: fecha               read FFechaExpedicionFactura write FFechaExpedicionFactura;
  end;



  // ************************************************************************ //
  // XML       : IDFacturaExpedidaType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  IDFacturaExpedidaType = class(TRemotable)
  private
    FIDEmisorFactura: NIFType;
    FNumSerieFactura: TextoIDFacturaType;
    FFechaExpedicionFactura: fecha;
  published
    property IDEmisorFactura:        NIFType             read FIDEmisorFactura write FIDEmisorFactura;
    property NumSerieFactura:        TextoIDFacturaType  read FNumSerieFactura write FNumSerieFactura;
    property FechaExpedicionFactura: fecha               read FFechaExpedicionFactura write FFechaExpedicionFactura;
  end;



  // ************************************************************************ //
  // XML       : RegistroFacturacionAltaType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  RegistroFacturacionAltaType = class(TRemotable)
  private
    FIDVersion: VersionType;
    FIDFactura: IDFacturaExpedidaType;
    FRefExterna: TextMax70Type;
    FRefExterna_Specified: boolean;
    FNombreRazonEmisor: TextMax120Type;
    FSubsanacion: SubsanacionType;
    FSubsanacion_Specified: boolean;
    FRechazoPrevio: RechazoPrevioType;
    FRechazoPrevio_Specified: boolean;
    FTipoFactura: ClaveTipoFacturaType;
    FTipoRectificativa: ClaveTipoRectificativaType;
    FTipoRectificativa_Specified: boolean;
    FFacturasRectificadas: FacturasRectificadas;
    FFacturasRectificadas_Specified: boolean;
    FFacturasSustituidas: FacturasSustituidas;
    FFacturasSustituidas_Specified: boolean;
    FImporteRectificacion: DesgloseRectificacionType;
    FImporteRectificacion_Specified: boolean;
    FFechaOperacion: fecha;
    FFechaOperacion_Specified: boolean;
    FDescripcionOperacion: TextMax500Type;
    FFacturaSimplificadaArt7273: SimplificadaCualificadaType;
    FFacturaSimplificadaArt7273_Specified: boolean;
    FFacturaSinIdentifDestinatarioArt61d: CompletaSinDestinatarioType;
    FFacturaSinIdentifDestinatarioArt61d_Specified: boolean;
    FMacrodato: MacrodatoType;
    FMacrodato_Specified: boolean;
    FEmitidaPorTerceroODestinatario: TercerosODestinatarioType;
    FEmitidaPorTerceroODestinatario_Specified: boolean;
    FTercero: PersonaFisicaJuridicaType;
    FTercero_Specified: boolean;
    FDestinatarios: Destinatarios;
    FDestinatarios_Specified: boolean;
    FCupon: CuponType;
    FCupon_Specified: boolean;
    FDesglose: DesgloseType;
    FCuotaTotal: ImporteSgn12_2Type;
    FImporteTotal: ImporteSgn12_2Type;
    FEncadenamiento: Encadenamiento2;
    FSistemaInformatico: SistemaInformaticoType;
    FFechaHoraHusoGenRegistro: TXSDateTime;
    FNumRegistroAcuerdoFacturacion: TextMax15Type;
    FNumRegistroAcuerdoFacturacion_Specified: boolean;
    FIdAcuerdoSistemaInformatico: TextMax16Type;
    FIdAcuerdoSistemaInformatico_Specified: boolean;
    FTipoHuella: TipoHuellaType;
    FHuella: TextMax64Type;
    FSignature: Signature;
    FSignature_Specified: boolean;
    procedure SetRefExterna(Index: Integer; const ATextMax70Type: TextMax70Type);
    function  RefExterna_Specified(Index: Integer): boolean;
    procedure SetSubsanacion(Index: Integer; const ASubsanacionType: SubsanacionType);
    function  Subsanacion_Specified(Index: Integer): boolean;
    procedure SetRechazoPrevio(Index: Integer; const ARechazoPrevioType: RechazoPrevioType);
    function  RechazoPrevio_Specified(Index: Integer): boolean;
    procedure SetTipoRectificativa(Index: Integer; const AClaveTipoRectificativaType: ClaveTipoRectificativaType);
    function  TipoRectificativa_Specified(Index: Integer): boolean;
    procedure SetFacturasRectificadas(Index: Integer; const AFacturasRectificadas: FacturasRectificadas);
    function  FacturasRectificadas_Specified(Index: Integer): boolean;
    procedure SetFacturasSustituidas(Index: Integer; const AFacturasSustituidas: FacturasSustituidas);
    function  FacturasSustituidas_Specified(Index: Integer): boolean;
    procedure SetImporteRectificacion(Index: Integer; const ADesgloseRectificacionType: DesgloseRectificacionType);
    function  ImporteRectificacion_Specified(Index: Integer): boolean;
    procedure SetFechaOperacion(Index: Integer; const Afecha: fecha);
    function  FechaOperacion_Specified(Index: Integer): boolean;
    procedure SetFacturaSimplificadaArt7273(Index: Integer; const ASimplificadaCualificadaType: SimplificadaCualificadaType);
    function  FacturaSimplificadaArt7273_Specified(Index: Integer): boolean;
    procedure SetFacturaSinIdentifDestinatarioArt61d(Index: Integer; const ACompletaSinDestinatarioType: CompletaSinDestinatarioType);
    function  FacturaSinIdentifDestinatarioArt61d_Specified(Index: Integer): boolean;
    procedure SetMacrodato(Index: Integer; const AMacrodatoType: MacrodatoType);
    function  Macrodato_Specified(Index: Integer): boolean;
    procedure SetEmitidaPorTerceroODestinatario(Index: Integer; const ATercerosODestinatarioType: TercerosODestinatarioType);
    function  EmitidaPorTerceroODestinatario_Specified(Index: Integer): boolean;
    procedure SetTercero(Index: Integer; const APersonaFisicaJuridicaType: PersonaFisicaJuridicaType);
    function  Tercero_Specified(Index: Integer): boolean;
    procedure SetDestinatarios(Index: Integer; const ADestinatarios: Destinatarios);
    function  Destinatarios_Specified(Index: Integer): boolean;
    procedure SetCupon(Index: Integer; const ACuponType: CuponType);
    function  Cupon_Specified(Index: Integer): boolean;
    procedure SetNumRegistroAcuerdoFacturacion(Index: Integer; const ATextMax15Type: TextMax15Type);
    function  NumRegistroAcuerdoFacturacion_Specified(Index: Integer): boolean;
    procedure SetIdAcuerdoSistemaInformatico(Index: Integer; const ATextMax16Type: TextMax16Type);
    function  IdAcuerdoSistemaInformatico_Specified(Index: Integer): boolean;
    procedure SetSignature(Index: Integer; const ASignature: Signature);
    function  Signature_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property IDVersion:                           VersionType                  read FIDVersion write FIDVersion;
    property IDFactura:                           IDFacturaExpedidaType        read FIDFactura write FIDFactura;
    property RefExterna:                          TextMax70Type                Index (IS_OPTN) read FRefExterna write SetRefExterna stored RefExterna_Specified;
    property NombreRazonEmisor:                   TextMax120Type               read FNombreRazonEmisor write FNombreRazonEmisor;
    property Subsanacion:                         SubsanacionType              Index (IS_OPTN) read FSubsanacion write SetSubsanacion stored Subsanacion_Specified;
    property RechazoPrevio:                       RechazoPrevioType            Index (IS_OPTN) read FRechazoPrevio write SetRechazoPrevio stored RechazoPrevio_Specified;
    property TipoFactura:                         ClaveTipoFacturaType         read FTipoFactura write FTipoFactura;
    property TipoRectificativa:                   ClaveTipoRectificativaType   Index (IS_OPTN) read FTipoRectificativa write SetTipoRectificativa stored TipoRectificativa_Specified;
    property FacturasRectificadas:                FacturasRectificadas         Index (IS_OPTN) read FFacturasRectificadas write SetFacturasRectificadas stored FacturasRectificadas_Specified;
    property FacturasSustituidas:                 FacturasSustituidas          Index (IS_OPTN) read FFacturasSustituidas write SetFacturasSustituidas stored FacturasSustituidas_Specified;
    property ImporteRectificacion:                DesgloseRectificacionType    Index (IS_OPTN) read FImporteRectificacion write SetImporteRectificacion stored ImporteRectificacion_Specified;
    property FechaOperacion:                      fecha                        Index (IS_OPTN) read FFechaOperacion write SetFechaOperacion stored FechaOperacion_Specified;
    property DescripcionOperacion:                TextMax500Type               read FDescripcionOperacion write FDescripcionOperacion;
    property FacturaSimplificadaArt7273:          SimplificadaCualificadaType  Index (IS_OPTN) read FFacturaSimplificadaArt7273 write SetFacturaSimplificadaArt7273 stored FacturaSimplificadaArt7273_Specified;
    property FacturaSinIdentifDestinatarioArt61d: CompletaSinDestinatarioType  Index (IS_OPTN) read FFacturaSinIdentifDestinatarioArt61d write SetFacturaSinIdentifDestinatarioArt61d stored FacturaSinIdentifDestinatarioArt61d_Specified;
    property Macrodato:                           MacrodatoType                Index (IS_OPTN) read FMacrodato write SetMacrodato stored Macrodato_Specified;
    property EmitidaPorTerceroODestinatario:      TercerosODestinatarioType    Index (IS_OPTN) read FEmitidaPorTerceroODestinatario write SetEmitidaPorTerceroODestinatario stored EmitidaPorTerceroODestinatario_Specified;
    property Tercero:                             PersonaFisicaJuridicaType    Index (IS_OPTN) read FTercero write SetTercero stored Tercero_Specified;
    property Destinatarios:                       Destinatarios                Index (IS_OPTN) read FDestinatarios write SetDestinatarios stored Destinatarios_Specified;
    property Cupon:                               CuponType                    Index (IS_OPTN) read FCupon write SetCupon stored Cupon_Specified;
    property Desglose:                            DesgloseType                 read FDesglose write FDesglose;
    property CuotaTotal:                          ImporteSgn12_2Type           read FCuotaTotal write FCuotaTotal;
    property ImporteTotal:                        ImporteSgn12_2Type           read FImporteTotal write FImporteTotal;
    property Encadenamiento:                      Encadenamiento2              read FEncadenamiento write FEncadenamiento;
    property SistemaInformatico:                  SistemaInformaticoType       read FSistemaInformatico write FSistemaInformatico;
    property FechaHoraHusoGenRegistro:            TXSDateTime                  read FFechaHoraHusoGenRegistro write FFechaHoraHusoGenRegistro;
    property NumRegistroAcuerdoFacturacion:       TextMax15Type                Index (IS_OPTN) read FNumRegistroAcuerdoFacturacion write SetNumRegistroAcuerdoFacturacion stored NumRegistroAcuerdoFacturacion_Specified;
    property IdAcuerdoSistemaInformatico:         TextMax16Type                Index (IS_OPTN) read FIdAcuerdoSistemaInformatico write SetIdAcuerdoSistemaInformatico stored IdAcuerdoSistemaInformatico_Specified;
    property TipoHuella:                          TipoHuellaType               read FTipoHuella write FTipoHuella;
    property Huella:                              TextMax64Type                read FHuella write FHuella;
    property Signature:                           Signature                    Index (IS_OPTN) read FSignature write SetSignature stored Signature_Specified;
  end;



  // ************************************************************************ //
  // XML       : RegistroAlta, global, <element>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  RegistroAlta = class(RegistroFacturacionAltaType)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : EncadenamientoFacturaAnteriorType, global, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  EncadenamientoFacturaAnteriorType = class(TRemotable)
  private
    FIDEmisorFactura: NIFType;
    FNumSerieFactura: TextMax60Type;
    FFechaExpedicionFactura: fecha;
    FHuella: TextMax64Type;
  published
    property IDEmisorFactura:        NIFType        read FIDEmisorFactura write FIDEmisorFactura;
    property NumSerieFactura:        TextMax60Type  read FNumSerieFactura write FNumSerieFactura;
    property FechaExpedicionFactura: fecha          read FFechaExpedicionFactura write FFechaExpedicionFactura;
    property Huella:                 TextMax64Type  read FHuella write FHuella;
  end;

  TextMax18Type   = string;         { "https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"[GblSmpl] }


  // ************************************************************************ //
  // XML       : RemisionRequerimiento, <complexType>
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd
  // ************************************************************************ //
  RemisionRequerimiento = class(TRemotable)
  private
    FRefRequerimiento: TextMax18Type;
    FFinRequerimiento: FinRequerimientoType;
    FFinRequerimiento_Specified: boolean;
    procedure SetFinRequerimiento(Index: Integer; const AFinRequerimientoType: FinRequerimientoType);
    function  FinRequerimiento_Specified(Index: Integer): boolean;
  published
    property RefRequerimiento: TextMax18Type         read FRefRequerimiento write FRefRequerimiento;
    property FinRequerimiento: FinRequerimientoType  Index (IS_OPTN) read FFinRequerimiento write SetFinRequerimiento stored FinRequerimiento_Specified;
  end;


  // ************************************************************************ //
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SistemaFacturacion.wsdl
  // style     : ????
  // use       : ????
  // binding   : sfVerifactu
  // service   : sfVerifactu
  // port      : SistemaVerifactu
  // ************************************************************************ //
  sfPortTypeVerifactu = interface(IInvokable)
  ['{A406673A-FDB9-1549-CE5B-A81BEC1E74C7}']
    function  RegFactuSistemaFacturacion(const RegFactuSistemaFacturacion: RegFactuSistemaFacturacion): RespuestaRegFactuSistemaFacturacion; stdcall;
  end;


  // ************************************************************************ //
  // Namespace : https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SistemaFacturacion.wsdl
  // style     : ????
  // use       : ????
  // binding   : sfRequerimiento
  // service   : sfRequerimiento
  // port      : SistemaRequerimiento
  // ************************************************************************ //
  sfPortTypePorRequerimiento = interface(IInvokable)
  ['{70A16B0C-FEA3-C4A5-62D3-276CAA1A0512}']
    function  RegFactuSistemaFacturacion(const RegFactuSistemaFacturacion: RegFactuSistemaFacturacion): RespuestaRegFactuSistemaFacturacion; stdcall;
  end;

function GetsfPortTypeVerifactu(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): sfPortTypeVerifactu;
function GetsfPortTypePorRequerimiento(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): sfPortTypePorRequerimiento;


implementation
  uses System.SysUtils;

function GetsfPortTypeVerifactu(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): sfPortTypeVerifactu;
const
  defWSDL = 'https://prewww2.aeat.es/static_files/common/internet/dep/aplicaciones/es/aeat/tikeV1.0/cont/ws/SistemaFacturacion.wsdl';
  defURL  = '';
  defSvc  = 'sfVerifactu';
  defPrt  = 'SistemaVerifactu';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as sfPortTypeVerifactu);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


function GetsfPortTypePorRequerimiento(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): sfPortTypePorRequerimiento;
const
  defWSDL = 'https://prewww2.aeat.es/static_files/common/internet/dep/aplicaciones/es/aeat/tikeV1.0/cont/ws/SistemaFacturacion.wsdl';
  defURL  = '';
  defSvc  = 'sfRequerimiento';
  defPrt  = 'SistemaRequerimiento';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as sfPortTypePorRequerimiento);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor Encadenamiento.Destroy;
begin
  System.SysUtils.FreeAndNil(FRegistroAnterior);
  inherited Destroy;
end;

procedure Encadenamiento.SetPrimerRegistro(Index: Integer; const APrimerRegistroCadenaType: PrimerRegistroCadenaType);
begin
  FPrimerRegistro := APrimerRegistroCadenaType;
  FPrimerRegistro_Specified := True;
end;

function Encadenamiento.PrimerRegistro_Specified(Index: Integer): boolean;
begin
  Result := FPrimerRegistro_Specified;
end;

procedure Encadenamiento.SetRegistroAnterior(Index: Integer; const AEncadenamientoFacturaAnteriorType: EncadenamientoFacturaAnteriorType);
begin
  FRegistroAnterior := AEncadenamientoFacturaAnteriorType;
  FRegistroAnterior_Specified := True;
end;

function Encadenamiento.RegistroAnterior_Specified(Index: Integer): boolean;
begin
  Result := FRegistroAnterior_Specified;
end;

destructor Encadenamiento2.Destroy;
begin
  System.SysUtils.FreeAndNil(FRegistroAnterior);
  inherited Destroy;
end;

procedure Encadenamiento2.SetPrimerRegistro(Index: Integer; const APrimerRegistroCadenaType: PrimerRegistroCadenaType);
begin
  FPrimerRegistro := APrimerRegistroCadenaType;
  FPrimerRegistro_Specified := True;
end;

function Encadenamiento2.PrimerRegistro_Specified(Index: Integer): boolean;
begin
  Result := FPrimerRegistro_Specified;
end;

procedure Encadenamiento2.SetRegistroAnterior(Index: Integer; const AEncadenamientoFacturaAnteriorType: EncadenamientoFacturaAnteriorType);
begin
  FRegistroAnterior := AEncadenamientoFacturaAnteriorType;
  FRegistroAnterior_Specified := True;
end;

function Encadenamiento2.RegistroAnterior_Specified(Index: Integer): boolean;
begin
  Result := FRegistroAnterior_Specified;
end;

destructor RegFactuSistemaFacturacion.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FRegistroFactura)-1 do
    System.SysUtils.FreeAndNil(FRegistroFactura[I]);
  System.SetLength(FRegistroFactura, 0);
  System.SysUtils.FreeAndNil(FCabecera);
  inherited Destroy;
end;

destructor RegistroFacturaType.Destroy;
begin
  System.SysUtils.FreeAndNil(FRegistroAlta);
  System.SysUtils.FreeAndNil(FRegistroAnulacion);
  inherited Destroy;
end;

procedure RegistroFacturaType.SetRegistroAlta(Index: Integer; const ARegistroAlta: RegistroAlta);
begin
  FRegistroAlta := ARegistroAlta;
  FRegistroAlta_Specified := True;
end;

function RegistroFacturaType.RegistroAlta_Specified(Index: Integer): boolean;
begin
  Result := FRegistroAlta_Specified;
end;

procedure RegistroFacturaType.SetRegistroAnulacion(Index: Integer; const ARegistroAnulacion: RegistroAnulacion);
begin
  FRegistroAnulacion := ARegistroAnulacion;
  FRegistroAnulacion_Specified := True;
end;

function RegistroFacturaType.RegistroAnulacion_Specified(Index: Integer): boolean;
begin
  Result := FRegistroAnulacion_Specified;
end;

destructor RespuestaBaseType.Destroy;
begin
  System.SysUtils.FreeAndNil(FDatosPresentacion);
  System.SysUtils.FreeAndNil(FCabecera);
  inherited Destroy;
end;

procedure RespuestaBaseType.SetCSV(Index: Integer; const Astring: string);
begin
  FCSV := Astring;
  FCSV_Specified := True;
end;

function RespuestaBaseType.CSV_Specified(Index: Integer): boolean;
begin
  Result := FCSV_Specified;
end;

procedure RespuestaBaseType.SetDatosPresentacion(Index: Integer; const ADatosPresentacionType: DatosPresentacionType);
begin
  FDatosPresentacion := ADatosPresentacionType;
  FDatosPresentacion_Specified := True;
end;

function RespuestaBaseType.DatosPresentacion_Specified(Index: Integer): boolean;
begin
  Result := FDatosPresentacion_Specified;
end;

destructor RespuestaRegFactuSistemaFacturacionType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FRespuestaLinea)-1 do
    System.SysUtils.FreeAndNil(FRespuestaLinea[I]);
  System.SetLength(FRespuestaLinea, 0);
  inherited Destroy;
end;

procedure RespuestaRegFactuSistemaFacturacionType.SetRespuestaLinea(Index: Integer; const AArray_Of_RespuestaExpedidaType: Array_Of_RespuestaExpedidaType);
begin
  FRespuestaLinea := AArray_Of_RespuestaExpedidaType;
  FRespuestaLinea_Specified := True;
end;

function RespuestaRegFactuSistemaFacturacionType.RespuestaLinea_Specified(Index: Integer): boolean;
begin
  Result := FRespuestaLinea_Specified;
end;

procedure DetalleType.SetImpuesto(Index: Integer; const AImpuestoType: ImpuestoType);
begin
  FImpuesto := AImpuestoType;
  FImpuesto_Specified := True;
end;

function DetalleType.Impuesto_Specified(Index: Integer): boolean;
begin
  Result := FImpuesto_Specified;
end;

procedure DetalleType.SetClaveRegimen(Index: Integer; const AIdOperacionesTrascendenciaTributariaType: IdOperacionesTrascendenciaTributariaType);
begin
  FClaveRegimen := AIdOperacionesTrascendenciaTributariaType;
  FClaveRegimen_Specified := True;
end;

function DetalleType.ClaveRegimen_Specified(Index: Integer): boolean;
begin
  Result := FClaveRegimen_Specified;
end;

procedure DetalleType.SetCalificacionOperacion(Index: Integer; const ACalificacionOperacionType: CalificacionOperacionType);
begin
  FCalificacionOperacion := ACalificacionOperacionType;
  FCalificacionOperacion_Specified := True;
end;

function DetalleType.CalificacionOperacion_Specified(Index: Integer): boolean;
begin
  Result := FCalificacionOperacion_Specified;
end;

procedure DetalleType.SetOperacionExenta(Index: Integer; const AOperacionExentaType: OperacionExentaType);
begin
  FOperacionExenta := AOperacionExentaType;
  FOperacionExenta_Specified := True;
end;

function DetalleType.OperacionExenta_Specified(Index: Integer): boolean;
begin
  Result := FOperacionExenta_Specified;
end;

procedure DetalleType.SetTipoImpositivo(Index: Integer; const ATipo2_2Type: Tipo2_2Type);
begin
  FTipoImpositivo := ATipo2_2Type;
  FTipoImpositivo_Specified := True;
end;

function DetalleType.TipoImpositivo_Specified(Index: Integer): boolean;
begin
  Result := FTipoImpositivo_Specified;
end;

procedure DetalleType.SetBaseImponibleACoste(Index: Integer; const AImporteSgn12_2Type: ImporteSgn12_2Type);
begin
  FBaseImponibleACoste := AImporteSgn12_2Type;
  FBaseImponibleACoste_Specified := True;
end;

function DetalleType.BaseImponibleACoste_Specified(Index: Integer): boolean;
begin
  Result := FBaseImponibleACoste_Specified;
end;

procedure DetalleType.SetCuotaRepercutida(Index: Integer; const AImporteSgn12_2Type: ImporteSgn12_2Type);
begin
  FCuotaRepercutida := AImporteSgn12_2Type;
  FCuotaRepercutida_Specified := True;
end;

function DetalleType.CuotaRepercutida_Specified(Index: Integer): boolean;
begin
  Result := FCuotaRepercutida_Specified;
end;

procedure DetalleType.SetTipoRecargoEquivalencia(Index: Integer; const ATipo2_2Type: Tipo2_2Type);
begin
  FTipoRecargoEquivalencia := ATipo2_2Type;
  FTipoRecargoEquivalencia_Specified := True;
end;

function DetalleType.TipoRecargoEquivalencia_Specified(Index: Integer): boolean;
begin
  Result := FTipoRecargoEquivalencia_Specified;
end;

procedure DetalleType.SetCuotaRecargoEquivalencia(Index: Integer; const AImporteSgn12_2Type: ImporteSgn12_2Type);
begin
  FCuotaRecargoEquivalencia := AImporteSgn12_2Type;
  FCuotaRecargoEquivalencia_Specified := True;
end;

function DetalleType.CuotaRecargoEquivalencia_Specified(Index: Integer): boolean;
begin
  Result := FCuotaRecargoEquivalencia_Specified;
end;

destructor KeyValueType.Destroy;
begin
  System.SysUtils.FreeAndNil(FDSAKeyValue);
  System.SysUtils.FreeAndNil(FRSAKeyValue);
  inherited Destroy;
end;

procedure KeyValueType.SetDSAKeyValue(Index: Integer; const ADSAKeyValue: DSAKeyValue);
begin
  FDSAKeyValue := ADSAKeyValue;
  FDSAKeyValue_Specified := True;
end;

function KeyValueType.DSAKeyValue_Specified(Index: Integer): boolean;
begin
  Result := FDSAKeyValue_Specified;
end;

procedure KeyValueType.SetRSAKeyValue(Index: Integer; const ARSAKeyValue: RSAKeyValue);
begin
  FRSAKeyValue := ARSAKeyValue;
  FRSAKeyValue_Specified := True;
end;

function KeyValueType.RSAKeyValue_Specified(Index: Integer): boolean;
begin
  Result := FRSAKeyValue_Specified;
end;

procedure SignatureValueType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignatureValueType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure SignatureMethodType.SetHMACOutputLength(Index: Integer; const AHMACOutputLengthType: HMACOutputLengthType);
begin
  FHMACOutputLength := AHMACOutputLengthType;
  FHMACOutputLength_Specified := True;
end;

function SignatureMethodType.HMACOutputLength_Specified(Index: Integer): boolean;
begin
  Result := FHMACOutputLength_Specified;
end;

destructor RetrievalMethodType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTransforms)-1 do
    System.SysUtils.FreeAndNil(FTransforms[I]);
  System.SetLength(FTransforms, 0);
  inherited Destroy;
end;

procedure RetrievalMethodType.SetURI(Index: Integer; const Astring: string);
begin
  FURI := Astring;
  FURI_Specified := True;
end;

function RetrievalMethodType.URI_Specified(Index: Integer): boolean;
begin
  Result := FURI_Specified;
end;

procedure RetrievalMethodType.SetType_(Index: Integer; const Astring: string);
begin
  FType_ := Astring;
  FType__Specified := True;
end;

function RetrievalMethodType.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

procedure RetrievalMethodType.SetTransforms(Index: Integer; const ATransforms: Transforms);
begin
  FTransforms := ATransforms;
  FTransforms_Specified := True;
end;

function RetrievalMethodType.Transforms_Specified(Index: Integer): boolean;
begin
  Result := FTransforms_Specified;
end;

procedure TransformType.SetXPath(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FXPath := AArray_Of_string;
  FXPath_Specified := True;
end;

function TransformType.XPath_Specified(Index: Integer): boolean;
begin
  Result := FXPath_Specified;
end;

destructor SignedInfoType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FReference)-1 do
    System.SysUtils.FreeAndNil(FReference[I]);
  System.SetLength(FReference, 0);
  System.SysUtils.FreeAndNil(FCanonicalizationMethod);
  System.SysUtils.FreeAndNil(FSignatureMethod);
  inherited Destroy;
end;

procedure SignedInfoType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignedInfoType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure PGPDataType.SetPGPKeyPacket(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FPGPKeyPacket := ATByteDynArray;
  FPGPKeyPacket_Specified := True;
end;

function PGPDataType.PGPKeyPacket_Specified(Index: Integer): boolean;
begin
  Result := FPGPKeyPacket_Specified;
end;

procedure OperacionType.SetSubsanacion(Index: Integer; const ASubsanacionType: SubsanacionType);
begin
  FSubsanacion := ASubsanacionType;
  FSubsanacion_Specified := True;
end;

function OperacionType.Subsanacion_Specified(Index: Integer): boolean;
begin
  Result := FSubsanacion_Specified;
end;

procedure OperacionType.SetRechazoPrevio(Index: Integer; const ARechazoPrevioType: RechazoPrevioType);
begin
  FRechazoPrevio := ARechazoPrevioType;
  FRechazoPrevio_Specified := True;
end;

function OperacionType.RechazoPrevio_Specified(Index: Integer): boolean;
begin
  Result := FRechazoPrevio_Specified;
end;

procedure OperacionType.SetSinRegistroPrevio(Index: Integer; const ASinRegistroPrevioType: SinRegistroPrevioType);
begin
  FSinRegistroPrevio := ASinRegistroPrevioType;
  FSinRegistroPrevio_Specified := True;
end;

function OperacionType.SinRegistroPrevio_Specified(Index: Integer): boolean;
begin
  Result := FSinRegistroPrevio_Specified;
end;

destructor RespuestaExpedidaType.Destroy;
begin
  System.SysUtils.FreeAndNil(FIDFactura);
  System.SysUtils.FreeAndNil(FOperacion);
  System.SysUtils.FreeAndNil(FRegistroDuplicado);
  inherited Destroy;
end;

procedure RespuestaExpedidaType.SetRefExterna(Index: Integer; const ATextMax70Type: TextMax70Type);
begin
  FRefExterna := ATextMax70Type;
  FRefExterna_Specified := True;
end;

function RespuestaExpedidaType.RefExterna_Specified(Index: Integer): boolean;
begin
  Result := FRefExterna_Specified;
end;

procedure RespuestaExpedidaType.SetCodigoErrorRegistro(Index: Integer; const AErrorDetalleType2: ErrorDetalleType2);
begin
  FCodigoErrorRegistro := AErrorDetalleType2;
  FCodigoErrorRegistro_Specified := True;
end;

function RespuestaExpedidaType.CodigoErrorRegistro_Specified(Index: Integer): boolean;
begin
  Result := FCodigoErrorRegistro_Specified;
end;

procedure RespuestaExpedidaType.SetDescripcionErrorRegistro(Index: Integer; const ATextMax1500Type: TextMax1500Type);
begin
  FDescripcionErrorRegistro := ATextMax1500Type;
  FDescripcionErrorRegistro_Specified := True;
end;

function RespuestaExpedidaType.DescripcionErrorRegistro_Specified(Index: Integer): boolean;
begin
  Result := FDescripcionErrorRegistro_Specified;
end;

procedure RespuestaExpedidaType.SetRegistroDuplicado(Index: Integer; const ARegistroDuplicadoType: RegistroDuplicadoType);
begin
  FRegistroDuplicado := ARegistroDuplicadoType;
  FRegistroDuplicado_Specified := True;
end;

function RespuestaExpedidaType.RegistroDuplicado_Specified(Index: Integer): boolean;
begin
  Result := FRegistroDuplicado_Specified;
end;

procedure DesgloseRectificacionType.SetCuotaRecargoRectificado(Index: Integer; const AImporteSgn12_2Type: ImporteSgn12_2Type);
begin
  FCuotaRecargoRectificado := AImporteSgn12_2Type;
  FCuotaRecargoRectificado_Specified := True;
end;

function DesgloseRectificacionType.CuotaRecargoRectificado_Specified(Index: Integer): boolean;
begin
  Result := FCuotaRecargoRectificado_Specified;
end;

destructor ReferenceType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FTransforms)-1 do
    System.SysUtils.FreeAndNil(FTransforms[I]);
  System.SetLength(FTransforms, 0);
  System.SysUtils.FreeAndNil(FDigestMethod);
  inherited Destroy;
end;

procedure ReferenceType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function ReferenceType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure ReferenceType.SetURI(Index: Integer; const Astring: string);
begin
  FURI := Astring;
  FURI_Specified := True;
end;

function ReferenceType.URI_Specified(Index: Integer): boolean;
begin
  Result := FURI_Specified;
end;

procedure ReferenceType.SetType_(Index: Integer; const Astring: string);
begin
  FType_ := Astring;
  FType__Specified := True;
end;

function ReferenceType.Type__Specified(Index: Integer): boolean;
begin
  Result := FType__Specified;
end;

procedure ReferenceType.SetTransforms(Index: Integer; const ATransforms: Transforms);
begin
  FTransforms := ATransforms;
  FTransforms_Specified := True;
end;

function ReferenceType.Transforms_Specified(Index: Integer): boolean;
begin
  Result := FTransforms_Specified;
end;

destructor CabeceraType.Destroy;
begin
  System.SysUtils.FreeAndNil(FObligadoEmision);
  System.SysUtils.FreeAndNil(FRepresentante);
  System.SysUtils.FreeAndNil(FRemisionVoluntaria);
  System.SysUtils.FreeAndNil(FRemisionRequerimiento);
  inherited Destroy;
end;

procedure CabeceraType.SetRepresentante(Index: Integer; const APersonaFisicaJuridicaESType: PersonaFisicaJuridicaESType);
begin
  FRepresentante := APersonaFisicaJuridicaESType;
  FRepresentante_Specified := True;
end;

function CabeceraType.Representante_Specified(Index: Integer): boolean;
begin
  Result := FRepresentante_Specified;
end;

procedure CabeceraType.SetRemisionVoluntaria(Index: Integer; const ARemisionVoluntaria: RemisionVoluntaria);
begin
  FRemisionVoluntaria := ARemisionVoluntaria;
  FRemisionVoluntaria_Specified := True;
end;

function CabeceraType.RemisionVoluntaria_Specified(Index: Integer): boolean;
begin
  Result := FRemisionVoluntaria_Specified;
end;

procedure CabeceraType.SetRemisionRequerimiento(Index: Integer; const ARemisionRequerimiento: RemisionRequerimiento);
begin
  FRemisionRequerimiento := ARemisionRequerimiento;
  FRemisionRequerimiento_Specified := True;
end;

function CabeceraType.RemisionRequerimiento_Specified(Index: Integer): boolean;
begin
  Result := FRemisionRequerimiento_Specified;
end;

destructor SignatureType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FObject_)-1 do
    System.SysUtils.FreeAndNil(FObject_[I]);
  System.SetLength(FObject_, 0);
  System.SysUtils.FreeAndNil(FSignedInfo);
  System.SysUtils.FreeAndNil(FSignatureValue);
  System.SysUtils.FreeAndNil(FKeyInfo);
  inherited Destroy;
end;

procedure SignatureType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function SignatureType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure SignatureType.SetKeyInfo(Index: Integer; const AKeyInfo: KeyInfo);
begin
  FKeyInfo := AKeyInfo;
  FKeyInfo_Specified := True;
end;

function SignatureType.KeyInfo_Specified(Index: Integer): boolean;
begin
  Result := FKeyInfo_Specified;
end;

procedure SignatureType.SetObject_(Index: Integer; const AArray_Of_Object: Array_Of_Object);
begin
  FObject_ := AArray_Of_Object;
  FObject__Specified := True;
end;

function SignatureType.Object__Specified(Index: Integer): boolean;
begin
  Result := FObject__Specified;
end;

destructor KeyInfoType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FKeyValue)-1 do
    System.SysUtils.FreeAndNil(FKeyValue[I]);
  System.SetLength(FKeyValue, 0);
  for I := 0 to System.Length(FRetrievalMethod)-1 do
    System.SysUtils.FreeAndNil(FRetrievalMethod[I]);
  System.SetLength(FRetrievalMethod, 0);
  for I := 0 to System.Length(FX509Data)-1 do
    System.SysUtils.FreeAndNil(FX509Data[I]);
  System.SetLength(FX509Data, 0);
  for I := 0 to System.Length(FPGPData)-1 do
    System.SysUtils.FreeAndNil(FPGPData[I]);
  System.SetLength(FPGPData, 0);
  inherited Destroy;
end;

procedure KeyInfoType.SetId(Index: Integer; const Astring: string);
begin
  FId := Astring;
  FId_Specified := True;
end;

function KeyInfoType.Id_Specified(Index: Integer): boolean;
begin
  Result := FId_Specified;
end;

procedure KeyInfoType.SetKeyName(Index: Integer; const AArray_Of_KeyName: Array_Of_KeyName);
begin
  FKeyName := AArray_Of_KeyName;
  FKeyName_Specified := True;
end;

function KeyInfoType.KeyName_Specified(Index: Integer): boolean;
begin
  Result := FKeyName_Specified;
end;

procedure KeyInfoType.SetKeyValue(Index: Integer; const AArray_Of_KeyValue: Array_Of_KeyValue);
begin
  FKeyValue := AArray_Of_KeyValue;
  FKeyValue_Specified := True;
end;

function KeyInfoType.KeyValue_Specified(Index: Integer): boolean;
begin
  Result := FKeyValue_Specified;
end;

procedure KeyInfoType.SetRetrievalMethod(Index: Integer; const AArray_Of_RetrievalMethod: Array_Of_RetrievalMethod);
begin
  FRetrievalMethod := AArray_Of_RetrievalMethod;
  FRetrievalMethod_Specified := True;
end;

function KeyInfoType.RetrievalMethod_Specified(Index: Integer): boolean;
begin
  Result := FRetrievalMethod_Specified;
end;

procedure KeyInfoType.SetX509Data(Index: Integer; const AArray_Of_X509Data: Array_Of_X509Data);
begin
  FX509Data := AArray_Of_X509Data;
  FX509Data_Specified := True;
end;

function KeyInfoType.X509Data_Specified(Index: Integer): boolean;
begin
  Result := FX509Data_Specified;
end;

procedure KeyInfoType.SetPGPData(Index: Integer; const AArray_Of_PGPData: Array_Of_PGPData);
begin
  FPGPData := AArray_Of_PGPData;
  FPGPData_Specified := True;
end;

function KeyInfoType.PGPData_Specified(Index: Integer): boolean;
begin
  Result := FPGPData_Specified;
end;

procedure KeyInfoType.SetSPKIData(Index: Integer; const AArray_Of_SPKIData: Array_Of_SPKIData);
begin
  FSPKIData := AArray_Of_SPKIData;
  FSPKIData_Specified := True;
end;

function KeyInfoType.SPKIData_Specified(Index: Integer): boolean;
begin
  Result := FSPKIData_Specified;
end;

procedure KeyInfoType.SetMgmtData(Index: Integer; const AArray_Of_MgmtData: Array_Of_MgmtData);
begin
  FMgmtData := AArray_Of_MgmtData;
  FMgmtData_Specified := True;
end;

function KeyInfoType.MgmtData_Specified(Index: Integer): boolean;
begin
  Result := FMgmtData_Specified;
end;

destructor X509DataType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FX509IssuerSerial)-1 do
    System.SysUtils.FreeAndNil(FX509IssuerSerial[I]);
  System.SetLength(FX509IssuerSerial, 0);
  inherited Destroy;
end;

procedure X509DataType.SetX509IssuerSerial(Index: Integer; const AArray_Of_X509IssuerSerialType: Array_Of_X509IssuerSerialType);
begin
  FX509IssuerSerial := AArray_Of_X509IssuerSerialType;
  FX509IssuerSerial_Specified := True;
end;

function X509DataType.X509IssuerSerial_Specified(Index: Integer): boolean;
begin
  Result := FX509IssuerSerial_Specified;
end;

procedure X509DataType.SetX509SKI(Index: Integer; const ASPKIDataType: SPKIDataType);
begin
  FX509SKI := ASPKIDataType;
  FX509SKI_Specified := True;
end;

function X509DataType.X509SKI_Specified(Index: Integer): boolean;
begin
  Result := FX509SKI_Specified;
end;

procedure X509DataType.SetX509SubjectName(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FX509SubjectName := AArray_Of_string;
  FX509SubjectName_Specified := True;
end;

function X509DataType.X509SubjectName_Specified(Index: Integer): boolean;
begin
  Result := FX509SubjectName_Specified;
end;

procedure X509DataType.SetX509Certificate(Index: Integer; const ASPKIDataType: SPKIDataType);
begin
  FX509Certificate := ASPKIDataType;
  FX509Certificate_Specified := True;
end;

function X509DataType.X509Certificate_Specified(Index: Integer): boolean;
begin
  Result := FX509Certificate_Specified;
end;

procedure X509DataType.SetX509CRL(Index: Integer; const ASPKIDataType: SPKIDataType);
begin
  FX509CRL := ASPKIDataType;
  FX509CRL_Specified := True;
end;

function X509DataType.X509CRL_Specified(Index: Integer): boolean;
begin
  Result := FX509CRL_Specified;
end;

procedure DSAKeyValueType.SetG(Index: Integer; const ACryptoBinary: CryptoBinary);
begin
  FG := ACryptoBinary;
  FG_Specified := True;
end;

function DSAKeyValueType.G_Specified(Index: Integer): boolean;
begin
  Result := FG_Specified;
end;

procedure DSAKeyValueType.SetJ(Index: Integer; const ACryptoBinary: CryptoBinary);
begin
  FJ := ACryptoBinary;
  FJ_Specified := True;
end;

function DSAKeyValueType.J_Specified(Index: Integer): boolean;
begin
  Result := FJ_Specified;
end;

destructor PersonaFisicaJuridicaType.Destroy;
begin
  System.SysUtils.FreeAndNil(FIDOtro);
  inherited Destroy;
end;

procedure PersonaFisicaJuridicaType.SetNIF(Index: Integer; const ANIFType: NIFType);
begin
  FNIF := ANIFType;
  FNIF_Specified := True;
end;

function PersonaFisicaJuridicaType.NIF_Specified(Index: Integer): boolean;
begin
  Result := FNIF_Specified;
end;

procedure PersonaFisicaJuridicaType.SetIDOtro(Index: Integer; const AIDOtroType: IDOtroType);
begin
  FIDOtro := AIDOtroType;
  FIDOtro_Specified := True;
end;

function PersonaFisicaJuridicaType.IDOtro_Specified(Index: Integer): boolean;
begin
  Result := FIDOtro_Specified;
end;

destructor SistemaInformaticoType.Destroy;
begin
  System.SysUtils.FreeAndNil(FIDOtro);
  inherited Destroy;
end;

procedure SistemaInformaticoType.SetNIF(Index: Integer; const ANIFType: NIFType);
begin
  FNIF := ANIFType;
  FNIF_Specified := True;
end;

function SistemaInformaticoType.NIF_Specified(Index: Integer): boolean;
begin
  Result := FNIF_Specified;
end;

procedure SistemaInformaticoType.SetIDOtro(Index: Integer; const AIDOtroType: IDOtroType);
begin
  FIDOtro := AIDOtroType;
  FIDOtro_Specified := True;
end;

function SistemaInformaticoType.IDOtro_Specified(Index: Integer): boolean;
begin
  Result := FIDOtro_Specified;
end;

destructor DatosPresentacionType.Destroy;
begin
  System.SysUtils.FreeAndNil(FTimestampPresentacion);
  inherited Destroy;
end;

destructor RegistroFacturacionAnulacionType.Destroy;
begin
  System.SysUtils.FreeAndNil(FIDFactura);
  System.SysUtils.FreeAndNil(FGenerador);
  System.SysUtils.FreeAndNil(FEncadenamiento);
  System.SysUtils.FreeAndNil(FSistemaInformatico);
  System.SysUtils.FreeAndNil(FFechaHoraHusoGenRegistro);
  System.SysUtils.FreeAndNil(FSignature);
  inherited Destroy;
end;

procedure RegistroFacturacionAnulacionType.SetRefExterna(Index: Integer; const ATextMax60Type: TextMax60Type);
begin
  FRefExterna := ATextMax60Type;
  FRefExterna_Specified := True;
end;

function RegistroFacturacionAnulacionType.RefExterna_Specified(Index: Integer): boolean;
begin
  Result := FRefExterna_Specified;
end;

procedure RegistroFacturacionAnulacionType.SetSinRegistroPrevio(Index: Integer; const ASinRegistroPrevioType: SinRegistroPrevioType);
begin
  FSinRegistroPrevio := ASinRegistroPrevioType;
  FSinRegistroPrevio_Specified := True;
end;

function RegistroFacturacionAnulacionType.SinRegistroPrevio_Specified(Index: Integer): boolean;
begin
  Result := FSinRegistroPrevio_Specified;
end;

procedure RegistroFacturacionAnulacionType.SetRechazoPrevio(Index: Integer; const ARechazoPrevioAnulacionType: RechazoPrevioAnulacionType);
begin
  FRechazoPrevio := ARechazoPrevioAnulacionType;
  FRechazoPrevio_Specified := True;
end;

function RegistroFacturacionAnulacionType.RechazoPrevio_Specified(Index: Integer): boolean;
begin
  Result := FRechazoPrevio_Specified;
end;

procedure RegistroFacturacionAnulacionType.SetGeneradoPor(Index: Integer; const AGeneradoPorType: GeneradoPorType);
begin
  FGeneradoPor := AGeneradoPorType;
  FGeneradoPor_Specified := True;
end;

function RegistroFacturacionAnulacionType.GeneradoPor_Specified(Index: Integer): boolean;
begin
  Result := FGeneradoPor_Specified;
end;

procedure RegistroFacturacionAnulacionType.SetGenerador(Index: Integer; const APersonaFisicaJuridicaType: PersonaFisicaJuridicaType);
begin
  FGenerador := APersonaFisicaJuridicaType;
  FGenerador_Specified := True;
end;

function RegistroFacturacionAnulacionType.Generador_Specified(Index: Integer): boolean;
begin
  Result := FGenerador_Specified;
end;

procedure RegistroFacturacionAnulacionType.SetSignature(Index: Integer; const ASignature: Signature);
begin
  FSignature := ASignature;
  FSignature_Specified := True;
end;

function RegistroFacturacionAnulacionType.Signature_Specified(Index: Integer): boolean;
begin
  Result := FSignature_Specified;
end;

procedure RegistroDuplicadoType.SetCodigoErrorRegistro(Index: Integer; const AErrorDetalleType: ErrorDetalleType);
begin
  FCodigoErrorRegistro := AErrorDetalleType;
  FCodigoErrorRegistro_Specified := True;
end;

function RegistroDuplicadoType.CodigoErrorRegistro_Specified(Index: Integer): boolean;
begin
  Result := FCodigoErrorRegistro_Specified;
end;

procedure RegistroDuplicadoType.SetDescripcionErrorRegistro(Index: Integer; const ATextMax500Type: TextMax500Type);
begin
  FDescripcionErrorRegistro := ATextMax500Type;
  FDescripcionErrorRegistro_Specified := True;
end;

function RegistroDuplicadoType.DescripcionErrorRegistro_Specified(Index: Integer): boolean;
begin
  Result := FDescripcionErrorRegistro_Specified;
end;

procedure IDOtroType.SetCodigoPais(Index: Integer; const ACountryType2: CountryType2);
begin
  FCodigoPais := ACountryType2;
  FCodigoPais_Specified := True;
end;

function IDOtroType.CodigoPais_Specified(Index: Integer): boolean;
begin
  Result := FCodigoPais_Specified;
end;

procedure RemisionVoluntaria.SetFechaFinVeriFactu(Index: Integer; const Afecha: fecha);
begin
  FFechaFinVeriFactu := Afecha;
  FFechaFinVeriFactu_Specified := True;
end;

function RemisionVoluntaria.FechaFinVeriFactu_Specified(Index: Integer): boolean;
begin
  Result := FFechaFinVeriFactu_Specified;
end;

procedure RemisionVoluntaria.SetIncidencia(Index: Integer; const AIncidenciaType: IncidenciaType);
begin
  FIncidencia := AIncidenciaType;
  FIncidencia_Specified := True;
end;

function RemisionVoluntaria.Incidencia_Specified(Index: Integer): boolean;
begin
  Result := FIncidencia_Specified;
end;

destructor RegistroFacturacionAltaType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FFacturasRectificadas)-1 do
    System.SysUtils.FreeAndNil(FFacturasRectificadas[I]);
  System.SetLength(FFacturasRectificadas, 0);
  for I := 0 to System.Length(FFacturasSustituidas)-1 do
    System.SysUtils.FreeAndNil(FFacturasSustituidas[I]);
  System.SetLength(FFacturasSustituidas, 0);
  for I := 0 to System.Length(FDestinatarios)-1 do
    System.SysUtils.FreeAndNil(FDestinatarios[I]);
  System.SetLength(FDestinatarios, 0);
  for I := 0 to System.Length(FDesglose)-1 do
    System.SysUtils.FreeAndNil(FDesglose[I]);
  System.SetLength(FDesglose, 0);
  System.SysUtils.FreeAndNil(FIDFactura);
  System.SysUtils.FreeAndNil(FImporteRectificacion);
  System.SysUtils.FreeAndNil(FTercero);
  System.SysUtils.FreeAndNil(FEncadenamiento);
  System.SysUtils.FreeAndNil(FSistemaInformatico);
  System.SysUtils.FreeAndNil(FFechaHoraHusoGenRegistro);
  System.SysUtils.FreeAndNil(FSignature);
  inherited Destroy;
end;

procedure RegistroFacturacionAltaType.SetRefExterna(Index: Integer; const ATextMax70Type: TextMax70Type);
begin
  FRefExterna := ATextMax70Type;
  FRefExterna_Specified := True;
end;

function RegistroFacturacionAltaType.RefExterna_Specified(Index: Integer): boolean;
begin
  Result := FRefExterna_Specified;
end;

procedure RegistroFacturacionAltaType.SetSubsanacion(Index: Integer; const ASubsanacionType: SubsanacionType);
begin
  FSubsanacion := ASubsanacionType;
  FSubsanacion_Specified := True;
end;

function RegistroFacturacionAltaType.Subsanacion_Specified(Index: Integer): boolean;
begin
  Result := FSubsanacion_Specified;
end;

procedure RegistroFacturacionAltaType.SetRechazoPrevio(Index: Integer; const ARechazoPrevioType: RechazoPrevioType);
begin
  FRechazoPrevio := ARechazoPrevioType;
  FRechazoPrevio_Specified := True;
end;

function RegistroFacturacionAltaType.RechazoPrevio_Specified(Index: Integer): boolean;
begin
  Result := FRechazoPrevio_Specified;
end;

procedure RegistroFacturacionAltaType.SetTipoRectificativa(Index: Integer; const AClaveTipoRectificativaType: ClaveTipoRectificativaType);
begin
  FTipoRectificativa := AClaveTipoRectificativaType;
  FTipoRectificativa_Specified := True;
end;

function RegistroFacturacionAltaType.TipoRectificativa_Specified(Index: Integer): boolean;
begin
  Result := FTipoRectificativa_Specified;
end;

procedure RegistroFacturacionAltaType.SetFacturasRectificadas(Index: Integer; const AFacturasRectificadas: FacturasRectificadas);
begin
  FFacturasRectificadas := AFacturasRectificadas;
  FFacturasRectificadas_Specified := True;
end;

function RegistroFacturacionAltaType.FacturasRectificadas_Specified(Index: Integer): boolean;
begin
  Result := FFacturasRectificadas_Specified;
end;

procedure RegistroFacturacionAltaType.SetFacturasSustituidas(Index: Integer; const AFacturasSustituidas: FacturasSustituidas);
begin
  FFacturasSustituidas := AFacturasSustituidas;
  FFacturasSustituidas_Specified := True;
end;

function RegistroFacturacionAltaType.FacturasSustituidas_Specified(Index: Integer): boolean;
begin
  Result := FFacturasSustituidas_Specified;
end;

procedure RegistroFacturacionAltaType.SetImporteRectificacion(Index: Integer; const ADesgloseRectificacionType: DesgloseRectificacionType);
begin
  FImporteRectificacion := ADesgloseRectificacionType;
  FImporteRectificacion_Specified := True;
end;

function RegistroFacturacionAltaType.ImporteRectificacion_Specified(Index: Integer): boolean;
begin
  Result := FImporteRectificacion_Specified;
end;

procedure RegistroFacturacionAltaType.SetFechaOperacion(Index: Integer; const Afecha: fecha);
begin
  FFechaOperacion := Afecha;
  FFechaOperacion_Specified := True;
end;

function RegistroFacturacionAltaType.FechaOperacion_Specified(Index: Integer): boolean;
begin
  Result := FFechaOperacion_Specified;
end;

procedure RegistroFacturacionAltaType.SetFacturaSimplificadaArt7273(Index: Integer; const ASimplificadaCualificadaType: SimplificadaCualificadaType);
begin
  FFacturaSimplificadaArt7273 := ASimplificadaCualificadaType;
  FFacturaSimplificadaArt7273_Specified := True;
end;

function RegistroFacturacionAltaType.FacturaSimplificadaArt7273_Specified(Index: Integer): boolean;
begin
  Result := FFacturaSimplificadaArt7273_Specified;
end;

procedure RegistroFacturacionAltaType.SetFacturaSinIdentifDestinatarioArt61d(Index: Integer; const ACompletaSinDestinatarioType: CompletaSinDestinatarioType);
begin
  FFacturaSinIdentifDestinatarioArt61d := ACompletaSinDestinatarioType;
  FFacturaSinIdentifDestinatarioArt61d_Specified := True;
end;

function RegistroFacturacionAltaType.FacturaSinIdentifDestinatarioArt61d_Specified(Index: Integer): boolean;
begin
  Result := FFacturaSinIdentifDestinatarioArt61d_Specified;
end;

procedure RegistroFacturacionAltaType.SetMacrodato(Index: Integer; const AMacrodatoType: MacrodatoType);
begin
  FMacrodato := AMacrodatoType;
  FMacrodato_Specified := True;
end;

function RegistroFacturacionAltaType.Macrodato_Specified(Index: Integer): boolean;
begin
  Result := FMacrodato_Specified;
end;

procedure RegistroFacturacionAltaType.SetEmitidaPorTerceroODestinatario(Index: Integer; const ATercerosODestinatarioType: TercerosODestinatarioType);
begin
  FEmitidaPorTerceroODestinatario := ATercerosODestinatarioType;
  FEmitidaPorTerceroODestinatario_Specified := True;
end;

function RegistroFacturacionAltaType.EmitidaPorTerceroODestinatario_Specified(Index: Integer): boolean;
begin
  Result := FEmitidaPorTerceroODestinatario_Specified;
end;

procedure RegistroFacturacionAltaType.SetTercero(Index: Integer; const APersonaFisicaJuridicaType: PersonaFisicaJuridicaType);
begin
  FTercero := APersonaFisicaJuridicaType;
  FTercero_Specified := True;
end;

function RegistroFacturacionAltaType.Tercero_Specified(Index: Integer): boolean;
begin
  Result := FTercero_Specified;
end;

procedure RegistroFacturacionAltaType.SetDestinatarios(Index: Integer; const ADestinatarios: Destinatarios);
begin
  FDestinatarios := ADestinatarios;
  FDestinatarios_Specified := True;
end;

function RegistroFacturacionAltaType.Destinatarios_Specified(Index: Integer): boolean;
begin
  Result := FDestinatarios_Specified;
end;

procedure RegistroFacturacionAltaType.SetCupon(Index: Integer; const ACuponType: CuponType);
begin
  FCupon := ACuponType;
  FCupon_Specified := True;
end;

function RegistroFacturacionAltaType.Cupon_Specified(Index: Integer): boolean;
begin
  Result := FCupon_Specified;
end;

procedure RegistroFacturacionAltaType.SetNumRegistroAcuerdoFacturacion(Index: Integer; const ATextMax15Type: TextMax15Type);
begin
  FNumRegistroAcuerdoFacturacion := ATextMax15Type;
  FNumRegistroAcuerdoFacturacion_Specified := True;
end;

function RegistroFacturacionAltaType.NumRegistroAcuerdoFacturacion_Specified(Index: Integer): boolean;
begin
  Result := FNumRegistroAcuerdoFacturacion_Specified;
end;

procedure RegistroFacturacionAltaType.SetIdAcuerdoSistemaInformatico(Index: Integer; const ATextMax16Type: TextMax16Type);
begin
  FIdAcuerdoSistemaInformatico := ATextMax16Type;
  FIdAcuerdoSistemaInformatico_Specified := True;
end;

function RegistroFacturacionAltaType.IdAcuerdoSistemaInformatico_Specified(Index: Integer): boolean;
begin
  Result := FIdAcuerdoSistemaInformatico_Specified;
end;

procedure RegistroFacturacionAltaType.SetSignature(Index: Integer; const ASignature: Signature);
begin
  FSignature := ASignature;
  FSignature_Specified := True;
end;

function RegistroFacturacionAltaType.Signature_Specified(Index: Integer): boolean;
begin
  Result := FSignature_Specified;
end;

procedure RemisionRequerimiento.SetFinRequerimiento(Index: Integer; const AFinRequerimientoType: FinRequerimientoType);
begin
  FFinRequerimiento := AFinRequerimientoType;
  FFinRequerimiento_Specified := True;
end;

function RemisionRequerimiento.FinRequerimiento_Specified(Index: Integer): boolean;
begin
  Result := FFinRequerimiento_Specified;
end;

initialization
  { sfPortTypeVerifactu }
  InvRegistry.RegisterInterface(TypeInfo(sfPortTypeVerifactu), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SistemaFacturacion.wsdl', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(sfPortTypeVerifactu), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(sfPortTypeVerifactu), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(sfPortTypeVerifactu), ioLiteral);
  { sfPortTypePorRequerimiento }
  InvRegistry.RegisterInterface(TypeInfo(sfPortTypePorRequerimiento), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SistemaFacturacion.wsdl', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(sfPortTypePorRequerimiento), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(sfPortTypePorRequerimiento), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(sfPortTypePorRequerimiento), ioLiteral);
  RemClassRegistry.RegisterXSInfo(TypeInfo(SiNoType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'SiNoType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_RespuestaExpedidaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd', 'Array_Of_RespuestaExpedidaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ImpuestoType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'ImpuestoType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ImpuestoType), '_01', '01');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ImpuestoType), '_02', '02');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ImpuestoType), '_03', '03');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ImpuestoType), '_05', '05');
  RemClassRegistry.RegisterXSInfo(TypeInfo(IdOperacionesTrascendenciaTributariaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'IdOperacionesTrascendenciaTributariaType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_01', '01');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_02', '02');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_03', '03');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_04', '04');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_05', '05');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_06', '06');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_07', '07');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_08', '08');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_09', '09');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_10', '10');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_11', '11');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_14', '14');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_15', '15');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_17', '17');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_18', '18');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_19', '19');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(IdOperacionesTrascendenciaTributariaType), '_20', '20');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_RegistroFacturaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroLR.xsd', 'Array_Of_RegistroFacturaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_X509IssuerSerialType), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_X509IssuerSerialType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(PrimerRegistroCadenaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'PrimerRegistroCadenaType');
  RemClassRegistry.RegisterXSClass(Encadenamiento, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'Encadenamiento');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DesgloseType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'DesgloseType');
  RemClassRegistry.RegisterXSClass(Encadenamiento2, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'Encadenamiento2', 'Encadenamiento');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SinRegistroPrevioType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'SinRegistroPrevioType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RechazoPrevioAnulacionType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'RechazoPrevioAnulacionType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GeneradoPorType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'GeneradoPorType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TipoHuellaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TipoHuellaType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(TipoHuellaType), '_01', '01');
  RemClassRegistry.RegisterXSInfo(TypeInfo(EstadoEnvioType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd', 'EstadoEnvioType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(EstadoRegistroType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd', 'EstadoRegistroType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TipoOperacionType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TipoOperacionType');
  RemClassRegistry.RegisterXSClass(RegFactuSistemaFacturacion, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroLR.xsd', 'RegFactuSistemaFacturacion');
  RemClassRegistry.RegisterXSClass(RegistroFacturaType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroLR.xsd', 'RegistroFacturaType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RegistroFacturaType), 'RegistroAlta', '[Namespace="https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RegistroFacturaType), 'RegistroAnulacion', '[Namespace="https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(PersonaFisicaJuridicaIDTypeType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'PersonaFisicaJuridicaIDTypeType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PersonaFisicaJuridicaIDTypeType), '_02', '02');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PersonaFisicaJuridicaIDTypeType), '_03', '03');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PersonaFisicaJuridicaIDTypeType), '_04', '04');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PersonaFisicaJuridicaIDTypeType), '_05', '05');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PersonaFisicaJuridicaIDTypeType), '_06', '06');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PersonaFisicaJuridicaIDTypeType), '_07', '07');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_PGPData), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_PGPData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_X509Data), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_X509Data');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CountryType2), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'CountryType2');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CountryType2), 'DO_', 'DO');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CountryType2), 'IN_', 'IN');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CountryType2), 'IS_', 'IS');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CountryType2), 'AS_', 'AS');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CountryType2), 'TO_', 'TO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CalificacionOperacionType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'CalificacionOperacionType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OperacionExentaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'OperacionExentaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Reference), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_Reference');
  RemClassRegistry.RegisterXSInfo(TypeInfo(EstadoRegistroSFType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'EstadoRegistroSFType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_RetrievalMethod), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_RetrievalMethod');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_KeyValue), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_KeyValue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CuponType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'CuponType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TransformsType), 'http://www.w3.org/2000/09/xmldsig#', 'TransformsType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(KeyName), 'http://www.w3.org/2000/09/xmldsig#', 'KeyName');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_KeyName), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_KeyName');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Tipo2_2Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'Tipo2_2Type', 'Tipo2.2Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax1500Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax1500Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Tipo6Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'Tipo6Type');
  RemClassRegistry.RegisterXSClass(RespuestaBaseType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd', 'RespuestaBaseType');
  RemClassRegistry.RegisterXSClass(RespuestaRegFactuSistemaFacturacionType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd', 'RespuestaRegFactuSistemaFacturacionType');
  RemClassRegistry.RegisterXSClass(RespuestaRegFactuSistemaFacturacion, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd', 'RespuestaRegFactuSistemaFacturacion');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax64Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax64Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax60Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax60Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax16Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax16Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ImporteSgn12_2Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'ImporteSgn12_2Type', 'ImporteSgn12.2Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax15Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax15Type');
  RemClassRegistry.RegisterXSClass(DetalleType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'DetalleType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax2Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax2Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax50Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax50Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax30Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax30Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax100Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax100Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ErrorDetalleType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'ErrorDetalleType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ErrorDetalleType2), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd', 'ErrorDetalleType2', 'ErrorDetalleType');
  RemClassRegistry.RegisterXSClass(X509IssuerSerialType, 'http://www.w3.org/2000/09/xmldsig#', 'X509IssuerSerialType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(MgmtData), 'http://www.w3.org/2000/09/xmldsig#', 'MgmtData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_MgmtData), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_MgmtData');
  RemClassRegistry.RegisterXSClass(KeyValueType, 'http://www.w3.org/2000/09/xmldsig#', 'KeyValueType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyValueType), 'DSAKeyValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyValueType), 'RSAKeyValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSClass(KeyValue, 'http://www.w3.org/2000/09/xmldsig#', 'KeyValue');
  RemClassRegistry.RegisterXSClass(SignatureValueType, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureValueType');
  RemClassRegistry.RegisterXSClass(SignatureValue, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureValue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(HMACOutputLengthType), 'http://www.w3.org/2000/09/xmldsig#', 'HMACOutputLengthType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Transforms), 'http://www.w3.org/2000/09/xmldsig#', 'Transforms');
  RemClassRegistry.RegisterXSClass(SignatureMethodType, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureMethodType');
  RemClassRegistry.RegisterXSClass(SignatureMethod, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureMethod');
  RemClassRegistry.RegisterXSClass(RetrievalMethodType, 'http://www.w3.org/2000/09/xmldsig#', 'RetrievalMethodType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RetrievalMethodType), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RetrievalMethodType), 'Transforms', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSClass(RetrievalMethod, 'http://www.w3.org/2000/09/xmldsig#', 'RetrievalMethod');
  RemClassRegistry.RegisterXSClass(TransformType, 'http://www.w3.org/2000/09/xmldsig#', 'TransformType');
  RemClassRegistry.RegisterXSClass(Transform, 'http://www.w3.org/2000/09/xmldsig#', 'Transform');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CanonicalizationMethodType), 'http://www.w3.org/2000/09/xmldsig#', 'CanonicalizationMethodType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CanonicalizationMethod), 'http://www.w3.org/2000/09/xmldsig#', 'CanonicalizationMethod');
  RemClassRegistry.RegisterXSClass(SignedInfoType, 'http://www.w3.org/2000/09/xmldsig#', 'SignedInfoType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignedInfoType), 'CanonicalizationMethod', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignedInfoType), 'SignatureMethod', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignedInfoType), 'Reference', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSClass(SignedInfo, 'http://www.w3.org/2000/09/xmldsig#', 'SignedInfo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DigestMethodType), 'http://www.w3.org/2000/09/xmldsig#', 'DigestMethodType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DigestMethod), 'http://www.w3.org/2000/09/xmldsig#', 'DigestMethod');
  RemClassRegistry.RegisterXSClass(PGPDataType, 'http://www.w3.org/2000/09/xmldsig#', 'PGPDataType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PGPDataType), 'PGPKeyPacket_', '[ExtName="PGPKeyPacket"]');
  RemClassRegistry.RegisterXSClass(PGPData, 'http://www.w3.org/2000/09/xmldsig#', 'PGPData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RechazoPrevioType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'RechazoPrevioType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SubsanacionType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'SubsanacionType');
  RemClassRegistry.RegisterXSClass(OperacionType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'OperacionType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ClaveTipoFacturaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'ClaveTipoFacturaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FacturasRectificadas), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'FacturasRectificadas');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ClaveTipoRectificativaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'ClaveTipoRectificativaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(VersionType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'VersionType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(VersionType), '_1_0', '1.0');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax120Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax120Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax70Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax70Type');
  RemClassRegistry.RegisterXSClass(RespuestaExpedidaType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/RespuestaSuministro.xsd', 'RespuestaExpedidaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(MacrodatoType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'MacrodatoType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CompletaSinDestinatarioType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'CompletaSinDestinatarioType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TercerosODestinatarioType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TercerosODestinatarioType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Destinatarios), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'Destinatarios');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FacturasSustituidas), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'FacturasSustituidas');
  RemClassRegistry.RegisterXSClass(DesgloseRectificacionType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'DesgloseRectificacionType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SimplificadaCualificadaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'SimplificadaCualificadaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax500Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax500Type');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DigestValueType), 'http://www.w3.org/2000/09/xmldsig#', 'DigestValueType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DigestValue), 'http://www.w3.org/2000/09/xmldsig#', 'DigestValue');
  RemClassRegistry.RegisterXSClass(ReferenceType, 'http://www.w3.org/2000/09/xmldsig#', 'ReferenceType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType), 'Type_', '[ExtName="Type"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType), 'Transforms', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType), 'DigestMethod', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ReferenceType), 'DigestValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSClass(Reference, 'http://www.w3.org/2000/09/xmldsig#', 'Reference');
  RemClassRegistry.RegisterXSClass(CabeceraType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'CabeceraType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ObjectType), 'http://www.w3.org/2000/09/xmldsig#', 'ObjectType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Object_), 'http://www.w3.org/2000/09/xmldsig#', 'Object_', 'Object');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_Object), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_Object');
  RemClassRegistry.RegisterXSClass(SignatureType, 'http://www.w3.org/2000/09/xmldsig#', 'SignatureType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignatureType), 'SignedInfo', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignatureType), 'SignatureValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignatureType), 'KeyInfo', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SignatureType), 'Object_', '[Namespace="http://www.w3.org/2000/09/xmldsig#", ExtName="Object"]');
  RemClassRegistry.RegisterXSClass(Signature, 'http://www.w3.org/2000/09/xmldsig#', 'Signature');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SPKIDataType), 'http://www.w3.org/2000/09/xmldsig#', 'SPKIDataType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SPKIData), 'http://www.w3.org/2000/09/xmldsig#', 'SPKIData');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_SPKIData), 'http://www.w3.org/2000/09/xmldsig#', 'Array_Of_SPKIData');
  RemClassRegistry.RegisterXSClass(KeyInfoType, 'http://www.w3.org/2000/09/xmldsig#', 'KeyInfoType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'KeyName', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'KeyValue', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'RetrievalMethod', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'X509Data', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'PGPData', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'SPKIData', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(KeyInfoType), 'MgmtData', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSClass(KeyInfo, 'http://www.w3.org/2000/09/xmldsig#', 'KeyInfo');
  RemClassRegistry.RegisterXSClass(X509DataType, 'http://www.w3.org/2000/09/xmldsig#', 'X509DataType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(X509DataType), 'X509SKI', '[ArrayItemName="SPKISexp"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(X509DataType), 'X509Certificate', '[ArrayItemName="SPKISexp"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(X509DataType), 'X509CRL', '[ArrayItemName="SPKISexp"]');
  RemClassRegistry.RegisterXSClass(X509Data, 'http://www.w3.org/2000/09/xmldsig#', 'X509Data');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CryptoBinary), 'http://www.w3.org/2000/09/xmldsig#', 'CryptoBinary');
  RemClassRegistry.RegisterXSClass(RSAKeyValueType, 'http://www.w3.org/2000/09/xmldsig#', 'RSAKeyValueType');
  RemClassRegistry.RegisterXSClass(RSAKeyValue, 'http://www.w3.org/2000/09/xmldsig#', 'RSAKeyValue');
  RemClassRegistry.RegisterXSClass(DSAKeyValueType, 'http://www.w3.org/2000/09/xmldsig#', 'DSAKeyValueType');
  RemClassRegistry.RegisterXSClass(DSAKeyValue, 'http://www.w3.org/2000/09/xmldsig#', 'DSAKeyValue');
  RemClassRegistry.RegisterXSInfo(TypeInfo(NIFType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'NIFType');
  RemClassRegistry.RegisterXSClass(PersonaFisicaJuridicaESType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'PersonaFisicaJuridicaESType');
  RemClassRegistry.RegisterXSClass(PersonaFisicaJuridicaType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'PersonaFisicaJuridicaType');
  RemClassRegistry.RegisterXSClass(SistemaInformaticoType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'SistemaInformaticoType');
  RemClassRegistry.RegisterXSClass(DatosPresentacionType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'DatosPresentacionType');
  RemClassRegistry.RegisterXSClass(RegistroFacturacionAnulacionType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'RegistroFacturacionAnulacionType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RegistroFacturacionAnulacionType), 'Signature', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSClass(RegistroAnulacion, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'RegistroAnulacion');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextoIDFacturaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextoIDFacturaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax20Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax20Type');
  RemClassRegistry.RegisterXSClass(RegistroDuplicadoType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'RegistroDuplicadoType');
  RemClassRegistry.RegisterXSClass(IDOtroType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'IDOtroType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(IncidenciaType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'IncidenciaType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(fecha), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'fecha');
  RemClassRegistry.RegisterXSClass(RemisionVoluntaria, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'RemisionVoluntaria');
  RemClassRegistry.RegisterXSClass(IDFacturaExpedidaBajaType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'IDFacturaExpedidaBajaType');
  RemClassRegistry.RegisterXSClass(IDFacturaARType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'IDFacturaARType');
  RemClassRegistry.RegisterXSClass(IDFacturaExpedidaType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'IDFacturaExpedidaType');
  RemClassRegistry.RegisterXSClass(RegistroFacturacionAltaType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'RegistroFacturacionAltaType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RegistroFacturacionAltaType), 'FacturasRectificadas', '[ArrayItemName="IDFacturaRectificada"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RegistroFacturacionAltaType), 'FacturasSustituidas', '[ArrayItemName="IDFacturaSustituida"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RegistroFacturacionAltaType), 'Destinatarios', '[ArrayItemName="IDDestinatario"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RegistroFacturacionAltaType), 'Desglose', '[ArrayItemName="DetalleDesglose"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(RegistroFacturacionAltaType), 'Signature', '[Namespace="http://www.w3.org/2000/09/xmldsig#"]');
  RemClassRegistry.RegisterXSClass(RegistroAlta, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'RegistroAlta');
  RemClassRegistry.RegisterXSClass(EncadenamientoFacturaAnteriorType, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'EncadenamientoFacturaAnteriorType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FinRequerimientoType), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'FinRequerimientoType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TextMax18Type), 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'TextMax18Type');
  RemClassRegistry.RegisterXSClass(RemisionRequerimiento, 'https://www2.agenciatributaria.gob.es/static_files/common/internet/dep/aplicaciones/es/aeat/tike/cont/ws/SuministroInformacion.xsd', 'RemisionRequerimiento');

end.
