unit DbConfiguracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.StdCtrls, Datasnap.Provider, Datasnap.DBClient, FireDAC.Comp.DataSet;

type
  TDbConfig = class(TForm)
    DB: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FormaPagamento: TFDTable;
    DsForma: TDataSource;
    Mforma: TClientDataSet;
    Pforma: TDataSetProvider;
    Label1: TLabel;
    FormaPagamentoidformapagamento: TIntegerField;
    FormaPagamentonmformapagamento: TWideStringField;
    Label2: TLabel;
    Prazos: TFDTable;
    DsPrazo: TDataSource;
    Mprazo: TClientDataSet;
    Pprazo: TDataSetProvider;
    Prazosidprazo: TIntegerField;
    Prazosnmprazo: TWideStringField;
    Prazosnrparcelas: TIntegerField;
    Prazosidformapagamento: TIntegerField;
    Mprazoidprazo: TIntegerField;
    Mprazonmprazo: TWideStringField;
    Mprazonrparcelas: TIntegerField;
    Mprazoidformapagamento: TIntegerField;
    FormaPagamentodtcadastro: TDateField;
    Mformaidformapagamento: TIntegerField;
    Mformanmformapagamento: TWideStringField;
    Mformadtcadastro: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbConfig: TDbConfig;

implementation

{$R *.dfm}

end.
