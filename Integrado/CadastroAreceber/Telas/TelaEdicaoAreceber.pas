unit TelaEdicaoAreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTelaEdicaoAreceber1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Busca: TButton;
    BotaoCadastrar: TButton;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    Button1: TButton;
    DBEdit9: TDBEdit;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaEdicaoAreceber1: TTelaEdicaoAreceber1;

implementation

{$R *.dfm}

uses Dbfinreceber, TelaConsultaClienteAreceber, Areceber,
  ConsultaFormaPagamentoAreceberEdit;

procedure TTelaEdicaoAreceber1.BotaoCadastrarClick(Sender: TObject);
begin
      if Areceber1.DBGrid1.fields[5].value = '' then
      begin
            ShowMessage('N�o ser� possivel editar o valor e o cliente do titulo');
      end else
      begin
      DbFinAreceber1.QEdi��oAreceber.close;
      DbFinAreceber1.QEdi��oAreceber.sql.Clear;
      DbFinAreceber1.QEdi��oAreceber.sql.Add('Update areceber SET vltitulo=:Pvltitulo, nrtitulo=:Pnrtitulo, dtvencimento=:Pdtvencimento Where idareceber =:Pidtitulo');
      DbFinAreceber1.QEdi��oAreceber.ParamByName('Pvltitulo').AsInteger :=  StrToInt (DBEdit6.Text);
      DbFinAreceber1.QEdi��oAreceber.ParamByName('Pnrtitulo').AsInteger := StrToInt (DBEdit7.Text);
      DbFinAreceber1.QEdi��oAreceber.ParamByName('Pdtvencimento').AsDate := StrToDate(DBEdit1.Text);
      DbFinAreceber1.QEdi��oAreceber.ExecSql;
       DbFinAreceber1.Qareceber.close;
       DbFinAreceber1.Qareceber.open;
       TelaEdicaoAreceber1.close;
      end;

end;

procedure TTelaEdicaoAreceber1.BuscaClick(Sender: TObject);
begin
     TelaConsultaClienteAreceber1.showmodal;
end;

procedure TTelaEdicaoAreceber1.Button1Click(Sender: TObject);
begin
       DbFinAreceber1.Qareceber.close;
       DbFinAreceber1.Qareceber.open;
end;

procedure TTelaEdicaoAreceber1.Button2Click(Sender: TObject);
begin
   FormaPagemento.showmodal;
end;

procedure TTelaEdicaoAreceber1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       DbFinAreceber1.Qareceber.close;
       DbFinAreceber1.Qareceber.open;
end;

end.
