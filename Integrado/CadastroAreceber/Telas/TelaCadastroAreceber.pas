unit TelaCadastroAreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls,InseriAreceber,ExclusaoTabelaTemporaria;

type
  TTelaCadasrroAreceber1 = class(TForm)
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
    CampoNrtitulo: TDBEdit;
    Busca: TButton;
    BotaoCadastrar: TButton;
    DBEdit8: TDBEdit;
    BotaoCancelar: TButton;
    ConsultaFormaPagamento: TButton;
    CampoDtVencimento: TDateTimePicker;
    CampoVltitulo: TDBEdit;
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure BotaoCancelarClick(Sender: TObject);
    procedure ConsultaFormaPagamentoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    end;

var
  TelaCadasrroAreceber: TTelaCadasrroAreceber1;

implementation

{$R *.dfm}

uses TelaConsultaClienteAreceber, ConsultaFormaPagamentoCadastro;




procedure TTelaCadasrroAreceber1.BotaoCadastrarClick(Sender: TObject);
var
CadastrarFinanceiro : TtituloAreceber;
begin

   CadastrarFinanceiro := TtituloAreceber.Create;
   try
   CadastrarFinanceiro.Vltitulo := StrToInt(CampoVltitulo.Text);
   CadastrarFinanceiro.nrtitulo:=  StrToInt(CampoNrtitulo.Text);
   CadastrarFinanceiro.dtvencimento:=  (CampoDtVencimento.date);
   CadastrarFinanceiro.dtcadastro:=  now;
   CadastrarFinanceiro.InserirAreceber;
   finally
       CadastrarFinanceiro.Free;
   end;
  self.Close;
end;

procedure TTelaCadasrroAreceber1.BotaoCancelarClick(Sender: TObject);
begin
     TelaCadasrroAreceber.close;
end;

procedure TTelaCadasrroAreceber1.BuscaClick(Sender: TObject);
begin
      TelaConsultaClienteAreceber1.showmodal;
end;

procedure TTelaCadasrroAreceber1.ConsultaFormaPagamentoClick(Sender: TObject);
begin
     ConsultaFormaPagamentoC.ShowModal;
end;

procedure TTelaCadasrroAreceber1.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var  ExclusaoTabelaTemp : TexclusaoAreceber;
begin
     ExclusaoTabelaTemp :=  TexclusaoAreceber.Create;
   try
     ExclusaoTabelaTemp.ExcluirTempAreceber;
   finally
      ExclusaoTabelaTemp.free;
   end;
end;

procedure TTelaCadasrroAreceber1.FormShow(Sender: TObject);
begin
     CampoDtVencimento.date := now;
end;

end.
