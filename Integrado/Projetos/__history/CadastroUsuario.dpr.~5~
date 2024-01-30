program CadastroUsuario;

uses
  Vcl.Forms,
  TelaCadastroUsuario in '..\TelaCadastroUsuario.pas' {Cadastro},
  DB in '..\DB.pas' {Banco},
  Vcl.Themes,
  Vcl.Styles,
  DbPrincipal in '..\ConexãoDB\DbPrincipal.pas' {DbMaster: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TDbMaster, DbMaster);
  Application.CreateForm(TCadastro, Cadastro);
  Application.CreateForm(TBanco, Banco);
  Application.Run;
end.

