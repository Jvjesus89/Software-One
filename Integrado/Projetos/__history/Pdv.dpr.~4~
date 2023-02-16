program Pdv;

uses
  Vcl.Forms,
  Pdv_Principal in '..\Pdv\Pdv_Principal.pas' {TelaPdv},
  DbPdv in '..\Pdv\Banco de dados\DbPdv.pas' {BancoPdv: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Produtos in '..\Pdv\Sub Consulta\Produtos.pas' {ConsultaProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTelaPdv, TelaPdv);
  Application.CreateForm(TBancoPdv, BancoPdv);
  Application.CreateForm(TConsultaProdutos, ConsultaProdutos);
  Application.Run;
end.


