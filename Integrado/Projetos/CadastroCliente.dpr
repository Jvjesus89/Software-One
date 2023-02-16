program CadastroCliente;

uses
  Vcl.Forms,
  CadastroCliente1 in '..\CadastroCliente1.pas' {ConsultaCliente},
  DbCliente in '..\DbCliente.pas' {DbClient},
  TelaCadastoCliente in '..\TelaCadastoCliente.pas' {TelaCadastroCliente1},
  Vcl.Themes,
  Vcl.Styles,
  TelaEdicaoCliente in '..\TelaEdicaoCliente.pas' {TelaEdicaoCliente1},
  DbPrincipal in '..\Conex�oDB\DbPrincipal.pas' {DbMaster: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TConsultaCliente, ConsultaCliente);
  Application.CreateForm(TDbClient, DbClient);
  Application.CreateForm(TTelaCadastroCliente1, TelaCadastroCliente1);
  Application.CreateForm(TTelaEdicaoCliente1, TelaEdicaoCliente1);
  Application.Run;
end.







