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
    Label1: TLabel;
    Valor: TDBEdit;
    Adicionar: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DBEdit1: TDBEdit;
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
    procedure BuscaClienteClick(Sender: TObject);
    procedure AdicionarClick(Sender: TObject);
    procedure ExcluirprodutoClick(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdicionarExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AdicionarTitutloClick(Sender: TObject);
    procedure ExxcluirAreceberClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
     DbVendas1.Qitemvenda.close;
     DbVendas1.Qitemvenda.sql.Clear;
     DbVendas1.Qitemvenda.sql.Add('CREATE TABLE IF NOT EXISTS temp."#vendasItensCampos"');
     DbVendas1.Qitemvenda.sql.Add('(idvendaitem integer NOT NULL DEFAULT nextval($$temp."#vendasitenscampos_id_seq"$$::regclass) ,vlunitario real, vlitem real,idproduto integer,qtitem integer,idvenda integer)');
     DbVendas1.Qitemvenda.ExecSQl;

     DbVendas1.QvendasitemCampos.open;
     DbVendas1.QvendasitemCampos.append;

    TelaCadastroProdutoVenda.showmodal;
     end;

procedure TTelaCadastroVendas.BuscaClienteClick(Sender: TObject);
begin
    DbVendas1.Qcliente.open;
    TelaConsultaCliente.showmodal;
end;

procedure TTelaCadastroVendas.Button1Click(Sender: TObject);
var
Vidvenda : Integer;
Vnmforma : string;

begin
   DbVendas1.QEntradaVenda.Open;
    Vnmforma := (DBGrid2.Fields[0].value);

   //Inserir Dados a tabela Vendas
     {
      DbVendas1.QEntradaVenda.close;
      DbVendas1.QEntradaVenda.sql.Clear;
      DbVendas1.QEntradaVenda.sql.Add('insert into vendas(idcliente,idformapagamento, vlvenda, dtcadastro, dtvenda,nmformapagamento, nmcliente, nrdocumento)');
      DbVendas1.QEntradaVenda.sql.add('VALUES ( :Pidformapagamento, :Pvlvenda, :Pdtcadastro ,:Pdtvenda ,:Pnmformapagamento, :Pnmcliente, :Pnrdocumento)');
      DbVendas1.QEntradaVenda.ParamByName('Pvlvenda').AsFloat :=  StrToFloat(Valor.Text);
      DbVendas1.QEntradaVenda.ParamByName('Pdtcadastro').AsDate :=  now;
      DbVendas1.QEntradaVenda.ParamByName('Pdtvenda').AsDate :=  DateTimePicker1.Date;
      DbVendas1.QEntradaVenda.ParamByName('Pnrdocumento').AsInteger :=  StrToInt(DBEdit10.Text);
      DbVendas1.QEntradaVenda.ExecSQL;


    //Consultar ultimo Idvenda
    DbVendas1.QIdVenda.close;
    DbVendas1.QIdVenda.open;
    Vidvenda := StrToInt (DBEdit1.Text);



    //Editar Dados da tabela Temp.Areceber

      DbVendas1.QEntradaTitulo.close;
      DbVendas1.QEntradaTitulo.sql.Clear;
      DbVendas1.QEntradaTitulo.sql.add('Update temp.areceber Set idcliente = :Pidcliente, nmcliente =:Pnmcliente,nrtitulo= :Pnrtitulo, dtcadastro =:Pdtcadastro,idorigem = :Pidorigem');
      DbVendas1.QEntradaTitulo.ParamByName('Pidcliente').AsInteger :=  StrToInt(DBEdit2.Text);
      DbVendas1.QEntradaTitulo.ParamByName('Pnmcliente').AsString :=  DBEdit8.Text;
      DbVendas1.QEntradaTitulo.ParamByName('Pnrtitulo').AsInteger :=  StrToInt(DBEdit10.Text);
      DbVendas1.QEntradaTitulo.ParamByName('Pdtcadastro').AsDate :=  StrToDate (DBEdit5.Text);
      DbVendas1.QEntradaTitulo.ParamByName('Pidorigem').Asinteger :=  Vidvenda;
     DbVendas1.QEntradaTitulo.ExecSQL;

     //Inserir dados da tabela Temp.arceber na tabela Areceber
      DbVendas1.QEntradaTitulo.close;
      DbVendas1.QEntradaTitulo.sql.Clear;
      DbVendas1.QEntradaTitulo.sql.add('Insert into areceber select * From temp.areceber');
     DbVendas1.QEntradaTitulo.ExecSQL;


    //Inserir o idvenda na tabela temporaria

   DbVendas1.QEntradaVendaItem.Open;
   DbVendas1.Qitemvenda.open;
    begin
      DbVendas1.QEntradaVendaItem.close;
      DbVendas1.QEntradaVendaItem.sql.Clear;
      DbVendas1.QEntradaVendaItem.sql.Add('update temp.itemvenda Set idvenda=' + DBEdit1.text);
      DbVendas1.QEntradaVendaItem.ExecSQL;
    end;

    // replicando da tabela temporaria para a vendasitem
    begin
      DbVendas1.QEntradaVendaItem.close;
      DbVendas1.QEntradaVendaItem.sql.Clear;
      DbVendas1.QEntradaVendaItem.sql.Add('INSERT INTO vendasitem (idvenda,idproduto, nmproduto, vlunitario, qtvendido, vlitem)SELECT idvenda,idproduto, nmitemvenda, vlunitario, qtitem, vlitem FROM temp.itemvenda');
      DbVendas1.QEntradaVendaItem.ExecSQL;
    end;

    //  Exclus�o das vendas da tabela temporaria
     begin
      DbVendas1.TempItemExclusao.close;
      DbVendas1.TempItemExclusao.sql.Clear;
      DbVendas1.TempItemExclusao.sql.Add('delete from temp.itemvenda');
      DbVendas1.TempItemExclusao.ExecSQL;
     end;

     //Copias da tabela temp.movimentoestoque e excluir registro antigo
    begin
      DbVendas1.QestoqueTemp.close;
      DbVendas1.QestoqueTemp.sql.Clear;
      DbVendas1.QestoqueTemp.sql.Add('Update temp.movimentoestoque Set idorigem = :Idvenda' );
      DbVendas1.QestoqueTemp.ParamByName('Idvenda').AsInteger := StrToInt (DBEdit1.text) ;
      DbVendas1.QestoqueTemp.ExecSQL;
    end;

    begin
      DbVendas1.QestoqueTemp.close;
      DbVendas1.QestoqueTemp.sql.Clear;
      DbVendas1.QestoqueTemp.sql.Add('INSERT INTO movimentoestoque (idproduto, qtmovimentada, qtdisponivel, dtmovimento, tpmovimento, dtcadastro, idorigem)');
      DbVendas1.QestoqueTemp.sql.Add('SELECT  idproduto, qtmovimentada, qtdisponivel, dtmovimento, tpmovimento, dtcadastro, idorigem FROM  temp.movimentoestoque');
      //Where idproduto=(SELECT max(idproduto) FROM temp.movimentoestoque) ');
      DbVendas1.QestoqueTemp.ExecSQL;
    end;

    ShowMessage('Venda realizada com sucesso');
    TelaCadastroVendas.Close;

    //Ativar Query QVendas
    AtivarQvendas ;
      }
end;

procedure TTelaCadastroVendas.Button2Click(Sender: TObject);
begin

      //  Exclus�o dos itens da tabela temporaria
   DbVendas1.TempItemExclusao.close;
   DbVendas1.TempItemExclusao.sql.Clear;
   DbVendas1.TempItemExclusao.sql.add('Delete from temp.itemvenda');
   DbVendas1.TempItemExclusao.execsql ;


     //  Exclus�o das movimenta��es da tabela temporaria
  DbVendas1.QExcluiTabelaTemp.close;
  DbVendas1.QExcluiTabelaTemp.sql.Clear;
  DbVendas1.QExcluiTabelaTemp.sql.Add('delete from temp.movimentoestoque');
  DbVendas1.QExcluiTabelaTemp.ExecSQL;


  AtivarQvendas;

  TelaCadastroVendas.Close;
end;

procedure TTelaCadastroVendas.DBGrid1ColEnter(Sender: TObject);
begin
    //Somatorio valor da venda
    ValorSomatorioItem;
    Valor.text := inttostr (DbVendas1.Qitemvenda.RecordCount);

end;


procedure TTelaCadastroVendas.DBGrid1Exit(Sender: TObject);
begin

   //Somatorio valor da venda

    ValorSomatorioItem;
    Valor.text := inttostr (DbVendas1.Qitemvenda.RecordCount);

end;

procedure TTelaCadastroVendas.ExcluirprodutoClick(Sender: TObject);
begin
   DbVendas1.QExclus�oTempItemVenda.close;
   DbVendas1.QExclus�oTempItemVenda.sql.clear;
   DbVendas1.QExclus�oTempItemVenda.sql.add('Delete From temp.ItemVenda Where IdItemVenda = :PIdItemVenda');
   DbVendas1.QExclus�oTempItemVenda.ParamByName('PIdItemVenda').AsInteger := StrToInt (Dbgrid1.Fields[6].Value);
   DbVendas1.QExclus�oTempItemVenda.ExecSql;
end;

procedure TTelaCadastroVendas.ExxcluirAreceberClick(Sender: TObject);
var Vidareceber : integer;
begin
    Vidareceber := StrToInt (DBGrid2.Fields[4].value);
   DbVendas1.QarecebrTempInserir.close;
   DbVendas1.QarecebrTempInserir.sql.clear;
   DbVendas1.QarecebrTempInserir.sql.add('Delete from temp.areceber Where idareceber = :Pidareceber');
   DbVendas1.QarecebrTempInserir.Parambyname('Pidareceber').Asinteger := Vidareceber;
   DbVendas1.QarecebrTempInserir.ExecSql;
   DbVendas1.QarecebrTemp.Close;
   DbVendas1.QarecebrTemp.Open;
end;

procedure TTelaCadastroVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    //  Exclus�o da tabela Temp.#vendas
   DbVendas1.QExcluiTabelaTemp.close;
   DbVendas1.QExcluiTabelaTemp.sql.Clear;
   DbVendas1.QExcluiTabelaTemp.sql.Add('Drop Table temp."#vendas"');
   DbVendas1.QExcluiTabelaTemp.ExecSQl;

    //  Exclus�o dos itens da tabela temporaria
   DbVendas1.TempItemExclusao.close;
   DbVendas1.TempItemExclusao.sql.Clear;
   DbVendas1.TempItemExclusao.sql.add('Delete from temp."#vendasitem"');
   DbVendas1.TempItemExclusao.execsql ;


   {  //  Exclus�o das movimenta��es da tabela temporaria
  DbVendas1.QestoqueTemp.close;
  DbVendas1.QestoqueTemp.sql.Clear;
  DbVendas1.QestoqueTemp.sql.Add('delete from temp.movimentoestoque');
  DbVendas1.QestoqueTemp.ExecSQL;

    // Exclus�o dos titulos no temp.areceber
   DbVendas1.QarecebrTempInserir.close;
   DbVendas1.QarecebrTempInserir.sql.clear;
   DbVendas1.QarecebrTempInserir.sql.add('Delete from temp.areceber');
   DbVendas1.QarecebrTempInserir.ExecSql;

    }

  AtivarQvendas;

end;

procedure TTelaCadastroVendas.FormShow(Sender: TObject);
begin
  DateTimePicker1.date := now;
end;

procedure TTelaCadastroVendas.ValorSomatorioItem;
begin
// Valor total dos itens na grid
  DbVendas1.Qitemvenda.close;
  DbVendas1.Qitemvenda.sql.Clear;
  DbVendas1.Qitemvenda.sql.Add('Select SUM(vlitem) from temp.itemvenda');
  DbVendas1.Qitemvenda.open;
end;

procedure TTelaCadastroVendas.AdicionarExit(Sender: TObject);
begin
   ValorSomatorioItem;
   Valor.text := inttostr (DbVendas1.Qitemvenda.RecordCount);
end;

procedure TTelaCadastroVendas.AdicionarTitutloClick(Sender: TObject);
begin
    DbVendas1.QarecebrTemp.Append;
    CadastroAreceber.ShowModal;
    Valor.text :=  CadastroAreceber.DBEdit1.text;
end;

procedure TTelaCadastroVendas.AtivarQvendas;
begin
  //Ativar Query QVendas
  DbVendas1.Qvendas.Close;
  DbVendas1.Qvendas.Open;
end;

end.