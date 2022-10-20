program CadastroUsuario;

uses
  Vcl.Forms,
  TelaCadastroUsuario in '..\TelaCadastroUsuario.pas' {Cadastro},
  DB in '..\DB.pas' {Banco},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TCadastro, Cadastro);
  Application.CreateForm(TBanco, Banco);
  Application.Run;
end.
