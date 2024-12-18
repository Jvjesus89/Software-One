unit DbMovimento;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient;

type
  TDbMov = class(TDataModule)
    Pproduto: TDataSetProvider;
    Mproduto: TClientDataSet;
    Mprodutonmproduto: TWideStringField;
    Mprodutocdproduto: TWideStringField;
    Mprodutonmfamiliaproduto: TWideStringField;
    Mprodutoidproduto: TIntegerField;
    QProduto: TFDQuery;
    QProdutoidproduto: TIntegerField;
    QProdutonmproduto: TWideStringField;
    QProdutocdproduto: TWideStringField;
    QProdutoidfamiliaproduto: TIntegerField;
    QProdutovlproduto: TSingleField;
    QProdutonmfamiliaproduto: TWideStringField;
    QProdutostproduto: TBooleanField;
    QProdutodtcadastro: TDateField;
    DsProdutoQ: TDataSource;
    QDisponivel: TFDQuery;
    QDisponivelqtdisponivel: TIntegerField;
    DsQdisponivel: TDataSource;
    QInseriMov: TFDQuery;
    DsQInseriMov: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbMov: TDbMov;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
