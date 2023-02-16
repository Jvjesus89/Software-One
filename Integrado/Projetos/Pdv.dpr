program Pdv;

uses
  Vcl.Forms,
  Pdv_Principal in '..\Pdv\Pdv_Principal.pas' {TelaPdv},
  DbPdv in '..\Pdv\Banco de dados\DbPdv.pas' {BancoPdv: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Produtos in '..\Pdv\Sub Consulta\Produtos.pas' {ConsultaProdutos},
  SomaValorVenda in '..\Pdv\Action\SomaValorVenda.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TBancoPdv, BancoPdv);
  Application.CreateForm(TTelaPdv, TelaPdv);
  Application.CreateForm(TConsultaProdutos, ConsultaProdutos);
  Application.Run;
end.







