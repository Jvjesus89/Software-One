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
    QAreceber: TFDQuery;
    TabelaAreceber: TFDTable;
    DsAreceber: TDataSource;
    MAreceber: TClientDataSet;
    Pareceber: TDataSetProvider;
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
    TabelaAreceberidorigem: TIntegerField;
    TabelaAreceberdtbaixa: TDateField;
    TabelaAreceberidcontabancaria: TIntegerField;
    MAreceberidorigem: TIntegerField;
    MAreceberdtbaixa: TDateField;
    MAreceberidcontabancaria: TIntegerField;
    QAreceberdtbaixa: TDateField;
    QAreceberidcontabancaria: TIntegerField;
    QEdi��oAreceberdtbaixa: TDateField;
    QEdi��oAreceberidcontabancaria: TIntegerField;
    QConsultaConta: TFDQuery;
    DsQConsultaConta: TDataSource;
    QConsultaContaidcontabancaria: TIntegerField;
    QConsultaContaidagencia: TIntegerField;
    QConsultaContaidbanco: TIntegerField;
    QConsultaContanrcontacorrente: TIntegerField;
    QConsultaContanmcontabancaria: TWideStringField;
    QConsultaContadtcadastro: TDateField;
    QConsultaContacdcontabancaria: TIntegerField;
    DsQAreceberEdi��o: TDataSource;
    Qedi��oTituloAreceber: TFDQuery;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    WideStringField3: TWideStringField;
    IntegerField8: TIntegerField;
    WideStringField4: TWideStringField;
    IntegerField9: TIntegerField;
    DateField3: TDateField;
    DateField4: TDateField;
    IntegerField10: TIntegerField;
    SingleField2: TSingleField;
    DateField5: TDateField;
    IntegerField11: TIntegerField;
    QInseriDadosMovimentobancario: TFDQuery;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    WideStringField5: TWideStringField;
    IntegerField14: TIntegerField;
    WideStringField6: TWideStringField;
    IntegerField15: TIntegerField;
    DateField6: TDateField;
    DateField7: TDateField;
    IntegerField16: TIntegerField;
    SingleField3: TSingleField;
    DateField8: TDateField;
    IntegerField17: TIntegerField;
    QFormaPagamento: TFDQuery;
    DsQFormapagamento: TDataSource;
    QFormaPagamentoidformapagamento: TIntegerField;
    QFormaPagamentonmformapagamento: TWideStringField;
    QFormaPagamentodtcadastro: TDateField;
    QFormaPagamentocdformapagamento: TIntegerField;
    QExcluiRecebimento: TFDQuery;
    QTabelaTemp: TFDQuery;
    QTempCampos: TFDQuery;
    DsQTempCampos: TDataSource;
    QConsultaUltimoTitulo: TFDQuery;
    QTempCamposidareceber: TFDAutoIncField;
    QTempCamposidcliente: TIntegerField;
    QTempCamposnmcliente: TWideStringField;
    QTempCamposidformapagamento: TIntegerField;
    QTempCamposnmformapagamento: TWideStringField;
    QTempCamposvltitulo: TSingleField;
    QTempCamposnrtitulo: TIntegerField;
    QTempCamposdtcadastro: TDateField;
    QTempCamposdtvencimento: TDateField;
    QTempCamposidorigem: TIntegerField;
    QTempCamposdtbaixa: TDateField;
    QTempCamposidcontabancaria: TIntegerField;
    QtempCamposRecebimento: TFDQuery;
    DsQtenmpCamposRecebimento: TDataSource;
    QtempCamposRecebimentonmcontabancaria: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbFinAreceber1: TDbFinAreceber1;

implementation

{$R *.dfm}

uses DbPrincipal;

end.
