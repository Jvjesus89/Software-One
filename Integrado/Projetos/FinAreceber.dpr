program FinAreceber;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  DbPrincipal in '..\ConexãoDB\DbPrincipal.pas' {DbMaster: TDataModule},
  Areceber in '..\CadastroAreceber\Areceber.pas' {Areceber1},
  TelaCadastroBaixaAreceber in '..\CadastroAreceber\Telas\TelaCadastroBaixaAreceber.pas' {CadastroBaixaAreceber},
  TelaConsultaClienteAreceber in '..\CadastroAreceber\Telas\TelaConsultaClienteAreceber.pas' {TelaConsultaClienteAreceber1},
  TelaEdicaoAreceber in '..\CadastroAreceber\Telas\TelaEdicaoAreceber.pas' {TelaEdicaoAreceber1},
  TelaExportaçãoDadosAreceber in '..\CadastroAreceber\Telas\TelaExportaçãoDadosAreceber.pas' {Exportar},
  ConsultaContaCorrenteAreceber in '..\CadastroAreceber\Telas\Consulta\ConsultaContaCorrenteAreceber.pas' {ConsultaContaBancaria},
  ConsultaFormaPagamentoCadastro in '..\CadastroAreceber\Telas\Consulta\ConsultaFormaPagamentoCadastro.pas' {ConsultaFormaPagamentoC},
  Dbfinreceber in '..\CadastroAreceber\BancoAreceber\Dbfinreceber.pas' {DbFinAreceber1},
  ConsultaFormaPagamentoAreceberEdit in '..\CadastroAreceber\Telas\Consulta\ConsultaFormaPagamentoAreceberEdit.pas' {FormaPagemento},
  InseriAreceber in '..\CadastroAreceber\Comandos\InseriAreceber.pas',
  TelaCadastroAreceber in '..\CadastroAreceber\Telas\TelaCadastroAreceber.pas' {TelaCadasrroAreceber1},
  ExclusaoTabelaTemporaria in '..\CadastroAreceber\Comandos\ExclusaoTabelaTemporaria.pas',
  conectarINI in '..\CadastroAreceber\Comandos\conectarINI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TAreceber1, Areceber1);
  Application.CreateForm(TDbFinAreceber1, DbFinAreceber1);
  Application.CreateForm(TCadastroBaixaAreceber, CadastroBaixaAreceber);
  Application.CreateForm(TConsultaFormaPagamentoC, ConsultaFormaPagamentoC);
  Application.CreateForm(TTelaConsultaClienteAreceber1, TelaConsultaClienteAreceber1);
  Application.CreateForm(TTelaEdicaoAreceber1, TelaEdicaoAreceber1);
  Application.CreateForm(TExportar, Exportar);
  Application.CreateForm(TConsultaContaBancaria, ConsultaContaBancaria);
  Application.CreateForm(TFormaPagemento, FormaPagemento);
  Application.CreateForm(TTelaCadasrroAreceber1, TelaCadasrroAreceber);
  Application.Run;
end.










