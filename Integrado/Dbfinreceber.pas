unit Dbfinreceber;

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
  TDbFinAreceber1 = class(TForm)
    DbFin: TFDConnection;
    QAreceber: TFDQuery;
    TabelaAreceber: TFDTable;
    DsAreceber: TDataSource;
    MAreceber: TClientDataSet;
    Pareceber: TDataSetProvider;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    TabelaAreceberidareceber: TIntegerField;
    TabelaAreceberidcliente: TIntegerField;
    TabelaArecebernmcliente: TWideStringField;
    TabelaAreceberidformapagamento: TIntegerField;
    TabelaArecebernmformapagamento: TWideStringField;
    TabelaArecebernrtitulo: TIntegerField;
    MAreceberidareceber: TIntegerField;
    MAreceberidcliente: TIntegerField;
    MArecebernmcliente: TWideStringField;
    MAreceberidformapagamento: TIntegerField;
    MArecebernmformapagamento: TWideStringField;
    MArecebernrtitulo: TIntegerField;
    DsQAreceber: TDataSource;
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
    TabelaAreceberdtvencimento: TDateField;
    MAreceberdtvencimento: TDateField;
    TabelaAreceberdtcadastro: TDateField;
    MAreceberdtcadastro: TDateField;
    QAreceberidareceber: TIntegerField;
    QAreceberidcliente: TIntegerField;
    QArecebernmcliente: TWideStringField;
    QAreceberidformapagamento: TIntegerField;
    QArecebernmformapagamento: TWideStringField;
    QArecebernrtitulo: TIntegerField;
    QAreceberdtcadastro: TDateField;
    QAreceberdtvencimento: TDateField;
    QAreceberidorigem: TIntegerField;
    TabelaArecebervltitulo: TSingleField;
    MArecebervltitulo: TSingleField;
    QArecebervltitulo: TSingleField;
    QEdi��oAreceber: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField3: TIntegerField;
    WideStringField2: TWideStringField;
    IntegerField4: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField5: TIntegerField;
    SingleField1: TSingleField;
    procedure MAreceberAfterCancel(DataSet: TDataSet);
    procedure MAreceberAfterDelete(DataSet: TDataSet);
    procedure MAreceberAfterPost(DataSet: TDataSet);
    procedure QAreceberAfterCancel(DataSet: TDataSet);
    procedure QAreceberAfterDelete(DataSet: TDataSet);
    procedure QAreceberAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbFinAreceber1: TDbFinAreceber1;

implementation

{$R *.dfm}

procedure TDbFinAreceber1.MAreceberAfterCancel(DataSet: TDataSet);
begin
    MAreceber.CancelUpdates;
end;

procedure TDbFinAreceber1.MAreceberAfterDelete(DataSet: TDataSet);
begin
     MAreceber.ApplyUpdates(-1);
end;

procedure TDbFinAreceber1.MAreceberAfterPost(DataSet: TDataSet);
begin
     MAreceber.ApplyUpdates(-1);
end;

procedure TDbFinAreceber1.QAreceberAfterCancel(DataSet: TDataSet);
begin
     QAreceber.CancelUpdates;
end;

procedure TDbFinAreceber1.QAreceberAfterDelete(DataSet: TDataSet);
begin
     QAreceber.ApplyUpdates(-1);
end;

procedure TDbFinAreceber1.QAreceberAfterPost(DataSet: TDataSet);
begin
     QAreceber.ApplyUpdates(-1);
end;

end.
