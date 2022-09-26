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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure BuscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaEdicaoAreceber1: TTelaEdicaoAreceber1;

implementation

{$R *.dfm}

uses Dbfinreceber, TelaConsultaClienteAreceber;

procedure TTelaEdicaoAreceber1.BotaoCadastrarClick(Sender: TObject);
begin
    with DbFinAreceber1.QEdiçãoAreceber do
    begin
      close;
      sql.Clear;
      sql.Add('Update areceber SET idcliente=:Pidcliente, nmcliente=:Pnmcliente, idformapagamento=:Pidforma, nmformapagamento=:Pnmforma, vltitulo=:Pvltitulo, nrtitulo=:Pnrtitulo, dtvencimento=:Pdtvencimento Where idareceber ='+ DBEdit9.Text);
      ParamByName('Pidcliente').AsInteger :=  StrToInt (DBEdit2.Text);
      ParamByName('Pnmcliente').AsString :=  (DBEdit3.Text);
      ParamByName('Pidforma').AsInteger :=  1;
      ParamByName('Pnmforma').AsString := (DBEdit5.Text) ;
      ParamByName('Pvltitulo').AsInteger :=  StrToInt (DBEdit6.Text);
      ParamByName('Pnrtitulo').AsInteger := StrToInt (DBEdit7.Text);
      ParamByName('Pdtvencimento').AsDate := StrToDate(DBEdit1.Text);
      ExecSql;
    end;
    TelaEdicaoAreceber1.close;
end;

procedure TTelaEdicaoAreceber1.BuscaClick(Sender: TObject);
begin
     TelaConsultaClienteAreceber1.showmodal;
end;

procedure TTelaEdicaoAreceber1.Button1Click(Sender: TObject);
begin
       DbFinAreceber1.MAreceber.Close;
    DbFinAreceber1.MAreceber.Cancel;
    TelaEdicaoAreceber1.close;
end;

procedure TTelaEdicaoAreceber1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DbFinAreceber1.MAreceber.Close;
    DbFinAreceber1.MAreceber.Cancel;
end;

end.
