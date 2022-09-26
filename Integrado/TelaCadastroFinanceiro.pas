unit TelaCadastroFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TCadastroAreceber = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroAreceber: TCadastroAreceber;

implementation

{$R *.dfm}

uses DBvendas, TelaConsultaFormaPagamentoVendas;

procedure TCadastroAreceber.Button2Click(Sender: TObject);
begin
   DbVendas1.QarecebrTempInserir.close;
   DbVendas1.QarecebrTempInserir.sql.clear;
   DbVendas1.QarecebrTempInserir.sql.add('Insert into temp.areceber (nmformapagamento, vltitulo, dtvencimento, idformapagamento)');
   DbVendas1.QarecebrTempInserir.sql.add('Values (:Pnmformapagamento, :Pvltitulo , :Pdtvencimento, :Pidformapagamento)');
   DbVendas1.QarecebrTempInserir.Parambyname('Pnmformapagamento').AsString := DBEdit2.text;
   DbVendas1.QarecebrTempInserir.Parambyname('Pvltitulo').Asfloat := StrToFloat(DBEdit1.text);
   DbVendas1.QarecebrTempInserir.Parambyname('Pdtvencimento').Asdate := DateTimePicker1.date;
   DbVendas1.QarecebrTempInserir.Parambyname('Pidformapagamento').AsInteger := StrToInt (DBEdit4.text);
   DbVendas1.QarecebrTempInserir.ExecSQL;
   CadastroAreceber.close;
   DbVendas1.QarecebrTemp.Close;
   DbVendas1.QarecebrTemp.Open;
end;

procedure TCadastroAreceber.Button3Click(Sender: TObject);
begin
    DbVendas1.QFormaPagamento.open;
    ConsultaFormaPagamento.showmodal;
end;

end.
