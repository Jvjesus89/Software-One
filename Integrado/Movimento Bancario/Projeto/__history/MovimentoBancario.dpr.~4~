program MovimentoBancario;

uses
  Vcl.Forms,
  TelaMovimentoBancario in '..\TelaMovimentoBancario.pas' {ConsultaMovimentoBancario},
  DbMovimentoBancario in '..\Banco De Dados\DbMovimentoBancario.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(TConsultaMovimentoBancario, ConsultaMovimentoBancario);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
