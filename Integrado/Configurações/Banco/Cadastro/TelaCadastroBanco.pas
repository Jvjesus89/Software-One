unit TelaCadastroBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCadastroBanco = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBEdit3: TDBEdit;
    D: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroBanco: TCadastroBanco;

implementation

{$R *.dfm}

uses DbConfiguracaoFinanceiro;

procedure TCadastroBanco.Button1Click(Sender: TObject);
begin
   DbConfigFin.MBanco.Cancel;
    CadastroBanco.close;
end;

procedure TCadastroBanco.Button2Click(Sender: TObject);
begin
    DbConfigFin.MBanco.Post;
    DbConfigFin.MBanco.close;
    CadastroBanco.close;
    DbConfigFin.Qbanco.close;
    DbConfigFin.Qbanco.open;
end;

procedure TCadastroBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DbConfigFin.MBanco.cancel;
    CadastroBanco.close;
end;

procedure TCadastroBanco.FormShow(Sender: TObject);
begin
      DbConfigFin.Mbanco.FieldByName('dtcadastro').Value := now;

end;

end.
