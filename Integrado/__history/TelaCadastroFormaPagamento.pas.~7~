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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroFormaPagamento: TCadastroFormaPagamento;

implementation

{$R *.dfm}

uses DbConfiguracao;


procedure TCadastroFormaPagamento.Button1Click(Sender: TObject);
begin
    DbConfig.Mforma.Post;
    DbConfig.Mforma.Close;
    CadastroFormaPagamento.close;
    DbConfig.Mforma.open;
end;

procedure TCadastroFormaPagamento.Button2Click(Sender: TObject);
begin
    DbConfig.Mforma.Cancel;
    DbConfig.Mforma.Close;
    CadastroFormaPagamento.close;
    DbConfig.Mforma.open;
end;

procedure TCadastroFormaPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DbConfig.Mforma.Cancel;
end;

procedure TCadastroFormaPagamento.FormShow(Sender: TObject);
begin
   DbConfig.Mforma.FieldByName('dtcadastro').Value := now;
end;

end.
