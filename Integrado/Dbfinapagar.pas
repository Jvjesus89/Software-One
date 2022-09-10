unit Dbfinapagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDbFinApagar1 = class(TForm)
    DbFin: TFDConnection;
    DsApagar: TDataSource;
    Mapagar: TClientDataSet;
    Papagar: TDataSetProvider;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    DsQApagar: TDataSource;
    TabelaCliente: TFDTable;
    TabelaClienteidcliente: TIntegerField;
    TabelaClientenmcliente: TWideStringField;
    TabelaClientecpf_cnpj: TWideStringField;
    TabelaClientenmendereco: TWideStringField;
    TabelaClientenrendere�o: TWideStringField;
    TabelaClientecomplemento: TWideStringField;
    TabelaClientedtcadastro: TDateField;
    TabelaClientenmbairro: TWideStringField;
    TabelaClientenmcidade: TWideStringField;
    TabelaClientenmestado: TWideStringField;
    TabelaClientecdcliente: TWideStringField;
    Dscliente: TDataSource;
    Mcliente: TClientDataSet;
    Mclienteidcliente: TIntegerField;
    Mclientenmcliente: TWideStringField;
    Mclientecpf_cnpj: TWideStringField;
    Mclientenmendereco: TWideStringField;
    Mclientenrendere�o: TWideStringField;
    Mclientecomplemento: TWideStringField;
    Mclientedtcadastro: TDateField;
    Mclientenmbairro: TWideStringField;
    Mclientenmcidade: TWideStringField;
    Mclientenmestado: TWideStringField;
    Mclientecdcliente: TWideStringField;
    Pcliente: TDataSetProvider;
    Qcliente: TFDQuery;
    Qclienteidcliente: TIntegerField;
    Qclientenmcliente: TWideStringField;
    Qclientecpf_cnpj: TWideStringField;
    Qclientenmendereco: TWideStringField;
    Qclientenrendere�o: TWideStringField;
    Qclientecomplemento: TWideStringField;
    Qclientedtcadastro: TDateField;
    Qclientenmbairro: TWideStringField;
    Qclientenmcidade: TWideStringField;
    Qclientenmestado: TWideStringField;
    Qclientecdcliente: TWideStringField;
    DsQcliente: TDataSource;
    TabelaApagar: TFDTable;
    TabelaApagaridapagar: TIntegerField;
    TabelaApagaridcliente: TIntegerField;
    TabelaApagarnmcliente: TWideStringField;
    TabelaApagaridformapagamento: TIntegerField;
    TabelaApagarnmformapagamento: TWideStringField;
    TabelaApagarvltitulo: TSingleField;
    TabelaApagarnrtitulo: TIntegerField;
    TabelaApagardtcadastro: TDateField;
    TabelaApagardtvencimento: TDateField;
    Mapagaridapagar: TIntegerField;
    Mapagaridcliente: TIntegerField;
    Mapagarnmcliente: TWideStringField;
    Mapagaridformapagamento: TIntegerField;
    Mapagarnmformapagamento: TWideStringField;
    Mapagarvltitulo: TSingleField;
    Mapagarnrtitulo: TIntegerField;
    Mapagardtcadastro: TDateField;
    Mapagardtvencimento: TDateField;
    QApagar: TFDQuery;
    QApagaridcliente: TIntegerField;
    QApagarnmcliente: TWideStringField;
    QApagaridformapagamento: TIntegerField;
    QApagarnmformapagamento: TWideStringField;
    QApagarvltitulo: TSingleField;
    QApagarnrtitulo: TIntegerField;
    QApagardtcadastro: TDateField;
    QApagardtvencimento: TDateField;
    Qapagar1: TFDQuery;
    Qapagar1idapagar: TIntegerField;
    Qapagar1idcliente: TIntegerField;
    Qapagar1nmcliente: TWideStringField;
    Qapagar1idformapagamento: TIntegerField;
    Qapagar1nmformapagamento: TWideStringField;
    Qapagar1vltitulo: TSingleField;
    Qapagar1nrtitulo: TIntegerField;
    Qapagar1dtcadastro: TDateField;
    Qapagar1dtvencimento: TDateField;
    QApagaridapagar: TIntegerField;
    procedure MapagarAfterCancel(DataSet: TDataSet);
    procedure MapagarAfterDelete(DataSet: TDataSet);
    procedure MapagarAfterPost(DataSet: TDataSet);
    procedure QApagarAfterCancel(DataSet: TDataSet);
    procedure QApagarAfterDelete(DataSet: TDataSet);
    procedure QApagarAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbFinApagar1: TDbFinApagar1;

implementation

{$R *.dfm}

procedure TDbFinApagar1.MapagarAfterCancel(DataSet: TDataSet);
begin
    MApagar.CancelUpdates;
end;

procedure TDbFinApagar1.MapagarAfterDelete(DataSet: TDataSet);
begin
     MApagar.ApplyUpdates(-1);
end;

procedure TDbFinApagar1.MapagarAfterPost(DataSet: TDataSet);
begin
     MApagar.ApplyUpdates(-1);
end;

procedure TDbFinApagar1.QApagarAfterCancel(DataSet: TDataSet);
begin
     QApagar.CancelUpdates;
end;

procedure TDbFinApagar1.QApagarAfterDelete(DataSet: TDataSet);
begin
     QApagar.ApplyUpdates(-1);
end;

procedure TDbFinApagar1.QApagarAfterPost(DataSet: TDataSet);
begin
     QApagar.ApplyUpdates(-1);
end;

end.