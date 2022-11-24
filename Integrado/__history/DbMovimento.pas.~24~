unit DbMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.VCLUI.Wait, Datasnap.Provider, Datasnap.DBClient,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls;

type
  TDbMov = class(TForm)
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    ConsultaEstoque: TFDTable;
    Db: TFDConnection;
    DsConsulta: TDataSource;
    MConsulta: TClientDataSet;
    PConsulta: TDataSetProvider;
    ConsultaEstoqueidmovimento: TIntegerField;
    ConsultaEstoqueqtmovimentada: TIntegerField;
    ConsultaEstoqueqtdisponivel: TIntegerField;
    ConsultaEstoquedtmovimento: TDateField;
    MConsultaidmovimento: TIntegerField;
    MConsultaidproduto: TIntegerField;
    MConsultaqtmovimentada: TIntegerField;
    MConsultaqtdisponivel: TIntegerField;
    MConsultadtmovimento: TDateField;
    Produto: TFDTable;
    Pproduto: TDataSetProvider;
    Mproduto: TClientDataSet;
    DsProduto: TDataSource;
    nmproduto: TWideStringField;
    cdproduto: TWideStringField;
    nmfamiliaproduto: TWideStringField;
    Mprodutonmproduto: TWideStringField;
    Mprodutocdproduto: TWideStringField;
    Mprodutonmfamiliaproduto: TWideStringField;
    idproduto: TIntegerField;
    Mprodutoidproduto: TIntegerField;
    ConsultaEstoquetpmovimento: TWideStringField;
    MConsultatpmovimento: TWideStringField;
    ConsultaEstoquedtcadastro: TDateField;
    MConsultadtcadastro: TDateField;
    QConsulta: TFDQuery;
    QProduto: TFDQuery;
    ConsultaEstoqueidproduto: TIntegerField;
    QProdutoidproduto: TIntegerField;
    QProdutonmproduto: TWideStringField;
    QProdutocdproduto: TWideStringField;
    QProdutoidfamiliaproduto: TIntegerField;
    QProdutovlproduto: TSingleField;
    QProdutonmfamiliaproduto: TWideStringField;
    QProdutostproduto: TBooleanField;
    QProdutodtcadastro: TDateField;
    QConsultaidproduto: TIntegerField;
    QConsultaqtmovimentada: TIntegerField;
    QConsultaqtdisponivel: TIntegerField;
    QConsultadtmovimento: TDateField;
    QConsultatpmovimento: TWideStringField;
    QConsultadtcadastro: TDateField;
    QConsultaidmovimento: TIntegerField;
    DsConsultaQ: TDataSource;
    DsProdutoQ: TDataSource;
    QProduto1: TFDQuery;
    QProduto1idproduto: TIntegerField;
    QProduto1nmproduto: TWideStringField;
    QProduto1cdproduto: TWideStringField;
    QProduto1idfamiliaproduto: TIntegerField;
    QProduto1vlproduto: TSingleField;
    QProduto1nmfamiliaproduto: TWideStringField;
    QProduto1stproduto: TBooleanField;
    QProduto1dtcadastro: TDateField;
    QDisponivel: TFDQuery;
    DsQdisponivel: TDataSource;
    QDisponivelqtdisponivel: TIntegerField;
    QdisponivelTemp: TFDQuery;
    procedure MprodutoAfterCancel(DataSet: TDataSet);
    procedure MprodutoAfterDelete(DataSet: TDataSet);
    procedure MprodutoAfterPost(DataSet: TDataSet);
    procedure MConsultaAfterCancel(DataSet: TDataSet);
    procedure MConsultaAfterDelete(DataSet: TDataSet);
    procedure MConsultaAfterPost(DataSet: TDataSet);
    procedure QConsultaAfterCancel(DataSet: TDataSet);
    procedure QConsultaAfterDelete(DataSet: TDataSet);
    procedure QConsultaAfterPost(DataSet: TDataSet);
    procedure QProdutoAfterCancel(DataSet: TDataSet);
    procedure QProdutoAfterDelete(DataSet: TDataSet);
    procedure QProdutoAfterPost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbMov: TDbMov;

implementation

{$R *.dfm}



procedure TDbMov.MConsultaAfterCancel(DataSet: TDataSet);
begin
      Mconsulta.CancelUpdates;
end;

procedure TDbMov.MConsultaAfterDelete(DataSet: TDataSet);
begin
     Mconsulta.ApplyUpdates(-1);
end;

procedure TDbMov.MConsultaAfterPost(DataSet: TDataSet);
begin
      Mconsulta.ApplyUpdates(-1);
end;

procedure TDbMov.MprodutoAfterCancel(DataSet: TDataSet);
begin
      Mproduto.CancelUpdates;
end;

procedure TDbMov.MprodutoAfterDelete(DataSet: TDataSet);
begin
      Mproduto.ApplyUpdates(-1);
end;

procedure TDbMov.MprodutoAfterPost(DataSet: TDataSet);
begin
      Mproduto.ApplyUpdates(-1);
end;

procedure TDbMov.QConsultaAfterCancel(DataSet: TDataSet);
begin
     QConsulta.CancelUpdates;
end;

procedure TDbMov.QConsultaAfterDelete(DataSet: TDataSet);
begin
     QConsulta.ApplyUpdates(-1);
end;

procedure TDbMov.QConsultaAfterPost(DataSet: TDataSet);
begin
      QConsulta.ApplyUpdates(-1);
end;

procedure TDbMov.QProdutoAfterCancel(DataSet: TDataSet);
begin
      QProduto.CancelUpdates;
end;

procedure TDbMov.QProdutoAfterDelete(DataSet: TDataSet);
begin
      QProduto.ApplyUpdates(-1);
end;

procedure TDbMov.QProdutoAfterPost(DataSet: TDataSet);
begin
      QProduto.ApplyUpdates(-1);
end;

end.
