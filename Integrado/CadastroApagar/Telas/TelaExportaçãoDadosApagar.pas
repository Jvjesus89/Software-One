unit TelaExportaçãoDadosApagar;

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

uses Dbfinapagar;

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
  DbFinApagar1.Qapagar.First;
  while not DbFinApagar1.Qapagar.EOF do
  begin
    cLinha := '';
    for nCampo :=0 to DbFinApagar1.Qapagar.fields.Count-1 do
    cLinha := cLinha + DbFinApagar1.Qapagar.Fields[nCampo].DisplayText+';';
    sLista.Add(cLinha);
    DbFinApagar1.Qapagar.Next;
  end;
  if (Trim(Edit1.Text).IsEmpty) then
  begin
    ShowMessage('Selecione o diretorio para salvar o arquivo');
  end else
  begin
  if FileExists(Edit1.Text + '.xls') then DeleteFile(Edit1.Text+ '.xls');
  sLista.SaveToFile(Edit1.Text+ '.xls');
  Exportar.close;
  end;
end;
end.
