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
