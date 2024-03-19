program PDVNew;

uses
  Vcl.Forms,
  Pdv.view.principal in 'src\view\Pdv.view.principal.pas' {pageprincipal},
  Pdv.view.page.login in 'src\view\Pdv.view.page.login.pas' {PageLogin},
  Pdv.view.page.pagamentos in 'src\view\Pdv.view.page.pagamentos.pas' {PagePagamentos},
  Pdv.view.page.pix in 'src\view\Pdv.view.page.pix.pas' {FramePix: TFrame},
  Pdv.view.page.Dinheiro in 'src\view\Pdv.view.page.Dinheiro.pas' {FrameDinheiro: TFrame},
  Pdv.view.page.cartao in 'src\view\Pdv.view.page.cartao.pas' {FrameCartao: TFrame};

{$R *.res}

begin
  Application.Initialize;
  reportMemoryLeaksOnShutDown := true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tpageprincipal, pageprincipal);
  Application.Run;
end.
