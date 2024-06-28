program verifactuForm;

uses
  MidasLib,
  Vcl.Forms,
  uVeriForm in 'uVeriForm.pas' {Form2},
  utiles in 'utiles.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfVeriFactuForm,fVeriFactuForm);
  Application.Run;
end.
