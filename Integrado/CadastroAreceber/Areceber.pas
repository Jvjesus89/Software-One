unit Areceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, system.IniFiles,conectarINI;

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
    RemoverRecebimento: TButton;
    procedure BotaoNovoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BotaoExcluirClick(Sender: TObject);
    procedure ExportarDadosClick(Sender: TObject);
    procedure BotaoEditarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure InserirDataClick(Sender: TObject);
    procedure RemoverRecebimentoClick(Sender: TObject);
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
  TelaExporta��oDadosAreceber, TelaCadastroBaixaAreceber, DbPrincipal;

procedure TAreceber1.BotaoEditarClick(Sender: TObject);
begin
  EditarTitulo;
end;

procedure TAreceber1.BotaoExcluirClick(Sender: TObject);
var VerificaOrigem  : String;
VerificaBaixa  : integer;
begin
    DbFinAreceber1.Mareceber.Open;
    if Application.MessageBox(Pchar('Deseja excluir o Titulo?'), 'Confirma��o', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then
      begin;
      VerificaBaixa := (dbgrid1.Fields[9].Value);
       if VerificaBaixa = NULL then
       begin
        VerificaOrigem:=  dbgrid1.Fields[5].Value;
        if  VerificaOrigem = ''  then
        begin
        DbFinAreceber1.QEdi��oAreceber.close;
        DbFinAreceber1.QEdi��oAreceber.sql.Clear;
        DbFinAreceber1.QEdi��oAreceber.Sql.Add('Delete From areceber where idareceber = :Pidareceber');
        DbFinAreceber1.QEdi��oAreceber.ParamByname('Pidareceber').AsInteger := dbgrid1.Fields[7].Value;
        DbFinAreceber1.QEdi��oAreceber.ExecSql;
        end
        Else
        ShowMessage('Titulo Vinculado a uma nota, Verifique');
       end
       ELSE
       ShowMessage('Titulo Baixado, Verifique');
      end;

     DbFinAreceber1.Qareceber.close;
     DbFinAreceber1.Qareceber.open;

end;

procedure TAreceber1.BotaoNovoClick(Sender: TObject);
Var UltimoNumero :integer;
begin
      // Cria tabela temporario
     DbFinAreceber1.QTabelaTemp.close;
     DbFinAreceber1.QTabelaTemp.sql.clear;
     DbFinAreceber1.QTabelaTemp.sql.add('CREATE TABLE IF NOT EXISTS temp."#areceber"(idareceber integer NOT NULL DEFAULT nextval($$"Areceber_idareceber_seq"$$::regclass),idcliente integer , nmcliente character varying(100) ,idformapagamento integer,');
     DbFinAreceber1.QTabelaTemp.sql.add('nmformapagamento character varying(50),vltitulo real ,nrtitulo integer ,dtcadastro date ,dtvencimento date,idorigem integer,dtbaixa date,idcontabancaria integer)WITH (OIDS = FALSE)TABLESPACE pg_default;');
     DbFinAreceber1.QTabelaTemp.execsql ;
     DbFinAreceber1.QTempCampos.open;

     // Consulta numero ultimo titulo
     DbFinAreceber1.QConsultaUltimoTitulo.Close;
     DbFinAreceber1.QConsultaUltimoTitulo.SQL.Clear;
     DbFinAreceber1.QConsultaUltimoTitulo.SQL.add('Select MAX (nrtitulo) From areceber');
     DbFinAreceber1.QConsultaUltimoTitulo.Open;

     UltimoNumero :=  DbFinAreceber1.QConsultaUltimoTitulo.FieldByName('max').AsInteger + 1;

     // insiro os dados no banco
     DbFinAreceber1.QTabelaTemp.close;
     DbFinAreceber1.QTabelaTemp.sql.clear;
     DbFinAreceber1.QTabelaTemp.sql.add('Insert into temp."#areceber" (nrtitulo) VALUES (:PNumeroTitulo)');
     DbFinAreceber1.QTabelaTemp.ParamByName('PNumeroTitulo').AsInteger := UltimoNumero ;
     DbFinAreceber1.QTabelaTemp.ExecSql;

     DbFinAreceber1.QTempCampos.open;
     TelaCadasrroAreceber.showmodal;
end;

procedure TAreceber1.Button1Click(Sender: TObject);
begin
    if Busca.Text = '' then
    with DbFinAreceber1.QAreceber do
    begin
      close ;
      sql.Clear;
      sql.Add('Select * From areceber order by dtcadastro desc');
      open;
    end
    else
    begin
      DbFinAreceber1.QAreceber.close;
      DbFinAreceber1.QAreceber.sql.Clear;
      DbFinAreceber1.QAreceber.sql.Add('Select * From areceber Where nrtitulo =:Pnrtitulo');
      DbFinAreceber1.QAreceber.ParamByName('Pnrtitulo').AsInteger := StrToInt(Busca.text);
      DbFinAreceber1.QAreceber.open;
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

     DbFinAreceber1.QAreceber.open;
     DbFinAreceber1.QConsultaConta.open;
end;

procedure TAreceber1.InserirDataClick(Sender: TObject);
begin
     DbFinAreceber1.QTempCampos.close;
     DbFinAreceber1.QTempCampos.sql.Clear;
     DbFinAreceber1.QTempCampos.sql.Add('CREATE TABLE IF NOT EXISTS temp."#areceber"');
     DbFinAreceber1.QTempCampos.sql.Add('(idareceber integer NOT NULL DEFAULT nextval($$temp."#areceber_idareceber_seq"$$::regclass),idcliente integer,nmcliente character varying(100) COLLATE pg_catalog."default" ,idformapagamento integer,');
     DbFinAreceber1.QTempCampos.sql.Add('nmformapagamento character varying(50) COLLATE pg_catalog."default" ,vltitulo real ,nrtitulo integer ,dtcadastro date,dtvencimento date,idorigem integer,dtbaixa date,idcontabancaria integer)');
     DbFinAreceber1.QTempCampos.ExecSQl;

    DbFinAreceber1.QTempCampos.close;
     DbFinAreceber1.QTempCampos.sql.Clear;
     DbFinAreceber1.QTempCampos.sql.Add('insert into temp."#areceber"');
     DbFinAreceber1.QTempCampos.sql.Add('(nrtitulo)values (:PNrtitulo)');
     DbFinAreceber1.QTempCampos.ParamByName('PNrtitulo').AsInteger :=  DBGrid1.Fields[7].value;
     DbFinAreceber1.QTempCampos.ExecSQl;

    CadastroBaixaAreceber.ShowModal;
    DbFinAreceber1.Qareceber.edit;
    DBGrid1.Fields[7].Value := CadastroBaixaAreceber.DBEdit1.Text;
    CadastroBaixaAreceber.Edit1.text := '';
end;

procedure TAreceber1.RemoverRecebimentoClick(Sender: TObject);
begin
   DbFinAreceber1.QExcluiRecebimento.close;
   DbFinAreceber1.QExcluiRecebimento.sql.Clear;
   DbFinAreceber1.QExcluiRecebimento.sql.add('Update areceber Set idcontabancaria = NULL,dtbaixa = NULL Where idareceber = :Pidareceber');
   DbFinAreceber1.QExcluiRecebimento.ParamByName('Pidareceber').AsInteger := DBGrid1.Fields[7].value;
   DbFinAreceber1.QExcluiRecebimento.ExecSql;
   ShowMessage('Recebimento excluido');
   DbFinAreceber1.QAreceber.close;
   DbFinAreceber1.QAreceber.Open;
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
