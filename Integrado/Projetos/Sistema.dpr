program Sistema;

uses
  Vcl.Forms,
  TelaLogin in '..\TelaLogin.pas' {TelaLoginU},
  DbLogin in '..\DbLogin.pas' {Login},
  Vcl.Themes,
  Vcl.Styles,
  DbPrincipal in '..\Conex�oDB\DbPrincipal.pas' {DbMaster: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TTelaLoginU, TelaLoginU);
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TDbMaster, DbMaster);
  Application.Run;
end.

