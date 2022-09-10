unit Dbcadastroproduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Datasnap.Provider, Datasnap.DBClient;

type
  TDbprod = class(TForm)
    DsProduto: TDataSource;
    Db: TFDConnection;
    TabelaProd: TFDTable;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    TabelaProdidproduto: TIntegerField;
    TabelaProdnmproduto: TWideStringField;
    TabelaProdcdproduto: TWideStringField;
    TabelaProdidfamiliaproduto: TIntegerField;
    TabelaProdnmfamiliaproduto: TWideStringField;
    TabelaProdstproduto: TBooleanField;
    Pproduto: TDataSetProvider;
    TabelaProddtcadastro: TDateField;
    DsQproduto: TDataSource;
    Qproduto: TFDQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField2: TIntegerField;
    WideStringField3: TWideStringField;
    BooleanField1: TBooleanField;
    DateField1: TDateField;
    QProdutoEdicao: TFDQuery;
    IntegerField3: TIntegerField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    IntegerField4: TIntegerField;
    WideStringField6: TWideStringField;
    BooleanField2: TBooleanField;
    DateField2: TDateField;
    Mproduto: TClientDataSet;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    DateField3: TDateField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    BooleanField3: TBooleanField;
    TabelaProdvlproduto: TSingleField;
    Mprodutovlproduto: TSingleField;
    Qprodutovlproduto: TSingleField;
    QProdutoEdicaovlproduto: TSingleField;
    procedure Mproduto2AfterPost(DataSet: TDataSet);
    procedure Mproduto2AfterDelete(DataSet: TDataSet);
    procedure Mproduto2AfterCancel(DataSet: TDataSet);
    procedure QprodutoAfterCancel(DataSet: TDataSet);
    procedure QprodutoAfterDelete(DataSet: TDataSet);
    procedure QprodutoAfterPost(DataSet: TDataSet);
    procedure QProdutoEdicaoAfterCancel(DataSet: TDataSet);
    procedure QProdutoEdicaoAfterDelete(DataSet: TDataSet);
    procedure QProdutoEdicaoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dbprod: TDbprod;

implementation

{$R *.dfm}

procedure TDbprod.Mproduto2AfterCancel(DataSet: TDataSet);
begin
     Mproduto.CancelUpdates;
end;

procedure TDbprod.Mproduto2AfterDelete(DataSet: TDataSet);
begin
     Mproduto.ApplyUpdates(-1);
end;

procedure TDbprod.Mproduto2AfterPost(DataSet: TDataSet);
begin
     Mproduto.ApplyUpdates(-1);
end;

procedure TDbprod.QprodutoAfterCancel(DataSet: TDataSet);
begin
      Qproduto.CancelUpdates;
end;

procedure TDbprod.QprodutoAfterDelete(DataSet: TDataSet);
begin
     Qproduto.ApplyUpdates(-1);
end;

procedure TDbprod.QprodutoAfterPost(DataSet: TDataSet);
begin
     Qproduto.ApplyUpdates(-1);
end;

procedure TDbprod.QProdutoEdicaoAfterCancel(DataSet: TDataSet);
begin
     QprodutoEdicao.CancelUpdates;
end;

procedure TDbprod.QProdutoEdicaoAfterDelete(DataSet: TDataSet);
begin
    QprodutoEdicao.ApplyUpdates(-1);
end;

procedure TDbprod.QProdutoEdicaoAfterPost(DataSet: TDataSet);
begin
    QprodutoEdicao.ApplyUpdates(-1);
end;

end.
