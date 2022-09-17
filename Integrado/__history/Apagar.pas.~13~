unit Apagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TApagar1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BotaoNovo: TButton;
    BotaoExcluir: TButton;
    DBGrid1: TDBGrid;
    BotaoEditar: TButton;
    Button1: TButton;
    Busca: TEdit;
    ExportarDados: TButton;
    Label1: TLabel;
    procedure BotaoNovoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ExportarDadosClick(Sender: TObject);
    procedure BotaoExcluirClick(Sender: TObject);
    procedure BotaoEditarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Apagar1: TApagar1;

implementation

{$R *.dfm}

uses Dbfinapagar, TelaCadastroApagar, TelaEdicaoApagar;



procedure TApagar1.BotaoEditarClick(Sender: TObject);
begin
       DbFinApagar1.MApagar.Open;
    DbFinApagar1.MApagar.Append;
    TelaEdicaoApagar1.DBEdit7.Text := DBGrid1.Fields[0].value;
    TelaEdicaoApagar1.DBEdit3.Text := DBGrid1.Fields[1].value;
    TelaEdicaoApagar1.DBEdit6.Text := DBGrid1.Fields[2].value;
    TelaEdicaoApagar1.DBEdit5.Text := DBGrid1.Fields[3].value;
    TelaEdicaoApagar1.DBEdit1.Text := DBGrid1.Fields[4].value;
    TelaEdicaoApagar1.DBEdit9.Text := DBGrid1.Fields[5].value;
    TelaEdicaoApagar1.DBEdit2.Text := DBGrid1.Fields[6].value;
    TelaEdicaoApagar1.showmodal;
end;

procedure TApagar1.BotaoExcluirClick(Sender: TObject);
begin
   if Application.MessageBox(Pchar('Deseja excluir o Titulo?'), 'Confirmação', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then
      begin;
      DbFinApagar1.Mapagar.Delete;
      end;
   DbFinApagar1.QApagar.close;
   DbFinApagar1.QApagar.open;
end;

procedure TApagar1.BotaoNovoClick(Sender: TObject);
begin
     TelaCadasrroApagar1.showmodal;
     DbFinApagar1.Mapagar.close;
     DbFinApagar1.Mapagar.open;
end;

procedure TApagar1.Button1Click(Sender: TObject);
begin
      DbFinApagar1.Qapagar.close;
     DbFinApagar1.Qapagar.open;
   if Busca.Text = '' then
    with DbFinApagar1.QApagar do
    begin
      close ;
      sql.Clear;
      sql.Add('Select * From apagar');
      open;
    end
    else
    with DbFinApagar1.QApagar do
    begin
      close;
      sql.Clear;
      sql.Add('Select * From apagar Where nrtitulo = '+(Busca.Text));
      open;
    end;
end;

procedure TApagar1.DBGrid1DblClick(Sender: TObject);
begin
       DbFinApagar1.MApagar.Open;
    DbFinApagar1.MApagar.Append;
    TelaEdicaoApagar1.DBEdit7.Text := DBGrid1.Fields[0].value;
    TelaEdicaoApagar1.DBEdit3.Text := DBGrid1.Fields[1].value;
    TelaEdicaoApagar1.DBEdit6.Text := DBGrid1.Fields[2].value;
    TelaEdicaoApagar1.DBEdit5.Text := DBGrid1.Fields[3].value;
    TelaEdicaoApagar1.DBEdit1.Text := DBGrid1.Fields[4].value;
    TelaEdicaoApagar1.DBEdit9.Text := DBGrid1.Fields[5].value;
    TelaEdicaoApagar1.DBEdit2.Text := DBGrid1.Fields[6].value;
    TelaEdicaoApagar1.showmodal;
end;

procedure TApagar1.ExportarDadosClick(Sender: TObject);
var
  sLista: TStringList;
 nCampo: integer;
 cLinha : string;
begin
  sLista := TstringList.Create;
  DbFinApagar1.Qapagar1.First;
  while not DbFinApagar1.Qapagar1.EOF do
  begin
    cLinha := '';
    for nCampo :=0 to DbFinApagar1.Qapagar1.fields.Count-1 do
    cLinha := cLinha + DbFinApagar1.Qapagar1.Fields[nCampo].DisplayText+';';
    sLista.Add(cLinha);
    DbFinApagar1.Qapagar1.Next;
  end;
  if FileExists('C:\Sistema\DadosExportados\apagar.csv') then DeleteFile('C:\Sistema\DadosExportados\apagar.csv');
  sLista.SaveToFile('C:\Sistema\DadosExportados\apagar.csv');

end;

end.
