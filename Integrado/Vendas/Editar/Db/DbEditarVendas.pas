unit DbEditarVendas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDbEditVenda = class(TDataModule)
    QCriaTabelaTemp: TFDQuery;
    QExcluiTabelaTemp: TFDQuery;
    QInseriTabelaTemp: TFDQuery;
    QConsultavendas: TFDQuery;
    DsQConsultaVendas: TDataSource;
    QConsultavendasidvenda: TFDAutoIncField;
    QConsultavendasidcliente: TIntegerField;
    QConsultavendasvlvenda: TSingleField;
    QConsultavendasdtcadastro: TDateField;
    QConsultavendasdtvenda: TDateField;
    QConsultavendasnrdocumento: TIntegerField;
    QConsultaVendaItem: TFDQuery;
    DsQConsultaVendaItem: TDataSource;
    QConsultaVendaItemidvendasitem: TFDAutoIncField;
    QConsultaVendaItemidvenda: TIntegerField;
    QConsultaVendaItemidproduto: TIntegerField;
    QConsultaVendaItemvlunitario: TSingleField;
    QConsultaVendaItemqtvendido: TIntegerField;
    QConsultaVendaItemvlitem: TSingleField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbEditVenda: TDbEditVenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
