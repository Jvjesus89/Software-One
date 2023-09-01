unit TelaConsultaFormaPagamentoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TConsultaFormaPagamento = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Busca: TEdit;
    Button1: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaFormaPagamento: TConsultaFormaPagamento;

implementation

{$R *.dfm}

uses DBvendas, TelaCadastroFinanceiro;

procedure TConsultaFormaPagamento.DBGrid1DblClick(Sender: TObject);
begin

   DbVendas1.QInseriTabelaTemp.close;
   DbVendas1.QInseriTabelaTemp.sql.clear;
   DbVendas1.QInseriTabelaTemp.sql.add('Insert into temp."#areceberCampo"');
   DbVendas1.QInseriTabelaTemp.sql.add('(nmformapagamento, idformapagamento)VALUES (:Pnmformapagamento, :Pidformapagamento)');
   DbVendas1.QInseriTabelaTemp.Parambyname('Pnmformapagamento').AsString := DBGrid1.Fields[1].value;
   DbVendas1.QInseriTabelaTemp.Parambyname('Pidformapagamento').AsInteger := StrToInt (DBGrid1.Fields[2].value);
   DbVendas1.QInseriTabelaTemp.ExecSQL;

   DbVendas1.QareceberTempCampo.close;
   DbVendas1.QareceberTempCampo.open;
  ConsultaFormaPagamento.Close;
 end;



end.
