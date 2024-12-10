unit DBpadrao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdbConsultas = class(TDataModule)
    ConsultaProdutoPadr�o: TFDQuery;
    ConsultaProdutoPadr�oidproduto: TFDAutoIncField;
    ConsultaProdutoPadr�onmproduto: TWideStringField;
    ConsultaProdutoPadr�ocdproduto: TWideStringField;
    ConsultaProdutoPadr�oidfamiliaproduto: TIntegerField;
    ConsultaProdutoPadr�ovlproduto: TSingleField;
    ConsultaProdutoPadr�ostproduto: TBooleanField;
    ConsultaProdutoPadr�odtcadastro: TDateField;
    ConsultaProdutoPadr�oidusuario: TIntegerField;
    ConsultaProdutoPadr�ovlcusto: TSingleField;
    ConsultaProdutoPadr�odtultalter: TDateField;
    ConsultaProdutoPadr�oidusuarioultalter: TIntegerField;
    ConsultaProdutoPadr�onmfamiliaproduto: TWideStringField;
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
