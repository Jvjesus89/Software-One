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
    DsApagar: TDataSource;
    Mapagar: TClientDataSet;
    Papagar: TDataSetProvider;
    DsQApagar: TDataSource;
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
    QTabelaTemp: TFDQuery;
    QTabelaTempidapagar: TIntegerField;
    QTabelaTempidcliente: TIntegerField;
    QTabelaTempnmcliente: TWideStringField;
    QTabelaTempidformapagamento: TIntegerField;
    QTabelaTempnmformapagamento: TWideStringField;
    QTabelaTempvltitulo: TSingleField;
    QTabelaTempnrtitulo: TIntegerField;
    QTabelaTempdtcadastro: TDateField;
    QTabelaTempdtvencimento: TDateField;
    QApagaridapagar: TIntegerField;
    QFormaPagamento: TFDQuery;
    DsQFormaPagamento: TDataSource;
    QFormaPagamentoidformapagamento: TFDAutoIncField;
    QFormaPagamentonmformapagamento: TWideStringField;
    QFormaPagamentodtcadastro: TDateField;
    QFormaPagamentocdformapagamento: TFDAutoIncField;
    QConsultaUltimoTitulo: TFDQuery;
    QExcluiTitulo: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField3: TIntegerField;
    WideStringField2: TWideStringField;
    SingleField1: TSingleField;
    IntegerField4: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    QConsultaUltimoTitulomax: TIntegerField;
    QTabelaTempCampo: TFDQuery;
    DsQTabelaTempCampo: TDataSource;
    QTabelaTempCampoidapagar: TFDAutoIncField;
    QTabelaTempCampoidcliente: TIntegerField;
    QTabelaTempCamponmcliente: TWideStringField;
    QTabelaTempCampoidformapagamento: TIntegerField;
    QTabelaTempCamponmformapagamento: TWideStringField;
    QTabelaTempCampovltitulo: TSingleField;
    QTabelaTempCamponrtitulo: TIntegerField;
    QTabelaTempCampodtcadastro: TDateField;
    QTabelaTempCampodtvencimento: TDateField;
    QTabelaTempCampodtbaixa: TDateField;
    QTabelaTempCampoidcontabancaria: TIntegerField;
    QEditarTituloApagar: TFDQuery;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    WideStringField3: TWideStringField;
    IntegerField7: TIntegerField;
    WideStringField4: TWideStringField;
    SingleField2: TSingleField;
    IntegerField8: TIntegerField;
    DateField3: TDateField;
    DateField4: TDateField;
    DsQEditarTituloApagar: TDataSource;
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

uses DbPrincipal;

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
