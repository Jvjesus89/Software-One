unit TelaExportaçãoDadosAreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TExportar = class(TForm)
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Exportar: TExportar;

implementation

{$R *.dfm}

uses Dbfinreceber;

procedure TExportar.Button1Click(Sender: TObject);
begin
   if (Trim(Edit1.Text).IsEmpty) then
  begin
     OpenDialog1.Execute;
     Edit1.Text := OpenDialog1.FileName;
 end
    else
 Begin
   if not fileexists (Edit1.Text) then
   begin
      OpenDialog1.Execute;
      Edit1.Text := OpenDialog1.FileName;
   end;

 End;
end;

procedure TExportar.Button2Click(Sender: TObject);
var
  sLista: TStringList;
 nCampo: integer;
 cLinha : string;
begin
  sLista := TstringList.Create;
  DbFinAreceber1.QAreceber.First;
  while not DbFinAreceber1.QAreceber.EOF do
  begin
    cLinha := '';
    for nCampo :=0 to DbFinAreceber1.QAreceber.fields.Count-1 do
    cLinha := cLinha + DbFinAreceber1.QAreceber.Fields[nCampo].DisplayText+';';
    sLista.Add(cLinha);
    DbFinAreceber1.QAreceber.Next;
  end;
  begin
  if FileExists(Edit1.Text + '.xls') then DeleteFile(Edit1.Text+ '.xls');
  sLista.SaveToFile(Edit1.Text+ '.xls');
  end;
   Exportar.close;
end;

end.
