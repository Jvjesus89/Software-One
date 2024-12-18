unit Apagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,conectarINI;

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
    procedure ExportarDadosApagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  DbFinApagar1.QTabelaTempCampo.close;
  DbFinApagar1.QTabelaTempCampo.sql.Clear;
  DbFinApagar1.QTabelaTempCampo.sql.Add('Select * From apagar Where idapagar = :Pidapagar');
  DbFinApagar1.QTabelaTempCampo.ParamByName('Pidapagar').AsInteger := dbgrid1.fields[5].value;
  DbFinApagar1.QTabelaTempCampo.Open;
  TelaEdicaoApagar1.showmodal;
end;

procedure TApagar1.BotaoExcluirClick(Sender: TObject);
begin

   if Application.MessageBox(Pchar('Deseja excluir o Titulo?'), 'Confirmação', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then
      begin;
      DbFinApagar1.QExcluiTitulo.close;
      DbFinApagar1.QExcluiTitulo.sql.Clear;
      DbFinApagar1.QExcluiTitulo.sql.Add('Delete From apagar Where idapagar = :Pidapagar');
      DbFinApagar1.QExcluiTitulo.ParamByName('Pidapagar').AsInteger := DbGrid1.Fields[5].Value;
      DbFinApagar1.QExcluiTitulo.ExecSql;
      end;
  AtualizarGrid;
end;

procedure TApagar1.BotaoNovoClick(Sender: TObject);
var UltimoNumero :integer;
begin
     // Cria tabela temporario
     DbFinApagar1.QTabelaTemp.close;
     DbFinApagar1.QTabelaTemp.sql.clear;
     DbFinApagar1.QTabelaTemp.sql.add('CREATE TABLE IF NOT EXISTS temp."#apagar"(idapagar integer NOT NULL DEFAULT nextval($$"apagar_idapagar_seq"$$::regclass),idcliente integer ,nmcliente character varying(100),idformapagamento integer,nmformapagamento character varying(50) ,');
     DbFinApagar1.QTabelaTemp.sql.add('vltitulo real ,nrtitulo integer ,dtcadastro date,dtvencimento date ,dtbaixa date,idcontabancaria integer)WITH (OIDS = FALSE)TABLESPACE pg_default;');
     DbFinApagar1.QTabelaTemp.execsql ;

     // Consulto ultimo titulo
     DbFinApagar1.QConsultaUltimoTitulo.Close;
     DbFinApagar1.QConsultaUltimoTitulo.SQL.Clear;
     DbFinApagar1.QConsultaUltimoTitulo.SQL.add('Select MAX (nrtitulo) From apagar');
     DbFinApagar1.QConsultaUltimoTitulo.Open;

     UltimoNumero :=  DbFinApagar1.QConsultaUltimoTitulo.FieldByName('max').AsInteger + 1;

     // insiro os dados no banco
     DbFinApagar1.QTabelaTemp.close;
     DbFinApagar1.QTabelaTemp.sql.clear;
     DbFinApagar1.QTabelaTemp.sql.add('Insert into temp."#apagar" (nrtitulo) VALUES (:PNumeroTitulo)');
     DbFinApagar1.QTabelaTemp.ParamByName('PNumeroTitulo').AsInteger := UltimoNumero ;
     DbFinApagar1.QTabelaTemp.ExecSql;

     // Adiciona o numero do titulo corretamente
     DbFinApagar1.QTabelaTempCampo.Close;
     DbFinApagar1.QTabelaTempCampo.sql.Clear;
     DbFinApagar1.QTabelaTempCampo.sql.Add('Select * From Temp."#apagar"');
     DbFinApagar1.QTabelaTempCampo.open;

     TelaCadasrroApagar1.showmodal;
end;

procedure TApagar1.Button1Click(Sender: TObject);
begin
     AtualizarGrid;
   if (Trim(Busca.text).IsEmpty) then
    begin
      DbFinApagar1.QApagar.close ;
      DbFinApagar1.QApagar.sql.Clear;
      DbFinApagar1.QApagar.sql.Add('Select * From apagar');
      DbFinApagar1.QApagar.open;
    end
    else
    begin
      DbFinApagar1.QApagar.close;
      DbFinApagar1.QApagar.sql.Clear;
      DbFinApagar1.QApagar.sql.Add('Select * From apagar Where nrtitulo = '+(Busca.Text));
      DbFinApagar1.QApagar.open;
    end;
end;

procedure TApagar1.ExportarDadosApagarClick(Sender: TObject);
begin
  Exportar.showmodal;
end;

procedure TApagar1.FormShow(Sender: TObject);
var
ConectarIni : TconectarINI;
begin

   ConectarIni := TconectarINI.Create;
   try
   ConectarIni.DiretorioPadrao := GetCurrentDir;
   ConectarIni.consultarConexaoBanco;
   finally
       ConectarIni.Free;
   end;
  DbFinApagar1.QApagar.open;
end;

procedure TApagar1.AtualizarGrid;
begin
  DbFinApagar1.QApagar.close;
  DbFinApagar1.QApagar.open;
end;


end.
