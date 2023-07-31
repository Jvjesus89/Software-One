unit TelaCadastroBaixaAreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCadastroBaixaAreceber = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Label4: TLabel;
    Button3: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroBaixaAreceber: TCadastroBaixaAreceber;

implementation

{$R *.dfm}

uses Dbfinreceber, ConsultaContaCorrenteAreceber;


procedure TCadastroBaixaAreceber.Button1Click(Sender: TObject);
var idareceber :integer;
begin
idareceber := StrToInt(DBEdit1.Text);

      DbFinAreceber1.QEdiçãoAreceber.close;
      DbFinAreceber1.QEdiçãoAreceber.sql.Clear;
      DbFinAreceber1.QEdiçãoAreceber.sql.Add('Update areceber Set dtbaixa = :PdataBaixa, idcontabancaria = :Pidcontabancaria Where idareceber = :Pidareceber');
      DbFinAreceber1.QEdiçãoAreceber.ParamByName('PdataBaixa').AsDate := DateTimePicker1.Date ;
      DbFinAreceber1.QEdiçãoAreceber.ParamByName('Pidareceber').AsInteger := idareceber;
      DbFinAreceber1.QEdiçãoAreceber.ParamByName('Pidcontabancaria').AsInteger := StrToInt (DBEdit2.Text);
      DbFinAreceber1.QEdiçãoAreceber.ExecSql;

      DbFinAreceber1.QInseriDadosMovimentobancario.close;
      DbFinAreceber1.QInseriDadosMovimentobancario.sql.Clear;
      DbFinAreceber1.QInseriDadosMovimentobancario.sql.Add('INSERT INTO movimentobancario (idareceber, idcontabancaria) Select idareceber, idcontabancaria from  areceber where dtbaixa is not null and idareceber = :Pidareceber ');
      DbFinAreceber1.QInseriDadosMovimentobancario.ParamByName('Pidareceber').AsInteger := idareceber;
      DbFinAreceber1.QInseriDadosMovimentobancario.ExecSql;
      CadastroBaixaAreceber.close;
      DbFinAreceber1.Qareceber.close;
      DbFinAreceber1.Qareceber.Open;
end;

procedure TCadastroBaixaAreceber.Button3Click(Sender: TObject);
begin
     ConsultaContaBancaria.ShowModal;
end;

procedure TCadastroBaixaAreceber.FormShow(Sender: TObject);
begin
   DateTimePicker1.Date := now;
end;

end.
