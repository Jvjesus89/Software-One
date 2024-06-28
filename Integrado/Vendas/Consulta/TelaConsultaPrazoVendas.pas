unit TelaConsultaPrazoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TConsultaPrazo = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Busca: TEdit;
    Button2: TButton;
    QFormaPagamento: TFDQuery;
    DsQFormaPagamento: TDataSource;
    QFormaPagamentoidprazo: TFDAutoIncField;
    QFormaPagamentonmprazo: TWideStringField;
    QFormaPagamentonrparcelas: TIntegerField;
    QFormaPagamentoidformapagamento: TIntegerField;
    QFormaPagamentocdprazo: TFDAutoIncField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaPrazo: TConsultaPrazo;

implementation

{$R *.dfm}

uses DBvendas, TelaCadastroVenda;

procedure TConsultaPrazo.Button1Click(Sender: TObject);
begin
    if (Trim(Busca.text).IsEmpty) then

    begin
      QFormaPagamento.close ;
      QFormaPagamento.sql.Clear;
      QFormaPagamento.sql.Add('Select * From prazopagamento');
      QFormaPagamento.open;
    end
    else
    begin
      QFormaPagamento.close ;
      QFormaPagamento.sql.Clear;
      QFormaPagamento.sql.Add('Select * From prazopagamento Where nmprazo = '+(Busca.Text));
      QFormaPagamento.open;
    end;
end;

end.
