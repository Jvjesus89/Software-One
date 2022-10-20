program Configuracoes;

uses
  Vcl.Forms,
  TelaConfiguracoes in '..\TelaConfiguracoes.pas' {TelaConfig},
  Vcl.Themes,
  Vcl.Styles,
  TelaCadastroFormaPagamento in '..\TelaCadastroFormaPagamento.pas' {CadastroFormaPagamento},
  DbConfiguracao in '..\DbConfiguracao.pas' {DbConfig},
  TelaConsultaFormaPagamento in '..\TelaConsultaFormaPagamento.pas' {Formapagamento},
  TelaCadastroPrazo in '..\TelaCadastroPrazo.pas' {Prazos},
  TelaCadastroPrazos in '..\TelaCadastroPrazos.pas' {TelaPrazos},
  TelaConsultaFormaPagamantoPPrazo in '..\TelaConsultaFormaPagamantoPPrazo.pas' {ConsultaFormaPagamento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TTelaConfig, TelaConfig);
  Application.CreateForm(TCadastroFormaPagamento, CadastroFormaPagamento);
  Application.CreateForm(TDbConfig, DbConfig);
  Application.CreateForm(TFormapagamento, Formapagamento);
  Application.CreateForm(TPrazos, Prazos);
  Application.CreateForm(TTelaPrazos, TelaPrazos);
  Application.CreateForm(TConsultaFormaPagamento, ConsultaFormaPagamento);
  Application.Run;
end.
