
{****************************************************************}
{                                                                }
{                        XML Data Binding                        }
{                                                                }
{         Generated on: 27/09/2024 11:47:14                      }
{       Generated from: D:\VeriFactu\Esquemas\SuministroLR.xsd   }
{   Settings stored in: D:\VeriFactu\Esquemas\SuministroLR.xdb   }
{                                                                }
{****************************************************************}

unit SuministroLR;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLSistemaFacturacionFact_sf = interface;
  IXMLCabecera_sf = interface;
  IXMLPersonaFisicaJuridicaESType_sf = interface;
  IXMLRemisionVoluntaria_sf = interface;
  IXMLRemisionRequerimiento_sf = interface;
  IXMLRegFactuSistemaFacturacion = interface;
  IXMLRegistroFacturaType = interface;
  IXMLRegistroFacturaTypeList = interface;
  IXMLRegistroFacturacionAltaType_sf = interface;
  IXMLIDFacturaExpedidaType_sf = interface;
  IXMLFacturasRectificadas_sf = interface;
  IXMLIDFacturaARType_sf = interface;
  IXMLFacturasSustituidas_sf = interface;
  IXMLDesgloseRectificacionType_sf = interface;
  IXMLPersonaFisicaJuridicaType_sf = interface;
  IXMLIDOtroType_sf = interface;
  IXMLDestinatarios_sf = interface;
  IXMLDesgloseType_sf = interface;
  IXMLDetalleType_sf = interface;
  IXMLEncadenamiento_sf = interface;
  IXMLEncadenamientoFacturaAnteriorType_sf = interface;
  IXMLSistemaInformaticoType_sf = interface;
  IXMLSignatureType_ = interface;
  IXMLSignedInfoType_ = interface;
  IXMLCanonicalizationMethodType_ = interface;
  IXMLSignatureMethodType_ = interface;
  IXMLReferenceType_ = interface;
  IXMLReferenceType_List = interface;
  IXMLTransformsType_ = interface;
  IXMLTransformType_ = interface;
  IXMLDigestMethodType_ = interface;
  IXMLSignatureValueType_ = interface;
  IXMLKeyInfoType_ = interface;
  IXMLKeyValueType_ = interface;
  IXMLKeyValueType_List = interface;
  IXMLDSAKeyValueType_ = interface;
  IXMLRSAKeyValueType_ = interface;
  IXMLRetrievalMethodType_ = interface;
  IXMLRetrievalMethodType_List = interface;
  IXMLX509DataType_ = interface;
  IXMLX509DataType_List = interface;
  IXMLX509IssuerSerialType_ = interface;
  IXMLX509IssuerSerialType_List = interface;
  IXMLPGPDataType_ = interface;
  IXMLPGPDataType_List = interface;
  IXMLSPKIDataType_ = interface;
  IXMLSPKIDataType_List = interface;
  IXMLObjectType_ = interface;
  IXMLObjectType_List = interface;
  IXMLRegistroFacturacionAnulacionType_sf = interface;
  IXMLIDFacturaExpedidaBajaType_sf = interface;
  IXMLString_List = interface;
  IXMLBase64BinaryList = interface;

{ IXMLSistemaFacturacionFact_sf }

  IXMLSistemaFacturacionFact_sf = interface(IXMLNode)
    ['{C981D527-E37E-499F-89D7-05D278926E7E}']
    { Property Accessors }
    function Get_Cabecera: IXMLCabecera_sf;
    { Methods & Properties }
    property Cabecera: IXMLCabecera_sf read Get_Cabecera;
  end;

{ IXMLCabecera_sf }

  IXMLCabecera_sf = interface(IXMLNode)
    ['{1E19BA08-BEBE-4056-9B83-58FEDA886B38}']
    { Property Accessors }
    function Get_ObligadoEmision: IXMLPersonaFisicaJuridicaESType_sf;
    function Get_Representante: IXMLPersonaFisicaJuridicaESType_sf;
    function Get_RemisionVoluntaria: IXMLRemisionVoluntaria_sf;
    function Get_RemisionRequerimiento: IXMLRemisionRequerimiento_sf;
    { Methods & Properties }
    property ObligadoEmision: IXMLPersonaFisicaJuridicaESType_sf read Get_ObligadoEmision;
    property Representante: IXMLPersonaFisicaJuridicaESType_sf read Get_Representante;
    property RemisionVoluntaria: IXMLRemisionVoluntaria_sf read Get_RemisionVoluntaria;
    property RemisionRequerimiento: IXMLRemisionRequerimiento_sf read Get_RemisionRequerimiento;
  end;

{ IXMLPersonaFisicaJuridicaESType_sf }

  IXMLPersonaFisicaJuridicaESType_sf = interface(IXMLNode)
    ['{CA622A99-6FAB-424D-B8B2-26210EA8A01F}']
    { Property Accessors }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
    { Methods & Properties }
    property NombreRazon: UnicodeString read Get_NombreRazon write Set_NombreRazon;
    property NIF: UnicodeString read Get_NIF write Set_NIF;
  end;

{ IXMLRemisionVoluntaria_sf }

  IXMLRemisionVoluntaria_sf = interface(IXMLNode)
    ['{61E0AB4E-6C20-4C55-9FF5-8EE41A676B36}']
    { Property Accessors }
    function Get_FechaFinVeriFactu: UnicodeString;
    function Get_Incidencia: UnicodeString;
    procedure Set_FechaFinVeriFactu(Value: UnicodeString);
    procedure Set_Incidencia(Value: UnicodeString);
    { Methods & Properties }
    property FechaFinVeriFactu: UnicodeString read Get_FechaFinVeriFactu write Set_FechaFinVeriFactu;
    property Incidencia: UnicodeString read Get_Incidencia write Set_Incidencia;
  end;

{ IXMLRemisionRequerimiento_sf }

  IXMLRemisionRequerimiento_sf = interface(IXMLNode)
    ['{9D8B8866-B74B-4281-9ECD-63E7DF11DFEE}']
    { Property Accessors }
    function Get_RefRequerimiento: UnicodeString;
    function Get_FinRequerimiento: UnicodeString;
    procedure Set_RefRequerimiento(Value: UnicodeString);
    procedure Set_FinRequerimiento(Value: UnicodeString);
    { Methods & Properties }
    property RefRequerimiento: UnicodeString read Get_RefRequerimiento write Set_RefRequerimiento;
    property FinRequerimiento: UnicodeString read Get_FinRequerimiento write Set_FinRequerimiento;
  end;

{ IXMLRegFactuSistemaFacturacion }

  IXMLRegFactuSistemaFacturacion = interface(IXMLSistemaFacturacionFact_sf)
    ['{85E38B1C-4D54-4625-863B-857703CA7F40}']
    { Property Accessors }
    function Get_RegistroFactura: IXMLRegistroFacturaTypeList;
    { Methods & Properties }
    property RegistroFactura: IXMLRegistroFacturaTypeList read Get_RegistroFactura;
  end;

{ IXMLRegistroFacturaType }

  IXMLRegistroFacturaType = interface(IXMLNode)
    ['{BE222FE6-694B-4245-9CE4-5F7851AF37CC}']
    { Property Accessors }
    function Get_RegistroAlta: IXMLRegistroFacturacionAltaType_sf;
    function Get_RegistroAnulacion: IXMLRegistroFacturacionAnulacionType_sf;
    { Methods & Properties }
    property RegistroAlta: IXMLRegistroFacturacionAltaType_sf read Get_RegistroAlta;
    property RegistroAnulacion: IXMLRegistroFacturacionAnulacionType_sf read Get_RegistroAnulacion;
  end;

{ IXMLRegistroFacturaTypeList }

  IXMLRegistroFacturaTypeList = interface(IXMLNodeCollection)
    ['{3ED0D3BD-7E22-42FA-B64F-5DDE4A2B0306}']
    { Methods & Properties }
    function Add: IXMLRegistroFacturaType;
    function Insert(const Index: Integer): IXMLRegistroFacturaType;

    function Get_Item(Index: Integer): IXMLRegistroFacturaType;
    property Items[Index: Integer]: IXMLRegistroFacturaType read Get_Item; default;
  end;

{ IXMLRegistroFacturacionAltaType_sf }

  IXMLRegistroFacturacionAltaType_sf = interface(IXMLNode)
    ['{375165C0-7DB9-4DC1-BBAC-2584DFAA3971}']
    { Property Accessors }
    function Get_IDVersion: UnicodeString;
    function Get_IDFactura: IXMLIDFacturaExpedidaType_sf;
    function Get_NombreRazonEmisor: UnicodeString;
    function Get_Subsanacion: UnicodeString;
    function Get_RechazoPrevio: UnicodeString;
    function Get_TipoFactura: UnicodeString;
    function Get_TipoRectificativa: UnicodeString;
    function Get_FacturasRectificadas: IXMLFacturasRectificadas_sf;
    function Get_FacturasSustituidas: IXMLFacturasSustituidas_sf;
    function Get_ImporteRectificacion: IXMLDesgloseRectificacionType_sf;
    function Get_FechaOperacion: UnicodeString;
    function Get_DescripcionOperacion: UnicodeString;
    function Get_FacturaSimplificadaArt7273: UnicodeString;
    function Get_FacturaSinIdentifDestinatarioArt61d: UnicodeString;
    function Get_Macrodato: UnicodeString;
    function Get_EmitidaPorTerceroODestinatario: UnicodeString;
    function Get_Tercero: IXMLPersonaFisicaJuridicaType_sf;
    function Get_Destinatarios: IXMLDestinatarios_sf;
    function Get_Cupon: UnicodeString;
    function Get_Desglose: IXMLDesgloseType_sf;
    function Get_CuotaTotal: UnicodeString;
    function Get_ImporteTotal: UnicodeString;
    function Get_Encadenamiento: IXMLEncadenamiento_sf;
    function Get_SistemaInformatico: IXMLSistemaInformaticoType_sf;
    function Get_FechaHoraHusoGenRegistro: UnicodeString;
    function Get_NumRegistroAcuerdoFacturacion: UnicodeString;
    function Get_IdAcuerdoSistemaInformatico: UnicodeString;
    function Get_TipoHuella: UnicodeString;
    function Get_Huella: UnicodeString;
    function Get_Signature: IXMLSignatureType_;
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
    property IDFactura: IXMLIDFacturaExpedidaType_sf read Get_IDFactura;
    property NombreRazonEmisor: UnicodeString read Get_NombreRazonEmisor write Set_NombreRazonEmisor;
    property Subsanacion: UnicodeString read Get_Subsanacion write Set_Subsanacion;
    property RechazoPrevio: UnicodeString read Get_RechazoPrevio write Set_RechazoPrevio;
    property TipoFactura: UnicodeString read Get_TipoFactura write Set_TipoFactura;
    property TipoRectificativa: UnicodeString read Get_TipoRectificativa write Set_TipoRectificativa;
    property FacturasRectificadas: IXMLFacturasRectificadas_sf read Get_FacturasRectificadas;
    property FacturasSustituidas: IXMLFacturasSustituidas_sf read Get_FacturasSustituidas;
    property ImporteRectificacion: IXMLDesgloseRectificacionType_sf read Get_ImporteRectificacion;
    property FechaOperacion: UnicodeString read Get_FechaOperacion write Set_FechaOperacion;
    property DescripcionOperacion: UnicodeString read Get_DescripcionOperacion write Set_DescripcionOperacion;
    property FacturaSimplificadaArt7273: UnicodeString read Get_FacturaSimplificadaArt7273 write Set_FacturaSimplificadaArt7273;
    property FacturaSinIdentifDestinatarioArt61d: UnicodeString read Get_FacturaSinIdentifDestinatarioArt61d write Set_FacturaSinIdentifDestinatarioArt61d;
    property Macrodato: UnicodeString read Get_Macrodato write Set_Macrodato;
    property EmitidaPorTerceroODestinatario: UnicodeString read Get_EmitidaPorTerceroODestinatario write Set_EmitidaPorTerceroODestinatario;
    property Tercero: IXMLPersonaFisicaJuridicaType_sf read Get_Tercero;
    property Destinatarios: IXMLDestinatarios_sf read Get_Destinatarios;
    property Cupon: UnicodeString read Get_Cupon write Set_Cupon;
    property Desglose: IXMLDesgloseType_sf read Get_Desglose;
    property CuotaTotal: UnicodeString read Get_CuotaTotal write Set_CuotaTotal;
    property ImporteTotal: UnicodeString read Get_ImporteTotal write Set_ImporteTotal;
    property Encadenamiento: IXMLEncadenamiento_sf read Get_Encadenamiento;
    property SistemaInformatico: IXMLSistemaInformaticoType_sf read Get_SistemaInformatico;
    property FechaHoraHusoGenRegistro: UnicodeString read Get_FechaHoraHusoGenRegistro write Set_FechaHoraHusoGenRegistro;
    property NumRegistroAcuerdoFacturacion: UnicodeString read Get_NumRegistroAcuerdoFacturacion write Set_NumRegistroAcuerdoFacturacion;
    property IdAcuerdoSistemaInformatico: UnicodeString read Get_IdAcuerdoSistemaInformatico write Set_IdAcuerdoSistemaInformatico;
    property TipoHuella: UnicodeString read Get_TipoHuella write Set_TipoHuella;
    property Huella: UnicodeString read Get_Huella write Set_Huella;
    property Signature: IXMLSignatureType_ read Get_Signature;
  end;

{ IXMLIDFacturaExpedidaType_sf }

  IXMLIDFacturaExpedidaType_sf = interface(IXMLNode)
    ['{CE60552A-A4A9-457F-B905-EF0438592300}']
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

{ IXMLFacturasRectificadas_sf }

  IXMLFacturasRectificadas_sf = interface(IXMLNodeCollection)
    ['{11691BB2-278A-4F1D-930C-48F7ED164A79}']
    { Property Accessors }
    function Get_IDFacturaRectificada(Index: Integer): IXMLIDFacturaARType_sf;
    { Methods & Properties }
    function Add: IXMLIDFacturaARType_sf;
    function Insert(const Index: Integer): IXMLIDFacturaARType_sf;
    property IDFacturaRectificada[Index: Integer]: IXMLIDFacturaARType_sf read Get_IDFacturaRectificada; default;
  end;

{ IXMLIDFacturaARType_sf }

  IXMLIDFacturaARType_sf = interface(IXMLNode)
    ['{82A2B7C2-DB63-454E-9B17-A07EA49969E9}']
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

{ IXMLFacturasSustituidas_sf }

  IXMLFacturasSustituidas_sf = interface(IXMLNodeCollection)
    ['{84F1FB2C-867F-4707-ABBC-8533AFDE4AEE}']
    { Property Accessors }
    function Get_IDFacturaSustituida(Index: Integer): IXMLIDFacturaARType_sf;
    { Methods & Properties }
    function Add: IXMLIDFacturaARType_sf;
    function Insert(const Index: Integer): IXMLIDFacturaARType_sf;
    property IDFacturaSustituida[Index: Integer]: IXMLIDFacturaARType_sf read Get_IDFacturaSustituida; default;
  end;

{ IXMLDesgloseRectificacionType_sf }

  IXMLDesgloseRectificacionType_sf = interface(IXMLNode)
    ['{B44EB0F1-CAD8-4058-AA9F-4517FE5D8007}']
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

{ IXMLPersonaFisicaJuridicaType_sf }

  IXMLPersonaFisicaJuridicaType_sf = interface(IXMLNode)
    ['{25C14070-A5BA-4B07-BF85-6ECC53655152}']
    { Property Accessors }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    function Get_IDOtro: IXMLIDOtroType_sf;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
    { Methods & Properties }
    property NombreRazon: UnicodeString read Get_NombreRazon write Set_NombreRazon;
    property NIF: UnicodeString read Get_NIF write Set_NIF;
    property IDOtro: IXMLIDOtroType_sf read Get_IDOtro;
  end;

{ IXMLIDOtroType_sf }

  IXMLIDOtroType_sf = interface(IXMLNode)
    ['{0938D146-D658-41EC-AD55-A28634546B20}']
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

{ IXMLDestinatarios_sf }

  IXMLDestinatarios_sf = interface(IXMLNodeCollection)
    ['{D3C171D6-5139-456B-AD59-E2DA4C3540BC}']
    { Property Accessors }
    function Get_IDDestinatario(Index: Integer): IXMLPersonaFisicaJuridicaType_sf;
    { Methods & Properties }
    function Add: IXMLPersonaFisicaJuridicaType_sf;
    function Insert(const Index: Integer): IXMLPersonaFisicaJuridicaType_sf;
    property IDDestinatario[Index: Integer]: IXMLPersonaFisicaJuridicaType_sf read Get_IDDestinatario; default;
  end;

{ IXMLDesgloseType_sf }

  IXMLDesgloseType_sf = interface(IXMLNodeCollection)
    ['{D17893D7-9322-41AF-80EC-4B363BCF4FE9}']
    { Property Accessors }
    function Get_DetalleDesglose(Index: Integer): IXMLDetalleType_sf;
    { Methods & Properties }
    function Add: IXMLDetalleType_sf;
    function Insert(const Index: Integer): IXMLDetalleType_sf;
    property DetalleDesglose[Index: Integer]: IXMLDetalleType_sf read Get_DetalleDesglose; default;
  end;

{ IXMLDetalleType_sf }

  IXMLDetalleType_sf = interface(IXMLNode)
    ['{6A73FDA0-F489-47AF-A1A1-B90C93ACE4B1}']
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

{ IXMLEncadenamiento_sf }

  IXMLEncadenamiento_sf = interface(IXMLNode)
    ['{75FD1C7A-B38F-4A82-865D-855F342D3748}']
    { Property Accessors }
    function Get_PrimerRegistro: UnicodeString;
    function Get_RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType_sf;
    procedure Set_PrimerRegistro(Value: UnicodeString);
    { Methods & Properties }
    property PrimerRegistro: UnicodeString read Get_PrimerRegistro write Set_PrimerRegistro;
    property RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType_sf read Get_RegistroAnterior;
  end;

{ IXMLEncadenamientoFacturaAnteriorType_sf }

  IXMLEncadenamientoFacturaAnteriorType_sf = interface(IXMLNode)
    ['{DB036AFB-244D-4B8E-964B-FA6A3189987A}']
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

{ IXMLSistemaInformaticoType_sf }

  IXMLSistemaInformaticoType_sf = interface(IXMLNode)
    ['{394BBAF0-46B0-4057-919E-B09D5D9794AA}']
    { Property Accessors }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    function Get_IDOtro: IXMLIDOtroType_sf;
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
    property IDOtro: IXMLIDOtroType_sf read Get_IDOtro;
    property NombreSistemaInformatico: UnicodeString read Get_NombreSistemaInformatico write Set_NombreSistemaInformatico;
    property IdSistemaInformatico: UnicodeString read Get_IdSistemaInformatico write Set_IdSistemaInformatico;
    property Version: UnicodeString read Get_Version write Set_Version;
    property NumeroInstalacion: UnicodeString read Get_NumeroInstalacion write Set_NumeroInstalacion;
    property TipoUsoPosibleSoloVerifactu: UnicodeString read Get_TipoUsoPosibleSoloVerifactu write Set_TipoUsoPosibleSoloVerifactu;
    property TipoUsoPosibleMultiOT: UnicodeString read Get_TipoUsoPosibleMultiOT write Set_TipoUsoPosibleMultiOT;
    property IndicadorMultiplesOT: UnicodeString read Get_IndicadorMultiplesOT write Set_IndicadorMultiplesOT;
  end;

{ IXMLSignatureType_ }

  IXMLSignatureType_ = interface(IXMLNode)
    ['{6D7D5C8E-88BB-421C-A11C-F7433F83C27D}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_SignedInfo: IXMLSignedInfoType_;
    function Get_SignatureValue: IXMLSignatureValueType_;
    function Get_KeyInfo: IXMLKeyInfoType_;
    function Get_Object_: IXMLObjectType_List;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property SignedInfo: IXMLSignedInfoType_ read Get_SignedInfo;
    property SignatureValue: IXMLSignatureValueType_ read Get_SignatureValue;
    property KeyInfo: IXMLKeyInfoType_ read Get_KeyInfo;
    property Object_: IXMLObjectType_List read Get_Object_;
  end;

{ IXMLSignedInfoType_ }

  IXMLSignedInfoType_ = interface(IXMLNode)
    ['{F6BF21E9-8217-4DA9-A77A-B9C367AA76C9}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_CanonicalizationMethod: IXMLCanonicalizationMethodType_;
    function Get_SignatureMethod: IXMLSignatureMethodType_;
    function Get_Reference: IXMLReferenceType_List;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property CanonicalizationMethod: IXMLCanonicalizationMethodType_ read Get_CanonicalizationMethod;
    property SignatureMethod: IXMLSignatureMethodType_ read Get_SignatureMethod;
    property Reference: IXMLReferenceType_List read Get_Reference;
  end;

{ IXMLCanonicalizationMethodType_ }

  IXMLCanonicalizationMethodType_ = interface(IXMLNode)
    ['{70536725-2642-4B25-83CA-680A83DFB4A2}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureMethodType_ }

  IXMLSignatureMethodType_ = interface(IXMLNode)
    ['{D22C59A3-EAE6-4BFD-A365-0BB306E63DC8}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    function Get_HMACOutputLength: Integer;
    procedure Set_Algorithm(Value: UnicodeString);
    procedure Set_HMACOutputLength(Value: Integer);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
    property HMACOutputLength: Integer read Get_HMACOutputLength write Set_HMACOutputLength;
  end;

{ IXMLReferenceType_ }

  IXMLReferenceType_ = interface(IXMLNode)
    ['{D9398560-6972-43EE-A09D-D8E25D0BCDBE}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_URI: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Transforms: IXMLTransformsType_;
    function Get_DigestMethod: IXMLDigestMethodType_;
    function Get_DigestValue: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_URI(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    procedure Set_DigestValue(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property URI: UnicodeString read Get_URI write Set_URI;
    property Type_: UnicodeString read Get_Type_ write Set_Type_;
    property Transforms: IXMLTransformsType_ read Get_Transforms;
    property DigestMethod: IXMLDigestMethodType_ read Get_DigestMethod;
    property DigestValue: UnicodeString read Get_DigestValue write Set_DigestValue;
  end;

{ IXMLReferenceType_List }

  IXMLReferenceType_List = interface(IXMLNodeCollection)
    ['{62D33685-BE3C-4C28-A582-FE30872D61CB}']
    { Methods & Properties }
    function Add: IXMLReferenceType_;
    function Insert(const Index: Integer): IXMLReferenceType_;

    function Get_Item(Index: Integer): IXMLReferenceType_;
    property Items[Index: Integer]: IXMLReferenceType_ read Get_Item; default;
  end;

{ IXMLTransformsType_ }

  IXMLTransformsType_ = interface(IXMLNodeCollection)
    ['{A28E4FED-1BC5-4005-9E79-BA6980ECF580}']
    { Property Accessors }
    function Get_Transform(Index: Integer): IXMLTransformType_;
    { Methods & Properties }
    function Add: IXMLTransformType_;
    function Insert(const Index: Integer): IXMLTransformType_;
    property Transform[Index: Integer]: IXMLTransformType_ read Get_Transform; default;
  end;

{ IXMLTransformType_ }

  IXMLTransformType_ = interface(IXMLNodeCollection)
    ['{1CBBFCB7-B154-41BC-A1DD-5D37DEA4CC6B}']
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

{ IXMLDigestMethodType_ }

  IXMLDigestMethodType_ = interface(IXMLNode)
    ['{B8C9A85E-5D3F-4324-82C0-1160257F7C7B}']
    { Property Accessors }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    { Methods & Properties }
    property Algorithm: UnicodeString read Get_Algorithm write Set_Algorithm;
  end;

{ IXMLSignatureValueType_ }

  IXMLSignatureValueType_ = interface(IXMLNode)
    ['{3D51DD79-041F-487C-93B6-D1ABB87423F7}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
  end;

{ IXMLKeyInfoType_ }

  IXMLKeyInfoType_ = interface(IXMLNode)
    ['{8F5C5700-FFA5-413B-B365-55C488F7A127}']
    { Property Accessors }
    function Get_Id: UnicodeString;
    function Get_KeyName: IXMLString_List;
    function Get_KeyValue: IXMLKeyValueType_List;
    function Get_RetrievalMethod: IXMLRetrievalMethodType_List;
    function Get_X509Data: IXMLX509DataType_List;
    function Get_PGPData: IXMLPGPDataType_List;
    function Get_SPKIData: IXMLSPKIDataType_List;
    function Get_MgmtData: IXMLString_List;
    procedure Set_Id(Value: UnicodeString);
    { Methods & Properties }
    property Id: UnicodeString read Get_Id write Set_Id;
    property KeyName: IXMLString_List read Get_KeyName;
    property KeyValue: IXMLKeyValueType_List read Get_KeyValue;
    property RetrievalMethod: IXMLRetrievalMethodType_List read Get_RetrievalMethod;
    property X509Data: IXMLX509DataType_List read Get_X509Data;
    property PGPData: IXMLPGPDataType_List read Get_PGPData;
    property SPKIData: IXMLSPKIDataType_List read Get_SPKIData;
    property MgmtData: IXMLString_List read Get_MgmtData;
  end;

{ IXMLKeyValueType_ }

  IXMLKeyValueType_ = interface(IXMLNode)
    ['{4620B88D-6FC6-4535-8B4F-11DC3536D570}']
    { Property Accessors }
    function Get_DSAKeyValue: IXMLDSAKeyValueType_;
    function Get_RSAKeyValue: IXMLRSAKeyValueType_;
    { Methods & Properties }
    property DSAKeyValue: IXMLDSAKeyValueType_ read Get_DSAKeyValue;
    property RSAKeyValue: IXMLRSAKeyValueType_ read Get_RSAKeyValue;
  end;

{ IXMLKeyValueType_List }

  IXMLKeyValueType_List = interface(IXMLNodeCollection)
    ['{C049715D-88B2-4998-8803-3F610510D3CD}']
    { Methods & Properties }
    function Add: IXMLKeyValueType_;
    function Insert(const Index: Integer): IXMLKeyValueType_;

    function Get_Item(Index: Integer): IXMLKeyValueType_;
    property Items[Index: Integer]: IXMLKeyValueType_ read Get_Item; default;
  end;

{ IXMLDSAKeyValueType_ }

  IXMLDSAKeyValueType_ = interface(IXMLNode)
    ['{D77C82AA-E377-4F7A-84FD-D7175884E240}']
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

{ IXMLRSAKeyValueType_ }

  IXMLRSAKeyValueType_ = interface(IXMLNode)
    ['{5D0DCAD3-1D9B-4704-B9B4-C1CD0004B142}']
    { Property Accessors }
    function Get_Modulus: UnicodeString;
    function Get_Exponent: UnicodeString;
    procedure Set_Modulus(Value: UnicodeString);
    procedure Set_Exponent(Value: UnicodeString);
    { Methods & Properties }
    property Modulus: UnicodeString read Get_Modulus write Set_Modulus;
    property Exponent: UnicodeString read Get_Exponent write Set_Exponent;
  end;

{ IXMLRetrievalMethodType_ }

  IXMLRetrievalMethodType_ = interface(IXMLNode)
    ['{C14B8284-C2BD-44DA-A796-37655443C0AC}']
    { Property Accessors }
    function Get_URI: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Transforms: IXMLTransformsType_;
    procedure Set_URI(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    { Methods & Properties }
    property URI: UnicodeString read Get_URI write Set_URI;
    property Type_: UnicodeString read Get_Type_ write Set_Type_;
    property Transforms: IXMLTransformsType_ read Get_Transforms;
  end;

{ IXMLRetrievalMethodType_List }

  IXMLRetrievalMethodType_List = interface(IXMLNodeCollection)
    ['{D3623B8C-1894-4EAB-9E06-D7189C32C093}']
    { Methods & Properties }
    function Add: IXMLRetrievalMethodType_;
    function Insert(const Index: Integer): IXMLRetrievalMethodType_;

    function Get_Item(Index: Integer): IXMLRetrievalMethodType_;
    property Items[Index: Integer]: IXMLRetrievalMethodType_ read Get_Item; default;
  end;

{ IXMLX509DataType_ }

  IXMLX509DataType_ = interface(IXMLNode)
    ['{07003822-D8C7-4490-8E9A-F566532D5E27}']
    { Property Accessors }
    function Get_X509IssuerSerial: IXMLX509IssuerSerialType_List;
    function Get_X509SKI: IXMLBase64BinaryList;
    function Get_X509SubjectName: IXMLString_List;
    function Get_X509Certificate: IXMLBase64BinaryList;
    function Get_X509CRL: IXMLBase64BinaryList;
    { Methods & Properties }
    property X509IssuerSerial: IXMLX509IssuerSerialType_List read Get_X509IssuerSerial;
    property X509SKI: IXMLBase64BinaryList read Get_X509SKI;
    property X509SubjectName: IXMLString_List read Get_X509SubjectName;
    property X509Certificate: IXMLBase64BinaryList read Get_X509Certificate;
    property X509CRL: IXMLBase64BinaryList read Get_X509CRL;
  end;

{ IXMLX509DataType_List }

  IXMLX509DataType_List = interface(IXMLNodeCollection)
    ['{7F321F1A-F185-468D-92A8-C9E9C34B3C50}']
    { Methods & Properties }
    function Add: IXMLX509DataType_;
    function Insert(const Index: Integer): IXMLX509DataType_;

    function Get_Item(Index: Integer): IXMLX509DataType_;
    property Items[Index: Integer]: IXMLX509DataType_ read Get_Item; default;
  end;

{ IXMLX509IssuerSerialType_ }

  IXMLX509IssuerSerialType_ = interface(IXMLNode)
    ['{F9E0EC7A-422D-418F-841E-98CD4791B255}']
    { Property Accessors }
    function Get_X509IssuerName: UnicodeString;
    function Get_X509SerialNumber: Integer;
    procedure Set_X509IssuerName(Value: UnicodeString);
    procedure Set_X509SerialNumber(Value: Integer);
    { Methods & Properties }
    property X509IssuerName: UnicodeString read Get_X509IssuerName write Set_X509IssuerName;
    property X509SerialNumber: Integer read Get_X509SerialNumber write Set_X509SerialNumber;
  end;

{ IXMLX509IssuerSerialType_List }

  IXMLX509IssuerSerialType_List = interface(IXMLNodeCollection)
    ['{E07FF83D-0055-4CBB-A5D6-86C7C10701CE}']
    { Methods & Properties }
    function Add: IXMLX509IssuerSerialType_;
    function Insert(const Index: Integer): IXMLX509IssuerSerialType_;

    function Get_Item(Index: Integer): IXMLX509IssuerSerialType_;
    property Items[Index: Integer]: IXMLX509IssuerSerialType_ read Get_Item; default;
  end;

{ IXMLPGPDataType_ }

  IXMLPGPDataType_ = interface(IXMLNode)
    ['{BB6C8CAB-1E1E-4D97-BDBC-D9EF66CA2576}']
    { Property Accessors }
    function Get_PGPKeyID: UnicodeString;
    function Get_PGPKeyPacket: UnicodeString;
    procedure Set_PGPKeyID(Value: UnicodeString);
    procedure Set_PGPKeyPacket(Value: UnicodeString);
    { Methods & Properties }
    property PGPKeyID: UnicodeString read Get_PGPKeyID write Set_PGPKeyID;
    property PGPKeyPacket: UnicodeString read Get_PGPKeyPacket write Set_PGPKeyPacket;
  end;

{ IXMLPGPDataType_List }

  IXMLPGPDataType_List = interface(IXMLNodeCollection)
    ['{4CB2FC01-0E5B-41C1-AA23-BE3F106AC631}']
    { Methods & Properties }
    function Add: IXMLPGPDataType_;
    function Insert(const Index: Integer): IXMLPGPDataType_;

    function Get_Item(Index: Integer): IXMLPGPDataType_;
    property Items[Index: Integer]: IXMLPGPDataType_ read Get_Item; default;
  end;

{ IXMLSPKIDataType_ }

  IXMLSPKIDataType_ = interface(IXMLNodeCollection)
    ['{F53D328E-4DA7-48D2-ADFE-99A8384430D0}']
    { Property Accessors }
    function Get_SPKISexp(Index: Integer): UnicodeString;
    { Methods & Properties }
    function Add(const SPKISexp: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const SPKISexp: UnicodeString): IXMLNode;
    property SPKISexp[Index: Integer]: UnicodeString read Get_SPKISexp; default;
  end;

{ IXMLSPKIDataType_List }

  IXMLSPKIDataType_List = interface(IXMLNodeCollection)
    ['{EB7605D0-4DF6-48F0-BBFB-1A425792E2CD}']
    { Methods & Properties }
    function Add: IXMLSPKIDataType_;
    function Insert(const Index: Integer): IXMLSPKIDataType_;

    function Get_Item(Index: Integer): IXMLSPKIDataType_;
    property Items[Index: Integer]: IXMLSPKIDataType_ read Get_Item; default;
  end;

{ IXMLObjectType_ }

  IXMLObjectType_ = interface(IXMLNode)
    ['{5BDACFDB-D5EA-4FF3-AA89-FE7C9436E9E9}']
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

{ IXMLObjectType_List }

  IXMLObjectType_List = interface(IXMLNodeCollection)
    ['{F6869C2C-7F5E-4FFD-9AA3-E6758BCD0042}']
    { Methods & Properties }
    function Add: IXMLObjectType_;
    function Insert(const Index: Integer): IXMLObjectType_;

    function Get_Item(Index: Integer): IXMLObjectType_;
    property Items[Index: Integer]: IXMLObjectType_ read Get_Item; default;
  end;

{ IXMLRegistroFacturacionAnulacionType_sf }

  IXMLRegistroFacturacionAnulacionType_sf = interface(IXMLNode)
    ['{AB92107F-EEC2-42F7-980B-6A4C04D47EA8}']
    { Property Accessors }
    function Get_IDVersion: UnicodeString;
    function Get_IDFactura: IXMLIDFacturaExpedidaBajaType_sf;
    function Get_SinRegistroPrevio: UnicodeString;
    function Get_RechazoPrevio: UnicodeString;
    function Get_GeneradoPor: UnicodeString;
    function Get_Generador: IXMLPersonaFisicaJuridicaType_sf;
    function Get_Encadenamiento: IXMLEncadenamiento_sf;
    function Get_SistemaInformatico: IXMLSistemaInformaticoType_sf;
    function Get_FechaHoraHusoGenRegistro: UnicodeString;
    function Get_TipoHuella: UnicodeString;
    function Get_Huella: UnicodeString;
    function Get_Signature: IXMLSignatureType_;
    procedure Set_IDVersion(Value: UnicodeString);
    procedure Set_SinRegistroPrevio(Value: UnicodeString);
    procedure Set_RechazoPrevio(Value: UnicodeString);
    procedure Set_GeneradoPor(Value: UnicodeString);
    procedure Set_FechaHoraHusoGenRegistro(Value: UnicodeString);
    procedure Set_TipoHuella(Value: UnicodeString);
    procedure Set_Huella(Value: UnicodeString);
    { Methods & Properties }
    property IDVersion: UnicodeString read Get_IDVersion write Set_IDVersion;
    property IDFactura: IXMLIDFacturaExpedidaBajaType_sf read Get_IDFactura;
    property SinRegistroPrevio: UnicodeString read Get_SinRegistroPrevio write Set_SinRegistroPrevio;
    property RechazoPrevio: UnicodeString read Get_RechazoPrevio write Set_RechazoPrevio;
    property GeneradoPor: UnicodeString read Get_GeneradoPor write Set_GeneradoPor;
    property Generador: IXMLPersonaFisicaJuridicaType_sf read Get_Generador;
    property Encadenamiento: IXMLEncadenamiento_sf read Get_Encadenamiento;
    property SistemaInformatico: IXMLSistemaInformaticoType_sf read Get_SistemaInformatico;
    property FechaHoraHusoGenRegistro: UnicodeString read Get_FechaHoraHusoGenRegistro write Set_FechaHoraHusoGenRegistro;
    property TipoHuella: UnicodeString read Get_TipoHuella write Set_TipoHuella;
    property Huella: UnicodeString read Get_Huella write Set_Huella;
    property Signature: IXMLSignatureType_ read Get_Signature;
  end;

{ IXMLIDFacturaExpedidaBajaType_sf }

  IXMLIDFacturaExpedidaBajaType_sf = interface(IXMLNode)
    ['{6C8502B2-D7AA-4D43-A7FD-1B8F0BEF7D22}']
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

{ IXMLString_List }

  IXMLString_List = interface(IXMLNodeCollection)
    ['{3EFCA9C9-CFBD-4819-82C6-4B3EFB8FE56E}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ IXMLBase64BinaryList }

  IXMLBase64BinaryList = interface(IXMLNodeCollection)
    ['{554746C0-D1F6-4C41-A94F-E7BB4603660A}']
    { Methods & Properties }
    function Add(const Value: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const Value: UnicodeString): IXMLNode;

    function Get_Item(Index: Integer): UnicodeString;
    property Items[Index: Integer]: UnicodeString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLSistemaFacturacionFact_sf = class;
  TXMLCabecera_sf = class;
  TXMLPersonaFisicaJuridicaESType_sf = class;
  TXMLRemisionVoluntaria_sf = class;
  TXMLRemisionRequerimiento_sf = class;
  TXMLRegFactuSistemaFacturacion = class;
  TXMLRegistroFacturaType = class;
  TXMLRegistroFacturaTypeList = class;
  TXMLRegistroFacturacionAltaType_sf = class;
  TXMLIDFacturaExpedidaType_sf = class;
  TXMLFacturasRectificadas_sf = class;
  TXMLIDFacturaARType_sf = class;
  TXMLFacturasSustituidas_sf = class;
  TXMLDesgloseRectificacionType_sf = class;
  TXMLPersonaFisicaJuridicaType_sf = class;
  TXMLIDOtroType_sf = class;
  TXMLDestinatarios_sf = class;
  TXMLDesgloseType_sf = class;
  TXMLDetalleType_sf = class;
  TXMLEncadenamiento_sf = class;
  TXMLEncadenamientoFacturaAnteriorType_sf = class;
  TXMLSistemaInformaticoType_sf = class;
  TXMLSignatureType_ = class;
  TXMLSignedInfoType_ = class;
  TXMLCanonicalizationMethodType_ = class;
  TXMLSignatureMethodType_ = class;
  TXMLReferenceType_ = class;
  TXMLReferenceType_List = class;
  TXMLTransformsType_ = class;
  TXMLTransformType_ = class;
  TXMLDigestMethodType_ = class;
  TXMLSignatureValueType_ = class;
  TXMLKeyInfoType_ = class;
  TXMLKeyValueType_ = class;
  TXMLKeyValueType_List = class;
  TXMLDSAKeyValueType_ = class;
  TXMLRSAKeyValueType_ = class;
  TXMLRetrievalMethodType_ = class;
  TXMLRetrievalMethodType_List = class;
  TXMLX509DataType_ = class;
  TXMLX509DataType_List = class;
  TXMLX509IssuerSerialType_ = class;
  TXMLX509IssuerSerialType_List = class;
  TXMLPGPDataType_ = class;
  TXMLPGPDataType_List = class;
  TXMLSPKIDataType_ = class;
  TXMLSPKIDataType_List = class;
  TXMLObjectType_ = class;
  TXMLObjectType_List = class;
  TXMLRegistroFacturacionAnulacionType_sf = class;
  TXMLIDFacturaExpedidaBajaType_sf = class;
  TXMLString_List = class;
  TXMLBase64BinaryList = class;

{ TXMLSistemaFacturacionFact_sf }

  TXMLSistemaFacturacionFact_sf = class(TXMLNode, IXMLSistemaFacturacionFact_sf)
  protected
    { IXMLSistemaFacturacionFact_sf }
    function Get_Cabecera: IXMLCabecera_sf;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCabecera_sf }

  TXMLCabecera_sf = class(TXMLNode, IXMLCabecera_sf)
  protected
    { IXMLCabecera_sf }
    function Get_ObligadoEmision: IXMLPersonaFisicaJuridicaESType_sf;
    function Get_Representante: IXMLPersonaFisicaJuridicaESType_sf;
    function Get_RemisionVoluntaria: IXMLRemisionVoluntaria_sf;
    function Get_RemisionRequerimiento: IXMLRemisionRequerimiento_sf;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPersonaFisicaJuridicaESType_sf }

  TXMLPersonaFisicaJuridicaESType_sf = class(TXMLNode, IXMLPersonaFisicaJuridicaESType_sf)
  protected
    { IXMLPersonaFisicaJuridicaESType_sf }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
  end;

{ TXMLRemisionVoluntaria_sf }

  TXMLRemisionVoluntaria_sf = class(TXMLNode, IXMLRemisionVoluntaria_sf)
  protected
    { IXMLRemisionVoluntaria_sf }
    function Get_FechaFinVeriFactu: UnicodeString;
    function Get_Incidencia: UnicodeString;
    procedure Set_FechaFinVeriFactu(Value: UnicodeString);
    procedure Set_Incidencia(Value: UnicodeString);
  end;

{ TXMLRemisionRequerimiento_sf }

  TXMLRemisionRequerimiento_sf = class(TXMLNode, IXMLRemisionRequerimiento_sf)
  protected
    { IXMLRemisionRequerimiento_sf }
    function Get_RefRequerimiento: UnicodeString;
    function Get_FinRequerimiento: UnicodeString;
    procedure Set_RefRequerimiento(Value: UnicodeString);
    procedure Set_FinRequerimiento(Value: UnicodeString);
  end;

{ TXMLRegFactuSistemaFacturacion }

  TXMLRegFactuSistemaFacturacion = class(TXMLSistemaFacturacionFact_sf, IXMLRegFactuSistemaFacturacion)
  private
    FRegistroFactura: IXMLRegistroFacturaTypeList;
  protected
    { IXMLRegFactuSistemaFacturacion }
    function Get_RegistroFactura: IXMLRegistroFacturaTypeList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRegistroFacturaType }

  TXMLRegistroFacturaType = class(TXMLNode, IXMLRegistroFacturaType)
  protected
    { IXMLRegistroFacturaType }
    function Get_RegistroAlta: IXMLRegistroFacturacionAltaType_sf;
    function Get_RegistroAnulacion: IXMLRegistroFacturacionAnulacionType_sf;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRegistroFacturaTypeList }

  TXMLRegistroFacturaTypeList = class(TXMLNodeCollection, IXMLRegistroFacturaTypeList)
  protected
    { IXMLRegistroFacturaTypeList }
    function Add: IXMLRegistroFacturaType;
    function Insert(const Index: Integer): IXMLRegistroFacturaType;

    function Get_Item(Index: Integer): IXMLRegistroFacturaType;
  end;

{ TXMLRegistroFacturacionAltaType_sf }

  TXMLRegistroFacturacionAltaType_sf = class(TXMLNode, IXMLRegistroFacturacionAltaType_sf)
  protected
    { IXMLRegistroFacturacionAltaType_sf }
    function Get_IDVersion: UnicodeString;
    function Get_IDFactura: IXMLIDFacturaExpedidaType_sf;
    function Get_NombreRazonEmisor: UnicodeString;
    function Get_Subsanacion: UnicodeString;
    function Get_RechazoPrevio: UnicodeString;
    function Get_TipoFactura: UnicodeString;
    function Get_TipoRectificativa: UnicodeString;
    function Get_FacturasRectificadas: IXMLFacturasRectificadas_sf;
    function Get_FacturasSustituidas: IXMLFacturasSustituidas_sf;
    function Get_ImporteRectificacion: IXMLDesgloseRectificacionType_sf;
    function Get_FechaOperacion: UnicodeString;
    function Get_DescripcionOperacion: UnicodeString;
    function Get_FacturaSimplificadaArt7273: UnicodeString;
    function Get_FacturaSinIdentifDestinatarioArt61d: UnicodeString;
    function Get_Macrodato: UnicodeString;
    function Get_EmitidaPorTerceroODestinatario: UnicodeString;
    function Get_Tercero: IXMLPersonaFisicaJuridicaType_sf;
    function Get_Destinatarios: IXMLDestinatarios_sf;
    function Get_Cupon: UnicodeString;
    function Get_Desglose: IXMLDesgloseType_sf;
    function Get_CuotaTotal: UnicodeString;
    function Get_ImporteTotal: UnicodeString;
    function Get_Encadenamiento: IXMLEncadenamiento_sf;
    function Get_SistemaInformatico: IXMLSistemaInformaticoType_sf;
    function Get_FechaHoraHusoGenRegistro: UnicodeString;
    function Get_NumRegistroAcuerdoFacturacion: UnicodeString;
    function Get_IdAcuerdoSistemaInformatico: UnicodeString;
    function Get_TipoHuella: UnicodeString;
    function Get_Huella: UnicodeString;
    function Get_Signature: IXMLSignatureType_;
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

{ TXMLIDFacturaExpedidaType_sf }

  TXMLIDFacturaExpedidaType_sf = class(TXMLNode, IXMLIDFacturaExpedidaType_sf)
  protected
    { IXMLIDFacturaExpedidaType_sf }
    function Get_IDEmisorFactura: UnicodeString;
    function Get_NumSerieFactura: UnicodeString;
    function Get_FechaExpedicionFactura: UnicodeString;
    procedure Set_IDEmisorFactura(Value: UnicodeString);
    procedure Set_NumSerieFactura(Value: UnicodeString);
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
  end;

{ TXMLFacturasRectificadas_sf }

  TXMLFacturasRectificadas_sf = class(TXMLNodeCollection, IXMLFacturasRectificadas_sf)
  protected
    { IXMLFacturasRectificadas_sf }
    function Get_IDFacturaRectificada(Index: Integer): IXMLIDFacturaARType_sf;
    function Add: IXMLIDFacturaARType_sf;
    function Insert(const Index: Integer): IXMLIDFacturaARType_sf;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIDFacturaARType_sf }

  TXMLIDFacturaARType_sf = class(TXMLNode, IXMLIDFacturaARType_sf)
  protected
    { IXMLIDFacturaARType_sf }
    function Get_IDEmisorFactura: UnicodeString;
    function Get_NumSerieFactura: UnicodeString;
    function Get_FechaExpedicionFactura: UnicodeString;
    procedure Set_IDEmisorFactura(Value: UnicodeString);
    procedure Set_NumSerieFactura(Value: UnicodeString);
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
  end;

{ TXMLFacturasSustituidas_sf }

  TXMLFacturasSustituidas_sf = class(TXMLNodeCollection, IXMLFacturasSustituidas_sf)
  protected
    { IXMLFacturasSustituidas_sf }
    function Get_IDFacturaSustituida(Index: Integer): IXMLIDFacturaARType_sf;
    function Add: IXMLIDFacturaARType_sf;
    function Insert(const Index: Integer): IXMLIDFacturaARType_sf;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDesgloseRectificacionType_sf }

  TXMLDesgloseRectificacionType_sf = class(TXMLNode, IXMLDesgloseRectificacionType_sf)
  protected
    { IXMLDesgloseRectificacionType_sf }
    function Get_BaseRectificada: UnicodeString;
    function Get_CuotaRectificada: UnicodeString;
    function Get_CuotaRecargoRectificado: UnicodeString;
    procedure Set_BaseRectificada(Value: UnicodeString);
    procedure Set_CuotaRectificada(Value: UnicodeString);
    procedure Set_CuotaRecargoRectificado(Value: UnicodeString);
  end;

{ TXMLPersonaFisicaJuridicaType_sf }

  TXMLPersonaFisicaJuridicaType_sf = class(TXMLNode, IXMLPersonaFisicaJuridicaType_sf)
  protected
    { IXMLPersonaFisicaJuridicaType_sf }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    function Get_IDOtro: IXMLIDOtroType_sf;
    procedure Set_NombreRazon(Value: UnicodeString);
    procedure Set_NIF(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLIDOtroType_sf }

  TXMLIDOtroType_sf = class(TXMLNode, IXMLIDOtroType_sf)
  protected
    { IXMLIDOtroType_sf }
    function Get_CodigoPais: UnicodeString;
    function Get_IDType: UnicodeString;
    function Get_ID: UnicodeString;
    procedure Set_CodigoPais(Value: UnicodeString);
    procedure Set_IDType(Value: UnicodeString);
    procedure Set_ID(Value: UnicodeString);
  end;

{ TXMLDestinatarios_sf }

  TXMLDestinatarios_sf = class(TXMLNodeCollection, IXMLDestinatarios_sf)
  protected
    { IXMLDestinatarios_sf }
    function Get_IDDestinatario(Index: Integer): IXMLPersonaFisicaJuridicaType_sf;
    function Add: IXMLPersonaFisicaJuridicaType_sf;
    function Insert(const Index: Integer): IXMLPersonaFisicaJuridicaType_sf;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDesgloseType_sf }

  TXMLDesgloseType_sf = class(TXMLNodeCollection, IXMLDesgloseType_sf)
  protected
    { IXMLDesgloseType_sf }
    function Get_DetalleDesglose(Index: Integer): IXMLDetalleType_sf;
    function Add: IXMLDetalleType_sf;
    function Insert(const Index: Integer): IXMLDetalleType_sf;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDetalleType_sf }

  TXMLDetalleType_sf = class(TXMLNode, IXMLDetalleType_sf)
  protected
    { IXMLDetalleType_sf }
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

{ TXMLEncadenamiento_sf }

  TXMLEncadenamiento_sf = class(TXMLNode, IXMLEncadenamiento_sf)
  protected
    { IXMLEncadenamiento_sf }
    function Get_PrimerRegistro: UnicodeString;
    function Get_RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType_sf;
    procedure Set_PrimerRegistro(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLEncadenamientoFacturaAnteriorType_sf }

  TXMLEncadenamientoFacturaAnteriorType_sf = class(TXMLNode, IXMLEncadenamientoFacturaAnteriorType_sf)
  protected
    { IXMLEncadenamientoFacturaAnteriorType_sf }
    function Get_IDEmisorFactura: UnicodeString;
    function Get_NumSerieFactura: UnicodeString;
    function Get_FechaExpedicionFactura: UnicodeString;
    function Get_Huella: UnicodeString;
    procedure Set_IDEmisorFactura(Value: UnicodeString);
    procedure Set_NumSerieFactura(Value: UnicodeString);
    procedure Set_FechaExpedicionFactura(Value: UnicodeString);
    procedure Set_Huella(Value: UnicodeString);
  end;

{ TXMLSistemaInformaticoType_sf }

  TXMLSistemaInformaticoType_sf = class(TXMLNode, IXMLSistemaInformaticoType_sf)
  protected
    { IXMLSistemaInformaticoType_sf }
    function Get_NombreRazon: UnicodeString;
    function Get_NIF: UnicodeString;
    function Get_IDOtro: IXMLIDOtroType_sf;
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

{ TXMLSignatureType_ }

  TXMLSignatureType_ = class(TXMLNode, IXMLSignatureType_)
  private
    FObject_: IXMLObjectType_List;
  protected
    { IXMLSignatureType_ }
    function Get_Id: UnicodeString;
    function Get_SignedInfo: IXMLSignedInfoType_;
    function Get_SignatureValue: IXMLSignatureValueType_;
    function Get_KeyInfo: IXMLKeyInfoType_;
    function Get_Object_: IXMLObjectType_List;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSignedInfoType_ }

  TXMLSignedInfoType_ = class(TXMLNode, IXMLSignedInfoType_)
  private
    FReference: IXMLReferenceType_List;
  protected
    { IXMLSignedInfoType_ }
    function Get_Id: UnicodeString;
    function Get_CanonicalizationMethod: IXMLCanonicalizationMethodType_;
    function Get_SignatureMethod: IXMLSignatureMethodType_;
    function Get_Reference: IXMLReferenceType_List;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLCanonicalizationMethodType_ }

  TXMLCanonicalizationMethodType_ = class(TXMLNode, IXMLCanonicalizationMethodType_)
  protected
    { IXMLCanonicalizationMethodType_ }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
  end;

{ TXMLSignatureMethodType_ }

  TXMLSignatureMethodType_ = class(TXMLNode, IXMLSignatureMethodType_)
  protected
    { IXMLSignatureMethodType_ }
    function Get_Algorithm: UnicodeString;
    function Get_HMACOutputLength: Integer;
    procedure Set_Algorithm(Value: UnicodeString);
    procedure Set_HMACOutputLength(Value: Integer);
  end;

{ TXMLReferenceType_ }

  TXMLReferenceType_ = class(TXMLNode, IXMLReferenceType_)
  protected
    { IXMLReferenceType_ }
    function Get_Id: UnicodeString;
    function Get_URI: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Transforms: IXMLTransformsType_;
    function Get_DigestMethod: IXMLDigestMethodType_;
    function Get_DigestValue: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_URI(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
    procedure Set_DigestValue(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLReferenceType_List }

  TXMLReferenceType_List = class(TXMLNodeCollection, IXMLReferenceType_List)
  protected
    { IXMLReferenceType_List }
    function Add: IXMLReferenceType_;
    function Insert(const Index: Integer): IXMLReferenceType_;

    function Get_Item(Index: Integer): IXMLReferenceType_;
  end;

{ TXMLTransformsType_ }

  TXMLTransformsType_ = class(TXMLNodeCollection, IXMLTransformsType_)
  protected
    { IXMLTransformsType_ }
    function Get_Transform(Index: Integer): IXMLTransformType_;
    function Add: IXMLTransformType_;
    function Insert(const Index: Integer): IXMLTransformType_;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLTransformType_ }

  TXMLTransformType_ = class(TXMLNodeCollection, IXMLTransformType_)
  protected
    { IXMLTransformType_ }
    function Get_Algorithm: UnicodeString;
    function Get_XPath(Index: Integer): UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
    function Add(const XPath: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const XPath: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDigestMethodType_ }

  TXMLDigestMethodType_ = class(TXMLNode, IXMLDigestMethodType_)
  protected
    { IXMLDigestMethodType_ }
    function Get_Algorithm: UnicodeString;
    procedure Set_Algorithm(Value: UnicodeString);
  end;

{ TXMLSignatureValueType_ }

  TXMLSignatureValueType_ = class(TXMLNode, IXMLSignatureValueType_)
  protected
    { IXMLSignatureValueType_ }
    function Get_Id: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
  end;

{ TXMLKeyInfoType_ }

  TXMLKeyInfoType_ = class(TXMLNode, IXMLKeyInfoType_)
  private
    FKeyName: IXMLString_List;
    FKeyValue: IXMLKeyValueType_List;
    FRetrievalMethod: IXMLRetrievalMethodType_List;
    FX509Data: IXMLX509DataType_List;
    FPGPData: IXMLPGPDataType_List;
    FSPKIData: IXMLSPKIDataType_List;
    FMgmtData: IXMLString_List;
  protected
    { IXMLKeyInfoType_ }
    function Get_Id: UnicodeString;
    function Get_KeyName: IXMLString_List;
    function Get_KeyValue: IXMLKeyValueType_List;
    function Get_RetrievalMethod: IXMLRetrievalMethodType_List;
    function Get_X509Data: IXMLX509DataType_List;
    function Get_PGPData: IXMLPGPDataType_List;
    function Get_SPKIData: IXMLSPKIDataType_List;
    function Get_MgmtData: IXMLString_List;
    procedure Set_Id(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLKeyValueType_ }

  TXMLKeyValueType_ = class(TXMLNode, IXMLKeyValueType_)
  protected
    { IXMLKeyValueType_ }
    function Get_DSAKeyValue: IXMLDSAKeyValueType_;
    function Get_RSAKeyValue: IXMLRSAKeyValueType_;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLKeyValueType_List }

  TXMLKeyValueType_List = class(TXMLNodeCollection, IXMLKeyValueType_List)
  protected
    { IXMLKeyValueType_List }
    function Add: IXMLKeyValueType_;
    function Insert(const Index: Integer): IXMLKeyValueType_;

    function Get_Item(Index: Integer): IXMLKeyValueType_;
  end;

{ TXMLDSAKeyValueType_ }

  TXMLDSAKeyValueType_ = class(TXMLNode, IXMLDSAKeyValueType_)
  protected
    { IXMLDSAKeyValueType_ }
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

{ TXMLRSAKeyValueType_ }

  TXMLRSAKeyValueType_ = class(TXMLNode, IXMLRSAKeyValueType_)
  protected
    { IXMLRSAKeyValueType_ }
    function Get_Modulus: UnicodeString;
    function Get_Exponent: UnicodeString;
    procedure Set_Modulus(Value: UnicodeString);
    procedure Set_Exponent(Value: UnicodeString);
  end;

{ TXMLRetrievalMethodType_ }

  TXMLRetrievalMethodType_ = class(TXMLNode, IXMLRetrievalMethodType_)
  protected
    { IXMLRetrievalMethodType_ }
    function Get_URI: UnicodeString;
    function Get_Type_: UnicodeString;
    function Get_Transforms: IXMLTransformsType_;
    procedure Set_URI(Value: UnicodeString);
    procedure Set_Type_(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRetrievalMethodType_List }

  TXMLRetrievalMethodType_List = class(TXMLNodeCollection, IXMLRetrievalMethodType_List)
  protected
    { IXMLRetrievalMethodType_List }
    function Add: IXMLRetrievalMethodType_;
    function Insert(const Index: Integer): IXMLRetrievalMethodType_;

    function Get_Item(Index: Integer): IXMLRetrievalMethodType_;
  end;

{ TXMLX509DataType_ }

  TXMLX509DataType_ = class(TXMLNode, IXMLX509DataType_)
  private
    FX509IssuerSerial: IXMLX509IssuerSerialType_List;
    FX509SKI: IXMLBase64BinaryList;
    FX509SubjectName: IXMLString_List;
    FX509Certificate: IXMLBase64BinaryList;
    FX509CRL: IXMLBase64BinaryList;
  protected
    { IXMLX509DataType_ }
    function Get_X509IssuerSerial: IXMLX509IssuerSerialType_List;
    function Get_X509SKI: IXMLBase64BinaryList;
    function Get_X509SubjectName: IXMLString_List;
    function Get_X509Certificate: IXMLBase64BinaryList;
    function Get_X509CRL: IXMLBase64BinaryList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLX509DataType_List }

  TXMLX509DataType_List = class(TXMLNodeCollection, IXMLX509DataType_List)
  protected
    { IXMLX509DataType_List }
    function Add: IXMLX509DataType_;
    function Insert(const Index: Integer): IXMLX509DataType_;

    function Get_Item(Index: Integer): IXMLX509DataType_;
  end;

{ TXMLX509IssuerSerialType_ }

  TXMLX509IssuerSerialType_ = class(TXMLNode, IXMLX509IssuerSerialType_)
  protected
    { IXMLX509IssuerSerialType_ }
    function Get_X509IssuerName: UnicodeString;
    function Get_X509SerialNumber: Integer;
    procedure Set_X509IssuerName(Value: UnicodeString);
    procedure Set_X509SerialNumber(Value: Integer);
  end;

{ TXMLX509IssuerSerialType_List }

  TXMLX509IssuerSerialType_List = class(TXMLNodeCollection, IXMLX509IssuerSerialType_List)
  protected
    { IXMLX509IssuerSerialType_List }
    function Add: IXMLX509IssuerSerialType_;
    function Insert(const Index: Integer): IXMLX509IssuerSerialType_;

    function Get_Item(Index: Integer): IXMLX509IssuerSerialType_;
  end;

{ TXMLPGPDataType_ }

  TXMLPGPDataType_ = class(TXMLNode, IXMLPGPDataType_)
  protected
    { IXMLPGPDataType_ }
    function Get_PGPKeyID: UnicodeString;
    function Get_PGPKeyPacket: UnicodeString;
    procedure Set_PGPKeyID(Value: UnicodeString);
    procedure Set_PGPKeyPacket(Value: UnicodeString);
  end;

{ TXMLPGPDataType_List }

  TXMLPGPDataType_List = class(TXMLNodeCollection, IXMLPGPDataType_List)
  protected
    { IXMLPGPDataType_List }
    function Add: IXMLPGPDataType_;
    function Insert(const Index: Integer): IXMLPGPDataType_;

    function Get_Item(Index: Integer): IXMLPGPDataType_;
  end;

{ TXMLSPKIDataType_ }

  TXMLSPKIDataType_ = class(TXMLNodeCollection, IXMLSPKIDataType_)
  protected
    { IXMLSPKIDataType_ }
    function Get_SPKISexp(Index: Integer): UnicodeString;
    function Add(const SPKISexp: UnicodeString): IXMLNode;
    function Insert(const Index: Integer; const SPKISexp: UnicodeString): IXMLNode;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSPKIDataType_List }

  TXMLSPKIDataType_List = class(TXMLNodeCollection, IXMLSPKIDataType_List)
  protected
    { IXMLSPKIDataType_List }
    function Add: IXMLSPKIDataType_;
    function Insert(const Index: Integer): IXMLSPKIDataType_;

    function Get_Item(Index: Integer): IXMLSPKIDataType_;
  end;

{ TXMLObjectType_ }

  TXMLObjectType_ = class(TXMLNode, IXMLObjectType_)
  protected
    { IXMLObjectType_ }
    function Get_Id: UnicodeString;
    function Get_MimeType: UnicodeString;
    function Get_Encoding: UnicodeString;
    procedure Set_Id(Value: UnicodeString);
    procedure Set_MimeType(Value: UnicodeString);
    procedure Set_Encoding(Value: UnicodeString);
  end;

{ TXMLObjectType_List }

  TXMLObjectType_List = class(TXMLNodeCollection, IXMLObjectType_List)
  protected
    { IXMLObjectType_List }
    function Add: IXMLObjectType_;
    function Insert(const Index: Integer): IXMLObjectType_;

    function Get_Item(Index: Integer): IXMLObjectType_;
  end;

{ TXMLRegistroFacturacionAnulacionType_sf }

  TXMLRegistroFacturacionAnulacionType_sf = class(TXMLNode, IXMLRegistroFacturacionAnulacionType_sf)
  protected
    { IXMLRegistroFacturacionAnulacionType_sf }
    function Get_IDVersion: UnicodeString;
    function Get_IDFactura: IXMLIDFacturaExpedidaBajaType_sf;
    function Get_SinRegistroPrevio: UnicodeString;
    function Get_RechazoPrevio: UnicodeString;
    function Get_GeneradoPor: UnicodeString;
    function Get_Generador: IXMLPersonaFisicaJuridicaType_sf;
    function Get_Encadenamiento: IXMLEncadenamiento_sf;
    function Get_SistemaInformatico: IXMLSistemaInformaticoType_sf;
    function Get_FechaHoraHusoGenRegistro: UnicodeString;
    function Get_TipoHuella: UnicodeString;
    function Get_Huella: UnicodeString;
    function Get_Signature: IXMLSignatureType_;
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

{ TXMLIDFacturaExpedidaBajaType_sf }

  TXMLIDFacturaExpedidaBajaType_sf = class(TXMLNode, IXMLIDFacturaExpedidaBajaType_sf)
  protected
    { IXMLIDFacturaExpedidaBajaType_sf }
    function Get_IDEmisorFacturaAnulada: UnicodeString;
    function Get_NumSerieFacturaAnulada: UnicodeString;
    function Get_FechaExpedicionFacturaAnulada: UnicodeString;
    procedure Set_IDEmisorFacturaAnulada(Value: UnicodeString);
    procedure Set_NumSerieFacturaAnulada(Value: UnicodeString);
    procedure Set_FechaExpedicionFacturaAnulada(Value: UnicodeString);
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

{ TXMLSistemaFacturacionFact_sf }

procedure TXMLSistemaFacturacionFact_sf.AfterConstruction;
begin
  RegisterChildNode('Cabecera', TXMLCabecera_sf);
  inherited;
end;

function TXMLSistemaFacturacionFact_sf.Get_Cabecera: IXMLCabecera_sf;
begin
  Result := ChildNodes['Cabecera'] as IXMLCabecera_sf;
end;

{ TXMLCabecera_sf }

procedure TXMLCabecera_sf.AfterConstruction;
begin
  RegisterChildNode('ObligadoEmision', TXMLPersonaFisicaJuridicaESType_sf);
  RegisterChildNode('Representante', TXMLPersonaFisicaJuridicaESType_sf);
  RegisterChildNode('RemisionVoluntaria', TXMLRemisionVoluntaria_sf);
  RegisterChildNode('RemisionRequerimiento', TXMLRemisionRequerimiento_sf);
  inherited;
end;

function TXMLCabecera_sf.Get_ObligadoEmision: IXMLPersonaFisicaJuridicaESType_sf;
begin
  Result := ChildNodes['ObligadoEmision'] as IXMLPersonaFisicaJuridicaESType_sf;
end;

function TXMLCabecera_sf.Get_Representante: IXMLPersonaFisicaJuridicaESType_sf;
begin
  Result := ChildNodes['Representante'] as IXMLPersonaFisicaJuridicaESType_sf;
end;

function TXMLCabecera_sf.Get_RemisionVoluntaria: IXMLRemisionVoluntaria_sf;
begin
  Result := ChildNodes['RemisionVoluntaria'] as IXMLRemisionVoluntaria_sf;
end;

function TXMLCabecera_sf.Get_RemisionRequerimiento: IXMLRemisionRequerimiento_sf;
begin
  Result := ChildNodes['RemisionRequerimiento'] as IXMLRemisionRequerimiento_sf;
end;

{ TXMLPersonaFisicaJuridicaESType_sf }

function TXMLPersonaFisicaJuridicaESType_sf.Get_NombreRazon: UnicodeString;
begin
  Result := ChildNodes['NombreRazon'].Text;
end;

procedure TXMLPersonaFisicaJuridicaESType_sf.Set_NombreRazon(Value: UnicodeString);
begin
  ChildNodes['NombreRazon'].NodeValue := Value;
end;

function TXMLPersonaFisicaJuridicaESType_sf.Get_NIF: UnicodeString;
begin
  Result := ChildNodes['NIF'].Text;
end;

procedure TXMLPersonaFisicaJuridicaESType_sf.Set_NIF(Value: UnicodeString);
begin
  ChildNodes['NIF'].NodeValue := Value;
end;

{ TXMLRemisionVoluntaria_sf }

function TXMLRemisionVoluntaria_sf.Get_FechaFinVeriFactu: UnicodeString;
begin
  Result := ChildNodes['FechaFinVeriFactu'].Text;
end;

procedure TXMLRemisionVoluntaria_sf.Set_FechaFinVeriFactu(Value: UnicodeString);
begin
  ChildNodes['FechaFinVeriFactu'].NodeValue := Value;
end;

function TXMLRemisionVoluntaria_sf.Get_Incidencia: UnicodeString;
begin
  Result := ChildNodes['Incidencia'].Text;
end;

procedure TXMLRemisionVoluntaria_sf.Set_Incidencia(Value: UnicodeString);
begin
  ChildNodes['Incidencia'].NodeValue := Value;
end;

{ TXMLRemisionRequerimiento_sf }

function TXMLRemisionRequerimiento_sf.Get_RefRequerimiento: UnicodeString;
begin
  Result := ChildNodes['RefRequerimiento'].Text;
end;

procedure TXMLRemisionRequerimiento_sf.Set_RefRequerimiento(Value: UnicodeString);
begin
  ChildNodes['RefRequerimiento'].NodeValue := Value;
end;

function TXMLRemisionRequerimiento_sf.Get_FinRequerimiento: UnicodeString;
begin
  Result := ChildNodes['FinRequerimiento'].Text;
end;

procedure TXMLRemisionRequerimiento_sf.Set_FinRequerimiento(Value: UnicodeString);
begin
  ChildNodes['FinRequerimiento'].NodeValue := Value;
end;

{ TXMLRegFactuSistemaFacturacion }

procedure TXMLRegFactuSistemaFacturacion.AfterConstruction;
begin
  RegisterChildNode('RegistroFactura', TXMLRegistroFacturaType);
  FRegistroFactura := CreateCollection(TXMLRegistroFacturaTypeList, IXMLRegistroFacturaType, 'RegistroFactura') as IXMLRegistroFacturaTypeList;
  inherited;
end;

function TXMLRegFactuSistemaFacturacion.Get_RegistroFactura: IXMLRegistroFacturaTypeList;
begin
  Result := FRegistroFactura;
end;

{ TXMLRegistroFacturaType }

procedure TXMLRegistroFacturaType.AfterConstruction;
begin
  RegisterChildNode('RegistroAlta', TXMLRegistroFacturacionAltaType_sf);
  RegisterChildNode('RegistroAnulacion', TXMLRegistroFacturacionAnulacionType_sf);
  inherited;
end;

function TXMLRegistroFacturaType.Get_RegistroAlta: IXMLRegistroFacturacionAltaType_sf;
begin
  Result := ChildNodes['RegistroAlta'] as IXMLRegistroFacturacionAltaType_sf;
end;

function TXMLRegistroFacturaType.Get_RegistroAnulacion: IXMLRegistroFacturacionAnulacionType_sf;
begin
  Result := ChildNodes['RegistroAnulacion'] as IXMLRegistroFacturacionAnulacionType_sf;
end;

{ TXMLRegistroFacturaTypeList }

function TXMLRegistroFacturaTypeList.Add: IXMLRegistroFacturaType;
begin
  Result := AddItem(-1) as IXMLRegistroFacturaType;
end;

function TXMLRegistroFacturaTypeList.Insert(const Index: Integer): IXMLRegistroFacturaType;
begin
  Result := AddItem(Index) as IXMLRegistroFacturaType;
end;

function TXMLRegistroFacturaTypeList.Get_Item(Index: Integer): IXMLRegistroFacturaType;
begin
  Result := List[Index] as IXMLRegistroFacturaType;
end;

{ TXMLRegistroFacturacionAltaType_sf }

procedure TXMLRegistroFacturacionAltaType_sf.AfterConstruction;
begin
  RegisterChildNode('IDFactura', TXMLIDFacturaExpedidaType_sf);
  RegisterChildNode('FacturasRectificadas', TXMLFacturasRectificadas_sf);
  RegisterChildNode('FacturasSustituidas', TXMLFacturasSustituidas_sf);
  RegisterChildNode('ImporteRectificacion', TXMLDesgloseRectificacionType_sf);
  RegisterChildNode('Tercero', TXMLPersonaFisicaJuridicaType_sf);
  RegisterChildNode('Destinatarios', TXMLDestinatarios_sf);
  RegisterChildNode('Desglose', TXMLDesgloseType_sf);
  RegisterChildNode('Encadenamiento', TXMLEncadenamiento_sf);
  RegisterChildNode('SistemaInformatico', TXMLSistemaInformaticoType_sf);
  RegisterChildNode('Signature', TXMLSignatureType_);
  inherited;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_IDVersion: UnicodeString;
begin
  Result := ChildNodes['IDVersion'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_IDVersion(Value: UnicodeString);
begin
  ChildNodes['IDVersion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_IDFactura: IXMLIDFacturaExpedidaType_sf;
begin
  Result := ChildNodes['IDFactura'] as IXMLIDFacturaExpedidaType_sf;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_NombreRazonEmisor: UnicodeString;
begin
  Result := ChildNodes['NombreRazonEmisor'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_NombreRazonEmisor(Value: UnicodeString);
begin
  ChildNodes['NombreRazonEmisor'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_Subsanacion: UnicodeString;
begin
  Result := ChildNodes['Subsanacion'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_Subsanacion(Value: UnicodeString);
begin
  ChildNodes['Subsanacion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_RechazoPrevio: UnicodeString;
begin
  Result := ChildNodes['RechazoPrevio'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_RechazoPrevio(Value: UnicodeString);
begin
  ChildNodes['RechazoPrevio'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_TipoFactura: UnicodeString;
begin
  Result := ChildNodes['TipoFactura'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_TipoFactura(Value: UnicodeString);
begin
  ChildNodes['TipoFactura'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_TipoRectificativa: UnicodeString;
begin
  Result := ChildNodes['TipoRectificativa'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_TipoRectificativa(Value: UnicodeString);
begin
  ChildNodes['TipoRectificativa'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_FacturasRectificadas: IXMLFacturasRectificadas_sf;
begin
  Result := ChildNodes['FacturasRectificadas'] as IXMLFacturasRectificadas_sf;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_FacturasSustituidas: IXMLFacturasSustituidas_sf;
begin
  Result := ChildNodes['FacturasSustituidas'] as IXMLFacturasSustituidas_sf;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_ImporteRectificacion: IXMLDesgloseRectificacionType_sf;
begin
  Result := ChildNodes['ImporteRectificacion'] as IXMLDesgloseRectificacionType_sf;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_FechaOperacion: UnicodeString;
begin
  Result := ChildNodes['FechaOperacion'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_FechaOperacion(Value: UnicodeString);
begin
  ChildNodes['FechaOperacion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_DescripcionOperacion: UnicodeString;
begin
  Result := ChildNodes['DescripcionOperacion'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_DescripcionOperacion(Value: UnicodeString);
begin
  ChildNodes['DescripcionOperacion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_FacturaSimplificadaArt7273: UnicodeString;
begin
  Result := ChildNodes['FacturaSimplificadaArt7273'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_FacturaSimplificadaArt7273(Value: UnicodeString);
begin
  ChildNodes['FacturaSimplificadaArt7273'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_FacturaSinIdentifDestinatarioArt61d: UnicodeString;
begin
  Result := ChildNodes['FacturaSinIdentifDestinatarioArt61d'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_FacturaSinIdentifDestinatarioArt61d(Value: UnicodeString);
begin
  ChildNodes['FacturaSinIdentifDestinatarioArt61d'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_Macrodato: UnicodeString;
begin
  Result := ChildNodes['Macrodato'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_Macrodato(Value: UnicodeString);
begin
  ChildNodes['Macrodato'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_EmitidaPorTerceroODestinatario: UnicodeString;
begin
  Result := ChildNodes['EmitidaPorTerceroODestinatario'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_EmitidaPorTerceroODestinatario(Value: UnicodeString);
begin
  ChildNodes['EmitidaPorTerceroODestinatario'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_Tercero: IXMLPersonaFisicaJuridicaType_sf;
begin
  Result := ChildNodes['Tercero'] as IXMLPersonaFisicaJuridicaType_sf;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_Destinatarios: IXMLDestinatarios_sf;
begin
  Result := ChildNodes['Destinatarios'] as IXMLDestinatarios_sf;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_Cupon: UnicodeString;
begin
  Result := ChildNodes['Cupon'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_Cupon(Value: UnicodeString);
begin
  ChildNodes['Cupon'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_Desglose: IXMLDesgloseType_sf;
begin
  Result := ChildNodes['Desglose'] as IXMLDesgloseType_sf;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_CuotaTotal: UnicodeString;
begin
  Result := ChildNodes['CuotaTotal'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_CuotaTotal(Value: UnicodeString);
begin
  ChildNodes['CuotaTotal'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_ImporteTotal: UnicodeString;
begin
  Result := ChildNodes['ImporteTotal'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_ImporteTotal(Value: UnicodeString);
begin
  ChildNodes['ImporteTotal'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_Encadenamiento: IXMLEncadenamiento_sf;
begin
  Result := ChildNodes['Encadenamiento'] as IXMLEncadenamiento_sf;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_SistemaInformatico: IXMLSistemaInformaticoType_sf;
begin
  Result := ChildNodes['SistemaInformatico'] as IXMLSistemaInformaticoType_sf;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_FechaHoraHusoGenRegistro: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoGenRegistro'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_FechaHoraHusoGenRegistro(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoGenRegistro'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_NumRegistroAcuerdoFacturacion: UnicodeString;
begin
  Result := ChildNodes['NumRegistroAcuerdoFacturacion'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_NumRegistroAcuerdoFacturacion(Value: UnicodeString);
begin
  ChildNodes['NumRegistroAcuerdoFacturacion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_IdAcuerdoSistemaInformatico: UnicodeString;
begin
  Result := ChildNodes['IdAcuerdoSistemaInformatico'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_IdAcuerdoSistemaInformatico(Value: UnicodeString);
begin
  ChildNodes['IdAcuerdoSistemaInformatico'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_TipoHuella: UnicodeString;
begin
  Result := ChildNodes['TipoHuella'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_TipoHuella(Value: UnicodeString);
begin
  ChildNodes['TipoHuella'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_Huella: UnicodeString;
begin
  Result := ChildNodes['Huella'].Text;
end;

procedure TXMLRegistroFacturacionAltaType_sf.Set_Huella(Value: UnicodeString);
begin
  ChildNodes['Huella'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAltaType_sf.Get_Signature: IXMLSignatureType_;
begin
  Result := ChildNodes['Signature'] as IXMLSignatureType_;
end;

{ TXMLIDFacturaExpedidaType_sf }

function TXMLIDFacturaExpedidaType_sf.Get_IDEmisorFactura: UnicodeString;
begin
  Result := ChildNodes['IDEmisorFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaType_sf.Set_IDEmisorFactura(Value: UnicodeString);
begin
  ChildNodes['IDEmisorFactura'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaType_sf.Get_NumSerieFactura: UnicodeString;
begin
  Result := ChildNodes['NumSerieFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaType_sf.Set_NumSerieFactura(Value: UnicodeString);
begin
  ChildNodes['NumSerieFactura'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaType_sf.Get_FechaExpedicionFactura: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFactura'].Text;
end;

procedure TXMLIDFacturaExpedidaType_sf.Set_FechaExpedicionFactura(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFactura'].NodeValue := Value;
end;

{ TXMLFacturasRectificadas_sf }

procedure TXMLFacturasRectificadas_sf.AfterConstruction;
begin
  RegisterChildNode('IDFacturaRectificada', TXMLIDFacturaARType_sf);
  ItemTag := 'IDFacturaRectificada';
  ItemInterface := IXMLIDFacturaARType_sf;
  inherited;
end;

function TXMLFacturasRectificadas_sf.Get_IDFacturaRectificada(Index: Integer): IXMLIDFacturaARType_sf;
begin
  Result := List[Index] as IXMLIDFacturaARType_sf;
end;

function TXMLFacturasRectificadas_sf.Add: IXMLIDFacturaARType_sf;
begin
  Result := AddItem(-1) as IXMLIDFacturaARType_sf;
end;

function TXMLFacturasRectificadas_sf.Insert(const Index: Integer): IXMLIDFacturaARType_sf;
begin
  Result := AddItem(Index) as IXMLIDFacturaARType_sf;
end;

{ TXMLIDFacturaARType_sf }

function TXMLIDFacturaARType_sf.Get_IDEmisorFactura: UnicodeString;
begin
  Result := ChildNodes['IDEmisorFactura'].Text;
end;

procedure TXMLIDFacturaARType_sf.Set_IDEmisorFactura(Value: UnicodeString);
begin
  ChildNodes['IDEmisorFactura'].NodeValue := Value;
end;

function TXMLIDFacturaARType_sf.Get_NumSerieFactura: UnicodeString;
begin
  Result := ChildNodes['NumSerieFactura'].Text;
end;

procedure TXMLIDFacturaARType_sf.Set_NumSerieFactura(Value: UnicodeString);
begin
  ChildNodes['NumSerieFactura'].NodeValue := Value;
end;

function TXMLIDFacturaARType_sf.Get_FechaExpedicionFactura: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFactura'].Text;
end;

procedure TXMLIDFacturaARType_sf.Set_FechaExpedicionFactura(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFactura'].NodeValue := Value;
end;

{ TXMLFacturasSustituidas_sf }

procedure TXMLFacturasSustituidas_sf.AfterConstruction;
begin
  RegisterChildNode('IDFacturaSustituida', TXMLIDFacturaARType_sf);
  ItemTag := 'IDFacturaSustituida';
  ItemInterface := IXMLIDFacturaARType_sf;
  inherited;
end;

function TXMLFacturasSustituidas_sf.Get_IDFacturaSustituida(Index: Integer): IXMLIDFacturaARType_sf;
begin
  Result := List[Index] as IXMLIDFacturaARType_sf;
end;

function TXMLFacturasSustituidas_sf.Add: IXMLIDFacturaARType_sf;
begin
  Result := AddItem(-1) as IXMLIDFacturaARType_sf;
end;

function TXMLFacturasSustituidas_sf.Insert(const Index: Integer): IXMLIDFacturaARType_sf;
begin
  Result := AddItem(Index) as IXMLIDFacturaARType_sf;
end;

{ TXMLDesgloseRectificacionType_sf }

function TXMLDesgloseRectificacionType_sf.Get_BaseRectificada: UnicodeString;
begin
  Result := ChildNodes['BaseRectificada'].Text;
end;

procedure TXMLDesgloseRectificacionType_sf.Set_BaseRectificada(Value: UnicodeString);
begin
  ChildNodes['BaseRectificada'].NodeValue := Value;
end;

function TXMLDesgloseRectificacionType_sf.Get_CuotaRectificada: UnicodeString;
begin
  Result := ChildNodes['CuotaRectificada'].Text;
end;

procedure TXMLDesgloseRectificacionType_sf.Set_CuotaRectificada(Value: UnicodeString);
begin
  ChildNodes['CuotaRectificada'].NodeValue := Value;
end;

function TXMLDesgloseRectificacionType_sf.Get_CuotaRecargoRectificado: UnicodeString;
begin
  Result := ChildNodes['CuotaRecargoRectificado'].Text;
end;

procedure TXMLDesgloseRectificacionType_sf.Set_CuotaRecargoRectificado(Value: UnicodeString);
begin
  ChildNodes['CuotaRecargoRectificado'].NodeValue := Value;
end;

{ TXMLPersonaFisicaJuridicaType_sf }

procedure TXMLPersonaFisicaJuridicaType_sf.AfterConstruction;
begin
  RegisterChildNode('IDOtro', TXMLIDOtroType_sf);
  inherited;
end;

function TXMLPersonaFisicaJuridicaType_sf.Get_NombreRazon: UnicodeString;
begin
  Result := ChildNodes['NombreRazon'].Text;
end;

procedure TXMLPersonaFisicaJuridicaType_sf.Set_NombreRazon(Value: UnicodeString);
begin
  ChildNodes['NombreRazon'].NodeValue := Value;
end;

function TXMLPersonaFisicaJuridicaType_sf.Get_NIF: UnicodeString;
begin
  Result := ChildNodes['NIF'].Text;
end;

procedure TXMLPersonaFisicaJuridicaType_sf.Set_NIF(Value: UnicodeString);
begin
  ChildNodes['NIF'].NodeValue := Value;
end;

function TXMLPersonaFisicaJuridicaType_sf.Get_IDOtro: IXMLIDOtroType_sf;
begin
  Result := ChildNodes['IDOtro'] as IXMLIDOtroType_sf;
end;

{ TXMLIDOtroType_sf }

function TXMLIDOtroType_sf.Get_CodigoPais: UnicodeString;
begin
  Result := ChildNodes['CodigoPais'].Text;
end;

procedure TXMLIDOtroType_sf.Set_CodigoPais(Value: UnicodeString);
begin
  ChildNodes['CodigoPais'].NodeValue := Value;
end;

function TXMLIDOtroType_sf.Get_IDType: UnicodeString;
begin
  Result := ChildNodes['IDType'].Text;
end;

procedure TXMLIDOtroType_sf.Set_IDType(Value: UnicodeString);
begin
  ChildNodes['IDType'].NodeValue := Value;
end;

function TXMLIDOtroType_sf.Get_ID: UnicodeString;
begin
  Result := ChildNodes['ID'].Text;
end;

procedure TXMLIDOtroType_sf.Set_ID(Value: UnicodeString);
begin
  ChildNodes['ID'].NodeValue := Value;
end;

{ TXMLDestinatarios_sf }

procedure TXMLDestinatarios_sf.AfterConstruction;
begin
  RegisterChildNode('IDDestinatario', TXMLPersonaFisicaJuridicaType_sf);
  ItemTag := 'IDDestinatario';
  ItemInterface := IXMLPersonaFisicaJuridicaType_sf;
  inherited;
end;

function TXMLDestinatarios_sf.Get_IDDestinatario(Index: Integer): IXMLPersonaFisicaJuridicaType_sf;
begin
  Result := List[Index] as IXMLPersonaFisicaJuridicaType_sf;
end;

function TXMLDestinatarios_sf.Add: IXMLPersonaFisicaJuridicaType_sf;
begin
  Result := AddItem(-1) as IXMLPersonaFisicaJuridicaType_sf;
end;

function TXMLDestinatarios_sf.Insert(const Index: Integer): IXMLPersonaFisicaJuridicaType_sf;
begin
  Result := AddItem(Index) as IXMLPersonaFisicaJuridicaType_sf;
end;

{ TXMLDesgloseType_sf }

procedure TXMLDesgloseType_sf.AfterConstruction;
begin
  RegisterChildNode('DetalleDesglose', TXMLDetalleType_sf);
  ItemTag := 'DetalleDesglose';
  ItemInterface := IXMLDetalleType_sf;
  inherited;
end;

function TXMLDesgloseType_sf.Get_DetalleDesglose(Index: Integer): IXMLDetalleType_sf;
begin
  Result := List[Index] as IXMLDetalleType_sf;
end;

function TXMLDesgloseType_sf.Add: IXMLDetalleType_sf;
begin
  Result := AddItem(-1) as IXMLDetalleType_sf;
end;

function TXMLDesgloseType_sf.Insert(const Index: Integer): IXMLDetalleType_sf;
begin
  Result := AddItem(Index) as IXMLDetalleType_sf;
end;

{ TXMLDetalleType_sf }

function TXMLDetalleType_sf.Get_Impuesto: UnicodeString;
begin
  Result := ChildNodes['Impuesto'].Text;
end;

procedure TXMLDetalleType_sf.Set_Impuesto(Value: UnicodeString);
begin
  ChildNodes['Impuesto'].NodeValue := Value;
end;

function TXMLDetalleType_sf.Get_ClaveRegimen: UnicodeString;
begin
  Result := ChildNodes['ClaveRegimen'].Text;
end;

procedure TXMLDetalleType_sf.Set_ClaveRegimen(Value: UnicodeString);
begin
  ChildNodes['ClaveRegimen'].NodeValue := Value;
end;

function TXMLDetalleType_sf.Get_CalificacionOperacion: UnicodeString;
begin
  Result := ChildNodes['CalificacionOperacion'].Text;
end;

procedure TXMLDetalleType_sf.Set_CalificacionOperacion(Value: UnicodeString);
begin
  ChildNodes['CalificacionOperacion'].NodeValue := Value;
end;

function TXMLDetalleType_sf.Get_OperacionExenta: UnicodeString;
begin
  Result := ChildNodes['OperacionExenta'].Text;
end;

procedure TXMLDetalleType_sf.Set_OperacionExenta(Value: UnicodeString);
begin
  ChildNodes['OperacionExenta'].NodeValue := Value;
end;

function TXMLDetalleType_sf.Get_TipoImpositivo: UnicodeString;
begin
  Result := ChildNodes['TipoImpositivo'].Text;
end;

procedure TXMLDetalleType_sf.Set_TipoImpositivo(Value: UnicodeString);
begin
  ChildNodes['TipoImpositivo'].NodeValue := Value;
end;

function TXMLDetalleType_sf.Get_BaseImponibleOimporteNoSujeto: UnicodeString;
begin
  Result := ChildNodes['BaseImponibleOimporteNoSujeto'].Text;
end;

procedure TXMLDetalleType_sf.Set_BaseImponibleOimporteNoSujeto(Value: UnicodeString);
begin
  ChildNodes['BaseImponibleOimporteNoSujeto'].NodeValue := Value;
end;

function TXMLDetalleType_sf.Get_BaseImponibleACoste: UnicodeString;
begin
  Result := ChildNodes['BaseImponibleACoste'].Text;
end;

procedure TXMLDetalleType_sf.Set_BaseImponibleACoste(Value: UnicodeString);
begin
  ChildNodes['BaseImponibleACoste'].NodeValue := Value;
end;

function TXMLDetalleType_sf.Get_CuotaRepercutida: UnicodeString;
begin
  Result := ChildNodes['CuotaRepercutida'].Text;
end;

procedure TXMLDetalleType_sf.Set_CuotaRepercutida(Value: UnicodeString);
begin
  ChildNodes['CuotaRepercutida'].NodeValue := Value;
end;

function TXMLDetalleType_sf.Get_TipoRecargoEquivalencia: UnicodeString;
begin
  Result := ChildNodes['TipoRecargoEquivalencia'].Text;
end;

procedure TXMLDetalleType_sf.Set_TipoRecargoEquivalencia(Value: UnicodeString);
begin
  ChildNodes['TipoRecargoEquivalencia'].NodeValue := Value;
end;

function TXMLDetalleType_sf.Get_CuotaRecargoEquivalencia: UnicodeString;
begin
  Result := ChildNodes['CuotaRecargoEquivalencia'].Text;
end;

procedure TXMLDetalleType_sf.Set_CuotaRecargoEquivalencia(Value: UnicodeString);
begin
  ChildNodes['CuotaRecargoEquivalencia'].NodeValue := Value;
end;

{ TXMLEncadenamiento_sf }

procedure TXMLEncadenamiento_sf.AfterConstruction;
begin
  RegisterChildNode('RegistroAnterior', TXMLEncadenamientoFacturaAnteriorType_sf);
  inherited;
end;

function TXMLEncadenamiento_sf.Get_PrimerRegistro: UnicodeString;
begin
  Result := ChildNodes['PrimerRegistro'].Text;
end;

procedure TXMLEncadenamiento_sf.Set_PrimerRegistro(Value: UnicodeString);
begin
  ChildNodes['PrimerRegistro'].NodeValue := Value;
end;

function TXMLEncadenamiento_sf.Get_RegistroAnterior: IXMLEncadenamientoFacturaAnteriorType_sf;
begin
  Result := ChildNodes['RegistroAnterior'] as IXMLEncadenamientoFacturaAnteriorType_sf;
end;

{ TXMLEncadenamientoFacturaAnteriorType_sf }

function TXMLEncadenamientoFacturaAnteriorType_sf.Get_IDEmisorFactura: UnicodeString;
begin
  Result := ChildNodes['IDEmisorFactura'].Text;
end;

procedure TXMLEncadenamientoFacturaAnteriorType_sf.Set_IDEmisorFactura(Value: UnicodeString);
begin
  ChildNodes['IDEmisorFactura'].NodeValue := Value;
end;

function TXMLEncadenamientoFacturaAnteriorType_sf.Get_NumSerieFactura: UnicodeString;
begin
  Result := ChildNodes['NumSerieFactura'].Text;
end;

procedure TXMLEncadenamientoFacturaAnteriorType_sf.Set_NumSerieFactura(Value: UnicodeString);
begin
  ChildNodes['NumSerieFactura'].NodeValue := Value;
end;

function TXMLEncadenamientoFacturaAnteriorType_sf.Get_FechaExpedicionFactura: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFactura'].Text;
end;

procedure TXMLEncadenamientoFacturaAnteriorType_sf.Set_FechaExpedicionFactura(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFactura'].NodeValue := Value;
end;

function TXMLEncadenamientoFacturaAnteriorType_sf.Get_Huella: UnicodeString;
begin
  Result := ChildNodes['Huella'].Text;
end;

procedure TXMLEncadenamientoFacturaAnteriorType_sf.Set_Huella(Value: UnicodeString);
begin
  ChildNodes['Huella'].NodeValue := Value;
end;

{ TXMLSistemaInformaticoType_sf }

procedure TXMLSistemaInformaticoType_sf.AfterConstruction;
begin
  RegisterChildNode('IDOtro', TXMLIDOtroType_sf);
  inherited;
end;

function TXMLSistemaInformaticoType_sf.Get_NombreRazon: UnicodeString;
begin
  Result := ChildNodes['NombreRazon'].Text;
end;

procedure TXMLSistemaInformaticoType_sf.Set_NombreRazon(Value: UnicodeString);
begin
  ChildNodes['NombreRazon'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType_sf.Get_NIF: UnicodeString;
begin
  Result := ChildNodes['NIF'].Text;
end;

procedure TXMLSistemaInformaticoType_sf.Set_NIF(Value: UnicodeString);
begin
  ChildNodes['NIF'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType_sf.Get_IDOtro: IXMLIDOtroType_sf;
begin
  Result := ChildNodes['IDOtro'] as IXMLIDOtroType_sf;
end;

function TXMLSistemaInformaticoType_sf.Get_NombreSistemaInformatico: UnicodeString;
begin
  Result := ChildNodes['NombreSistemaInformatico'].Text;
end;

procedure TXMLSistemaInformaticoType_sf.Set_NombreSistemaInformatico(Value: UnicodeString);
begin
  ChildNodes['NombreSistemaInformatico'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType_sf.Get_IdSistemaInformatico: UnicodeString;
begin
  Result := ChildNodes['IdSistemaInformatico'].Text;
end;

procedure TXMLSistemaInformaticoType_sf.Set_IdSistemaInformatico(Value: UnicodeString);
begin
  ChildNodes['IdSistemaInformatico'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType_sf.Get_Version: UnicodeString;
begin
  Result := ChildNodes['Version'].Text;
end;

procedure TXMLSistemaInformaticoType_sf.Set_Version(Value: UnicodeString);
begin
  ChildNodes['Version'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType_sf.Get_NumeroInstalacion: UnicodeString;
begin
  Result := ChildNodes['NumeroInstalacion'].Text;
end;

procedure TXMLSistemaInformaticoType_sf.Set_NumeroInstalacion(Value: UnicodeString);
begin
  ChildNodes['NumeroInstalacion'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType_sf.Get_TipoUsoPosibleSoloVerifactu: UnicodeString;
begin
  Result := ChildNodes['TipoUsoPosibleSoloVerifactu'].Text;
end;

procedure TXMLSistemaInformaticoType_sf.Set_TipoUsoPosibleSoloVerifactu(Value: UnicodeString);
begin
  ChildNodes['TipoUsoPosibleSoloVerifactu'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType_sf.Get_TipoUsoPosibleMultiOT: UnicodeString;
begin
  Result := ChildNodes['TipoUsoPosibleMultiOT'].Text;
end;

procedure TXMLSistemaInformaticoType_sf.Set_TipoUsoPosibleMultiOT(Value: UnicodeString);
begin
  ChildNodes['TipoUsoPosibleMultiOT'].NodeValue := Value;
end;

function TXMLSistemaInformaticoType_sf.Get_IndicadorMultiplesOT: UnicodeString;
begin
  Result := ChildNodes['IndicadorMultiplesOT'].Text;
end;

procedure TXMLSistemaInformaticoType_sf.Set_IndicadorMultiplesOT(Value: UnicodeString);
begin
  ChildNodes['IndicadorMultiplesOT'].NodeValue := Value;
end;

{ TXMLSignatureType_ }

procedure TXMLSignatureType_.AfterConstruction;
begin
  RegisterChildNode('SignedInfo', TXMLSignedInfoType_);
  RegisterChildNode('SignatureValue', TXMLSignatureValueType_);
  RegisterChildNode('KeyInfo', TXMLKeyInfoType_);
  RegisterChildNode('Object', TXMLObjectType_);
  FObject_ := CreateCollection(TXMLObjectType_List, IXMLObjectType_, 'Object') as IXMLObjectType_List;
  inherited;
end;

function TXMLSignatureType_.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignatureType_.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLSignatureType_.Get_SignedInfo: IXMLSignedInfoType_;
begin
  Result := ChildNodes['SignedInfo'] as IXMLSignedInfoType_;
end;

function TXMLSignatureType_.Get_SignatureValue: IXMLSignatureValueType_;
begin
  Result := ChildNodes['SignatureValue'] as IXMLSignatureValueType_;
end;

function TXMLSignatureType_.Get_KeyInfo: IXMLKeyInfoType_;
begin
  Result := ChildNodes['KeyInfo'] as IXMLKeyInfoType_;
end;

function TXMLSignatureType_.Get_Object_: IXMLObjectType_List;
begin
  Result := FObject_;
end;

{ TXMLSignedInfoType_ }

procedure TXMLSignedInfoType_.AfterConstruction;
begin
  RegisterChildNode('CanonicalizationMethod', TXMLCanonicalizationMethodType_);
  RegisterChildNode('SignatureMethod', TXMLSignatureMethodType_);
  RegisterChildNode('Reference', TXMLReferenceType_);
  FReference := CreateCollection(TXMLReferenceType_List, IXMLReferenceType_, 'Reference') as IXMLReferenceType_List;
  inherited;
end;

function TXMLSignedInfoType_.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignedInfoType_.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLSignedInfoType_.Get_CanonicalizationMethod: IXMLCanonicalizationMethodType_;
begin
  Result := ChildNodes['CanonicalizationMethod'] as IXMLCanonicalizationMethodType_;
end;

function TXMLSignedInfoType_.Get_SignatureMethod: IXMLSignatureMethodType_;
begin
  Result := ChildNodes['SignatureMethod'] as IXMLSignatureMethodType_;
end;

function TXMLSignedInfoType_.Get_Reference: IXMLReferenceType_List;
begin
  Result := FReference;
end;

{ TXMLCanonicalizationMethodType_ }

function TXMLCanonicalizationMethodType_.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLCanonicalizationMethodType_.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignatureMethodType_ }

function TXMLSignatureMethodType_.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLSignatureMethodType_.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

function TXMLSignatureMethodType_.Get_HMACOutputLength: Integer;
begin
  Result := ChildNodes['HMACOutputLength'].NodeValue;
end;

procedure TXMLSignatureMethodType_.Set_HMACOutputLength(Value: Integer);
begin
  ChildNodes['HMACOutputLength'].NodeValue := Value;
end;

{ TXMLReferenceType_ }

procedure TXMLReferenceType_.AfterConstruction;
begin
  RegisterChildNode('Transforms', TXMLTransformsType_);
  RegisterChildNode('DigestMethod', TXMLDigestMethodType_);
  inherited;
end;

function TXMLReferenceType_.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLReferenceType_.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLReferenceType_.Get_URI: UnicodeString;
begin
  Result := AttributeNodes['URI'].Text;
end;

procedure TXMLReferenceType_.Set_URI(Value: UnicodeString);
begin
  SetAttribute('URI', Value);
end;

function TXMLReferenceType_.Get_Type_: UnicodeString;
begin
  Result := AttributeNodes['Type'].Text;
end;

procedure TXMLReferenceType_.Set_Type_(Value: UnicodeString);
begin
  SetAttribute('Type', Value);
end;

function TXMLReferenceType_.Get_Transforms: IXMLTransformsType_;
begin
  Result := ChildNodes['Transforms'] as IXMLTransformsType_;
end;

function TXMLReferenceType_.Get_DigestMethod: IXMLDigestMethodType_;
begin
  Result := ChildNodes['DigestMethod'] as IXMLDigestMethodType_;
end;

function TXMLReferenceType_.Get_DigestValue: UnicodeString;
begin
  Result := ChildNodes['DigestValue'].Text;
end;

procedure TXMLReferenceType_.Set_DigestValue(Value: UnicodeString);
begin
  ChildNodes['DigestValue'].NodeValue := Value;
end;

{ TXMLReferenceType_List }

function TXMLReferenceType_List.Add: IXMLReferenceType_;
begin
  Result := AddItem(-1) as IXMLReferenceType_;
end;

function TXMLReferenceType_List.Insert(const Index: Integer): IXMLReferenceType_;
begin
  Result := AddItem(Index) as IXMLReferenceType_;
end;

function TXMLReferenceType_List.Get_Item(Index: Integer): IXMLReferenceType_;
begin
  Result := List[Index] as IXMLReferenceType_;
end;

{ TXMLTransformsType_ }

procedure TXMLTransformsType_.AfterConstruction;
begin
  RegisterChildNode('Transform', TXMLTransformType_);
  ItemTag := 'Transform';
  ItemInterface := IXMLTransformType_;
  inherited;
end;

function TXMLTransformsType_.Get_Transform(Index: Integer): IXMLTransformType_;
begin
  Result := List[Index] as IXMLTransformType_;
end;

function TXMLTransformsType_.Add: IXMLTransformType_;
begin
  Result := AddItem(-1) as IXMLTransformType_;
end;

function TXMLTransformsType_.Insert(const Index: Integer): IXMLTransformType_;
begin
  Result := AddItem(Index) as IXMLTransformType_;
end;

{ TXMLTransformType_ }

procedure TXMLTransformType_.AfterConstruction;
begin
  ItemTag := 'XPath';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLTransformType_.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLTransformType_.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

function TXMLTransformType_.Get_XPath(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLTransformType_.Add(const XPath: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := XPath;
end;

function TXMLTransformType_.Insert(const Index: Integer; const XPath: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := XPath;
end;

{ TXMLDigestMethodType_ }

function TXMLDigestMethodType_.Get_Algorithm: UnicodeString;
begin
  Result := AttributeNodes['Algorithm'].Text;
end;

procedure TXMLDigestMethodType_.Set_Algorithm(Value: UnicodeString);
begin
  SetAttribute('Algorithm', Value);
end;

{ TXMLSignatureValueType_ }

function TXMLSignatureValueType_.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLSignatureValueType_.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

{ TXMLKeyInfoType_ }

procedure TXMLKeyInfoType_.AfterConstruction;
begin
  RegisterChildNode('KeyValue', TXMLKeyValueType_);
  RegisterChildNode('RetrievalMethod', TXMLRetrievalMethodType_);
  RegisterChildNode('X509Data', TXMLX509DataType_);
  RegisterChildNode('PGPData', TXMLPGPDataType_);
  RegisterChildNode('SPKIData', TXMLSPKIDataType_);
  FKeyName := CreateCollection(TXMLString_List, IXMLNode, 'KeyName') as IXMLString_List;
  FKeyValue := CreateCollection(TXMLKeyValueType_List, IXMLKeyValueType_, 'KeyValue') as IXMLKeyValueType_List;
  FRetrievalMethod := CreateCollection(TXMLRetrievalMethodType_List, IXMLRetrievalMethodType_, 'RetrievalMethod') as IXMLRetrievalMethodType_List;
  FX509Data := CreateCollection(TXMLX509DataType_List, IXMLX509DataType_, 'X509Data') as IXMLX509DataType_List;
  FPGPData := CreateCollection(TXMLPGPDataType_List, IXMLPGPDataType_, 'PGPData') as IXMLPGPDataType_List;
  FSPKIData := CreateCollection(TXMLSPKIDataType_List, IXMLSPKIDataType_, 'SPKIData') as IXMLSPKIDataType_List;
  FMgmtData := CreateCollection(TXMLString_List, IXMLNode, 'MgmtData') as IXMLString_List;
  inherited;
end;

function TXMLKeyInfoType_.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLKeyInfoType_.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLKeyInfoType_.Get_KeyName: IXMLString_List;
begin
  Result := FKeyName;
end;

function TXMLKeyInfoType_.Get_KeyValue: IXMLKeyValueType_List;
begin
  Result := FKeyValue;
end;

function TXMLKeyInfoType_.Get_RetrievalMethod: IXMLRetrievalMethodType_List;
begin
  Result := FRetrievalMethod;
end;

function TXMLKeyInfoType_.Get_X509Data: IXMLX509DataType_List;
begin
  Result := FX509Data;
end;

function TXMLKeyInfoType_.Get_PGPData: IXMLPGPDataType_List;
begin
  Result := FPGPData;
end;

function TXMLKeyInfoType_.Get_SPKIData: IXMLSPKIDataType_List;
begin
  Result := FSPKIData;
end;

function TXMLKeyInfoType_.Get_MgmtData: IXMLString_List;
begin
  Result := FMgmtData;
end;

{ TXMLKeyValueType_ }

procedure TXMLKeyValueType_.AfterConstruction;
begin
  RegisterChildNode('DSAKeyValue', TXMLDSAKeyValueType_);
  RegisterChildNode('RSAKeyValue', TXMLRSAKeyValueType_);
  inherited;
end;

function TXMLKeyValueType_.Get_DSAKeyValue: IXMLDSAKeyValueType_;
begin
  Result := ChildNodes['DSAKeyValue'] as IXMLDSAKeyValueType_;
end;

function TXMLKeyValueType_.Get_RSAKeyValue: IXMLRSAKeyValueType_;
begin
  Result := ChildNodes['RSAKeyValue'] as IXMLRSAKeyValueType_;
end;

{ TXMLKeyValueType_List }

function TXMLKeyValueType_List.Add: IXMLKeyValueType_;
begin
  Result := AddItem(-1) as IXMLKeyValueType_;
end;

function TXMLKeyValueType_List.Insert(const Index: Integer): IXMLKeyValueType_;
begin
  Result := AddItem(Index) as IXMLKeyValueType_;
end;

function TXMLKeyValueType_List.Get_Item(Index: Integer): IXMLKeyValueType_;
begin
  Result := List[Index] as IXMLKeyValueType_;
end;

{ TXMLDSAKeyValueType_ }

function TXMLDSAKeyValueType_.Get_P: UnicodeString;
begin
  Result := ChildNodes[WideString('P')].Text;
end;

procedure TXMLDSAKeyValueType_.Set_P(Value: UnicodeString);
begin
  ChildNodes[WideString('P')].NodeValue := Value;
end;

function TXMLDSAKeyValueType_.Get_Q: UnicodeString;
begin
  Result := ChildNodes[WideString('Q')].Text;
end;

procedure TXMLDSAKeyValueType_.Set_Q(Value: UnicodeString);
begin
  ChildNodes[WideString('Q')].NodeValue := Value;
end;

function TXMLDSAKeyValueType_.Get_G: UnicodeString;
begin
  Result := ChildNodes[WideString('G')].Text;
end;

procedure TXMLDSAKeyValueType_.Set_G(Value: UnicodeString);
begin
  ChildNodes[WideString('G')].NodeValue := Value;
end;

function TXMLDSAKeyValueType_.Get_Y: UnicodeString;
begin
  Result := ChildNodes[WideString('Y')].Text;
end;

procedure TXMLDSAKeyValueType_.Set_Y(Value: UnicodeString);
begin
  ChildNodes[WideString('Y')].NodeValue := Value;
end;

function TXMLDSAKeyValueType_.Get_J: UnicodeString;
begin
  Result := ChildNodes[WideString('J')].Text;
end;

procedure TXMLDSAKeyValueType_.Set_J(Value: UnicodeString);
begin
  ChildNodes[WideString('J')].NodeValue := Value;
end;

function TXMLDSAKeyValueType_.Get_Seed: UnicodeString;
begin
  Result := ChildNodes['Seed'].Text;
end;

procedure TXMLDSAKeyValueType_.Set_Seed(Value: UnicodeString);
begin
  ChildNodes['Seed'].NodeValue := Value;
end;

function TXMLDSAKeyValueType_.Get_PgenCounter: UnicodeString;
begin
  Result := ChildNodes['PgenCounter'].Text;
end;

procedure TXMLDSAKeyValueType_.Set_PgenCounter(Value: UnicodeString);
begin
  ChildNodes['PgenCounter'].NodeValue := Value;
end;

{ TXMLRSAKeyValueType_ }

function TXMLRSAKeyValueType_.Get_Modulus: UnicodeString;
begin
  Result := ChildNodes['Modulus'].Text;
end;

procedure TXMLRSAKeyValueType_.Set_Modulus(Value: UnicodeString);
begin
  ChildNodes['Modulus'].NodeValue := Value;
end;

function TXMLRSAKeyValueType_.Get_Exponent: UnicodeString;
begin
  Result := ChildNodes['Exponent'].Text;
end;

procedure TXMLRSAKeyValueType_.Set_Exponent(Value: UnicodeString);
begin
  ChildNodes['Exponent'].NodeValue := Value;
end;

{ TXMLRetrievalMethodType_ }

procedure TXMLRetrievalMethodType_.AfterConstruction;
begin
  RegisterChildNode('Transforms', TXMLTransformsType_);
  inherited;
end;

function TXMLRetrievalMethodType_.Get_URI: UnicodeString;
begin
  Result := AttributeNodes['URI'].Text;
end;

procedure TXMLRetrievalMethodType_.Set_URI(Value: UnicodeString);
begin
  SetAttribute('URI', Value);
end;

function TXMLRetrievalMethodType_.Get_Type_: UnicodeString;
begin
  Result := AttributeNodes['Type'].Text;
end;

procedure TXMLRetrievalMethodType_.Set_Type_(Value: UnicodeString);
begin
  SetAttribute('Type', Value);
end;

function TXMLRetrievalMethodType_.Get_Transforms: IXMLTransformsType_;
begin
  Result := ChildNodes['Transforms'] as IXMLTransformsType_;
end;

{ TXMLRetrievalMethodType_List }

function TXMLRetrievalMethodType_List.Add: IXMLRetrievalMethodType_;
begin
  Result := AddItem(-1) as IXMLRetrievalMethodType_;
end;

function TXMLRetrievalMethodType_List.Insert(const Index: Integer): IXMLRetrievalMethodType_;
begin
  Result := AddItem(Index) as IXMLRetrievalMethodType_;
end;

function TXMLRetrievalMethodType_List.Get_Item(Index: Integer): IXMLRetrievalMethodType_;
begin
  Result := List[Index] as IXMLRetrievalMethodType_;
end;

{ TXMLX509DataType_ }

procedure TXMLX509DataType_.AfterConstruction;
begin
  RegisterChildNode('X509IssuerSerial', TXMLX509IssuerSerialType_);
  FX509IssuerSerial := CreateCollection(TXMLX509IssuerSerialType_List, IXMLX509IssuerSerialType_, 'X509IssuerSerial') as IXMLX509IssuerSerialType_List;
  FX509SKI := CreateCollection(TXMLBase64BinaryList, IXMLNode, 'X509SKI') as IXMLBase64BinaryList;
  FX509SubjectName := CreateCollection(TXMLString_List, IXMLNode, 'X509SubjectName') as IXMLString_List;
  FX509Certificate := CreateCollection(TXMLBase64BinaryList, IXMLNode, 'X509Certificate') as IXMLBase64BinaryList;
  FX509CRL := CreateCollection(TXMLBase64BinaryList, IXMLNode, 'X509CRL') as IXMLBase64BinaryList;
  inherited;
end;

function TXMLX509DataType_.Get_X509IssuerSerial: IXMLX509IssuerSerialType_List;
begin
  Result := FX509IssuerSerial;
end;

function TXMLX509DataType_.Get_X509SKI: IXMLBase64BinaryList;
begin
  Result := FX509SKI;
end;

function TXMLX509DataType_.Get_X509SubjectName: IXMLString_List;
begin
  Result := FX509SubjectName;
end;

function TXMLX509DataType_.Get_X509Certificate: IXMLBase64BinaryList;
begin
  Result := FX509Certificate;
end;

function TXMLX509DataType_.Get_X509CRL: IXMLBase64BinaryList;
begin
  Result := FX509CRL;
end;

{ TXMLX509DataType_List }

function TXMLX509DataType_List.Add: IXMLX509DataType_;
begin
  Result := AddItem(-1) as IXMLX509DataType_;
end;

function TXMLX509DataType_List.Insert(const Index: Integer): IXMLX509DataType_;
begin
  Result := AddItem(Index) as IXMLX509DataType_;
end;

function TXMLX509DataType_List.Get_Item(Index: Integer): IXMLX509DataType_;
begin
  Result := List[Index] as IXMLX509DataType_;
end;

{ TXMLX509IssuerSerialType_ }

function TXMLX509IssuerSerialType_.Get_X509IssuerName: UnicodeString;
begin
  Result := ChildNodes['X509IssuerName'].Text;
end;

procedure TXMLX509IssuerSerialType_.Set_X509IssuerName(Value: UnicodeString);
begin
  ChildNodes['X509IssuerName'].NodeValue := Value;
end;

function TXMLX509IssuerSerialType_.Get_X509SerialNumber: Integer;
begin
  Result := ChildNodes['X509SerialNumber'].NodeValue;
end;

procedure TXMLX509IssuerSerialType_.Set_X509SerialNumber(Value: Integer);
begin
  ChildNodes['X509SerialNumber'].NodeValue := Value;
end;

{ TXMLX509IssuerSerialType_List }

function TXMLX509IssuerSerialType_List.Add: IXMLX509IssuerSerialType_;
begin
  Result := AddItem(-1) as IXMLX509IssuerSerialType_;
end;

function TXMLX509IssuerSerialType_List.Insert(const Index: Integer): IXMLX509IssuerSerialType_;
begin
  Result := AddItem(Index) as IXMLX509IssuerSerialType_;
end;

function TXMLX509IssuerSerialType_List.Get_Item(Index: Integer): IXMLX509IssuerSerialType_;
begin
  Result := List[Index] as IXMLX509IssuerSerialType_;
end;

{ TXMLPGPDataType_ }

function TXMLPGPDataType_.Get_PGPKeyID: UnicodeString;
begin
  Result := ChildNodes['PGPKeyID'].Text;
end;

procedure TXMLPGPDataType_.Set_PGPKeyID(Value: UnicodeString);
begin
  ChildNodes['PGPKeyID'].NodeValue := Value;
end;

function TXMLPGPDataType_.Get_PGPKeyPacket: UnicodeString;
begin
  Result := ChildNodes['PGPKeyPacket'].Text;
end;

procedure TXMLPGPDataType_.Set_PGPKeyPacket(Value: UnicodeString);
begin
  ChildNodes['PGPKeyPacket'].NodeValue := Value;
end;

{ TXMLPGPDataType_List }

function TXMLPGPDataType_List.Add: IXMLPGPDataType_;
begin
  Result := AddItem(-1) as IXMLPGPDataType_;
end;

function TXMLPGPDataType_List.Insert(const Index: Integer): IXMLPGPDataType_;
begin
  Result := AddItem(Index) as IXMLPGPDataType_;
end;

function TXMLPGPDataType_List.Get_Item(Index: Integer): IXMLPGPDataType_;
begin
  Result := List[Index] as IXMLPGPDataType_;
end;

{ TXMLSPKIDataType_ }

procedure TXMLSPKIDataType_.AfterConstruction;
begin
  ItemTag := 'SPKISexp';
  ItemInterface := IXMLNode;
  inherited;
end;

function TXMLSPKIDataType_.Get_SPKISexp(Index: Integer): UnicodeString;
begin
  Result := List[Index].Text;
end;

function TXMLSPKIDataType_.Add(const SPKISexp: UnicodeString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := SPKISexp;
end;

function TXMLSPKIDataType_.Insert(const Index: Integer; const SPKISexp: UnicodeString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := SPKISexp;
end;

{ TXMLSPKIDataType_List }

function TXMLSPKIDataType_List.Add: IXMLSPKIDataType_;
begin
  Result := AddItem(-1) as IXMLSPKIDataType_;
end;

function TXMLSPKIDataType_List.Insert(const Index: Integer): IXMLSPKIDataType_;
begin
  Result := AddItem(Index) as IXMLSPKIDataType_;
end;

function TXMLSPKIDataType_List.Get_Item(Index: Integer): IXMLSPKIDataType_;
begin
  Result := List[Index] as IXMLSPKIDataType_;
end;

{ TXMLObjectType_ }

function TXMLObjectType_.Get_Id: UnicodeString;
begin
  Result := AttributeNodes['Id'].Text;
end;

procedure TXMLObjectType_.Set_Id(Value: UnicodeString);
begin
  SetAttribute('Id', Value);
end;

function TXMLObjectType_.Get_MimeType: UnicodeString;
begin
  Result := AttributeNodes['MimeType'].Text;
end;

procedure TXMLObjectType_.Set_MimeType(Value: UnicodeString);
begin
  SetAttribute('MimeType', Value);
end;

function TXMLObjectType_.Get_Encoding: UnicodeString;
begin
  Result := AttributeNodes['Encoding'].Text;
end;

procedure TXMLObjectType_.Set_Encoding(Value: UnicodeString);
begin
  SetAttribute('Encoding', Value);
end;

{ TXMLObjectType_List }

function TXMLObjectType_List.Add: IXMLObjectType_;
begin
  Result := AddItem(-1) as IXMLObjectType_;
end;

function TXMLObjectType_List.Insert(const Index: Integer): IXMLObjectType_;
begin
  Result := AddItem(Index) as IXMLObjectType_;
end;

function TXMLObjectType_List.Get_Item(Index: Integer): IXMLObjectType_;
begin
  Result := List[Index] as IXMLObjectType_;
end;

{ TXMLRegistroFacturacionAnulacionType_sf }

procedure TXMLRegistroFacturacionAnulacionType_sf.AfterConstruction;
begin
  RegisterChildNode('IDFactura', TXMLIDFacturaExpedidaBajaType_sf);
  RegisterChildNode('Generador', TXMLPersonaFisicaJuridicaType_sf);
  RegisterChildNode('Encadenamiento', TXMLEncadenamiento_sf);
  RegisterChildNode('SistemaInformatico', TXMLSistemaInformaticoType_sf);
  RegisterChildNode('Signature', TXMLSignatureType_);
  inherited;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_IDVersion: UnicodeString;
begin
  Result := ChildNodes['IDVersion'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType_sf.Set_IDVersion(Value: UnicodeString);
begin
  ChildNodes['IDVersion'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_IDFactura: IXMLIDFacturaExpedidaBajaType_sf;
begin
  Result := ChildNodes['IDFactura'] as IXMLIDFacturaExpedidaBajaType_sf;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_SinRegistroPrevio: UnicodeString;
begin
  Result := ChildNodes['SinRegistroPrevio'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType_sf.Set_SinRegistroPrevio(Value: UnicodeString);
begin
  ChildNodes['SinRegistroPrevio'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_RechazoPrevio: UnicodeString;
begin
  Result := ChildNodes['RechazoPrevio'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType_sf.Set_RechazoPrevio(Value: UnicodeString);
begin
  ChildNodes['RechazoPrevio'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_GeneradoPor: UnicodeString;
begin
  Result := ChildNodes['GeneradoPor'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType_sf.Set_GeneradoPor(Value: UnicodeString);
begin
  ChildNodes['GeneradoPor'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_Generador: IXMLPersonaFisicaJuridicaType_sf;
begin
  Result := ChildNodes['Generador'] as IXMLPersonaFisicaJuridicaType_sf;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_Encadenamiento: IXMLEncadenamiento_sf;
begin
  Result := ChildNodes['Encadenamiento'] as IXMLEncadenamiento_sf;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_SistemaInformatico: IXMLSistemaInformaticoType_sf;
begin
  Result := ChildNodes['SistemaInformatico'] as IXMLSistemaInformaticoType_sf;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_FechaHoraHusoGenRegistro: UnicodeString;
begin
  Result := ChildNodes['FechaHoraHusoGenRegistro'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType_sf.Set_FechaHoraHusoGenRegistro(Value: UnicodeString);
begin
  ChildNodes['FechaHoraHusoGenRegistro'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_TipoHuella: UnicodeString;
begin
  Result := ChildNodes['TipoHuella'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType_sf.Set_TipoHuella(Value: UnicodeString);
begin
  ChildNodes['TipoHuella'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_Huella: UnicodeString;
begin
  Result := ChildNodes['Huella'].Text;
end;

procedure TXMLRegistroFacturacionAnulacionType_sf.Set_Huella(Value: UnicodeString);
begin
  ChildNodes['Huella'].NodeValue := Value;
end;

function TXMLRegistroFacturacionAnulacionType_sf.Get_Signature: IXMLSignatureType_;
begin
  Result := ChildNodes['Signature'] as IXMLSignatureType_;
end;

{ TXMLIDFacturaExpedidaBajaType_sf }

function TXMLIDFacturaExpedidaBajaType_sf.Get_IDEmisorFacturaAnulada: UnicodeString;
begin
  Result := ChildNodes['IDEmisorFacturaAnulada'].Text;
end;

procedure TXMLIDFacturaExpedidaBajaType_sf.Set_IDEmisorFacturaAnulada(Value: UnicodeString);
begin
  ChildNodes['IDEmisorFacturaAnulada'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaBajaType_sf.Get_NumSerieFacturaAnulada: UnicodeString;
begin
  Result := ChildNodes['NumSerieFacturaAnulada'].Text;
end;

procedure TXMLIDFacturaExpedidaBajaType_sf.Set_NumSerieFacturaAnulada(Value: UnicodeString);
begin
  ChildNodes['NumSerieFacturaAnulada'].NodeValue := Value;
end;

function TXMLIDFacturaExpedidaBajaType_sf.Get_FechaExpedicionFacturaAnulada: UnicodeString;
begin
  Result := ChildNodes['FechaExpedicionFacturaAnulada'].Text;
end;

procedure TXMLIDFacturaExpedidaBajaType_sf.Set_FechaExpedicionFacturaAnulada(Value: UnicodeString);
begin
  ChildNodes['FechaExpedicionFacturaAnulada'].NodeValue := Value;
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