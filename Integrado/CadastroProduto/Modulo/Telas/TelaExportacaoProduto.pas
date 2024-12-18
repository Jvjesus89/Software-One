unit TelaExportacaoProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TExportaProdutos = class(TForm)
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
  ExportaProdutos: TExportaProdutos;

implementation

{$R *.dfm}

uses CadProd;

procedure TExportaProdutos.Button1Click(Sender: TObject);
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

procedure TExportaProdutos.Button2Click(Sender: TObject);
var
  sLista: TStringList;
 nCampo: integer;
 cLinha : string;
 cadprod : TCadProduto;
begin
  cadprod := TCadProduto.Create(self);
  sLista := TstringList.Create;
  cadprod.Qproduto.First;
  while not cadprod.Qproduto.EOF do
  begin
    cLinha := '';
    for nCampo :=0 to cadprod.Qproduto.fields.Count-1 do
    cLinha := cLinha + cadprod.Qproduto.Fields[nCampo].DisplayText+';';
    sLista.Add(cLinha);
    cadprod.Qproduto.Next;
  end;
  self.Close;
end;

end.
