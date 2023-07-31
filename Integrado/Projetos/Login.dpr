program Login;

uses
  Vcl.Forms,
  BancoLogin in '..\TelaLogin\BancoLogin.pas' {BancoUsuario: TDataModule},
  ConexãoComOBanco in '..\TelaLogin\ConexãoComOBanco.pas' {ConexãoBancoDeDados},
  DbPrincipal in '..\ConexãoDB\DbPrincipal.pas' {DbMaster: TDataModule},
  TelaLogin in '..\TelaLogin.pas' {TelaLoginU};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBancoUsuario, BancoUsuario);
  Application.CreateForm(TConexãoBancoDeDados, ConexãoBancoDeDados);
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TTelaLoginU, TelaLoginU);
  Application.Run;
end.
