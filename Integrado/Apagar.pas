unit Apagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations;

type
  TApagar1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BotaoNovo: TButton;
    BotaoExcluir: TButton;
    BotaoEditar: TButton;
    Button1: TButton;
    Busca: TEdit;
    ExportarDadosApagar: TButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    procedure BotaoNovoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BotaoExcluirClick(Sender: TObject);
    procedure BotaoEditarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ExportarDadosApagarClick(Sender: TObject);
  private
    procedure AtualizarGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Apagar1: TApagar1;

implementation

{$R *.dfm}

uses Dbfinapagar, TelaCadastroApagar, TelaEdicaoApagar,
  TelaExportaçãoDadosApagar;



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
    TelaEdicaoApagar1.DBEdit9.Text := DBGrid1.Fields[7].value;
    TelaEdicaoApagar1.showmodal;
end;

procedure TApagar1.BotaoExcluirClick(Sender: TObject);
begin

   if Application.MessageBox(Pchar('Deseja excluir o Titulo?'), 'Confirmação', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then
      begin;
      DbFinApagar1.Qapagar1.close;
      DbFinApagar1.Qapagar1.sql.Clear;
      DbFinApagar1.Qapagar1.sql.Add('Delete From apagar Where idapagar = :Pidapagar');
      DbFinApagar1.Qapagar1.ParamByName('Pidapagar').AsInteger := DbGrid1.Fields[7].Value;
      DbFinApagar1.Qapagar1.ExecSql;
      end;
  AtualizarGrid;
end;

procedure TApagar1.BotaoNovoClick(Sender: TObject);
begin
     TelaCadasrroApagar1.showmodal;
     AtualizarGrid;
end;

procedure TApagar1.Button1Click(Sender: TObject);
begin
     AtualizarGrid;
   if (Trim(Busca.text).IsEmpty) then
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
    TelaEdicaoApagar1.DBEdit7.Text := DBGrid1.Fields[0].value;
    TelaEdicaoApagar1.DBEdit3.Text := DBGrid1.Fields[1].value;
    TelaEdicaoApagar1.DBEdit6.Text := DBGrid1.Fields[2].value;
    TelaEdicaoApagar1.DBEdit5.Text := DBGrid1.Fields[3].value;
    TelaEdicaoApagar1.DBEdit1.Text := DBGrid1.Fields[4].value;
    TelaEdicaoApagar1.DBEdit9.Text := DBGrid1.Fields[5].value;
    TelaEdicaoApagar1.DBEdit2.Text := DBGrid1.Fields[6].value;
    TelaEdicaoApagar1.DBEdit9.Text := DBGrid1.Fields[7].value;
    TelaEdicaoApagar1.showmodal;
end;

procedure TApagar1.ExportarDadosApagarClick(Sender: TObject);
begin
  Exportar.showmodal;
end;

procedure TApagar1.AtualizarGrid;
begin
  DbFinApagar1.QApagar.close;
  DbFinApagar1.QApagar.open;
end;


end.
