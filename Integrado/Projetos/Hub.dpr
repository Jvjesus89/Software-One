program Hub;

uses
  Vcl.Forms,
  TelaPrincipal in '..\TelaPrincipal.pas' {HubPrin},
  Vcl.Themes,
  Vcl.Styles,
  Producao in '..\Produ��o\Producao.pas' {TelaConsultaProducao},
  CadastraProducao in '..\Produ��o\CadastraProducao.pas' {CadastroProducao},
  DbPrincipal in '..\Conex�oDB\DbPrincipal.pas' {DbMaster: TDataModule},
  CadProd in '..\CadastroProduto\Modulo\CadProd.pas' {CadProduto},
  TelaCadastroDeProdutos in '..\CadastroProduto\Modulo\Telas\TelaCadastroDeProdutos.pas' {TelaCadastroProduto},
  conectarINI in '..\CadastroProduto\Comandos\conectarINI.pas',
  Forms in '..\Padr�o\Comandos Padr�o\Forms.pas',
  TelaExportacaoProduto in '..\CadastroProduto\Modulo\Telas\TelaExportacaoProduto.pas' {ExportaProdutos},
  TelaComposicaoProdutos in '..\CadastroProduto\Modulo\Telas\TelaComposicaoProdutos.pas' {ProdutosComp},
  Consultas in '..\Padr�o\Comandos Padr�o\Consultas.pas',
  DBpadrao in '..\Padr�o\DB Padrao\DBpadrao.pas' {dbConsultas: TDataModule},
  ConsultaProduto in '..\Padr�o\ConsultaPadrao\ConsultaProduto.pas' {TelaConsultaProduto},
  TelaCadastroDeLotes in '..\CadastroProduto\Modulo\Telas\TelaCadastroDeLotes.pas' {CadastroLote},
  EditarConexao in '..\TelaLogin\EditarConexao.pas' {AlterarDB},
  TelaLogin in '..\TelaLogin\TelaLogin.pas' {TelaLoginU},
  Produtos in '..\Produtos.pas' {ConsultaProduto},
  ProdutoMov in '..\ProdutoMov.pas' {ProdutoMov1},
  DbMovimento in '..\ConsultaEstoque\Banco de dados\DbMovimento.pas' {DbMov: TDataModule},
  TelaConsultaEstoque in '..\ConsultaEstoque\TelaConsultaEstoque.pas' {ConsultaEstoque1},
  CadastroMovimentacoes in '..\ConsultaEstoque\telas\CadastroMovimentacoes.pas' {TelaCadastroMovimentacoes};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TdbConsultas, dbConsultas);
  Application.CreateForm(THubPrin, HubPrin);
  Application.CreateForm(TTelaLoginU, TelaLoginU);
  Application.Run;
end.



