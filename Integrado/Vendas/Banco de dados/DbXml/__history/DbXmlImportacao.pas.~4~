unit DbXmlImportacao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDbImportacaoXml = class(TDataModule)
    DbVendas: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    QInseriDadosXml: TFDQuery;
    QconsultaTempVendas: TFDQuery;
    DsQconsultaTempVendas: TDataSource;
    QconsultaTempVendasidvenda: TIntegerField;
    QconsultaTempVendasidcliente: TIntegerField;
    QconsultaTempVendasidformapagamento: TIntegerField;
    QconsultaTempVendasvlvenda: TSingleField;
    QconsultaTempVendasdtcadastro: TDateField;
    QconsultaTempVendasdtvenda: TDateField;
    QconsultaTempVendasnmformapagamento: TWideStringField;
    QconsultaTempVendasnmcliente: TWideStringField;
    QconsultaTempVendasnrdocumento: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbImportacaoXml: TDbImportacaoXml;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
