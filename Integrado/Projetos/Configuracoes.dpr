program Configuracoes;

uses
  Vcl.Forms,
  TelaConfiguracoes in '..\Configurações\TelaConfiguracoes.pas' {TelaConfig},
  DbPrincipal in '..\ConexãoDB\DbPrincipal.pas' {DbMaster: TDataModule},
  DbConfiguracaoFinanceiro in '..\Configurações\Banco de dados\Financeiro\DbConfiguracaoFinanceiro.pas' {DbConfigFin},
  TelaCadastraAgencia in '..\Configurações\Agencia\Cadastro\TelaCadastraAgencia.pas' {CadastrarAgencia},
  TelaConsultaAgencia in '..\Configurações\Agencia\Consulta\TelaConsultaAgencia.pas' {ConsultaAgencia},
  TelaConsultaBancoAgencia in '..\Configurações\Agencia\Consulta\SubConsulta\TelaConsultaBancoAgencia.pas' {ConsultaBancoAgencia},
  TelaCadastroBanco in '..\Configurações\Banco\Cadastro\TelaCadastroBanco.pas' {CadastroBanco},
  TelaConsultaBanco in '..\Configurações\Banco\Consulta\TelaConsultaBanco.pas' {ConsultaBanco},
  TelaCadastroContaCorrente in '..\Configurações\Conta Corrente\Cadastro\TelaCadastroContaCorrente.pas' {CadastroContaCorrente},
  TelaConsultaFormaPagamento in '..\Configurações\Forma pagamento\Consulta\TelaConsultaFormaPagamento.pas' {Formapagamento},
  TelaCadastroFormaPagamento in '..\Configurações\Forma pagamento\Cadastro\TelaCadastroFormaPagamento.pas' {CadastroFormaPagamento},
  TelaConsultaContaCorrente in '..\Configurações\Conta Corrente\Consulta\TelaConsultaContaCorrente.pas' {ConsultaContaCorrente},
  TelaConsultaAgenciaConta in '..\Configurações\Conta Corrente\Consulta\SubConsulta\TelaConsultaAgenciaConta.pas' {ConsultaAgenciaConta},
  TelaConsultaBancoConta in '..\Configurações\Conta Corrente\Consulta\SubConsulta\TelaConsultaBancoConta.pas' {ConsultaBancoContaCorrente},
  TelaCadastroPrazos in '..\Configurações\Prazo\Cadastro\TelaCadastroPrazos.pas' {TelaPrazos},
  TelaCadastroPrazo in '..\Configurações\Prazo\Consulta\TelaCadastroPrazo.pas' {Prazos},
  TelaConsultaFormaPagamantoPPrazo in '..\Configurações\Prazo\Consulta\SubConsulta\TelaConsultaFormaPagamantoPPrazo.pas' {ConsultaFormaPagamento},
  Vcl.Themes,
  Vcl.Styles,
  conectarINI in '..\Configurações\Comandos\conectarINI.pas',
  TelaCadastroFamiliaProduto in '..\Configurações\Estoque\TelaCadastroFamiliaProduto.pas' {CaadastroFamilia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TTelaConfig, TelaConfig);
  Application.CreateForm(TDbConfigFin, DbConfigFin);
  Application.CreateForm(TCadastrarAgencia, CadastrarAgencia);
  Application.CreateForm(TConsultaAgencia, ConsultaAgencia);
  Application.CreateForm(TConsultaBancoAgencia, ConsultaBancoAgencia);
  Application.CreateForm(TCadastroBanco, CadastroBanco);
  Application.CreateForm(TConsultaBanco, ConsultaBanco);
  Application.CreateForm(TCadastroContaCorrente, CadastroContaCorrente);
  Application.CreateForm(TFormapagamento, Formapagamento);
  Application.CreateForm(TCadastroFormaPagamento, CadastroFormaPagamento);
  Application.CreateForm(TConsultaContaCorrente, ConsultaContaCorrente);
  Application.CreateForm(TConsultaAgenciaConta, ConsultaAgenciaConta);
  Application.CreateForm(TConsultaBancoContaCorrente, ConsultaBancoContaCorrente);
  Application.CreateForm(TTelaPrazos, TelaPrazos);
  Application.CreateForm(TPrazos, Prazos);
  Application.CreateForm(TConsultaFormaPagamento, ConsultaFormaPagamento);
  Application.CreateForm(TCaadastroFamilia, CaadastroFamilia);
  Application.Run;
end.
