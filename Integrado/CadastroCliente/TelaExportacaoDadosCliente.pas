unit TelaExportacaoDadosCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DbCliente;

type
  TTelaExportaCliente = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaExportaCliente: TTelaExportaCliente;

implementation

{$R *.dfm}

procedure TTelaExportaCliente.Button1Click(Sender: TObject);
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

procedure TTelaExportaCliente.Button2Click(Sender: TObject);
var
  sLista: TStringList;
 nCampo: integer;
 cLinha : string;
begin
  sLista := TstringList.Create;
  DbClient.Qcliente.First;
  while not DbClient.Qcliente.EOF do
  begin
    cLinha := '';
    for nCampo :=0 to DbClient.Qcliente.fields.Count-1 do
    cLinha := cLinha + DbClient.Qcliente.Fields[nCampo].DisplayText+';';
    sLista.Add(cLinha);
    DbClient.Qcliente.Next;
  end;
  if FileExists(Edit1.Text + '.xls') then DeleteFile(Edit1.Text+ '.xls');
  sLista.SaveToFile(Edit1.Text+ '.xls');
  self.Close;
end;

end.
