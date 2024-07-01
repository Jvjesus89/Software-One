unit TelaCadastroFormaPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCadastroFormaPagamento = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroFormaPagamento: TCadastroFormaPagamento;

implementation

{$R *.dfm}

uses DbConfiguracaoFinanceiro;


procedure TCadastroFormaPagamento.Button1Click(Sender: TObject);
begin
    DbConfigFin.Mforma.Post;
    DbConfigFin.Mforma.Close;
    CadastroFormaPagamento.close;
    DbConfigFin.Mforma.open;
end;

procedure TCadastroFormaPagamento.Button2Click(Sender: TObject);
begin
    DbConfigFin.Mforma.Cancel;
    DbConfigFin.Mforma.Close;
    CadastroFormaPagamento.close;
    DbConfigFin.Mforma.open;
end;

procedure TCadastroFormaPagamento.DBEdit1Exit(Sender: TObject);
begin
  DBEdit1.Text := UpperCase(DBEdit1.Text)
end;

procedure TCadastroFormaPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DbConfigFin.Mforma.Cancel;
end;

procedure TCadastroFormaPagamento.FormShow(Sender: TObject);
begin
   DbConfigFin.Mforma.FieldByName('dtcadastro').Value := now;
end;

end.
