unit Areceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TAreceber1 = class(TForm)
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
    InserirData: TButton;
    procedure BotaoNovoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BotaoExcluirClick(Sender: TObject);
    procedure ExportarDadosClick(Sender: TObject);
    procedure BotaoEditarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure InserirDataClick(Sender: TObject);
  private
    procedure EditarTitulo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Areceber1: TAreceber1;

implementation

{$R *.dfm}

uses Dbfinreceber, TelaCadastroAreceber, TelaEdicaoAreceber,
  TelaExporta��oDadosAreceber, TelaCadastroBaixaAreceber;

procedure TAreceber1.BotaoEditarClick(Sender: TObject);
begin
  EditarTitulo;
end;

procedure TAreceber1.BotaoExcluirClick(Sender: TObject);
begin
    DbFinAreceber1.Mareceber.Open;
    if Application.MessageBox(Pchar('Deseja excluir o Titulo?'), 'Confirma��o', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then
      begin;
      DbFinAreceber1.QEdi��oAreceber.close;
      DbFinAreceber1.QEdi��oAreceber.sql.Clear;
      DbFinAreceber1.QEdi��oAreceber.Sql.Add('Delete From areceber where idareceber = :Pidareceber');
      DbFinAreceber1.QEdi��oAreceber.ParamByname('Pidareceber').AsInteger := dbgrid1.Fields[7].Value;
      DbFinAreceber1.QEdi��oAreceber.ExecSql;
      end;

     DbFinAreceber1.Qareceber.close;
     DbFinAreceber1.Qareceber.open;

end;

procedure TAreceber1.BotaoNovoClick(Sender: TObject);
begin
    DbFinAreceber1.Mareceber.open;
    TelaCadasrroAreceber1.showmodal;

end;

procedure TAreceber1.Button1Click(Sender: TObject);
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

procedure TAreceber1.DBGrid1DblClick(Sender: TObject);
begin
     EditarTitulo;
end;

procedure TAreceber1.ExportarDadosClick(Sender: TObject);
begin
     Exportar.showmodal;
end;

procedure TAreceber1.FormShow(Sender: TObject);
begin
     DbFinAreceber1.QAreceber.open;
end;

procedure TAreceber1.InserirDataClick(Sender: TObject);
begin
    DbFinAreceber1.MAreceber.open;
    CadastroBaixaAreceber.ShowModal;
    DbFinAreceber1.Qareceber.edit;
    DBGrid1.Fields[7].Value := CadastroBaixaAreceber.DBEdit1.Text;
    CadastroBaixaAreceber.Edit1.text := '';
end;

procedure TAreceber1.EditarTitulo;
begin
  DbFinAreceber1.Qedi��oTituloAreceber.close;
  DbFinAreceber1.Qedi��oTituloAreceber.sql.Clear;
  DbFinAreceber1.Qedi��oTituloAreceber.sql.Add('Select * From areceber Where idareceber = :Pidareceber');
  DbFinAreceber1.Qedi��oTituloAreceber.ParamByName('Pidareceber').AsInteger := dbgrid1.fields[7].value;
  DbFinAreceber1.Qedi��oTituloAreceber.Open;
  TelaEdicaoAreceber1.showmodal;
end;

end.
