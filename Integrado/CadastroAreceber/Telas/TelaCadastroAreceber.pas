unit TelaCadastroAreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TTelaCadasrroAreceber1 = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
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
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    procedure BuscaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadasrroAreceber1: TTelaCadasrroAreceber1;

implementation

{$R *.dfm}

uses Dbfinreceber, TelaConsultaClienteAreceber,
  ConsultaFormaPagamentoCadastro;

procedure TTelaCadasrroAreceber1.BotaoCadastrarClick(Sender: TObject);
begin
     // inserir dados na tabela temp
     DbFinAreceber1.QTabelaTemp.close;
     DbFinAreceber1.QTabelaTemp.sql.Clear;
     DbFinAreceber1.QTabelaTemp.sql.add('update temp."#areceber" Set vltitulo = :Pvltitulo, nrtitulo = :Pnrtitulo, dtcadastro = :Pdtcadastro, dtvencimento =:Pdtvencimento');
     DbFinAreceber1.QTabelaTemp.ParamByName('Pvltitulo').AsInteger := StrToInt(DBEdit6.Text);
     DbFinAreceber1.QTabelaTemp.ParamByName('Pnrtitulo').AsInteger := StrToInt(DBEdit7.Text);
     DbFinAreceber1.QTabelaTemp.ParamByName('Pdtcadastro').AsDateTime := now;
     DbFinAreceber1.QTabelaTemp.ParamByName('Pdtvencimento').AsDateTime := DateTimePicker1.Date;
     DbFinAreceber1.QTabelaTemp.ExecSQL;

     // verificar registro na tabela temp e copiar para tabela a receber
     DbFinAreceber1.QTabelaTemp.close;
     DbFinAreceber1.QTabelaTemp.sql.Clear;
     DbFinAreceber1.QTabelaTemp.sql.add('Insert into areceber select * From temp."#areceber"');
     DbFinAreceber1.QTabelaTemp.ExecSQL;
     ShowMessage('Titulo Cadastrado');
     TelaCadasrroAreceber1.Close;

     DbFinAreceber1.QAreceber.Close;
     DbFinAreceber1.QAreceber.Open;
end;

procedure TTelaCadasrroAreceber1.BuscaClick(Sender: TObject);
begin
      TelaConsultaClienteAreceber1.showmodal;
      DbFinAreceber1.Qcliente.Open;
end;

procedure TTelaCadasrroAreceber1.Button1Click(Sender: TObject);
begin
    TelaCadasrroAreceber1.close;
end;

procedure TTelaCadasrroAreceber1.Button2Click(Sender: TObject);
begin
    ConsultaFormaPagamento.ShowModal;
end;

procedure TTelaCadasrroAreceber1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DbFinAreceber1.QTabelaTemp.close;
     DbFinAreceber1.QTabelaTemp.sql.clear;
     DbFinAreceber1.QTabelaTemp.sql.add('Drop Table temp."#areceber"');
     DbFinAreceber1.QTabelaTemp.Execsql;
     DbFinAreceber1.QConsultaUltimoTitulo.Close;
     DbFinAreceber1.QTempCampos.Close;
end;

procedure TTelaCadasrroAreceber1.FormShow(Sender: TObject);
begin
     DbFinAreceber1.QFormapagamento.Open;
     DbFinAreceber1.Qcliente.Open;
     DateTimePicker1.date := now;
end;

end.