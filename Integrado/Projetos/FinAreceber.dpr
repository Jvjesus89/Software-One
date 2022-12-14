program FinAreceber;

uses
  Vcl.Forms,
  Areceber in '..\Areceber.pas' {Areceber1},
  Dbfinreceber in '..\Dbfinreceber.pas' {DbFinAreceber1},
  Vcl.Themes,
  Vcl.Styles,
  TelaCadastroAreceber in '..\TelaCadastroAreceber.pas' {TelaCadasrroAreceber1},
  TelaConsultaClienteAreceber in '..\TelaConsultaClienteAreceber.pas' {TelaConsultaClienteAreceber1},
  TelaEdicaoAreceber in '..\TelaEdicaoAreceber.pas' {TelaEdicaoAreceber1},
  TelaExportaçãoDadosAreceber in '..\TelaExportaçãoDadosAreceber.pas' {Exportar},
  TelaCadastroBaixaAreceber in '..\Areceber\Cadastro\TelaCadastroBaixaAreceber.pas' {CadastroBaixaAreceber},
  ConsultaContaCorrenteAreceber in '..\Areceber\Consulta\SubConsulta\ConsultaContaCorrenteAreceber.pas' {ConsultaContaBancaria},
  ConsultaFormaPagamentoCadastro in '..\Areceber\Consulta\SubConsulta\ConsultaFormaPagamentoCadastro.pas' {ConsultaFormaPagamento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TAreceber1, Areceber1);
  Application.CreateForm(TDbFinAreceber1, DbFinAreceber1);
  Application.CreateForm(TTelaCadasrroAreceber1, TelaCadasrroAreceber1);
  Application.CreateForm(TTelaConsultaClienteAreceber1, TelaConsultaClienteAreceber1);
  Application.CreateForm(TTelaEdicaoAreceber1, TelaEdicaoAreceber1);
  Application.CreateForm(TExportar, Exportar);
  Application.CreateForm(TCadastroBaixaAreceber, CadastroBaixaAreceber);
  Application.CreateForm(TConsultaContaBancaria, ConsultaContaBancaria);
  Application.CreateForm(TConsultaFormaPagamento, ConsultaFormaPagamento);
  Application.Run;
end.


