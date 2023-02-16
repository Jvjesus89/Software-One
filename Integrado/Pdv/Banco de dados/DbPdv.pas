unit DbPdv;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TBancoPdv = class(TDataModule)
    DsQvendasPdv: TDataSource;
    DbPdv: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    QVendasPdv: TFDQuery;
    QvendasPdvItem: TFDQuery;
    DsQvendasPdvItem: TDataSource;
    QVendasPdvidvenda: TIntegerField;
    QVendasPdvidcliente: TIntegerField;
    QVendasPdvidformapagamento: TIntegerField;
    QVendasPdvvlvenda: TSingleField;
    QVendasPdvdtcadastro: TDateField;
    QVendasPdvdtvenda: TDateField;
    QVendasPdvnmformapagamento: TWideStringField;
    QVendasPdvnmcliente: TWideStringField;
    QVendasPdvnrdocumento: TIntegerField;
    QvendasPdvItemiditemvenda: TIntegerField;
    QvendasPdvItemnmitemvenda: TWideStringField;
    QvendasPdvItemvlunitario: TSingleField;
    QvendasPdvItemvlitem: TSingleField;
    QvendasPdvItemidproduto: TIntegerField;
    QvendasPdvItemqtitem: TIntegerField;
    QvendasPdvItemidvenda: TIntegerField;
    QvendasPdvItemvldesconto: TSingleField;
    QvendasPdvItemvlacrescimo: TSingleField;
    QvendasPdvItemnmsistema: TWideStringField;
    QvendasPdvItemidusuario: TIntegerField;
    QProdutos: TFDQuery;
    DsQprodutos: TDataSource;
    QProdutosidproduto: TIntegerField;
    QProdutosnmproduto: TWideStringField;
    QProdutoscdproduto: TWideStringField;
    QProdutosidfamiliaproduto: TIntegerField;
    QProdutosvlproduto: TSingleField;
    QProdutosnmfamiliaproduto: TWideStringField;
    QProdutosstproduto: TBooleanField;
    QProdutosdtcadastro: TDateField;
    QvendasPdvItemcdproduto: TWideStringField;
    QVendasPdvCreateTable: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    SingleField1: TSingleField;
    DateField1: TDateField;
    DateField2: TDateField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField4: TIntegerField;
    QVendasPdvItemCreateTable: TFDQuery;
    IntegerField5: TIntegerField;
    WideStringField3: TWideStringField;
    SingleField2: TSingleField;
    SingleField3: TSingleField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    SingleField4: TSingleField;
    SingleField5: TSingleField;
    WideStringField4: TWideStringField;
    IntegerField9: TIntegerField;
    WideStringField5: TWideStringField;
    QVendasPdvTemp: TFDQuery;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    SingleField6: TSingleField;
    DateField3: TDateField;
    DateField4: TDateField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IntegerField13: TIntegerField;
    QVendasPdvTempItem: TFDQuery;
    IntegerField14: TIntegerField;
    WideStringField8: TWideStringField;
    SingleField7: TSingleField;
    SingleField8: TSingleField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    SingleField9: TSingleField;
    SingleField10: TSingleField;
    WideStringField9: TWideStringField;
    IntegerField18: TIntegerField;
    WideStringField10: TWideStringField;
    QVendasPdvItensCampo: TFDQuery;
    DsQVendasPdvItensCampo: TDataSource;
    QVendasPdvItensCampoiditemvenda: TIntegerField;
    QVendasPdvItensCamponmitemvenda: TWideStringField;
    QVendasPdvItensCampocdproduto: TWideStringField;
    QVendasPdvItensCampovlunitario: TSingleField;
    QVendasPdvItensCampovlitem: TSingleField;
    QVendasPdvItensCampoidproduto: TIntegerField;
    QVendasPdvItensCampoqtitem: TIntegerField;
    QVendasPdvItensCampoidvenda: TIntegerField;
    QVendasPdvItensCampovldesconto: TSingleField;
    QVendasPdvItensCampovlacrescimo: TSingleField;
    QVendasPdvItensCamponmsistema: TWideStringField;
    QVendasPdvItensCampoidusuario: TIntegerField;
    QInsereDados: TFDQuery;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    SingleField11: TSingleField;
    DateField5: TDateField;
    DateField6: TDateField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    IntegerField22: TIntegerField;
    QSomaItensTemp: TFDQuery;
    IntegerField23: TIntegerField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    SingleField12: TSingleField;
    SingleField13: TSingleField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    IntegerField26: TIntegerField;
    SingleField14: TSingleField;
    SingleField15: TSingleField;
    WideStringField15: TWideStringField;
    IntegerField27: TIntegerField;
    DsSomaItensTemp: TDataSource;
    QExcluiDados: TFDQuery;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    IntegerField30: TIntegerField;
    SingleField16: TSingleField;
    DateField7: TDateField;
    DateField8: TDateField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    IntegerField31: TIntegerField;
    QSomatorioValor: TFDQuery;
    DsQSomatorioValor: TDataSource;
    QSomatorioValorsum: TSingleField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BancoPdv: TBancoPdv;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.