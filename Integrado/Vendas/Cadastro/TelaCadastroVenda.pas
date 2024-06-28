unit TelaCadastroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.Buttons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,Consultas, CadastroVendas;

type
  TTelaCadastroVendas = class(TForm)
    Label6: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    ToolBar1: TToolBar;
    Excluirproduto: TBitBtn;
    Button1: TButton;
    BuscaCliente: TBitBtn;
    Adicionar: TBitBtn;
    Dtvenda: TDateTimePicker;
    Button2: TButton;
    Button3: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ToolBar2: TToolBar;
    AdicionarTitutlo: TBitBtn;
    ExxcluirAreceber: TBitBtn;
    Valor: TDBEdit;
    Label1: TLabel;
    GridVendasItem: TcxGrid;
    GridVendasItemDBTableView1: TcxGridDBTableView;
    GridVendasItemLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    GridVendasItemDBTableView1idvenda: TcxGridDBColumn;
    GridVendasItemDBTableView1idproduto: TcxGridDBColumn;
    GridVendasItemDBTableView1vlunitario: TcxGridDBColumn;
    GridVendasItemDBTableView1qtvendido: TcxGridDBColumn;
    GridVendasItemDBTableView1vlitem: TcxGridDBColumn;
    GridVendasItemDBTableView1nmproduto: TcxGridDBColumn;
    GridVendasItemDBTableView1vlproduto: TcxGridDBColumn;
    Venda: TFDQuery;
    PVenda: TDataSetProvider;
    MVenda: TClientDataSet;
    DsVenda: TDataSource;
    Vendaidvenda: TFDAutoIncField;
    Vendaidcliente: TIntegerField;
    Vendavlvenda: TSingleField;
    Vendadtcadastro: TDateField;
    Vendadtvenda: TDateField;
    Vendanrdocumento: TIntegerField;
    Vendanmcliente: TWideStringField;
    MVendaidcliente: TIntegerField;
    MVendavlvenda: TSingleField;
    MVendadtcadastro: TDateField;
    MVendadtvenda: TDateField;
    MVendanmcliente: TWideStringField;
    MVendanrdocumento: TIntegerField;
    cxGridDBTableView1idareceber: TcxGridDBColumn;
    cxGridDBTableView1idcliente: TcxGridDBColumn;
    cxGridDBTableView1nmcliente: TcxGridDBColumn;
    cxGridDBTableView1idformapagamento: TcxGridDBColumn;
    cxGridDBTableView1nmformapagamento: TcxGridDBColumn;
    cxGridDBTableView1vltitulo: TcxGridDBColumn;
    cxGridDBTableView1nrtitulo: TcxGridDBColumn;
    cxGridDBTableView1dtcadastro: TcxGridDBColumn;
    cxGridDBTableView1dtvencimento: TcxGridDBColumn;
    cxGridDBTableView1idorigem: TcxGridDBColumn;
    cxGridDBTableView1dtbaixa: TcxGridDBColumn;
    cxGridDBTableView1idcontabancaria: TcxGridDBColumn;
    procedure BuscaClienteClick(Sender: TObject);
    procedure AdicionarClick(Sender: TObject);
    procedure ExcluirprodutoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure AdicionarTitutloClick(Sender: TObject);
    procedure ExxcluirAreceberClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AdicionarExit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    TotalVendido: real;
    nrdocuemnto : integer;
    procedure TotalVenda;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastroVendas: TTelaCadastroVendas;

implementation

{$R *.dfm}

uses DBvendas, TelaConsultaClienteVenda, TelaConsultaProdutoVenda,
  CadastroProdutoVenda,   TelaCadastroFinanceiro;

procedure TTelaCadastroVendas.AdicionarClick(Sender: TObject);
begin
    try
    TelaCadastroProdutoVenda.MVendasItem.Append;
  except
    on E: Exception do
      ShowMessage('Erro ao ativar ClientDataSet: ' + E.Message);
  end;


    TelaCadastroProdutoVenda.showmodal;
     end;

procedure TTelaCadastroVendas.BuscaClienteClick(Sender: TObject);
begin
    TelaConsultaCliente.showmodal;
end;

procedure TTelaCadastroVendas.Button1Click(Sender: TObject);
begin
    // inserir cliente no financeiro
    CadastroAreceber.MAreceber.First;
    while not  CadastroAreceber.MAreceber.Eof do
    begin
      CadastroAreceber.MAreceber.edit;
      CadastroAreceber.MAreceber.FieldByName('idcliente').AsInteger := TelaConsultaCliente.Qcliente.FieldByName('idcliente').AsInteger ;
      CadastroAreceber.MAreceber.FieldByName('nmcliente').AsString := TelaConsultaCliente.Qcliente.FieldByName('nmcliente').AsString ;
      CadastroAreceber.MAreceber.Post;
      CadastroAreceber.MAreceber.next;
    end;



    MVenda.FieldByName('dtcadastro').AsDatetime := now;
    MVenda.FieldByName('dtvenda').AsDatetime := Dtvenda.Date;
    TotalVenda;
    MVenda.FieldByName('vlvenda').AsFloat := TotalVendido;

   // atualiza a venda
   MVenda.ApplyUpdates(-1);
   // atualiza vendas Item
   TelaCadastroProdutoVenda.MVendasItem.ApplyUpdates(-1);
   // atualiza financeiro
   CadastroAreceber.MAreceber.ApplyUpdates(-1);


    ShowMessage('Venda '+ IntToStr(nrdocuemnto) +' realizada com sucesso');
    TelaCadastroVendas.Close;


    CadastroDeVendas.QGridVendas.close;
    CadastroDeVendas.QGridVendas.open;
end;

procedure TTelaCadastroVendas.Button2Click(Sender: TObject);
begin

  TelaCadastroVendas.Close;
end;

procedure TTelaCadastroVendas.ExcluirprodutoClick(Sender: TObject);
begin
  if TelaCadastroProdutoVenda.MVendasItem.RecordCount > 0 then
    TelaCadastroProdutoVenda.MVendasItem.Delete;

end;

procedure TTelaCadastroVendas.ExxcluirAreceberClick(Sender: TObject);
begin
   if CadastroAreceber.MAreceber.RecordCount > 0 then
    CadastroAreceber.MAreceber.Delete;
end;

procedure TTelaCadastroVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    if not DirectoryExists(GetcurrentDir + '\ConfigGrid') then
    CreateDir(GetcurrentDir + '\ConfigGrid');
  // Salva a customização da grid no arquivo INI
  GridVendasItemDBTableView1.StoreToIniFile(GetcurrentDir + '\ConfigGrid\LayoutGridVendasItem.ini');

   TelaCadastroProdutoVenda.MVendasItem.Close;


end;

procedure TTelaCadastroVendas.FormShow(Sender: TObject);
var
   consultaNrVenda :   TConsultaNrVenda;
begin
  dtvenda.date := now;
  TelaCadastroProdutoVenda.MVendasItem.Open;
  CadastroAreceber.MAreceber.Open;

  // ativar inclusão de venda
  MVenda.Append;

  // consulta Nrdocumento
   consultaNrVenda := TConsultaNrVenda.Create;
   try
   consultaNrVenda.ConsultandoNrDocumento;
   nrdocuemnto := consultaNrVenda.nrdocumento;
   finally
      consultaNrVenda.Free;
  end;
   DBEdit10.text := IntToStr (nrdocuemnto);

      // Restaura a customização da grid de um arquivo INI
  if FileExists(GetcurrentDir + '\ConfigGrid\LayoutGridVendasItem.ini') then
    GridVendasItemDBTableView1.RestoreFromIniFile(GetcurrentDir + '\ConfigGrid\LayoutGridVendasItem.ini');
end;


procedure TTelaCadastroVendas.PageControl1Change(Sender: TObject);
begin
  //TotalVenda
end;

procedure TTelaCadastroVendas.TotalVenda;
var
  Total: Double;
begin
  Total := 0;
   TelaCadastroProdutoVenda.MVendasItem.First;
  while not  TelaCadastroProdutoVenda.MVendasItem.Eof do
  begin
    Total := Total +  TelaCadastroProdutoVenda.MVendasItem.FieldByName('vlitem').AsFloat;
     TelaCadastroProdutoVenda.MVendasItem.Next;
  end;
  TotalVendido :=   Total;
  Valor.text := FloatToStr(TotalVendido);

end;

procedure TTelaCadastroVendas.AdicionarExit(Sender: TObject);
begin
  TotalVenda;
end;

procedure TTelaCadastroVendas.AdicionarTitutloClick(Sender: TObject);
begin
  try
    CadastroAreceber.MAreceber.Append;
  except
    on E: Exception do
      ShowMessage('Erro ao ativar ClientDataSet: ' + E.Message);
  end;


    CadastroAreceber.ShowModal;
end;


end.
