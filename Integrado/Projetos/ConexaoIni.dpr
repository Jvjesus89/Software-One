program ConexaoIni;

uses
  Vcl.Forms,
  TelaConexaoIni in '..\Conex�oIni\TelaConexaoIni.pas' {ConectarINI},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TConectarINI, ConectarINI);
  Application.Run;
end.

