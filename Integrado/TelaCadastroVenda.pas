unit TelaCadastroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TTelaCadastroVendas = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    Excluirproduto: TBitBtn;
    Button1: TButton;
    BuscaCliente: TBitBtn;
    Label1: TLabel;
    Valor: TDBEdit;
    Adicionar: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BuscaClienteClick(Sender: TObject);
    procedure AdicionarClick(Sender: TObject);
    procedure ExcluirprodutoClick(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastroVendas: TTelaCadastroVendas;

implementation

{$R *.dfm}

uses DBvendas, TelaConsultaClienteVenda, TelaConsultaProdutoVenda,
  CadastroProdutoVenda;

procedure TTelaCadastroVendas.AdicionarClick(Sender: TObject);
begin
    DbVendas1.MTempItem.Open;
    DbVendas1.MTempItem.append;
    TelaCadastroProdutoVenda.showmodal;

with DbVendas1.Qitemvenda do
    begin
      close;
      sql.Clear;
      sql.Add('CREATE TABLE IF NOT EXISTS temp.itemvenda');
      sql.Add('iditemvenda integer NOT NULL DEFAULT nextval(''temp."#itemvenda_iditemvenda_seq"''::regclass),nmitemvenda character varying(50) NOT NULL, vlunitario real NOT NULL, vlitem real NOT NULL, idproduto integer NOT NULL, qtitem integer)');
      Open;
    end;
end;

procedure TTelaCadastroVendas.BuscaClienteClick(Sender: TObject);
begin
    TelaConsultaCliente.showmodal;
end;

procedure TTelaCadastroVendas.Button1Click(Sender: TObject);
var
Vidvenda : Integer;

begin
   DbVendas1.QEntradaVenda.Open;
   //Inserir Dados a tabela Vendas
   DbVendas1.QEntradaVenda.Append;
    with DbVendas1.QEntradaVenda do
    begin
      close;
      sql.Clear;
      sql.Add('insert into vendas(idcliente, vlvenda, dtcadastro, dtvenda,nmformapagamento, nmcliente, nrdocumento)');
      sql.add('VALUES (:Pidcliente , :Pvlvenda, :Pdtcadastro ,:Pdtvenda ,:Pnmformapagamento, :Pnmcliente, :Pnrdocumento)');
      ParamByName('Pidcliente').AsInteger :=  StrToInt(DBEdit2.Text);
      //ParamByName('Pidformapagamento').AsInteger :=  StrToInt(DBEdit3.Text);
      ParamByName('Pvlvenda').AsFloat :=  StrToFloat(Valor.Text);
      ParamByName('Pdtcadastro').AsDate :=  StrToDate (DBEdit5.Text);
      ParamByName('Pdtvenda').AsDate :=  DateTimePicker1.Date;
      ParamByName('Pnmformapagamento').AsString :=  DBEdit7.Text;
      ParamByName('Pnmcliente').AsString :=  DBEdit8.Text;
      ParamByName('Pnrdocumento').AsInteger :=  StrToInt(DBEdit10.Text);
      ExecSQL;
    end;


    //Consultar ultimo Idvenda
    DbVendas1.QIdVenda.close;
    DbVendas1.QIdVenda.open;
    Vidvenda := StrToInt (DBEdit1.Text);



    //Inserir Dados tabela Areceber
    with DbVendas1.QEntradaTitulo do
    begin
      close;
      sql.Clear;
      sql.add('INSERT INTO areceber(idcliente, nmcliente, idformapagamento, nmformapagamento, vltitulo, nrtitulo, dtcadastro, dtvencimento, idorigem)');
      sql.add('VALUES (:Pidcliente, :Pnmcliente, :Pidformapagamento, :Pnmformapagemento, :Pvltitulo, :Pnrtitulo, :Pdtcadastro, :Pdtvencimento, :Pidorigem)');
      ParamByName('Pidcliente').AsInteger :=  StrToInt(DBEdit2.Text);
      ParamByName('Pnmcliente').AsString :=  DBEdit8.Text;
      ParamByName('Pidformapagamento').AsInteger :=  StrToInt(DBEdit3.Text);
      ParamByName('Pnmformapagemento').AsString :=  DBEdit7.Text;
      ParamByName('Pvltitulo').AsFloat :=  StrToFloat(Valor.Text);
      ParamByName('Pnrtitulo').AsInteger :=  StrToInt(DBEdit10.Text);
      ParamByName('Pdtcadastro').AsDate :=  StrToDate (DBEdit5.Text);
      ParamByName('Pdtvencimento').AsDate :=  DateTimePicker1.Date;
      ParamByName('Pidorigem').Asinteger :=  Vidvenda;
      ExecSQL;
    end;

    //Inserir o idvenda na tabela temporaria

   DbVendas1.QEntradaVendaItem.Open;
   DbVendas1.Qitemvenda.open;
     with DbVendas1.QEntradaVendaItem do
    begin
      close;
      sql.Clear;
      sql.Add('update temp.itemvenda Set idvenda=' + DBEdit1.text);
      ExecSQL;
    end;

    // replicando da tabela temporaria para a vendasitem
   with DbVendas1.QEntradaVendaItem do
    begin
      close;
      sql.Clear;
      sql.Add('INSERT INTO vendasitem (idvenda,idproduto, nmproduto, vlunitario, qtvendido, vlitem)SELECT idvenda,idproduto, nmitemvenda, vlunitario, qtitem, vlitem FROM    temp.itemvenda');
      ExecSQL;
    end;

    //  Exclus�o das vendas da tabela temporaria
     with DbVendas1.TempItemExclusao do
     begin
      close;
      sql.Clear;
      sql.Add('delete from temp.itemvenda');
      ExecSQL;
     end;

    ShowMessage('Venda realizada com sucesso');
    TelaCadastroVendas.Close;

    //Ativar Query QVendas
    DbVendas1.QEntradaVenda.sql.clear;
    DbVendas1.QEntradaVenda.sql.add('Select * From Vendas');
    DbVendas1.QEntradaVenda.Open;;

end;

procedure TTelaCadastroVendas.DBGrid1ColEnter(Sender: TObject);
begin
       begin
    DbVendas1.Qitemvenda.close;
    DbVendas1.Qitemvenda.sql.Clear;
    DbVendas1.Qitemvenda.sql.Add('Select SUM(vlitem) from temp.itemvenda');
    DbVendas1.Qitemvenda.open;
    Valor.text := inttostr (DbVendas1.Qitemvenda.RecordCount);
    end;
end;


procedure TTelaCadastroVendas.DBGrid1Exit(Sender: TObject);
begin

//Somatorio valor da venda
     begin
    DbVendas1.Qitemvenda.close;
    DbVendas1.Qitemvenda.sql.Clear;
    DbVendas1.Qitemvenda.sql.Add('Select SUM(vlitem) from temp.itemvenda');
    DbVendas1.Qitemvenda.open;
    Valor.text := inttostr (DbVendas1.Qitemvenda.RecordCount);
    end;
end;

procedure TTelaCadastroVendas.ExcluirprodutoClick(Sender: TObject);
begin
   DbVendas1.MTempItem.open;
   DbVendas1.MTempItem.Delete;
end;

procedure TTelaCadastroVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DbVendas1.Mvendas.Cancel;
  DbVendas1.Mvendasitem.Cancel;;
  DbVendas1.MTempItem.Cancel;

    //Ativar Query QVendas
  DbVendas1.QEntradaVenda.sql.clear;
  DbVendas1.QEntradaVenda.sql.add('Select * From Vendas');
  DbVendas1.QEntradaVenda.Open;;


end;

procedure TTelaCadastroVendas.FormShow(Sender: TObject);
begin
     DbVendas1.Mvendas.Append;
     DbVendas1.MvendasItem.Append;
     DbVendas1.Mvendas.FieldByName('dtcadastro').Value := now;

end;

end.
