unit TelaEdicaoApagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTelaEdicaoApagar1 = class(TForm)
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
    DBEdit9: TDBEdit;
    Button1: TButton;
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaEdicaoApagar1: TTelaEdicaoApagar1;

implementation

{$R *.dfm}

uses DbFinApagar, TelaConsultaClienteApagar;

procedure TTelaEdicaoApagar1.BotaoCadastrarClick(Sender: TObject);
begin
    with DbFinApagar1.Qapagar1 do
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
    TelaEdicaoApagar1.close;
end;

procedure TTelaEdicaoApagar1.BuscaClick(Sender: TObject);
begin
   TelaConsultaCliente1.showmodal;
end;

procedure TTelaEdicaoApagar1.Button1Click(Sender: TObject);
begin
    DbFinApagar1.MApagar.Close;
    DbFinApagar1.MApagar.Cancel;
    TelaEdicaoApagar1.close;
end;

procedure TTelaEdicaoApagar1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DbFinApagar1.MApagar.Close;
    DbFinApagar1.MApagar.Cancel;
    TelaEdicaoApagar1.close;
end;

end.
