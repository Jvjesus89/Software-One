unit DBvendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Datasnap.DBClient,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TDbVendas1 = class(TForm)
    TabelaVendaItem: TFDTable;
    DsVendasItem: TDataSource;
    MvendasItem: TClientDataSet;
    Pvendasitem: TDataSetProvider;
    Qvendas: TFDQuery;
    QvendasItem: TFDQuery;
    TabelaVendaItemidvendasitem: TIntegerField;
    TabelaVendaItemidvenda: TIntegerField;
    TabelaVendaItemidproduto: TIntegerField;
    TabelaVendaItemnmproduto: TWideStringField;
    TabelaVendaItemqtvendido: TIntegerField;
    DsQVendasItem: TDataSource;
    DsQVendas: TDataSource;
    MvendasItemidvendasitem: TIntegerField;
    MvendasItemidvenda: TIntegerField;
    MvendasItemidproduto: TIntegerField;
    MvendasItemnmproduto: TWideStringField;
    MvendasItemqtvendido: TIntegerField;
    Qvendasidvenda: TIntegerField;
    Qvendasidcliente: TIntegerField;
    Qvendasdtcadastro: TDateField;
    Qvendasdtvenda: TDateField;
    Qvendasnrdocumento: TIntegerField;
    Qcliente: TFDQuery;
    Qclienteidcliente: TIntegerField;
    Qclientenmcliente: TWideStringField;
    Qclientecpf_cnpj: TWideStringField;
    Qclientenmendereco: TWideStringField;
    Qclientenrendereço: TWideStringField;
    Qclientecomplemento: TWideStringField;
    Qclientedtcadastro: TDateField;
    Qclientenmbairro: TWideStringField;
    Qclientenmcidade: TWideStringField;
    Qclientenmestado: TWideStringField;
    Qclientecdcliente: TWideStringField;
    DsQcliente: TDataSource;
    QProduto: TFDQuery;
    QProdutoidproduto: TIntegerField;
    QProdutonmproduto: TWideStringField;
    QProdutocdproduto: TWideStringField;
    QProdutoidfamiliaproduto: TIntegerField;
    QProdutonmfamiliaproduto: TWideStringField;
    QProdutostproduto: TBooleanField;
    QProdutodtcadastro: TDateField;
    DsQproduto: TDataSource;
    Qitemvenda: TFDQuery;
    DsQitemvenda: TDataSource;
    DsTempItemCampos: TDataSource;
    Qitemvendasum: TSingleField;
    QEntradaVenda: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField4: TIntegerField;
    QvendasItemidvendasitem: TIntegerField;
    QvendasItemidvenda: TIntegerField;
    QvendasItemidproduto: TIntegerField;
    QvendasItemnmproduto: TWideStringField;
    QvendasItemqtvendido: TIntegerField;
    QEntradaVendaItem: TFDQuery;
    QIdVenda: TFDQuery;
    QEntradaTitulo: TFDQuery;
    QIdVendaidvenda: TIntegerField;
    DsIdVenda: TDataSource;
    DsEntradaItens: TDataSource;
    QEntradaVendaItemidvendasitem: TIntegerField;
    QEntradaVendaItemidvenda: TIntegerField;
    QEntradaVendaItemidproduto: TIntegerField;
    QEntradaVendaItemnmproduto: TWideStringField;
    QEntradaVendaItemqtvendido: TIntegerField;
    QProdutovlproduto: TSingleField;
    DsQxmlitem: TDataSource;
    TabelaVendaItemvlitem: TSingleField;
    TabelaVendaItemvlunitario: TSingleField;
    MvendasItemvlitem: TSingleField;
    MvendasItemvlunitario: TSingleField;
    Qvendasvlvenda: TSingleField;
    QEntradaVendavlvenda: TSingleField;
    QvendasItemvlunitario: TSingleField;
    QvendasItemvlitem: TSingleField;
    QEntradaVendaItemvlunitario: TSingleField;
    QEntradaVendaItemvlitem: TSingleField;
    TempItemExclusao: TFDQuery;
    IntegerField5: TIntegerField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    DateField3: TDateField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    Qestoque: TFDQuery;
    DsQestoque: TDataSource;
    Qestoqueqtdisponivel: TIntegerField;
    Qestoqueidproduto: TIntegerField;
    Qestoqueidmovimento: TIntegerField;
    Qestoqueqtmovimentada: TIntegerField;
    Qestoquedtmovimento: TDateField;
    Qestoquetpmovimento: TWideStringField;
    Qestoquedtcadastro: TDateField;
    QestoqueIdorigem: TIntegerField;
    QExclusãoVenda: TFDQuery;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    DateField6: TDateField;
    DateField7: TDateField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    IntegerField14: TIntegerField;
    SingleField1: TSingleField;
    Label1: TLabel;
    QExclusãoVendaItem: TFDQuery;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    WideStringField15: TWideStringField;
    IntegerField18: TIntegerField;
    SingleField2: TSingleField;
    SingleField3: TSingleField;
    QExclusãoEstoque: TFDQuery;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    DateField8: TDateField;
    WideStringField16: TWideStringField;
    DateField9: TDateField;
    IntegerField23: TIntegerField;
    QExclusãoAreceber: TFDQuery;
    QExclusãoTempItemVenda: TFDQuery;
    Label2: TLabel;
    QPrazo: TFDQuery;
    DsQprazo: TDataSource;
    QPrazoidprazo: TIntegerField;
    QPrazonmprazo: TWideStringField;
    QPrazonrparcelas: TIntegerField;
    QPrazoidformapagamento: TIntegerField;
    QPrazocdprazo: TIntegerField;
    QFormaPagamento: TFDQuery;
    DsQFormaPagamento: TDataSource;
    QFormaPagamentoidformapagamento: TIntegerField;
    QFormaPagamentonmformapagamento: TWideStringField;
    QFormaPagamentodtcadastro: TDateField;
    QFormaPagamentocdformapagamento: TIntegerField;
    Label3: TLabel;
    QarecebrTemp: TFDQuery;
    DsQAreceberTemp: TDataSource;
    QarecebrTempidareceber: TIntegerField;
    QarecebrTempidcliente: TIntegerField;
    QarecebrTempnmcliente: TWideStringField;
    QarecebrTempidformapagamento: TIntegerField;
    QarecebrTempnmformapagamento: TWideStringField;
    QarecebrTempvltitulo: TSingleField;
    QarecebrTempnrtitulo: TIntegerField;
    QarecebrTempdtcadastro: TDateField;
    QarecebrTempdtvencimento: TDateField;
    QarecebrTempidorigem: TIntegerField;
    QarecebrTempInserir: TFDQuery;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    WideStringField17: TWideStringField;
    IntegerField26: TIntegerField;
    WideStringField18: TWideStringField;
    SingleField4: TSingleField;
    IntegerField27: TIntegerField;
    DateField10: TDateField;
    DateField11: TDateField;
    IntegerField28: TIntegerField;
    Label4: TLabel;
    Vendas: TLabel;
    Qrtm: TFDQuery;
    DsQrtm: TDataSource;
    Label5: TLabel;
    QvendasitemCampos: TFDQuery;
    Qvendasnmcliente: TWideStringField;
    Label6: TLabel;
    QCriaTabelaTemp: TFDQuery;
    QExcluiTabelaTemp: TFDQuery;
    QTempCamposVenda: TFDQuery;
    QInseriTabelaTemp: TFDQuery;
    DsQtempCamposVendas: TDataSource;
    QTempCamposVendaidvenda: TFDAutoIncField;
    QTempCamposVendaidcliente: TIntegerField;
    QTempCamposVendavlvenda: TSingleField;
    QTempCamposVendadtcadastro: TDateField;
    QTempCamposVendadtvenda: TDateField;
    QTempCamposVendanrdocumento: TIntegerField;
    QTempCamposVendanmcliente: TWideStringField;
    QConsultaTabelaTemp: TFDQuery;
    QvendasitemCamposidvendaitem: TIntegerField;
    QvendasitemCamposvlunitario: TSingleField;
    QvendasitemCamposvlitem: TSingleField;
    QvendasitemCamposidproduto: TIntegerField;
    QvendasitemCamposqtitem: TIntegerField;
    QvendasitemCamposidvenda: TIntegerField;
    QvendasitemCamposnmproduto: TWideStringField;
    QvendasitemCamposvlproduto: TSingleField;
    QTempVendasItem: TFDQuery;
    IntegerField6: TIntegerField;
    SingleField5: TSingleField;
    SingleField6: TSingleField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    WideStringField12: TWideStringField;
    SingleField7: TSingleField;
    DsQTempVendasItem: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbVendas1: TDbVendas1;

implementation

{$R *.dfm}

uses DbPrincipal;


end.
