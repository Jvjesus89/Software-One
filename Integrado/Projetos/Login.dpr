program Login;

uses
  Vcl.Forms,
  BancoLogin in '..\TelaLogin\BancoLogin.pas' {BancoUsuario: TDataModule},
  Conex�oComOBanco in '..\TelaLogin\Conex�oComOBanco.pas' {Conex�oBancoDeDados},
  DbPrincipal in '..\Conex�oDB\DbPrincipal.pas' {DbMaster: TDataModule},
  TelaLogin in '..\TelaLogin.pas' {TelaLoginU};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBancoUsuario, BancoUsuario);
  Application.CreateForm(TConex�oBancoDeDados, Conex�oBancoDeDados);
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TTelaLoginU, TelaLoginU);
  Application.Run;
end.
