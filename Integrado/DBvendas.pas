unit DBvendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Datasnap.DBClient,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TDbVendas1 = class(TForm)
    DbVendas: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    TabelaVenda: TFDTable;
    DsVendas: TDataSource;
    Mvendas: TClientDataSet;
    Pvendas: TDataSetProvider;
    TabelaVendaidvenda: TIntegerField;
    TabelaVendaidcliente: TIntegerField;
    TabelaVendaidformapagamento: TIntegerField;
    TabelaVendadtvenda: TDateField;
    TabelaVendanmformapagamento: TWideStringField;
    TabelaVendanmcliente: TWideStringField;
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
    TabelaVendanrdocumento: TIntegerField;
    Mvendasidvenda: TIntegerField;
    Mvendasidcliente: TIntegerField;
    Mvendasidformapagamento: TIntegerField;
    Mvendasdtcadastro: TDateField;
    Mvendasdtvenda: TDateField;
    Mvendasnmformapagamento: TWideStringField;
    Mvendasnmcliente: TWideStringField;
    Mvendasnrdocumento: TIntegerField;
    MvendasItemidvendasitem: TIntegerField;
    MvendasItemidvenda: TIntegerField;
    MvendasItemidproduto: TIntegerField;
    MvendasItemnmproduto: TWideStringField;
    MvendasItemqtvendido: TIntegerField;
    Qvendasidvenda: TIntegerField;
    Qvendasidcliente: TIntegerField;
    Qvendasidformapagamento: TIntegerField;
    Qvendasdtcadastro: TDateField;
    Qvendasdtvenda: TDateField;
    Qvendasnmformapagamento: TWideStringField;
    Qvendasnmcliente: TWideStringField;
    Qvendasnrdocumento: TIntegerField;
    Qcliente: TFDQuery;
    Qclienteidcliente: TIntegerField;
    Qclientenmcliente: TWideStringField;
    Qclientecpf_cnpj: TWideStringField;
    Qclientenmendereco: TWideStringField;
    Qclientenrendere�o: TWideStringField;
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
    TempItem: TFDTable;
    MTempItem: TClientDataSet;
    PTempItem: TDataSetProvider;
    TempItemiditemvenda: TIntegerField;
    TempItemnmitemvenda: TWideStringField;
    MTempItemiditemvenda: TIntegerField;
    MTempItemnmitemvenda: TWideStringField;
    DsTempItem: TDataSource;
    TempItemidproduto: TIntegerField;
    MTempItemidproduto: TIntegerField;
    Qitemvendasum: TSingleField;
    TempItemqtitem: TIntegerField;
    MTempItemqtitem: TIntegerField;
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
    TabelaVendadtcadastro: TDateField;
    TempItemvlunitario: TSingleField;
    TempItemvlitem: TSingleField;
    MTempItemvlunitario: TSingleField;
    MTempItemvlitem: TSingleField;
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
    FDUpdateSQL1: TFDUpdateSQL;
    DataSource1: TDataSource;
    FDUpdateSQL2: TFDUpdateSQL;
    DataSource2: TDataSource;
    Qxml: TFDQuery;
    DsQxml: TDataSource;
    Qxmlitem: TFDQuery;
    DsQxmlitem: TDataSource;
    TabelaVendavlvenda: TSingleField;
    Mvendasvlvenda: TSingleField;
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
    QestoqueTemp: TFDQuery;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    DateField4: TDateField;
    WideStringField12: TWideStringField;
    DateField5: TDateField;
    IntegerField10: TIntegerField;
    procedure QitemvendaAfterPost(DataSet: TDataSet);
    procedure QitemvendaAfterCancel(DataSet: TDataSet);
    procedure QitemvendaAfterDelete(DataSet: TDataSet);
    procedure MTempItemAfterCancel(DataSet: TDataSet);
    procedure MTempItemAfterDelete(DataSet: TDataSet);
    procedure MTempItemAfterPost(DataSet: TDataSet);
    procedure MvendasAfterPost(DataSet: TDataSet);
    procedure MvendasAfterDelete(DataSet: TDataSet);
    procedure MvendasAfterCancel(DataSet: TDataSet);
    procedure QvendasAfterCancel(DataSet: TDataSet);
    procedure QvendasAfterDelete(DataSet: TDataSet);
    procedure QvendasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbVendas1: TDbVendas1;

implementation

{$R *.dfm}

procedure TDbVendas1.MTempItemAfterCancel(DataSet: TDataSet);
begin
    MTempItem.CancelUpdates;
end;

procedure TDbVendas1.MTempItemAfterDelete(DataSet: TDataSet);
begin
    MTempItem.ApplyUpdates(-1);
end;

procedure TDbVendas1.MTempItemAfterPost(DataSet: TDataSet);
begin
    MTempItem.ApplyUpdates(-1);
end;

procedure TDbVendas1.MvendasAfterCancel(DataSet: TDataSet);
begin
      Mvendas.CancelUpdates;
end;

procedure TDbVendas1.MvendasAfterDelete(DataSet: TDataSet);
begin
      Mvendas.ApplyUpdates(-1);
end;

procedure TDbVendas1.MvendasAfterPost(DataSet: TDataSet);
begin
      Mvendas.ApplyUpdates(-1);
end;


procedure TDbVendas1.QitemvendaAfterCancel(DataSet: TDataSet);
begin
     Qitemvenda.CancelUpdates;
end;

procedure TDbVendas1.QitemvendaAfterDelete(DataSet: TDataSet);
begin
    Qitemvenda.ApplyUpdates(-1);
end;

procedure TDbVendas1.QitemvendaAfterPost(DataSet: TDataSet);
begin
    Qitemvenda.ApplyUpdates(-1);
end;

procedure TDbVendas1.QvendasAfterCancel(DataSet: TDataSet);
begin
   Qvendas.CancelUpdates;
end;

procedure TDbVendas1.QvendasAfterDelete(DataSet: TDataSet);
begin
   Qvendas.ApplyUpdates(-1);
end;

procedure TDbVendas1.QvendasAfterPost(DataSet: TDataSet);
begin
   Qvendas.ApplyUpdates(-1);
end;

end.
