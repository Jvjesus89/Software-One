program Sistema;

uses
  Vcl.Forms,
  TelaLogin in '..\TelaLogin.pas' {TelaLoginU},
  Vcl.Themes,
  Vcl.Styles,
  DbPrincipal in '..\Conex�oDB\DbPrincipal.pas' {DbMaster: TDataModule},
  BancoLogin in '..\TelaLogin\BancoLogin.pas' {BancoUsuario: TDataModule},
  EditarConexao in '..\TelaLogin\EditarConexao.pas' {AlterarDB};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TTelaLoginU, TelaLoginU);
  Application.CreateForm(TBancoUsuario, BancoUsuario);
  Application.CreateForm(TAlterarDB, AlterarDB);
  Application.Run;
end.


















