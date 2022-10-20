unit DbMovimentoBancario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  Vcl.StdCtrls, FireDAC.Comp.DataSet, Datasnap.Provider, Datasnap.DBClient;

type
  TForm1 = class(TForm)
    DbMovBanco: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    DsMovBancario: TDataSource;
    MMovBancario: TClientDataSet;
    PMovBancario: TDataSetProvider;
    DsQMovBancario: TDataSource;
    QMovBancario: TFDQuery;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField3: TIntegerField;
    WideStringField2: TWideStringField;
    SingleField1: TSingleField;
    IntegerField4: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    DataSetProvider1: TDataSetProvider;
    DataSource2: TDataSource;
    FDTable1: TFDTable;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    WideStringField3: TWideStringField;
    IntegerField7: TIntegerField;
    WideStringField4: TWideStringField;
    SingleField2: TSingleField;
    IntegerField8: TIntegerField;
    DateField3: TDateField;
    DateField4: TDateField;
    FDQuery1: TFDQuery;
    IntegerField9: TIntegerField;
    WideStringField5: TWideStringField;
    IntegerField10: TIntegerField;
    WideStringField6: TWideStringField;
    SingleField3: TSingleField;
    IntegerField11: TIntegerField;
    DateField5: TDateField;
    DateField6: TDateField;
    IntegerField12: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    QMovBancarioidmovimentobancario: TIntegerField;
    QMovBancarioidareceber: TIntegerField;
    QMovBancarioidextratobancario: TIntegerField;
    QMovBancariodtconciliacao: TDateField;
    QMovBancarioidcontabancaria: TIntegerField;
    MovBancario: TFDTable;
    MovBancarioidmovimentobancario: TIntegerField;
    MovBancarioidareceber: TIntegerField;
    MovBancarioidextratobancario: TIntegerField;
    MovBancariodtconciliacao: TDateField;
    MovBancarioidcontabancaria: TIntegerField;
    MMovBancarioidmovimentobancario: TIntegerField;
    MMovBancarioidareceber: TIntegerField;
    MMovBancarioidextratobancario: TIntegerField;
    MMovBancariodtconciliacao: TDateField;
    MMovBancarioidcontabancaria: TIntegerField;
    QMovBancarioidareceber_1: TIntegerField;
    QMovBancarioidcliente: TIntegerField;
    QMovBancarionmcliente: TWideStringField;
    QMovBancarioidformapagamento: TIntegerField;
    QMovBancarionmformapagamento: TWideStringField;
    QMovBancariovltitulo: TSingleField;
    QMovBancarionrtitulo: TIntegerField;
    QMovBancariodtcadastro: TDateField;
    QMovBancariodtvencimento: TDateField;
    QMovBancarioidorigem: TIntegerField;
    QMovBancariodtbaixa: TDateField;
    QMovBancarioidcontabancaria_1: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
