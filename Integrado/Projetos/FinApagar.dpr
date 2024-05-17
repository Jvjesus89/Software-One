program FinApagar;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  DbPrincipal in '..\ConexãoDB\DbPrincipal.pas' {DbMaster: TDataModule},
  TelaCadastroApagar in '..\CadastroApagar\Telas\TelaCadastroApagar.pas' {TelaCadasrroApagar1},
  TelaEdicaoApagar in '..\CadastroApagar\Telas\TelaEdicaoApagar.pas' {TelaEdicaoApagar1},
  TelaExportaçãoDadosApagar in '..\CadastroApagar\Telas\TelaExportaçãoDadosApagar.pas' {Exportar},
  Apagar in '..\CadastroApagar\Apagar.pas' {Apagar1},
  ConsultaFormaPagamentoCadastro in '..\CadastroApagar\Telas\Consulta\ConsultaFormaPagamentoCadastro.pas' {ConsultaFormaPagamento},
  TelaConsultaClienteApagar in '..\CadastroApagar\Telas\Consulta\TelaConsultaClienteApagar.pas' {TelaConsultaCliente1},
  ConsultaFormaPagamentoCadastroEdit in '..\CadastroApagar\Telas\Consulta\ConsultaFormaPagamentoCadastroEdit.pas' {ConsultaFormaPagamentoEdit},
  TelaConsultaClienteApagarEdit in '..\CadastroApagar\Telas\Consulta\TelaConsultaClienteApagarEdit.pas' {ConsultaClienteEdit},
  conectarINI in '..\CadastroApagar\Comandos\conectarINI.pas',
  Dbfinapagar in '..\CadastroApagar\BancoApagar\Dbfinapagar.pas' {DbFinApagar1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TApagar1, Apagar1);
  Application.CreateForm(TDbFinApagar1, DbFinApagar1);
  Application.CreateForm(TTelaCadasrroApagar1, TelaCadasrroApagar1);
  Application.CreateForm(TTelaEdicaoApagar1, TelaEdicaoApagar1);
  Application.CreateForm(TExportar, Exportar);
  Application.CreateForm(TConsultaFormaPagamento, ConsultaFormaPagamento);
  Application.CreateForm(TTelaConsultaCliente1, TelaConsultaCliente1);
  Application.CreateForm(TConsultaFormaPagamentoEdit, ConsultaFormaPagamentoEdit);
  Application.CreateForm(TConsultaClienteEdit, ConsultaClienteEdit);
  Application.Run;
end.





