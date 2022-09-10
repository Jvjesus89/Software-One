program Sistema;

uses
  Vcl.Forms,
  TelaLogin in '..\TelaLogin.pas' {TelaLoginU},
  DbLogin in '..\DbLogin.pas' {Login},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TTelaLoginU, TelaLoginU);
  Application.CreateForm(TLogin, Login);
  Application.Run;
end.
