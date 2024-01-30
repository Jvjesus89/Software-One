unit TelaCadastroTituloAreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TCadastroAreceber = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Busca: TButton;
    BotaoCadastrar: TButton;
    DBEdit8: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

uses Dbfinreceber, TelaConsultaClienteAreceber, ConsultaFormaPagamentoCadastro;

procedure TCadastroAreceber.BotaoCadastrarClick(Sender: TObject);
begin
   begin
      TInseriAreceber.new(self)
      begin

      end;
      ShowMessage('Titulo Cadastrado');
      CadastroAreceber.Close;
end;
end;

procedure TCadastroAreceber.BuscaClick(Sender: TObject);
begin
      TelaConsultaClienteAreceber1.showmodal;
      DbFinAreceber1.Qcliente.Open;
end;

procedure TCadastroAreceber.Button1Click(Sender: TObject);
begin
       CadastroAreceber.close;
end;

procedure TCadastroAreceber.Button2Click(Sender: TObject);
begin
       ConsultaFormaPagamento.ShowModal;
end;

procedure TCadastroAreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DbFinAreceber1.QTabelaTemp.close;
     DbFinAreceber1.QTabelaTemp.sql.clear;
     DbFinAreceber1.QTabelaTemp.sql.add('Drop Table temp."#areceber"');
     DbFinAreceber1.QTabelaTemp.Execsql;
     DbFinAreceber1.QConsultaUltimoTitulo.Close;
     DbFinAreceber1.QTempCampos.Close;
end;

procedure TCadastroAreceber.FormShow(Sender: TObject);
begin
         DbFinAreceber1.QFormapagamento.Open;
     DbFinAreceber1.Qcliente.Open;
     DateTimePicker1.date := now;
end;

end.
