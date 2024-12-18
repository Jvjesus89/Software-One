unit TelaCadastroApagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TTelaCadasrroApagar1 = class(TForm)
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Busca: TButton;
    BotaoCadastrar: TButton;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    procedure BuscaClick(Sender: TObject);
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadasrroApagar1: TTelaCadasrroApagar1;

implementation

{$R *.dfm}

uses Dbfinapagar, TelaConsultaClienteApagar, ConsultaFormaPagamentoCadastro;

procedure TTelaCadasrroApagar1.BotaoCadastrarClick(Sender: TObject);
begin
     // inserir dados na tabela temp
     DbFinApagar1.QTabelaTemp.close;
     DbFinApagar1.QTabelaTemp.sql.Clear;
     DbFinApagar1.QTabelaTemp.sql.add('update temp."#apagar" Set vltitulo = :Pvltitulo, nrtitulo = :Pnrtitulo, dtcadastro = :Pdtcadastro, dtvencimento =:Pdtvencimento');
     DbFinApagar1.QTabelaTemp.ParamByName('Pvltitulo').AsInteger := StrToInt(DBEdit6.Text);
     DbFinApagar1.QTabelaTemp.ParamByName('Pnrtitulo').AsInteger := StrToInt(DBEdit7.Text);
     DbFinApagar1.QTabelaTemp.ParamByName('Pdtcadastro').AsDateTime := now;
     DbFinApagar1.QTabelaTemp.ParamByName('Pdtvencimento').AsDateTime := DateTimePicker1.DateTime;
     DbFinApagar1.QTabelaTemp.ExecSQL;

     // verificar registro na tabela temp e copiar para tabela a receber
     DbFinApagar1.QTabelaTemp.close;
     DbFinApagar1.QTabelaTemp.sql.Clear;
     DbFinApagar1.QTabelaTemp.sql.add('Insert into apagar (idcliente, nmcliente, idformapagamento, nmformapagamento, vltitulo, nrtitulo, dtcadastro, dtvencimento, dtbaixa, idcontabancaria)');
     DbFinApagar1.QTabelaTemp.sql.add('select idcliente, nmcliente, idformapagamento, nmformapagamento, vltitulo, nrtitulo, dtcadastro, dtvencimento, dtbaixa, idcontabancaria From temp."#apagar"');
     DbFinApagar1.QTabelaTemp.ExecSQL;

     DbFinApagar1.Qapagar.close;
     DbFinApagar1.Qapagar.open;
     Self.Close;

end;

procedure TTelaCadasrroApagar1.BuscaClick(Sender: TObject);
begin
    DbFinApagar1.Qcliente.open;
    TelaConsultaCliente1.showmodal;
end;

procedure TTelaCadasrroApagar1.Button2Click(Sender: TObject);
begin
    DbFinApagar1.QFormaPagamento.open;
    ConsultaFormaPagamento.showmodal;
end;

procedure TTelaCadasrroApagar1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DbFinApagar1.QTabelaTemp.close;
     DbFinApagar1.QTabelaTemp.sql.clear;
     DbFinApagar1.QTabelaTemp.sql.add('Drop Table temp."#apagar"');
     DbFinApagar1.QTabelaTemp.Execsql;
     DbFinApagar1.QConsultaUltimoTitulo.Close;
     DbFinApagar1.QTabelaTempCampo.Close;
end;

end.
