unit CadastroProdutoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.Provider, Datasnap.DBClient,DbPrincipal,
  Data.FMTBcd, Data.SqlExpr,Consultas, TelaCadastroVenda;

type
  TTelaCadastroProdutoVenda = class(TForm)
    Label4: TLabel;
    nmproduto: TDBEdit;
    Label5: TLabel;
    vlunitario: TDBEdit;
    Label6: TLabel;
    quantidade: TDBEdit;
    Button1: TButton;
    Label1: TLabel;
    vlitem: TDBEdit;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    MVendasItem: TClientDataSet;
    PVendasItem: TDataSetProvider;
    DsVendasItem: TDataSource;
    VendasItem: TFDQuery;
    VendasItemidvenda: TIntegerField;
    VendasItemidproduto: TIntegerField;
    VendasItemvlunitario: TSingleField;
    VendasItemqtvendido: TIntegerField;
    VendasItemvlitem: TSingleField;
    VendasItemidproduto_1: TIntegerField;
    VendasItemnmproduto: TWideStringField;
    VendasItemcdproduto: TWideStringField;
    VendasItemidfamiliaproduto: TIntegerField;
    VendasItemvlproduto: TSingleField;
    VendasItemnmfamiliaproduto: TWideStringField;
    VendasItemstproduto: TBooleanField;
    VendasItemdtcadastro: TDateField;
    MVendasItemidvenda: TIntegerField;
    MVendasItemidproduto: TIntegerField;
    MVendasItemvlunitario: TSingleField;
    MVendasItemqtvendido: TIntegerField;
    MVendasItemvlitem: TSingleField;
    MVendasItemnmproduto: TWideStringField;
    MVendasItemvlproduto: TSingleField;
    QQtdeDisponivel: TFDQuery;
    DsQQtdeDisponivel: TDataSource;
    QQtdeDisponivelidestoque: TFDAutoIncField;
    QQtdeDisponivelidproduto: TIntegerField;
    QQtdeDisponivelqtdeestoque: TIntegerField;
    MVendasItemcdproduto: TWideStringField;
    lblCodigo: TLabel;
    cdproduto: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure vlunitarioExit(Sender: TObject);
    procedure quantidadeExit(Sender: TObject);
    procedure Button1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nmprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nmprodutoExit(Sender: TObject);
    procedure MVendasItemAfterPost(DataSet: TDataSet);
    procedure cdprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
  QtDisponivel : real;
  procedure ConsultaProdutoGrid;
  procedure ConsultaQuantidadeDisponivel;
    { Private declarations }
  public
   idproduto : integer;
    { Public declarations }
  end;

var
  TelaCadastroProdutoVenda: TTelaCadastroProdutoVenda;

implementation

{$R *.dfm}

uses DBvendas, TelaConsultaProdutoVenda ;

procedure TTelaCadastroProdutoVenda.Button1Click(Sender: TObject);
begin
    TelaConsultaProduto.showmodal;
end;

procedure TTelaCadastroProdutoVenda.Button1Exit(Sender: TObject);

begin
     ConsultaQuantidadeDisponivel;
end;



procedure TTelaCadastroProdutoVenda.Button2Click(Sender: TObject);
var
  ConsultandoIdVenda : TconsultaIdVenda;
  idvenda : integer;
begin

      QtDisponivel := QQtdeDisponivel.FieldByName('qtdeestoque').AsFloat;
      if  (QtDisponivel) < StrToInt(quantidade.Text) then
      begin
      ShowMessage('Produto sem quantidade em estoque');
      exit
      end;

      // consulta idvenda
         ConsultandoIdVenda := TconsultaIdVenda.Create;
   try
   ConsultandoIdVenda.ConsultandoIdVenda;
   idvenda := ConsultandoIdVenda.idvenda;
   finally
      ConsultandoIdVenda.Free;
  end;

  try
    MVendasItem.FieldByName('idvenda').AsInteger := idvenda + 1;
    MVendasItem.FieldByName('vlunitario').AsFloat := StrToFloat(vlunitario.Text);
    MVendasItem.FieldByName('qtvendido').AsFloat := StrToFloat(quantidade.Text);
    MVendasItem.FieldByName('vlitem').AsFloat := StrToFloat(vlitem.Text);
    MVendasItem.Post;
    TelaCadastroProdutoVenda.close;
  except
    MVendasItem.Cancel;
    raise;
  end;

end;


procedure TTelaCadastroProdutoVenda.Button3Click(Sender: TObject);
begin
    TelaCadastroProdutoVenda.close;

end;



procedure TTelaCadastroProdutoVenda.cdprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
   VK_return : begin
   ConsultaProdutoGrid;
   end;
  end;
end;

procedure TTelaCadastroProdutoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   MVendasItem.Cancel;
   QQtdeDisponivel.Close;
end;


procedure TTelaCadastroProdutoVenda.MVendasItemAfterPost(DataSet: TDataSet);
begin
TelaCadastroVendas.TotalVenda;
end;

procedure TTelaCadastroProdutoVenda.nmprodutoExit(Sender: TObject);
begin
   ConsultaQuantidadeDisponivel
end;

procedure TTelaCadastroProdutoVenda.nmprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
   VK_return : begin
   ConsultaProdutoGrid;
   end;
  end;
end;

procedure TTelaCadastroProdutoVenda.quantidadeExit(Sender: TObject);
var qtitem, vlunit, vltotal : real;
begin
  // converter campo
   if (Trim(quantidade.text).IsEmpty) then
   begin
   quantidade.text := '1';
   qtitem := StrToInt (quantidade.Text);
   vlunit := StrToFloat (vlunitario.Text);
   vltotal := qtitem * vlunit;
   vlitem.text := formatfloat('###.00',vltotal);
   end else
   begin
   qtitem := StrToInt (quantidade.Text);
   vlunit := StrToFloat (vlunitario.Text);
   vltotal := qtitem * vlunit;
   vlitem.text := formatfloat('###.00',vltotal);
   end;



    try
      QtDisponivel := QQtdeDisponivel.FieldByName('qtdeestoque').AsFloat;
      if  (QtDisponivel) < StrToInt(quantidade.Text) then
      begin
      ShowMessage('Produto sem quantidade em estoque');
      exit
    end;
    finally

    end;

end;

procedure TTelaCadastroProdutoVenda.vlunitarioExit(Sender: TObject);
var qtitem, vlunit, vltotal : real;
begin
   if quantidade.Text <> '' then
   begin
   qtitem := StrToInt (quantidade.Text);
   vlunit := StrToFloat (vlunitario.Text);
   vltotal := qtitem * vlunit;
   vlitem.text := formatfloat('###.00',vltotal);
   end;
end;

procedure TTelaCadastroProdutoVenda.ConsultaProdutoGrid;
var ConsultaProd : TConsultaProduto;
begin
    ConsultaProd  := TConsultaProduto.New;
  try
    ConsultaProd.codigo := (cdproduto.Text);
    ConsultaProd.descricao := nmproduto.Text;
    ConsultaProd.ConsultaProduto;
  finally
    ConsultaProd.Free;
  end;
end;



procedure TTelaCadastroProdutoVenda.ConsultaQuantidadeDisponivel;
begin
                //Trazer quantidade disponivel
   begin
      QQtdeDisponivel.close;
      QQtdeDisponivel.sql.Clear;
      QQtdeDisponivel.sql.add('select * From estoque  Where idproduto = :Pidproduto');
      QQtdeDisponivel.ParamByName('Pidproduto').AsInteger := TelaConsultaProduto.QProduto.FieldByName('idproduto').AsInteger;
      QQtdeDisponivel.open;
   end;
end;

end.
