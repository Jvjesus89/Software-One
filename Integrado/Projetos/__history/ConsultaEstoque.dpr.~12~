program ConsultaEstoque;

uses
  Vcl.Forms,
  TelaConsultaEstoque in '..\TelaConsultaEstoque.pas' {ConsultaEstoque1},
  DbMovimento in '..\DbMovimento.pas' {DbMov},
  Vcl.Themes,
  Vcl.Styles,
  Produtos in '..\Produtos.pas' {ConsultaProduto},
  CadastroMovimentacoes in '..\CadastroMovimentacoes.pas' {TelaCadastroMovimentacoes},
  ProdutoMov in '..\ProdutoMov.pas' {ProdutoMov1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TConsultaEstoque1, ConsultaEstoque1);
  Application.CreateForm(TConsultaProduto, ConsultaProduto);
  Application.CreateForm(TDbMov, DbMov);
  Application.CreateForm(TTelaCadastroMovimentacoes, TelaCadastroMovimentacoes);
  Application.CreateForm(TProdutoMov1, ProdutoMov1);
  //Application.CreateForm(TDbMov, DbMov);
  Application.Run;
end.
