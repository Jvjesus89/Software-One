program CadastroProduto;

uses
  Vcl.Forms,
  CadProd in '..\CadProd.pas' {CadProduto},
  Vcl.Themes,
  Vcl.Styles,
  Dbcadastroproduto in '..\Dbcadastroproduto.pas' {Dbprod},
  TelaCadastroDeProdutos in '..\TelaCadastroDeProdutos.pas' {TelaCadastroProduto},
  TelaEdicaoProduto in '..\TelaEdicaoProduto.pas' {TelaEdicaoProduto1},
  DbPrincipal in '..\ConexãoDB\DbPrincipal.pas' {DbMaster: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TCadProduto, CadProduto);
  Application.CreateForm(TTelaCadastroProduto, TelaCadastroProduto);
  Application.CreateForm(TDBprod, DBprod);
  Application.CreateForm(TTelaEdicaoProduto1, TelaEdicaoProduto1);
  Application.CreateForm(TDbMaster, DbMaster);
  Application.Run;
end.





