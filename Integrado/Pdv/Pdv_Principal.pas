unit Pdv_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DateUtils, Vcl.WinXCtrls;

type
  TTelaPdv = class(TForm)
    Panel1: TPanel;
    CampoQuantidade: TDBEdit;
    CampoDesconto: TDBEdit;
    Button1: TButton;
    NmProduto: TLabel;
    CampoAcrescimo: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button3: TButton;
    CampoCodigo: TDBEdit;
    Label7: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CampoValorUnitario: TDBEdit;
    Label3: TLabel;
    Label9: TLabel;
    CampoValorItem: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Button2: TButton;
    Panel3: TPanel;
    Hora: TLabel;
    Timer1: TTimer;
    Data: TLabel;
    CampoIdProduto: TDBEdit;
    Label1: TLabel;
    CampoNomeProduto: TDBEdit;
    Label8: TLabel;
    Menu: TSplitView;
    cxGrid1DBTableView1nmitemvenda: TcxGridDBColumn;
    cxGrid1DBTableView1vlunitario: TcxGridDBColumn;
    cxGrid1DBTableView1vlitem: TcxGridDBColumn;
    cxGrid1DBTableView1qtitem: TcxGridDBColumn;
    cxGrid1DBTableView1vldesconto: TcxGridDBColumn;
    cxGrid1DBTableView1vlacrescimo: TcxGridDBColumn;
    Button10: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure CampoValorItemExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CampoQuantidadeExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Procedure SplitViewAction(Value : TSplitView);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CampoDescontoExit(Sender: TObject);
    procedure CampoAcrescimoExit(Sender: TObject);
  private
    { Private declarations }
  public
    //SomatorioItem :=  CalculoValorVenda;
  end;

var
  TelaPdv: TTelaPdv;

implementation

{$R *.dfm}

uses DbPdv, Produtos, SomaValorVenda;



procedure TTelaPdv.Button10Click(Sender: TObject);
begin
  SplitViewAction(Menu);
end;

procedure TTelaPdv.Button1Click(Sender: TObject);
var
CdItem, NomeItem, VlItem, VlTotal, QtdItem, vlacrescimo, vldesconto : string;
Idproduto : integer;
begin
   CdItem  :=  CampoCodigo.Text;
   NomeItem:=  NmProduto.caption;
   VlItem  :=  CampoValorUnitario.Text;
   VlTotal :=  CampoValorItem.Text;
   QtdItem :=  CampoQuantidade.Text;
   Idproduto := StrToInt(CampoIdProduto.text);
   vlacrescimo := (CampoAcrescimo.text);
   vldesconto := (CampoDesconto.text);

   BancoPdv.QInsereDados.close;
   BancoPdv.QInsereDados.sql.Clear;
   BancoPdv.QInsereDados.Sql.Add('INSERT INTO temp."#VendasPdvItem"(nmitemvenda, vlunitario, vlitem, idproduto, qtitem, vldesconto, vlacrescimo, nmsistema, idusuario)');
   BancoPdv.QInsereDados.Sql.Add('VALUES (:Pnmitemvenda, :Pvlunitario, :Pvlitem, :Pidproduto, :Pqtitem, :Pvldesconto, :Pvlacrescimo, :Pnmsistema, :Pidusuario)');
   BancoPdv.QInsereDados.ParamByName('Pnmitemvenda').AsString :=  NomeItem;
   BancoPdv.QInsereDados.ParamByName('Pvlunitario').AsInteger :=  StrToInt(VlItem);
   BancoPdv.QInsereDados.ParamByName('Pqtitem').AsInteger :=  StrToInt(QtdItem);
   BancoPdv.QInsereDados.ParamByName('Pvlitem').AsInteger :=  StrToInt(VlTotal);
   BancoPdv.QInsereDados.ParamByName('Pidproduto').AsInteger :=  Idproduto;
   BancoPdv.QInsereDados.ParamByName('Pvldesconto').AsInteger :=  StrToInt(vldesconto);
   BancoPdv.QInsereDados.ParamByName('Pvlacrescimo').AsInteger :=  StrToInt(vlacrescimo);
   BancoPdv.QInsereDados.ParamByName('Pnmsistema').AsString :=  'PDV';
   BancoPdv.QInsereDados.ParamByName('Pidusuario').AsInteger :=  000001;
   BancoPdv.QInsereDados.ExecSql;

   BancoPdv.QExcluiDados.close;
   BancoPdv.QExcluiDados.Sql.Clear;
   BancoPdv.QExcluiDados.Sql.add('Delete from temp."#VendasPdvItemCampos"');
   BancoPdv.QExcluiDados.execSql;

   BancoPdv.QvendasPdvItem.close;
   BancoPdv.QvendasPdvItem.open;

   BancoPdv.QSomatorioValor.close;
   BancoPdv.QSomatorioValor.open;
end;

procedure TTelaPdv.Button3Click(Sender: TObject);
begin
  BancoPdv.QVendasPdvItensCampo.Open;
  ConsultaProdutos.ShowModal;
end;


procedure TTelaPdv.Button9Click(Sender: TObject);
begin
 ShowMessage ('Venda realizada com sucesso');
end;


procedure TTelaPdv.CampoAcrescimoExit(Sender: TObject);
begin

     //CampoValorItem.text :=
end;

procedure TTelaPdv.CampoDescontoExit(Sender: TObject);
begin
  //CalculoValorVenda;
end;

procedure TTelaPdv.CampoQuantidadeExit(Sender: TObject);
begin
   //CalculoValorTotalItem.;
end;

procedure TTelaPdv.CampoValorItemExit(Sender: TObject);
begin
  CampoValorItem.TEXT:= FORMATFLOAT('R$ ###,##0.00', STRTOFLOAT(CampoValorItem.TEXT));
end;

procedure TTelaPdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {BancoPdv.QVendasPdvItensCampo.close;
  BancoPdv.QVendasPdvItensCampo.sql.clear;
  BancoPdv.QVendasPdvItensCampo.sql.add('Drop table temp."#VendasPdvItemCampos"');
  BancoPdv.QVendasPdvItensCampo.ExecSql;
  BancoPdv.QVendasPdvItensCampo.sql.clear;


  BancoPdv.QVendasPdvItemCreateTable.close;
  BancoPdv.QVendasPdvItemCreateTable.sql.clear;
  BancoPdv.QVendasPdvItemCreateTable.sql.add('Drop table temp."#VendasPdvItem"');
  BancoPdv.QVendasPdvItemCreateTable.ExecSql;
  BancoPdv.QVendasPdvItemCreateTable.sql.clear;
   }

end;

procedure TTelaPdv.FormCreate(Sender: TObject);
begin
  //Criar tabela Temp.#VendasPdvItemCampos
  BancoPdv.QVendasPdvItemCreateTable.close;
  BancoPdv.QVendasPdvItemCreateTable.sql.clear;
  BancoPdv.QVendasPdvItemCreateTable.sql.add('CREATE TABLE IF NOT EXISTS temp."#VendasPdvItemCampos"');
  BancoPdv.QVendasPdvItemCreateTable.sql.add('(iditemvenda integer  DEFAULT nextval($$temp."#itemvenda_iditemvenda_seq"$$::regclass), nmitemvenda character varying(50) COLLATE pg_catalog."default" ,cdproduto character varying(20), vlunitario real , vlitem real ,idproduto integer ,');
  BancoPdv.QVendasPdvItemCreateTable.sql.add('qtitem integer,idvenda integer,vldesconto real,vlacrescimo real,nmsistema character varying(50),idusuario integer)');
  BancoPdv.QVendasPdvItemCreateTable.ExecSql;

  //Criar tabela Temp.#VendasPdv
  BancoPdv.QVendasPdvCreateTable.close;
  BancoPdv.QVendasPdvCreateTable.sql.clear;
  BancoPdv.QVendasPdvCreateTable.sql.add('CREATE TABLE IF NOT EXISTS temp."#VendasPdv"');
  BancoPdv.QVendasPdvCreateTable.sql.add('(idvenda integer NOT NULL DEFAULT nextval($$vendas_idvenda_seq$$::regclass),');
  BancoPdv.QVendasPdvCreateTable.sql.add('idcliente integer,idformapagamento integer,cdproduto ineteger,vlvenda real,dtcadastro date,dtvenda date,nmformapagamento character varying(20) COLLATE pg_catalog."default",nmcliente character varying(50) COLLATE pg_catalog."default",nrdocumento integer)');
  BancoPdv.QVendasPdvCreateTable.ExecSql;

  //Criar tabela Temp.#VendasPdvItem
  BancoPdv.QVendasPdvItemCreateTable.close;
  BancoPdv.QVendasPdvItemCreateTable.sql.clear;
  BancoPdv.QVendasPdvItemCreateTable.sql.add('CREATE TABLE IF NOT EXISTS temp."#VendasPdvItem"');
  BancoPdv.QVendasPdvItemCreateTable.sql.add('(iditemvenda integer NOT NULL DEFAULT nextval($$temp."#itemvenda_iditemvenda_seq"$$::regclass), nmitemvenda character varying(50) COLLATE pg_catalog."default" NOT NULL, vlunitario real NOT NULL, vlitem real NOT NULL,idproduto integer NOT NULL,');
  BancoPdv.QVendasPdvItemCreateTable.sql.add('qtitem integer,idvenda integer,vldesconto real,vlacrescimo real,nmsistema character varying(50),idusuario integer)');
  BancoPdv.QVendasPdvItemCreateTable.ExecSql;

end;

procedure TTelaPdv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
   VK_ESCAPE : ShowMessage ('Cancelar opera��o');
   VK_F12 :   Button10Click(Sender);
   VK_F1 :   Button9Click(Sender);
end;

end;

procedure TTelaPdv.FormShow(Sender: TObject);
var
dataAtual : TDateTime ;

begin
   DataAtual := Now;
   Data.Caption := DateToStr (DataAtual);

end;

procedure TTelaPdv.SplitViewAction(Value: TSplitView);
begin
  Value.Opened := not value.Opened;
end;

procedure TTelaPdv.Timer1Timer(Sender: TObject);
begin
   Hora.Caption := FormatDateTime ('ttt',Time)
end;

end.
