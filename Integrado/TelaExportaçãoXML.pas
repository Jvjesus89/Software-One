unit TelaExporta��oXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TExportarXML = class(TForm)
    Label1: TLabel;
    EditXml: TEdit;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExportarXML: TExportarXML;

implementation

{$R *.dfm}

uses DBvendas;

procedure TExportarXML.Button1Click(Sender: TObject);
begin
  if (Trim(EditXml.Text).IsEmpty) then
  begin
     OpenDialog1.Execute;
     EditXml.Text := OpenDialog1.FileName;
 end
    else
 Begin
   if not fileexists (EditXml.Text) then
   begin
      OpenDialog1.Execute;
      EditXml.Text := OpenDialog1.FileName;
   end;

 End ;


end;

procedure TExportarXML.Button2Click(Sender: TObject);
begin
   DbVendas1.Mxml.SaveToFile(EditXml.text + '.xml');
end;

end.
