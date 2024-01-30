program ConsultaEstoque;

uses
  Vcl.Forms,
  TelaConsultaEstoque in '..\TelaConsultaEstoque.pas' {ConsultaEstoque1},
  DbMovimento in '..\DbMovimento.pas' {DbMov},
  Vcl.Themes,
  Vcl.Styles,
  Produtos in '..\Produtos.pas' {ConsultaProduto},
  CadastroMovimentacoes in '..\CadastroMovimentacoes.pas' {TelaCadastroMovimentacoes},
  ProdutoMov in '..\ProdutoMov.pas' {ProdutoMov1},
  DbPrincipal in '..\Conex�oDB\DbPrincipal.pas' {DbMaster: TDataModule},
  conectarINI in '..\ConsultaEstoque\Comandos\conectarINI.pas',
  DropTable in '..\ConsultaEstoque\Comandos\DropTable.pas',
  CreatTable in '..\ConsultaEstoque\Comandos\CreatTable.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TConsultaEstoque1, ConsultaEstoque1);
  Application.CreateForm(TConsultaProduto, ConsultaProduto);
  Application.CreateForm(TDbMov, DbMov);
  Application.CreateForm(TTelaCadastroMovimentacoes, TelaCadastroMovimentacoes);
  Application.CreateForm(TProdutoMov1, ProdutoMov1);
  //Application.CreateForm(TDbMov, DbMov);
  Application.Run;
end.


