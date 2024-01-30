program CadastroProduto;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  DbPrincipal in '..\Conex�oDB\DbPrincipal.pas' {DbMaster: TDataModule},
  CadProd in '..\CadastroProduto\Modulo\CadProd.pas' {CadProduto},
  TelaCadastroDeProdutos in '..\CadastroProduto\Modulo\Telas\TelaCadastroDeProdutos.pas' {TelaCadastroProduto},
  TelaEdicaoProduto in '..\CadastroProduto\Modulo\Telas\TelaEdicaoProduto.pas' {TelaEdicaoProduto1},
  Dbcadastroproduto in '..\CadastroProduto\Banco cadastro de produto\Dbcadastroproduto.pas' {Dbprod: TDataModule},
  conectarINI in '..\CadastroProduto\Comandos\conectarINI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TDbprod, Dbprod);
  Application.CreateForm(TCadProduto, CadProduto);
  Application.CreateForm(TTelaCadastroProduto, TelaCadastroProduto);
  Application.CreateForm(TTelaEdicaoProduto1, TelaEdicaoProduto1);
  Application.Run;
end.









