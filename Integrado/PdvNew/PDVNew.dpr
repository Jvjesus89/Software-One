program PDVNew;

uses
  Vcl.Forms,
  Pdv.view.principal in 'src\view\Pdv.view.principal.pas' {pageprincipal},
  Pdv.view.page.login in 'src\view\Pdv.view.page.login.pas' {PageLogin},
  Pdv.view.page.pagamentos in 'src\view\Pdv.view.page.pagamentos.pas' {PagePagamentos},
  Pdv.view.page.pix in 'src\view\Pdv.view.page.pix.pas' {FramePix: TFrame},
  Pdv.view.page.Dinheiro in 'src\view\Pdv.view.page.Dinheiro.pas' {FrameDinheiro: TFrame},
  Pdv.view.page.cartao in 'src\view\Pdv.view.page.cartao.pas' {FrameCartao: TFrame},
  Pdv.view.page.IdentifcarCliente in 'src\view\Pdv.view.page.IdentifcarCliente.pas' {PageIdentificarCliente},
  Pdv.view.page.ImportarCliente in 'src\view\Pdv.view.page.ImportarCliente.pas' {PageImportarCliente},
  Pdv.view.abrirCaixa in 'src\view\Pdv.view.abrirCaixa.pas' {PageAbrirCaixa},
  Pdv.model.Caixa in 'src\model\Pdv.model.Caixa.pas',
  Pdv.view.page.fechamentocaixa in 'src\view\Pdv.view.page.fechamentocaixa.pas' {PageFecharCaixa},
  Pdv.view.componente.listatipospgfechamento in 'src\view\componente\Pdv.view.componente.listatipospgfechamento.pas' {ComponenteListaFechamentoCaixa: TFrame},
  Pdv.model.FechamentoCaixa in 'src\model\Pdv.model.FechamentoCaixa.pas',
  Pdv.model.Enum in 'src\model\Pdv.model.Enum.pas',
  Pdv.model.Dbpdv in 'src\model\db\Pdv.model.Dbpdv.pas' {DataModule1: TDataModule},
  DbPrincipal in '..\Conex�oDB\DbPrincipal.pas' {DbMaster: TDataModule},
  PdvNew.Utils in 'src\Utils\PdvNew.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  //reportMemoryLeaksOnShutDown := true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tpageprincipal, pageprincipal);
  Application.Run;
end.
