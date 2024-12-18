unit Pdv.model.Dbpdv;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Data.DB, Datasnap.DBClient,vcl.Dialogs, Data.DBXOdbc, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    Vendas: TFDTable;
    ClientDataSet1idusuario: TAutoIncField;
    ClientDataSet1nmusuario: TWideStringField;
    ClientDataSet1senha: TWideStringField;
    ClientDataSet1cdusuario: TAutoIncField;
    ClientDataSet1dtcadastro: TDateField;
    SQLConnection1: TSQLConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DbPrincipal;

{$R *.dfm}



procedure TDataModule1.ClientDataSet1ReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
   ShowMessage(e.Message);
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
     if clientdataset1.ApplyUpdates(0) > 0 then
     begin
     ShowMessage ('deu erro');
     end;
end;

end.
