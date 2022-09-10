unit DbCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, Datasnap.DBClient,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDbClient = class(TForm)
    DbFin: TFDConnection;
    Qcliente: TFDQuery;
    TabelaCliente: TFDTable;
    Dscliente: TDataSource;
    Mcliente: TClientDataSet;
    Pcliente: TDataSetProvider;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    TabelaClienteidcliente: TIntegerField;
    TabelaClientenmcliente: TWideStringField;
    TabelaClientecpf_cnpj: TWideStringField;
    TabelaClientenmendereco: TWideStringField;
    TabelaClientenrendereço: TWideStringField;
    TabelaClientecomplemento: TWideStringField;
    TabelaClientedtcadastro: TDateField;
    TabelaClientenmbairro: TWideStringField;
    TabelaClientenmcidade: TWideStringField;
    TabelaClientenmestado: TWideStringField;
    Mclienteidcliente: TIntegerField;
    Mclientenmcliente: TWideStringField;
    Mclientecpf_cnpj: TWideStringField;
    Mclientenmendereco: TWideStringField;
    Mclientenrendereço: TWideStringField;
    Mclientecomplemento: TWideStringField;
    Mclientedtcadastro: TDateField;
    Mclientenmbairro: TWideStringField;
    Mclientenmcidade: TWideStringField;
    Mclientenmestado: TWideStringField;
    DsQcliente: TDataSource;
    Qclienteidcliente: TIntegerField;
    Qclientenmcliente: TWideStringField;
    Qclientecpf_cnpj: TWideStringField;
    Qclientenmendereco: TWideStringField;
    Qclientenrendereço: TWideStringField;
    Qclientecomplemento: TWideStringField;
    Qclientedtcadastro: TDateField;
    Qclientenmbairro: TWideStringField;
    Qclientenmcidade: TWideStringField;
    Qclientenmestado: TWideStringField;
    TabelaClientecdcliente: TWideStringField;
    Mclientecdcliente: TWideStringField;
    Qclientecdcliente: TWideStringField;
    procedure MclienteAfterCancel(DataSet: TDataSet);
    procedure MclienteAfterPost(DataSet: TDataSet);
    procedure MclienteAfterDelete(DataSet: TDataSet);
    procedure QclienteAfterCancel(DataSet: TDataSet);
    procedure QclienteAfterDelete(DataSet: TDataSet);
    procedure QclienteAfterPost(DataSet: TDataSet);
    procedure TabelaClienteAfterCancel(DataSet: TDataSet);
    procedure TabelaClienteAfterDelete(DataSet: TDataSet);
    procedure TabelaClienteAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbClient: TDbClient;

implementation

{$R *.dfm}

procedure TDbClient.MclienteAfterCancel(DataSet: TDataSet);
begin
    MCliente.CancelUpdates;
end;


procedure TDbClient.MclienteAfterDelete(DataSet: TDataSet);
begin
     Mcliente.ApplyUpdates(-1);
end;

procedure TDbClient.MclienteAfterPost(DataSet: TDataSet);
begin
     Mcliente.ApplyUpdates(-1);
end;

procedure TDbClient.QclienteAfterCancel(DataSet: TDataSet);
begin
    QCliente.CancelUpdates;
end;

procedure TDbClient.QclienteAfterDelete(DataSet: TDataSet);
begin
    Qcliente.ApplyUpdates(-1);
end;

procedure TDbClient.QclienteAfterPost(DataSet: TDataSet);
begin
    Qcliente.ApplyUpdates(-1);
end;

procedure TDbClient.TabelaClienteAfterCancel(DataSet: TDataSet);
begin
    TabelaCliente.CancelUpdates;
end;

procedure TDbClient.TabelaClienteAfterDelete(DataSet: TDataSet);
begin
    TabelaCliente.ApplyUpdates(-1);
end;

procedure TDbClient.TabelaClienteAfterPost(DataSet: TDataSet);
begin
    TabelaCliente.ApplyUpdates(-1);
end;

end.
