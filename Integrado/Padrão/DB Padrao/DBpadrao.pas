unit DBpadrao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdbConsultas = class(TDataModule)
    ConsultaProdutoPadrão: TFDQuery;
    ConsultaProdutoPadrãoidproduto: TFDAutoIncField;
    ConsultaProdutoPadrãonmproduto: TWideStringField;
    ConsultaProdutoPadrãocdproduto: TWideStringField;
    ConsultaProdutoPadrãoidfamiliaproduto: TIntegerField;
    ConsultaProdutoPadrãovlproduto: TSingleField;
    ConsultaProdutoPadrãostproduto: TBooleanField;
    ConsultaProdutoPadrãodtcadastro: TDateField;
    ConsultaProdutoPadrãoidusuario: TIntegerField;
    ConsultaProdutoPadrãovlcusto: TSingleField;
    ConsultaProdutoPadrãodtultalter: TDateField;
    ConsultaProdutoPadrãoidusuarioultalter: TIntegerField;
    ConsultaProdutoPadrãonmfamiliaproduto: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbConsultas: TdbConsultas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
