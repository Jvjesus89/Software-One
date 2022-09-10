unit Areceber;

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
    procedure FormShow(Sender: TObject);
    procedure BotaoExcluirClick(Sender: TObject);
    procedure ExportarDadosClick(Sender: TObject);
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

uses Dbfinreceber, TelaCadastroAreceber, TelaEdicaoAreceber;

procedure TApagar1.BotaoEditarClick(Sender: TObject);
begin
    DbFinAreceber1.MAreceber.Open;
    DbFinAreceber1.MAreceber.Append;
    TelaEdicaoAreceber1.DBEdit7.Text := DBGrid1.Fields[0].value;
    TelaEdicaoAreceber1.DBEdit3.Text := DBGrid1.Fields[1].value;
    TelaEdicaoAreceber1.DBEdit6.Text := DBGrid1.Fields[2].value;
    TelaEdicaoAreceber1.DBEdit5.Text := DBGrid1.Fields[3].value;
    TelaEdicaoAreceber1.DBEdit1.Text := DBGrid1.Fields[4].value;
    TelaEdicaoAreceber1.DBEdit2.Text := DBGrid1.Fields[6].value;
    TelaEdicaoAreceber1.showmodal;
end;

procedure TApagar1.BotaoExcluirClick(Sender: TObject);
begin
    if Application.MessageBox(Pchar('Deseja excluir o Titulo?'), 'Confirmação', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then
      begin;
      DbFinAreceber1.Mareceber.Delete;
      end;
       DbFinAreceber1.Qareceber.close;
     DbFinAreceber1.Qareceber.open;

end;

procedure TApagar1.BotaoNovoClick(Sender: TObject);
begin
     TelaCadasrroAreceber1.showmodal;
     DbFinAreceber1.Mareceber.open;
end;

procedure TApagar1.Button1Click(Sender: TObject);
begin
    if Busca.Text = '' then
    with DbFinAreceber1.QAreceber do
    begin
      close ;
      sql.Clear;
      sql.Add('Select * From areceber');
      open;
    end
    else
    with DbFinAreceber1.QAreceber do
    begin
      close;
      sql.Clear;
      sql.Add('Select * From areceber Where nrtitulo = '+(Busca.Text));
      open;
    end;
end;

procedure TApagar1.DBGrid1DblClick(Sender: TObject);
begin
    DbFinAreceber1.MAreceber.Open;
    DbFinAreceber1.MAreceber.Append;
    TelaEdicaoAreceber1.DBEdit7.Text := DBGrid1.Fields[0].value;
    TelaEdicaoAreceber1.DBEdit3.Text := DBGrid1.Fields[1].value;
    TelaEdicaoAreceber1.DBEdit6.Text := DBGrid1.Fields[2].value;
    TelaEdicaoAreceber1.DBEdit5.Text := DBGrid1.Fields[3].value;
    TelaEdicaoAreceber1.DBEdit1.Text := DBGrid1.Fields[4].value;
    TelaEdicaoAreceber1.DBEdit2.Text := DBGrid1.Fields[6].value;
    TelaEdicaoAreceber1.DBEdit9.Text := DBGrid1.Fields[7].value;
    TelaEdicaoAreceber1.showmodal;
end;

procedure TApagar1.ExportarDadosClick(Sender: TObject);
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
  if FileExists('C:\Sistema\DadosExportados\areceber.csv') then DeleteFile('C:\Sistema\DadosExportados\areceber.csv');
  sLista.SaveToFile('C:\Sistema\DadosExportados\areceber.csv');

end;

procedure TApagar1.FormShow(Sender: TObject);
begin
     DbFinAreceber1.QAreceber.open;
end;

end.
