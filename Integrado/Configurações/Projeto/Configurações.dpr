program Configurações;

uses
  Vcl.Forms,
  DbConfiguracaoFinanceiro in '..\Banco de dados\Financeiro\DbConfiguracaoFinanceiro.pas' {DbConfigFin},
  TelaConfiguracoes in '..\TelaConfiguracoes.pas' {TelaConfig},
  TelaConsultaFormaPagamento in '..\Forma pagamento\Consulta\TelaConsultaFormaPagamento.pas' {Formapagamento},
  TelaConsultaFormaPagamantoPPrazo in '..\Prazo\Consulta\SubConsulta\TelaConsultaFormaPagamantoPPrazo.pas' {ConsultaFormaPagamento},
  TelaCadastroFormaPagamento in '..\Forma pagamento\Cadastro\TelaCadastroFormaPagamento.pas' {CadastroFormaPagamento},
  TelaCadastroPrazos in '..\Prazo\Cadastro\TelaCadastroPrazos.pas' {TelaPrazos},
  TelaCadastroPrazo in '..\Prazo\Consulta\TelaCadastroPrazo.pas' {Prazos},
  Vcl.Themes,
  Vcl.Styles,
  TelaConsultaBanco in '..\Banco\Consulta\TelaConsultaBanco.pas' {ConsultaBanco},
  TelaCadastroBanco in '..\Banco\Cadastro\TelaCadastroBanco.pas' {CadastroBanco},
  TelaConsultaAgencia in '..\Agencia\Consulta\TelaConsultaAgencia.pas' {ConsultaAgencia},
  TelaCadastraAgencia in '..\Agencia\Cadastro\TelaCadastraAgencia.pas' {CadastrarAgencia},
  TelaConsultaBancoAgencia in '..\Agencia\Consulta\SubConsulta\TelaConsultaBancoAgencia.pas' {ConsultaBancoAgencia},
  TelaCadastroContaCorrente in '..\Conta Corrente\Cadastro\TelaCadastroContaCorrente.pas' {CadastroContaCorrente},
  TelaConsultaAgenciaConta in '..\Conta Corrente\Consulta\SubConsulta\TelaConsultaAgenciaConta.pas' {ConsultaAgenciaConta},
  TelaConsultaContaCorrente in '..\Conta Corrente\Consulta\TelaConsultaContaCorrente.pas' {ConsultaContaCorrente},
  TelaConsultaBancoConta in '..\Conta Corrente\Consulta\SubConsulta\TelaConsultaBancoConta.pas' {ConsultaBancoContaCorrente},
  TelaOpções in '..\Geral\Opções\TelaOpções.pas' {Opções},
  DbConfiguracoesGeral in '..\Banco de dados\Geral\DbConfiguracoesGeral.pas' {DbGeral};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TTelaConfig, TelaConfig);
  Application.CreateForm(TDbConfigFin, DbConfigFin);
  Application.CreateForm(TFormapagamento, Formapagamento);
  Application.CreateForm(TConsultaFormaPagamento, ConsultaFormaPagamento);
  Application.CreateForm(TCadastroFormaPagamento, CadastroFormaPagamento);
  Application.CreateForm(TTelaPrazos, TelaPrazos);
  Application.CreateForm(TPrazos, Prazos);
  Application.CreateForm(TConsultaBanco, ConsultaBanco);
  Application.CreateForm(TCadastroBanco, CadastroBanco);
  Application.CreateForm(TConsultaAgencia, ConsultaAgencia);
  Application.CreateForm(TCadastrarAgencia, CadastrarAgencia);
  Application.CreateForm(TConsultaBancoAgencia, ConsultaBancoAgencia);
  Application.CreateForm(TCadastroContaCorrente, CadastroContaCorrente);
  Application.CreateForm(TConsultaAgenciaConta, ConsultaAgenciaConta);
  Application.CreateForm(TConsultaContaCorrente, ConsultaContaCorrente);
  Application.CreateForm(TConsultaBancoContaCorrente, ConsultaBancoContaCorrente);
  Application.CreateForm(TOpções, Opções);
  Application.CreateForm(TDbGeral, DbGeral);
  Application.Run;

end.













