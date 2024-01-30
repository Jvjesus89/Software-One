program ConexaoIni;

uses
  Vcl.Forms,
  TelaConexaoIni in '..\ConexãoIni\TelaConexaoIni.pas' {Form3},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

