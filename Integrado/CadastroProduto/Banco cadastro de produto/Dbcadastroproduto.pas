unit Dbcadastroproduto;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient,
  FireDAC.Comp.Client, Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet;

type
  TDbprod = class(TDataModule)
    DsProduto: TDataSource;
    TabelaProd: TFDTable;
    Pproduto: TDataSetProvider;
    DsQproduto: TDataSource;
    Qproduto: TFDQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField2: TIntegerField;
    WideStringField3: TWideStringField;
    BooleanField1: TBooleanField;
    DateField1: TDateField;
    Qprodutovlproduto: TSingleField;
    QProdutoEdicao: TFDQuery;
    IntegerField3: TIntegerField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    IntegerField4: TIntegerField;
    WideStringField6: TWideStringField;
    BooleanField2: TBooleanField;
    DateField2: TDateField;
    QProdutoEdicaovlproduto: TSingleField;
    Mproduto: TClientDataSet;
    Qexclus�o: TFDQuery;
    IntegerField7: TIntegerField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    IntegerField8: TIntegerField;
    WideStringField12: TWideStringField;
    BooleanField4: TBooleanField;
    DateField4: TDateField;
    SingleField1: TSingleField;
    DsQprodutoEditar: TDataSource;
    DsConsultaCodigo: TDataSource;
    QConsultaCodigo: TFDQuery;
    QConsultaCodigocdproduto: TWideStringField;
    TabelaProdidproduto: TFDAutoIncField;
    TabelaProdnmproduto: TWideStringField;
    TabelaProdcdproduto: TWideStringField;
    TabelaProdidfamiliaproduto: TIntegerField;
    TabelaProdvlproduto: TSingleField;
    TabelaProdnmfamiliaproduto: TWideStringField;
    TabelaProdstproduto: TBooleanField;
    TabelaProddtcadastro: TDateField;
    Mprodutoidproduto: TAutoIncField;
    Mprodutonmproduto: TWideStringField;
    Mprodutocdproduto: TWideStringField;
    Mprodutoidfamiliaproduto: TIntegerField;
    Mprodutovlproduto: TSingleField;
    Mprodutonmfamiliaproduto: TWideStringField;
    Mprodutostproduto: TBooleanField;
    Mprodutodtcadastro: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dbprod: TDbprod;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DbPrincipal;

{$R *.dfm}

end.
