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
    Produto: TFDTable;
    nmproduto: TWideStringField;
    cdproduto: TWideStringField;
    nmfamiliaproduto: TWideStringField;
    idproduto: TIntegerField;
    Pproduto: TDataSetProvider;
    Mproduto: TClientDataSet;
    Mprodutonmproduto: TWideStringField;
    Mprodutocdproduto: TWideStringField;
    Mprodutonmfamiliaproduto: TWideStringField;
    Mprodutoidproduto: TIntegerField;
    DsProduto: TDataSource;
    QConsulta: TFDQuery;
    QConsultaqtmovimentada: TIntegerField;
    QConsultaqtdisponivel: TIntegerField;
    QConsultadtmovimento: TDateField;
    QConsultatpmovimento: TWideStringField;
    QConsultadtcadastro: TDateField;
    QConsultaidmovimento: TIntegerField;
    QConsultaidproduto: TIntegerField;
    QProduto: TFDQuery;
    QProdutoidproduto: TIntegerField;
    QProdutonmproduto: TWideStringField;
    QProdutocdproduto: TWideStringField;
    QProdutoidfamiliaproduto: TIntegerField;
    QProdutovlproduto: TSingleField;
    QProdutonmfamiliaproduto: TWideStringField;
    QProdutostproduto: TBooleanField;
    QProdutodtcadastro: TDateField;
    DsConsultaQ: TDataSource;
    DsProdutoQ: TDataSource;
    QDisponivel: TFDQuery;
    QDisponivelqtdisponivel: TIntegerField;
    DsQdisponivel: TDataSource;
    QCriarTabelaTemp: TFDQuery;
    DsQCriarTabelaTemp: TDataSource;
    QConsultaTemp: TFDQuery;
    QConsultaTempidmovimento: TFDAutoIncField;
    QConsultaTempidproduto: TIntegerField;
    QConsultaTempqtmovimentada: TIntegerField;
    QConsultaTempqtdisponivel: TIntegerField;
    QConsultaTempdtmovimento: TDateField;
    QConsultaTemptpmovimento: TWideStringField;
    QConsultaTempdtcadastro: TDateField;
    QConsultaTempidorigem: TIntegerField;
    QConsultaTempidproduto_1: TIntegerField;
    QConsultaTempnmproduto: TWideStringField;
    QConsultaTempcdproduto: TWideStringField;
    QConsultaTempidfamiliaproduto: TIntegerField;
    QConsultaTempvlproduto: TSingleField;
    QConsultaTempnmfamiliaproduto: TWideStringField;
    QConsultaTempstproduto: TBooleanField;
    QConsultaTempdtcadastro_1: TDateField;
    DsQConsultaTemp: TDataSource;
    QProduto1: TFDQuery;
    QProduto1idproduto: TIntegerField;
    QProduto1nmproduto: TWideStringField;
    QProduto1cdproduto: TWideStringField;
    QProduto1idfamiliaproduto: TIntegerField;
    QProduto1vlproduto: TSingleField;
    QProduto1nmfamiliaproduto: TWideStringField;
    QProduto1stproduto: TBooleanField;
    QProduto1dtcadastro: TDateField;
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
