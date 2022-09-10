program FinAreceber;

uses
  Vcl.Forms,
  Areceber in '..\Areceber.pas' {Apagar1},
  Dbfinreceber in '..\Dbfinreceber.pas' {DbFinAreceber1},
  Vcl.Themes,
  Vcl.Styles,
  TelaCadastroAreceber in '..\TelaCadastroAreceber.pas' {TelaCadasrroAreceber1},
  TelaConsultaClienteAreceber in '..\TelaConsultaClienteAreceber.pas' {TelaConsultaClienteAreceber1},
  TelaEdicaoAreceber in '..\TelaEdicaoAreceber.pas' {TelaEdicaoAreceber1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TApagar1, Apagar1);
  Application.CreateForm(TDbFinAreceber1, DbFinAreceber1);
  Application.CreateForm(TTelaCadasrroAreceber1, TelaCadasrroAreceber1);
  Application.CreateForm(TTelaConsultaClienteAreceber1, TelaConsultaClienteAreceber1);
  Application.CreateForm(TTelaEdicaoAreceber1, TelaEdicaoAreceber1);
  Application.Run;
end.
