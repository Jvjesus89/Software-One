unit DbConfiguracaoFinanceiro;

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
  TDbConfigFin = class(TForm)
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
    Mformadtcadastro: TDateField;
    Mformanmformapagamento: TWideStringField;
    QFormaPagamento: TFDQuery;
    DsQformaPagamento: TDataSource;
    QFormaPagamentonmformapagamento: TWideStringField;
    QFormaPagamentoidformapagamento: TIntegerField;
    FormaPagamentocdformapagamento: TIntegerField;
    Mformacdformapagamento: TIntegerField;
    Prazoscdprazo: TIntegerField;
    Mprazocdprazo: TIntegerField;
    QFormaPagamentocdformapagamento: TIntegerField;
    Label3: TLabel;
    ContaCorrente: TFDTable;
    DsConta: TDataSource;
    Mconta: TClientDataSet;
    Pconta: TDataSetProvider;
    Banco: TFDTable;
    DsBanco: TDataSource;
    MBanco: TClientDataSet;
    PBanco: TDataSetProvider;
    MAgencia: TClientDataSet;
    PAgencia: TDataSetProvider;
    DsAgencia: TDataSource;
    Agencia: TFDTable;
    Label4: TLabel;
    Label5: TLabel;
    ContaCorrenteidcontabancaria: TIntegerField;
    ContaCorrenteidagencia: TIntegerField;
    ContaCorrenteidbanco: TIntegerField;
    ContaCorrentenrcontacorrente: TIntegerField;
    ContaCorrentenmcontabancaria: TWideStringField;
    ContaCorrentedtcadastro: TDateField;
    Mcontaidcontabancaria: TIntegerField;
    Mcontaidagencia: TIntegerField;
    Mcontaidbanco: TIntegerField;
    Mcontanrcontacorrente: TIntegerField;
    Mcontanmcontabancaria: TWideStringField;
    Mcontadtcadastro: TDateField;
    Bancoidbanco: TIntegerField;
    Banconmbanco: TWideStringField;
    Banconrbanco: TIntegerField;
    Bancodtcadastro: TDateField;
    Agenciaidagencia: TIntegerField;
    Agencianmagencia: TWideStringField;
    Agencianragencia: TIntegerField;
    Agenciadtcadastro: TDateField;
    MAgenciaidagencia: TIntegerField;
    MAgencianmagencia: TWideStringField;
    MAgencianragencia: TIntegerField;
    MAgenciadtcadastro: TDateField;
    QContaCorrente: TFDQuery;
    DsQContaCorrente: TDataSource;
    Qbanco: TFDQuery;
    DsQBanco: TDataSource;
    Qagencia: TFDQuery;
    DsQAgencia: TDataSource;
    Qbancoidbanco: TIntegerField;
    Qbanconmbanco: TWideStringField;
    Qbanconrbanco: TIntegerField;
    Qbancodtcadastro: TDateField;
    Qbancocdbanco: TIntegerField;
    MBancoidbanco: TIntegerField;
    MBanconmbanco: TWideStringField;
    MBanconrbanco: TIntegerField;
    MBancodtcadastro: TDateField;
    Bancocdbanco: TIntegerField;
    MBancocdbanco: TIntegerField;
    QBancoAgencia: TFDQuery;
    IntegerField3: TIntegerField;
    WideStringField2: TWideStringField;
    IntegerField4: TIntegerField;
    DateField1: TDateField;
    IntegerField7: TIntegerField;
    DsQBancoAgencia: TDataSource;
    Agenciacdagencia: TIntegerField;
    Agenciaidbanco: TIntegerField;
    MAgenciacdagencia: TIntegerField;
    MAgenciaidbanco: TIntegerField;
    Qagencianmagencia: TWideStringField;
    Qagencianragencia: TIntegerField;
    Qagenciacdagencia: TIntegerField;
    ContaCorrentecdcontabancaria: TIntegerField;
    Mcontacdcontabancaria: TIntegerField;
    QContaCorrenteidcontabancaria: TIntegerField;
    QContaCorrenteidagencia: TIntegerField;
    QContaCorrenteidbanco: TIntegerField;
    QContaCorrentenrcontacorrente: TIntegerField;
    QContaCorrentenmcontabancaria: TWideStringField;
    QContaCorrentedtcadastro: TDateField;
    QContaCorrentecdcontabancaria: TIntegerField;
    QAgenciaConta: TFDQuery;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DsQAgenciaConta: TDataSource;
    QAgenciaContaidagencia: TIntegerField;
    procedure MformaAfterDelete(DataSet: TDataSet);
    procedure MformaAfterCancel(DataSet: TDataSet);
    procedure MformaAfterPost(DataSet: TDataSet);
    procedure MprazoAfterCancel(DataSet: TDataSet);
    procedure MprazoAfterDelete(DataSet: TDataSet);
    procedure MprazoAfterPost(DataSet: TDataSet);
    procedure MBancoAfterCancel(DataSet: TDataSet);
    procedure MBancoAfterDelete(DataSet: TDataSet);
    procedure MBancoAfterPost(DataSet: TDataSet);
    procedure MAgenciaAfterCancel(DataSet: TDataSet);
    procedure MAgenciaAfterDelete(DataSet: TDataSet);
    procedure MAgenciaAfterPost(DataSet: TDataSet);
    procedure McontaAfterCancel(DataSet: TDataSet);
    procedure McontaAfterDelete(DataSet: TDataSet);
    procedure McontaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbConfigFin: TDbConfigFin;

implementation

{$R *.dfm}

uses DbPrincipal;




procedure TDbConfigFin.MAgenciaAfterCancel(DataSet: TDataSet);
begin
   MAgencia.CancelUpdates;
end;

procedure TDbConfigFin.MAgenciaAfterDelete(DataSet: TDataSet);
begin
  MAgencia.ApplyUpdates(-1);
end;

procedure TDbConfigFin.MAgenciaAfterPost(DataSet: TDataSet);
begin
  MAgencia.ApplyUpdates(-1);
end;

procedure TDbConfigFin.MBancoAfterCancel(DataSet: TDataSet);
begin
    MBanco.CancelUpdates;
end;

procedure TDbConfigFin.MBancoAfterDelete(DataSet: TDataSet);
begin
   MBanco.ApplyUpdates(-1);
end;

procedure TDbConfigFin.MBancoAfterPost(DataSet: TDataSet);
begin
   MBanco.ApplyUpdates(-1);
end;

procedure TDbConfigFin.McontaAfterCancel(DataSet: TDataSet);
begin
   Mconta.CancelUpdates;
end;

procedure TDbConfigFin.McontaAfterDelete(DataSet: TDataSet);
begin
     Mconta.ApplyUpdates(-1);
end;

procedure TDbConfigFin.McontaAfterPost(DataSet: TDataSet);
begin
    Mconta.ApplyUpdates(-1);
end;

procedure TDbConfigFin.MformaAfterCancel(DataSet: TDataSet);
begin
   Mforma.CancelUpdates;
end;

procedure TDbConfigFin.MformaAfterDelete(DataSet: TDataSet);
begin
    Mforma.ApplyUpdates(-1);
end;

procedure TDbConfigFin.MformaAfterPost(DataSet: TDataSet);
begin
    Mforma.ApplyUpdates(-1);
end;

procedure TDbConfigFin.MprazoAfterCancel(DataSet: TDataSet);
begin
    Mprazo.CancelUpdates;
end;

procedure TDbConfigFin.MprazoAfterDelete(DataSet: TDataSet);
begin
   Mprazo.ApplyUpdates(-1);
end;

procedure TDbConfigFin.MprazoAfterPost(DataSet: TDataSet);
begin
    Mprazo.ApplyUpdates(-1);
end;

end.
