program Hub;

uses
  Vcl.Forms,
  TelaPrincipal in '..\TelaPrincipal.pas' {HubPrin},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(THubPrin, HubPrin);
  Application.Run;
end.
