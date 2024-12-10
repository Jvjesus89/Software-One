program ConsultaEstoque;

uses
  Vcl.Forms,
  TelaConsultaEstoque in '..\TelaConsultaEstoque.pas' {ConsultaEstoque1},
  Vcl.Themes,
  Vcl.Styles,
  Produtos in '..\Produtos.pas' {ConsultaProduto},
  CadastroMovimentacoes in '..\CadastroMovimentacoes.pas' {TelaCadastroMovimentacoes},
  ProdutoMov in '..\ProdutoMov.pas' {ProdutoMov1},
  DbPrincipal in '..\ConexãoDB\DbPrincipal.pas' {DbMaster: TDataModule},
  conectarINI in '..\ConsultaEstoque\Comandos\conectarINI.pas',
  DropTable in '..\ConsultaEstoque\Comandos\DropTable.pas',
  CreatTable in '..\ConsultaEstoque\Comandos\CreatTable.pas',
  DbMovimento in '..\ConsultaEstoque\Banco de dados\DbMovimento.pas' {DbMov: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TDbMov, DbMov);
  Application.CreateForm(TConsultaEstoque1, ConsultaEstoque1);
  Application.CreateForm(TConsultaProduto, ConsultaProduto);
  Application.CreateForm(TTelaCadastroMovimentacoes, TelaCadastroMovimentacoes);
  Application.CreateForm(TProdutoMov1, ProdutoMov1);
  Application.Run;
end.



