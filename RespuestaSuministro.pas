
{***********************************************************************}
{                                                                       }
{                           XML Data Binding                            }
{                                                                       }
{         Generated on: 27/09/2024 11:46:40                             }
{       Generated from: D:\VeriFactu\Esquemas\RespuestaSuministro.xsd   }
{   Settings stored in: D:\VeriFactu\Esquemas\RespuestaSuministro.xdb   }
{                                                                       }
{***********************************************************************}

unit RespuestaSuministro;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLRespuestaBaseType = interface;
  IXMLDatosPresentacionType_sf = interface;
  IXMLCabecera_sf = interface;
  IXMLPersonaFisicaJuridicaESType_sf = interface;
  IXMLRemisionVoluntaria_sf = interface;
  IXMLRemisionRequerimiento_sf = interface;
  IXMLRespuestaRegFactuSistemaFacturacionType = interface;
  IXMLRespuestaExpedidaType = interface;
  IXMLRespuestaExpedidaTypeList = interface;
  IXMLIDFacturaExpedidaType_sf = interface;
  IXMLRegistroDuplicadoType_sf = interface;

{ IXMLRespuestaBaseType }

  IXMLRespuestaBaseType = interface(IXMLNode)
    ['{4FCB790B-8A3A-47C7-AA2C-CDD5F42EF356}']
    { Property Accessors }
    function Get_CSV: UnicodeString;
    function Get_DatosPresentacion: IXMLDatosPresentacionType_sf;
    function Get_Cabecera: IXMLCabecera_sf;
    function Get_TiempoEsperaEnvio: UnicodeString;
    function Get_EstadoEnvio: UnicodeString;
    procedure Set_CSV(Value: UnicodeString);
    procedure Set_TiempoEsperaEnvio(Value: UnicodeString);
    procedure Set_EstadoEnvio(Value: UnicodeString);
    { Methods & Properties }
    property CSV: UnicodeString read Get_CSV write Set_CSV;
    property DatosPresentacion: IXMLDatosPresentacionType_sf read Get_DatosPresentacion;
    property Cabecera: IXMLCabecera_sf read Get_Cabecera;
    property TiempoEsperaEnvio: UnicodeString read Get_TiempoEsperaEnvio write Set_TiempoEsperaEnvio;
    property EstadoEnvio: UnicodeString read Get_EstadoEnvio write Set_EstadoEnvio;
  end;

{ IXMLDatosPresentacionType_sf }

  IXMLDatosPresentacionType_sf = interface(IXMLNode)
    ['{AF0F72C5-38BC-4B6A-BAF0-60BB77604A03}']
    { Property Accessors }
    function Get_NIFPresentador: UnicodeString;
    function Get_TimestampPresentacion: UnicodeString;
    procedure Set_NIFPresentador(Value: UnicodeString);
    procedure Set_TimestampPresentacion(Value: UnicodeString);
    { Methods & Properties }
    property NIFPresentador: UnicodeString read Get_NIFPresentador write Set_NIFPresentador;
    property TimestampPresentacion: UnicodeString read Get_TimestampPresentacion write Set_TimestampPresentacion;
  end;

{ IXMLCabecera_sf }

  IXMLCabecera_sf = interface(IXMLNode)
    ['{4DF645B8-E093-43E2-B18F-D36D69F452F9}']
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
    ['{BD628363-6852-4E21-9BB5-6ACCC4E5367B}']
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
    ['{E75FBCCE-2AFA-4FF5-8184-DDDC7AFC17FD}']
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
    ['{6B9F1F7D-EFAD-4F49-A403-B6AFC2CD5000}']
    { Property Accessors }
    function Get_RefRequerimiento: UnicodeString;
    function Get_FinRequerimiento: UnicodeString;
    procedure Set_RefRequerimiento(Value: UnicodeString);
    procedure Set_FinRequerimiento(Value: UnicodeString);
    { Methods & Properties }
    property RefRequerimiento: UnicodeString read Get_RefRequerimiento write Set_RefRequerimiento;
    property FinRequerimiento: UnicodeString read Get_FinRequerimiento write Set_FinRequerimiento;
  end;

{ IXMLRespuestaRegFactuSistemaFacturacionType }

  IXMLRespuestaRegFactuSistemaFacturacionType = interface(IXMLRespuestaBaseType)
    ['{47ACD575-CB41-48D2-916B-1C0B1D83F1B3}']
    { Property Accessors }
    function Get_RespuestaLinea: IXMLRespuestaExpedidaTypeList;
    { Methods & Properties }
    property RespuestaLinea: IXMLRespuestaExpedidaTypeList read Get_RespuestaLinea;
  end;

{ IXMLRespuestaExpedidaType }

  IXMLRespuestaExpedidaType = interface(IXMLNode)
    ['{E578C3BD-6832-4B06-8C82-0B64199010DE}']
    { Property Accessors }
    function Get_IDFactura: IXMLIDFacturaExpedidaType_sf;
    function Get_EstadoRegistro: UnicodeString;
    function Get_CodigoErrorRegistro: Integer;
    function Get_DescripcionErrorRegistro: UnicodeString;
    function Get_RegistroDuplicado: IXMLRegistroDuplicadoType_sf;
    procedure Set_EstadoRegistro(Value: UnicodeString);
    procedure Set_CodigoErrorRegistro(Value: Integer);
    procedure Set_DescripcionErrorRegistro(Value: UnicodeString);
    { Methods & Properties }
    property IDFactura: IXMLIDFacturaExpedidaType_sf read Get_IDFactura;
    property EstadoRegistro: UnicodeString read Get_EstadoRegistro write Set_EstadoRegistro;
    property CodigoErrorRegistro: Integer read Get_CodigoErrorRegistro write Set_CodigoErrorRegistro;
    property DescripcionErrorRegistro: UnicodeString read Get_DescripcionErrorRegistro write Set_DescripcionErrorRegistro;
    property RegistroDuplicado: IXMLRegistroDuplicadoType_sf read Get_RegistroDuplicado;
  end;

{ IXMLRespuestaExpedidaTypeList }

  IXMLRespuestaExpedidaTypeList = interface(IXMLNodeCollection)
    ['{26599B54-1593-4950-95CD-24F539FB1A86}']
    { Methods & Properties }
    function Add: IXMLRespuestaExpedidaType;
    function Insert(const Index: Integer): IXMLRespuestaExpedidaType;

    function Get_Item(Index: Integer): IXMLRespuestaExpedidaType;
    property Items[Index: Integer]: IXMLRespuestaExpedidaType read Get_Item; default;
  end;

{ IXMLIDFacturaExpedidaType_sf }

  IXMLIDFacturaExpedidaType_sf = interface(IXMLNode)
    ['{E8E68DD6-B002-454D-B568-331C37AE49AB}']
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

{ IXMLRegistroDuplicadoType_sf }

  IXMLRegistroDuplicadoType_sf = interface(IXMLNode)
    ['{434C4019-9FFC-4AFA-92FC-5EE6EEBD237A}']
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

{ Forward Decls }

  TXMLRespuestaBaseType = class;
  TXMLDatosPresentacionType_sf = class;
  TXMLCabecera_sf = class;
  TXMLPersonaFisicaJuridicaESType_sf = class;
  TXMLRemisionVoluntaria_sf = class;
  TXMLRemisionRequerimiento_sf = class;
  TXMLRespuestaRegFactuSistemaFacturacionType = class;
  TXMLRespuestaExpedidaType = class;
  TXMLRespuestaExpedidaTypeList = class;
  TXMLIDFacturaExpedidaType_sf = class;
  TXMLRegistroDuplicadoType_sf = class;

{ TXMLRespuestaBaseType }

  TXMLRespuestaBaseType = class(TXMLNode, IXMLRespuestaBaseType)
  protected
    { IXMLRespuestaBaseType }
    function Get_CSV: UnicodeString;
    function Get_DatosPresentacion: IXMLDatosPresentacionType_sf;
    function Get_Cabecera: IXMLCabecera_sf;
    function Get_TiempoEsperaEnvio: UnicodeString;
    function Get_EstadoEnvio: UnicodeString;
    procedure Set_CSV(Value: UnicodeString);
    procedure Set_TiempoEsperaEnvio(Value: UnicodeString);
    procedure Set_EstadoEnvio(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLDatosPresentacionType_sf }

  TXMLDatosPresentacionType_sf = class(TXMLNode, IXMLDatosPresentacionType_sf)
  protected
    { IXMLDatosPresentacionType_sf }
    function Get_NIFPresentador: UnicodeString;
    function Get_TimestampPresentacion: UnicodeString;
    procedure Set_NIFPresentador(Value: UnicodeString);
    procedure Set_TimestampPresentacion(Value: UnicodeString);
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

{ TXMLRespuestaRegFactuSistemaFacturacionType }

  TXMLRespuestaRegFactuSistemaFacturacionType = class(TXMLRespuestaBaseType, IXMLRespuestaRegFactuSistemaFacturacionType)
  private
    FRespuestaLinea: IXMLRespuestaExpedidaTypeList;
  protected
    { IXMLRespuestaRegFactuSistemaFacturacionType }
    function Get_RespuestaLinea: IXMLRespuestaExpedidaTypeList;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRespuestaExpedidaType }

  TXMLRespuestaExpedidaType = class(TXMLNode, IXMLRespuestaExpedidaType)
  protected
    { IXMLRespuestaExpedidaType }
    function Get_IDFactura: IXMLIDFacturaExpedidaType_sf;
    function Get_EstadoRegistro: UnicodeString;
    function Get_CodigoErrorRegistro: Integer;
    function Get_DescripcionErrorRegistro: UnicodeString;
    function Get_RegistroDuplicado: IXMLRegistroDuplicadoType_sf;
    procedure Set_EstadoRegistro(Value: UnicodeString);
    procedure Set_CodigoErrorRegistro(Value: Integer);
    procedure Set_DescripcionErrorRegistro(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLRespuestaExpedidaTypeList }

  TXMLRespuestaExpedidaTypeList = class(TXMLNodeCollection, IXMLRespuestaExpedidaTypeList)
  protected
    { IXMLRespuestaExpedidaTypeList }
    function Add: IXMLRespuestaExpedidaType;
    function Insert(const Index: Integer): IXMLRespuestaExpedidaType;

    function Get_Item(Index: Integer): IXMLRespuestaExpedidaType;
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

{ TXMLRegistroDuplicadoType_sf }

  TXMLRegistroDuplicadoType_sf = class(TXMLNode, IXMLRegistroDuplicadoType_sf)
  protected
    { IXMLRegistroDuplicadoType_sf }
    function Get_IdPeticionRegistroDuplicado: UnicodeString;
    function Get_EstadoRegistroDuplicado: UnicodeString;
    function Get_CodigoErrorRegistro: Integer;
    function Get_DescripcionErrorRegistro: UnicodeString;
    procedure Set_IdPeticionRegistroDuplicado(Value: UnicodeString);
    procedure Set_EstadoRegistroDuplicado(Value: UnicodeString);
    procedure Set_CodigoErrorRegistro(Value: Integer);
    procedure Set_DescripcionErrorRegistro(Value: UnicodeString);
  end;

implementation

{ TXMLRespuestaBaseType }

procedure TXMLRespuestaBaseType.AfterConstruction;
begin
  RegisterChildNode('DatosPresentacion', TXMLDatosPresentacionType_sf);
  RegisterChildNode('Cabecera', TXMLCabecera_sf);
  inherited;
end;

function TXMLRespuestaBaseType.Get_CSV: UnicodeString;
begin
  Result := ChildNodes['CSV'].Text;
end;

procedure TXMLRespuestaBaseType.Set_CSV(Value: UnicodeString);
begin
  ChildNodes['CSV'].NodeValue := Value;
end;

function TXMLRespuestaBaseType.Get_DatosPresentacion: IXMLDatosPresentacionType_sf;
begin
  Result := ChildNodes['DatosPresentacion'] as IXMLDatosPresentacionType_sf;
end;

function TXMLRespuestaBaseType.Get_Cabecera: IXMLCabecera_sf;
begin
  Result := ChildNodes['Cabecera'] as IXMLCabecera_sf;
end;

function TXMLRespuestaBaseType.Get_TiempoEsperaEnvio: UnicodeString;
begin
  Result := ChildNodes['TiempoEsperaEnvio'].Text;
end;

procedure TXMLRespuestaBaseType.Set_TiempoEsperaEnvio(Value: UnicodeString);
begin
  ChildNodes['TiempoEsperaEnvio'].NodeValue := Value;
end;

function TXMLRespuestaBaseType.Get_EstadoEnvio: UnicodeString;
begin
  Result := ChildNodes['EstadoEnvio'].Text;
end;

procedure TXMLRespuestaBaseType.Set_EstadoEnvio(Value: UnicodeString);
begin
  ChildNodes['EstadoEnvio'].NodeValue := Value;
end;

{ TXMLDatosPresentacionType_sf }

function TXMLDatosPresentacionType_sf.Get_NIFPresentador: UnicodeString;
begin
  Result := ChildNodes['NIFPresentador'].Text;
end;

procedure TXMLDatosPresentacionType_sf.Set_NIFPresentador(Value: UnicodeString);
begin
  ChildNodes['NIFPresentador'].NodeValue := Value;
end;

function TXMLDatosPresentacionType_sf.Get_TimestampPresentacion: UnicodeString;
begin
  Result := ChildNodes['TimestampPresentacion'].Text;
end;

procedure TXMLDatosPresentacionType_sf.Set_TimestampPresentacion(Value: UnicodeString);
begin
  ChildNodes['TimestampPresentacion'].NodeValue := Value;
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

{ TXMLRespuestaRegFactuSistemaFacturacionType }

procedure TXMLRespuestaRegFactuSistemaFacturacionType.AfterConstruction;
begin
  RegisterChildNode('RespuestaLinea', TXMLRespuestaExpedidaType);
  FRespuestaLinea := CreateCollection(TXMLRespuestaExpedidaTypeList, IXMLRespuestaExpedidaType, 'RespuestaLinea') as IXMLRespuestaExpedidaTypeList;
  inherited;
end;

function TXMLRespuestaRegFactuSistemaFacturacionType.Get_RespuestaLinea: IXMLRespuestaExpedidaTypeList;
begin
  Result := FRespuestaLinea;
end;

{ TXMLRespuestaExpedidaType }

procedure TXMLRespuestaExpedidaType.AfterConstruction;
begin
  RegisterChildNode('IDFactura', TXMLIDFacturaExpedidaType_sf);
  RegisterChildNode('RegistroDuplicado', TXMLRegistroDuplicadoType_sf);
  inherited;
end;

function TXMLRespuestaExpedidaType.Get_IDFactura: IXMLIDFacturaExpedidaType_sf;
begin
  Result := ChildNodes['IDFactura'] as IXMLIDFacturaExpedidaType_sf;
end;

function TXMLRespuestaExpedidaType.Get_EstadoRegistro: UnicodeString;
begin
  Result := ChildNodes['EstadoRegistro'].Text;
end;

procedure TXMLRespuestaExpedidaType.Set_EstadoRegistro(Value: UnicodeString);
begin
  ChildNodes['EstadoRegistro'].NodeValue := Value;
end;

function TXMLRespuestaExpedidaType.Get_CodigoErrorRegistro: Integer;
begin
  Result := ChildNodes['CodigoErrorRegistro'].NodeValue;
end;

procedure TXMLRespuestaExpedidaType.Set_CodigoErrorRegistro(Value: Integer);
begin
  ChildNodes['CodigoErrorRegistro'].NodeValue := Value;
end;

function TXMLRespuestaExpedidaType.Get_DescripcionErrorRegistro: UnicodeString;
begin
  Result := ChildNodes['DescripcionErrorRegistro'].Text;
end;

procedure TXMLRespuestaExpedidaType.Set_DescripcionErrorRegistro(Value: UnicodeString);
begin
  ChildNodes['DescripcionErrorRegistro'].NodeValue := Value;
end;

function TXMLRespuestaExpedidaType.Get_RegistroDuplicado: IXMLRegistroDuplicadoType_sf;
begin
  Result := ChildNodes['RegistroDuplicado'] as IXMLRegistroDuplicadoType_sf;
end;

{ TXMLRespuestaExpedidaTypeList }

function TXMLRespuestaExpedidaTypeList.Add: IXMLRespuestaExpedidaType;
begin
  Result := AddItem(-1) as IXMLRespuestaExpedidaType;
end;

function TXMLRespuestaExpedidaTypeList.Insert(const Index: Integer): IXMLRespuestaExpedidaType;
begin
  Result := AddItem(Index) as IXMLRespuestaExpedidaType;
end;

function TXMLRespuestaExpedidaTypeList.Get_Item(Index: Integer): IXMLRespuestaExpedidaType;
begin
  Result := List[Index] as IXMLRespuestaExpedidaType;
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

{ TXMLRegistroDuplicadoType_sf }

function TXMLRegistroDuplicadoType_sf.Get_IdPeticionRegistroDuplicado: UnicodeString;
begin
  Result := ChildNodes['IdPeticionRegistroDuplicado'].Text;
end;

procedure TXMLRegistroDuplicadoType_sf.Set_IdPeticionRegistroDuplicado(Value: UnicodeString);
begin
  ChildNodes['IdPeticionRegistroDuplicado'].NodeValue := Value;
end;

function TXMLRegistroDuplicadoType_sf.Get_EstadoRegistroDuplicado: UnicodeString;
begin
  Result := ChildNodes['EstadoRegistroDuplicado'].Text;
end;

procedure TXMLRegistroDuplicadoType_sf.Set_EstadoRegistroDuplicado(Value: UnicodeString);
begin
  ChildNodes['EstadoRegistroDuplicado'].NodeValue := Value;
end;

function TXMLRegistroDuplicadoType_sf.Get_CodigoErrorRegistro: Integer;
begin
  Result := ChildNodes['CodigoErrorRegistro'].NodeValue;
end;

procedure TXMLRegistroDuplicadoType_sf.Set_CodigoErrorRegistro(Value: Integer);
begin
  ChildNodes['CodigoErrorRegistro'].NodeValue := Value;
end;

function TXMLRegistroDuplicadoType_sf.Get_DescripcionErrorRegistro: UnicodeString;
begin
  Result := ChildNodes['DescripcionErrorRegistro'].Text;
end;

procedure TXMLRegistroDuplicadoType_sf.Set_DescripcionErrorRegistro(Value: UnicodeString);
begin
  ChildNodes['DescripcionErrorRegistro'].NodeValue := Value;
end;

end.