program FinApagar;

uses
  Vcl.Forms,
  Apagar in '..\Apagar.pas' {Apagar1},
  Dbfinapagar in '..\Dbfinapagar.pas' {DbFinApagar1},
  TelaCadastroApagar in '..\TelaCadastroApagar.pas' {TelaCadasrroApagar1},
  TelaConsultaClienteApagar in '..\TelaConsultaClienteApagar.pas' {TelaConsultaCliente1},
  Vcl.Themes,
  Vcl.Styles,
  TelaEdicaoApagar in '..\TelaEdicaoApagar.pas' {TelaEdicaoApagar1},
  TelaExportaçãoDadosApagar in '..\TelaExportaçãoDadosApagar.pas' {Exportar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TApagar1, Apagar1);
  Application.CreateForm(TDbFinApagar1, DbFinApagar1);
  Application.CreateForm(TTelaCadasrroApagar1, TelaCadasrroApagar1);
  Application.CreateForm(TTelaConsultaCliente1, TelaConsultaCliente1);
  Application.CreateForm(TTelaEdicaoApagar1, TelaEdicaoApagar1);
  Application.CreateForm(TExportar, Exportar);
  Application.Run;
end.
