unit TelaEdicaoApagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TTelaEdicaoApagar1 = class(TForm)
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Busca: TButton;
    BotaoCadastrar: TButton;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    Button2: TButton;
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaEdicaoApagar1: TTelaEdicaoApagar1;

implementation

{$R *.dfm}

uses DbFinApagar,Apagar, TelaConsultaClienteApagarEdit,
  ConsultaFormaPagamentoCadastroEdit;

procedure TTelaEdicaoApagar1.BotaoCadastrarClick(Sender: TObject);
begin
      DbFinApagar1.QEditarTituloApagar.close;
      DbFinApagar1.QEditarTituloApagar.sql.Clear;
      DbFinApagar1.QEditarTituloApagar.sql.Add('Update apagar SET vltitulo=:Pvltitulo, nrtitulo=:Pnrtitulo, dtvencimento=:Pdtvencimento Where idapagar = :Pidapagar');
      DbFinApagar1.QEditarTituloApagar.ParamByName('Pvltitulo').AsInteger :=  StrToInt (DBEdit6.Text);
      DbFinApagar1.QEditarTituloApagar.ParamByName('Pnrtitulo').AsInteger := StrToInt (DBEdit7.Text);
      DbFinApagar1.QEditarTituloApagar.ParamByName('Pdtvencimento').AsDateTime :=  DateTimePicker1.DateTime;
      DbFinApagar1.QEditarTituloApagar.ExecSql;
    TelaEdicaoApagar1.close;
    DbFinApagar1.QApagar.Close;
    DbFinApagar1.QApagar.Open;
end;

procedure TTelaEdicaoApagar1.BuscaClick(Sender: TObject);
begin
   DbFinApagar1.Qcliente.Open;
   ConsultaClienteEdit.showmodal;
end;

procedure TTelaEdicaoApagar1.Button1Click(Sender: TObject);
begin
    TelaEdicaoApagar1.close;
end;

procedure TTelaEdicaoApagar1.Button2Click(Sender: TObject);
begin
     DbFinApagar1.QFormapagamento.Open;
     ConsultaFormaPagamentoEdit.showmodal;
end;

procedure TTelaEdicaoApagar1.FormShow(Sender: TObject);
begin
    DateTimePicker1.Date  := DbFinApagar1.QTabelaTempCampo.FieldByName('dtvencimento').Asdatetime;
end;

end.
