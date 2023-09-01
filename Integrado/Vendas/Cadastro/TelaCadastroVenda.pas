unit TelaCadastroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.Buttons;

type
  TTelaCadastroVendas = class(TForm)
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
    Adicionar: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    ToolBar2: TToolBar;
    AdicionarTitutlo: TBitBtn;
    ExxcluirAreceber: TBitBtn;
    Valor: TDBEdit;
    Label1: TLabel;
    procedure BuscaClienteClick(Sender: TObject);
    procedure AdicionarClick(Sender: TObject);
    procedure ExcluirprodutoClick(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure AdicionarTitutloClick(Sender: TObject);
    procedure ExxcluirAreceberClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdicionarExit(Sender: TObject);
  private
    procedure ValorSomatorioItem;
    procedure AtivarQvendas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastroVendas: TTelaCadastroVendas;

implementation

{$R *.dfm}

uses DBvendas, TelaConsultaClienteVenda, TelaConsultaProdutoVenda,
  CadastroProdutoVenda, TelaConsultaFormaPagamentoVendas,
  TelaCadastroFinanceiro;

procedure TTelaCadastroVendas.AdicionarClick(Sender: TObject);
begin
     // cria��o tabela temporaria para os campos da tabela item venda
     DbVendas1.QCriaTabelaTemp.close;
     DbVendas1.QCriaTabelaTemp.sql.Clear;
     DbVendas1.QCriaTabelaTemp.sql.Add('CREATE TABLE IF NOT EXISTS temp."#vendasItensCampos"');
     DbVendas1.QCriaTabelaTemp.sql.Add('("Idvendaitem" integer NOT NULL DEFAULT nextval($$temp."#vendasItensCampos_Idvendaitem_seq"$$::regclass),vlunitario real, vlitem real,idproduto integer,qtitem integer,idvenda integer)');
     DbVendas1.QCriaTabelaTemp.ExecSQl;


    TelaCadastroProdutoVenda.showmodal;
     end;

procedure TTelaCadastroVendas.BuscaClienteClick(Sender: TObject);
begin
    DbVendas1.Qcliente.open;
    TelaConsultaCliente.showmodal;
end;

procedure TTelaCadastroVendas.Button1Click(Sender: TObject);
var
Vidvenda, idcliente : Integer;
Vnmforma : string;

begin
   DbVendas1.QEntradaVenda.Open;
   ValorSomatorioItem;


    //Consultar idcliente
     DbVendas1.QConsultaTabelaTemp.close;
     DbVendas1.QConsultaTabelaTemp.sql.clear;
     DbVendas1.QConsultaTabelaTemp.sql.add('Select idcliente from temp."#vendas" ');
     DbVendas1.QConsultaTabelaTemp.open;
     idcliente := DbVendas1.QConsultaTabelaTemp.FieldbyName('idcliente').AsInteger  ;



   //Inserir Dados a tabela Vendas

      DbVendas1.QEntradaVenda.close;
      DbVendas1.QEntradaVenda.sql.Clear;
      DbVendas1.QEntradaVenda.sql.Add('insert into vendas( idcliente,vlvenda, dtcadastro, dtvenda, nrdocumento)');
      DbVendas1.QEntradaVenda.sql.add('VALUES ( :Pidcliente, :Pvlvenda, :Pdtcadastro ,:Pdtvenda,:Pnrdocumento)');
      DbVendas1.QEntradaVenda.ParamByName('Pidcliente').AsInteger :=  (idcliente);
      DbVendas1.QEntradaVenda.ParamByName('Pvlvenda').AsFloat :=  StrToFloat(Valor.Text);
      DbVendas1.QEntradaVenda.ParamByName('Pdtcadastro').AsDate :=  now;
      DbVendas1.QEntradaVenda.ParamByName('Pdtvenda').AsDate :=  DateTimePicker1.Date;
      DbVendas1.QEntradaVenda.ParamByName('Pnrdocumento').AsInteger :=  StrToInt(DBEdit10.Text);
      DbVendas1.QEntradaVenda.ExecSQL;

     //Consultar ultimo Idvenda
     DbVendas1.QConsultaTabelaTemp.close;
     DbVendas1.QConsultaTabelaTemp.sql.clear;
     DbVendas1.QConsultaTabelaTemp.sql.add('Select max (idvenda) as idvenda  from vendas');
     DbVendas1.QConsultaTabelaTemp.open;
     Vidvenda := DbVendas1.QConsultaTabelaTemp.FieldbyName('idvenda').AsInteger  ;

    //Editar Dados da tabela Temp.Areceber

      DbVendas1.QEntradaTitulo.close;
      DbVendas1.QEntradaTitulo.sql.Clear;
      DbVendas1.QEntradaTitulo.sql.add('Update temp."#areceber" Set idcliente = :Pidcliente, nmcliente =:Pnmcliente,nrtitulo= :Pnrtitulo, dtcadastro =:Pdtcadastro,idorigem = :Pidorigem');
      DbVendas1.QEntradaTitulo.ParamByName('Pidcliente').AsInteger :=  idcliente;
      DbVendas1.QEntradaTitulo.ParamByName('Pnmcliente').AsString :=  DBEdit8.Text;
      DbVendas1.QEntradaTitulo.ParamByName('Pnrtitulo').AsInteger :=  StrToInt(DBEdit10.Text);
      DbVendas1.QEntradaTitulo.ParamByName('Pdtcadastro').AsDate :=  now;
      DbVendas1.QEntradaTitulo.ParamByName('Pidorigem').Asinteger :=  Vidvenda;
     DbVendas1.QEntradaTitulo.ExecSQL;

     //Inserir dados da tabela Temp.arceber na tabela Areceber
      DbVendas1.QEntradaTitulo.close;
      DbVendas1.QEntradaTitulo.sql.Clear;
      DbVendas1.QEntradaTitulo.sql.add('Insert into areceber select * From temp."#areceber"');
     DbVendas1.QEntradaTitulo.ExecSQL;


    //Inserir o idvenda na tabela temporaria

    begin
      DbVendas1.QEntradaVendaItem.close;
      DbVendas1.QEntradaVendaItem.sql.Clear;
      DbVendas1.QEntradaVendaItem.sql.Add('update temp."#vendasitem" Set idvenda=' + IntToStr(Vidvenda));
      DbVendas1.QEntradaVendaItem.ExecSQL;
    end;

    // replicando da tabela temporaria para a vendasitem
    begin
      DbVendas1.QEntradaVendaItem.close;
      DbVendas1.QEntradaVendaItem.sql.Clear;
      DbVendas1.QEntradaVendaItem.sql.Add('INSERT INTO vendasitem (idvenda,idproduto, vlunitario, qtvendido, vlitem)SELECT idvenda,idproduto, vlunitario, qtitem, vlitem FROM temp."#vendasitem"');
      DbVendas1.QEntradaVendaItem.ExecSQL;
    end;

    //  Exclus�o das vendas da tabela temporaria
     begin
      DbVendas1.QExcluiTabelaTemp.close;
      DbVendas1.QExcluiTabelaTemp.sql.Clear;
      DbVendas1.QExcluiTabelaTemp.sql.Add('delete from temp."#vendasitem"');
      DbVendas1.QExcluiTabelaTemp.ExecSQL;
     end;

     //Copias da tabela temp.movimentoestoque e excluir registro antigo
    begin
      DbVendas1.QInseriTabelaTemp.close;
      DbVendas1.QInseriTabelaTemp.sql.Clear;
      DbVendas1.QInseriTabelaTemp.sql.Add('Update temp."#movimentoestoque" Set idorigem = :Idvenda' );
      DbVendas1.QInseriTabelaTemp.ParamByName('Idvenda').AsInteger := (Vidvenda) ;
      DbVendas1.QInseriTabelaTemp.ExecSQL;
    end;

    begin
      DbVendas1.QInseriTabelaTemp.close;
      DbVendas1.QInseriTabelaTemp.sql.Clear;
      DbVendas1.QInseriTabelaTemp.sql.Add('INSERT INTO movimentoestoque (idproduto, qtmovimentada, qtdisponivel, dtmovimento, tpmovimento, dtcadastro, idorigem)');
      DbVendas1.QInseriTabelaTemp.sql.Add('SELECT  idproduto, qtmovimentada, qtdisponivel, dtmovimento, tpmovimento, dtcadastro, idorigem FROM  temp."#movimentoestoque"');
      //Where idproduto=(SELECT max(idproduto) FROM temp.movimentoestoque) ');
      DbVendas1.QInseriTabelaTemp.ExecSQL;
    end;

    ShowMessage('Venda realizada com sucesso');
    TelaCadastroVendas.Close;

    //Ativar Query QVendas
    AtivarQvendas ;
end;

procedure TTelaCadastroVendas.Button2Click(Sender: TObject);
begin

      //  Exclus�o dos itens da tabela temporaria
   DbVendas1.QExcluiTabelaTemp.close;
   DbVendas1.QExcluiTabelaTemp.sql.Clear;
   DbVendas1.QExcluiTabelaTemp.sql.add('Delete from temp.itemvenda');
   DbVendas1.QExcluiTabelaTemp.execsql ;


     //  Exclus�o das movimenta��es da tabela temporaria
  DbVendas1.QExcluiTabelaTemp.close;
  DbVendas1.QExcluiTabelaTemp.sql.Clear;
  DbVendas1.QExcluiTabelaTemp.sql.Add('delete from temp.movimentoestoque');
  DbVendas1.QExcluiTabelaTemp.ExecSQL;


  AtivarQvendas;

  TelaCadastroVendas.Close;
end;

procedure TTelaCadastroVendas.DBGrid1ColEnter(Sender: TObject);
var valortotal : real ;
begin
    //Somatorio valor da venda
    ValorSomatorioItem;
       valortotal := DbVendas1.QTotalVenda.FieldByName('ValorVenda').AsFloat;
   Valor.text := formatfloat('R$###.00',valortotal);
end;


procedure TTelaCadastroVendas.DBGrid1Exit(Sender: TObject);
var valortotal : real ;
begin

   //Somatorio valor da venda
   ValorSomatorioItem ;
   valortotal := DbVendas1.QTotalVenda.FieldByName('ValorVenda').AsFloat;
   Valor.text := formatfloat('R$###.00',valortotal);

end;

procedure TTelaCadastroVendas.ExcluirprodutoClick(Sender: TObject);
begin
   DbVendas1.QExclus�oTempItemVenda.close;
   DbVendas1.QExclus�oTempItemVenda.sql.clear;
   DbVendas1.QExclus�oTempItemVenda.sql.add('Delete From temp."#vendasitem" Where idvendaitem = :Pidvendaitem');
   DbVendas1.QExclus�oTempItemVenda.ParamByName('Pidvendaitem').AsInteger := StrToInt (Dbgrid1.Fields[6].Value);
   DbVendas1.QExclus�oTempItemVenda.ExecSql;

   DbVendas1.QTempVendasItem.close;
   DbVendas1.QTempVendasItem.open;
end;

procedure TTelaCadastroVendas.ExxcluirAreceberClick(Sender: TObject);
var Vidareceber : integer;
begin
    Vidareceber := StrToInt (DBGrid2.Fields[4].value);
   DbVendas1.QExclus�oTempItemVenda.close;
   DbVendas1.QExclus�oTempItemVenda.sql.clear;
   DbVendas1.QExclus�oTempItemVenda.sql.add('Delete from temp."#areceber" Where idareceber = :Pidareceber');
   DbVendas1.QExclus�oTempItemVenda.Parambyname('Pidareceber').Asinteger := Vidareceber;
   DbVendas1.QExclus�oTempItemVenda.ExecSql;
   DbVendas1.QarecebrTemp.Close;
   DbVendas1.QarecebrTemp.Open;
end;

procedure TTelaCadastroVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  {
    //  Exclus�o da tabela Temp.#vendas
   DbVendas1.QExcluiTabelaTemp.close;
   DbVendas1.QExcluiTabelaTemp.sql.Clear;
   DbVendas1.QExcluiTabelaTemp.sql.Add('Drop Table IF EXISTS temp."#vendas"');
   DbVendas1.QExcluiTabelaTemp.ExecSQl;
   }
    //  Exclus�o da tabela temporaria temp."#vendasitem"
   DbVendas1.QExcluiTabelaTemp.close;
   DbVendas1.QExcluiTabelaTemp.sql.Clear;
   DbVendas1.QExcluiTabelaTemp.sql.add('Drop Table IF EXISTS temp."#vendasitem"');
   DbVendas1.QExcluiTabelaTemp.execsql ;

    //  Exclus�o das movimenta��es da tabela temp."#movimentoestoque"
  DbVendas1.QExcluiTabelaTemp.close;
  DbVendas1.QExcluiTabelaTemp.sql.Clear;
  DbVendas1.QExcluiTabelaTemp.sql.Add('Drop Table IF EXISTS temp."#movimentoestoque"');
  DbVendas1.QExcluiTabelaTemp.ExecSQL;

    // Exclus�o dos titulos no temp.areceber
   DbVendas1.QExclus�oTempItemVenda.close;
   DbVendas1.QExclus�oTempItemVenda.sql.clear;
   DbVendas1.QExclus�oTempItemVenda.sql.add('Drop Table IF EXISTS temp."#areceber"');
   DbVendas1.QExclus�oTempItemVenda.ExecSql;

   DbVendas1.QTempVendasItem.close;
   DbVendas1.QarecebrTemp.close;


  AtivarQvendas;

end;

procedure TTelaCadastroVendas.FormShow(Sender: TObject);
begin
  DateTimePicker1.date := now;
end;

procedure TTelaCadastroVendas.ValorSomatorioItem;
begin
   DbVendas1.QTotalVenda.close;
   DbVendas1.QTotalVenda.open;
end;

procedure TTelaCadastroVendas.AdicionarExit(Sender: TObject);
begin
  AtivarQvendas
end;

procedure TTelaCadastroVendas.AdicionarTitutloClick(Sender: TObject);
var valorvenda : string;
begin
     DbVendas1.QCriaTabelaTemp.close;
     DbVendas1.QCriaTabelaTemp.sql.Clear;
     DbVendas1.QCriaTabelaTemp.sql.Add('CREATE TABLE IF NOT EXISTS temp."#areceber"');
     DbVendas1.QCriaTabelaTemp.sql.Add('(idareceber integer NOT NULL DEFAULT nextval($$temp."#areceber_idareceber_seq"$$::regclass),idcliente integer,nmcliente character varying(100) COLLATE pg_catalog."default" ,idformapagamento integer,');
     DbVendas1.QCriaTabelaTemp.sql.Add('nmformapagamento character varying(50) COLLATE pg_catalog."default" ,vltitulo real ,nrtitulo integer ,dtcadastro date,dtvencimento date,idorigem integer,dtbaixa date,idcontabancaria integer)');
     DbVendas1.QCriaTabelaTemp.ExecSQl;


    CadastroAreceber.ShowModal;
end;

procedure TTelaCadastroVendas.AtivarQvendas;
begin
  //Ativar Query QVendas
  DbVendas1.Qvendas.Close;
  DbVendas1.Qvendas.Open;
end;

end.
