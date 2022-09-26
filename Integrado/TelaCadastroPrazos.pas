unit TelaCadastroPrazos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTelaPrazos = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Button3: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaPrazos: TTelaPrazos;

implementation

{$R *.dfm}

uses DbConfiguracao, TelaConsultaFormaPagamantoPPrazo;

procedure TTelaPrazos.Button1Click(Sender: TObject);
begin
    DbConfig.MPrazo.Post;
    DbConfig.MPrazo.Close;
    TelaPrazos.close;
    DbConfig.MPrazo.open;
end;

procedure TTelaPrazos.Button2Click(Sender: TObject);
begin
    DbConfig.MPrazo.Cancel;
end;

procedure TTelaPrazos.Button3Click(Sender: TObject);
begin
    DbConfig.QFormaPagamento.Close;
    DbConfig.QFormaPagamento.Open;
    ConsultaFormaPagamento.ShowModal;
end;

end.
