unit TelaCadastraAgencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCadastrarAgencia = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button3: TButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Edit1: TEdit;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastrarAgencia: TCadastrarAgencia;

implementation

{$R *.dfm}

uses DbConfiguracaoFinanceiro, TelaConsultaBancoAgencia;

procedure TCadastrarAgencia.Button1Click(Sender: TObject);
begin
      DbConfigFin.MBanco.Cancel;
    CadastrarAgencia.close;
end;

procedure TCadastrarAgencia.Button2Click(Sender: TObject);
begin
    DbConfigFin.MAgencia.Post;
    DbConfigFin.MAgencia.close;
    CadastrarAgencia.close;
    DbConfigFin.Qagencia.close;
    DbConfigFin.Qagencia.open;
end;

procedure TCadastrarAgencia.Button3Click(Sender: TObject);
begin
   ConsultaBancoAgencia.showmodal;
end;

procedure TCadastrarAgencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DbConfigFin.MBanco.Cancel;
end;

procedure TCadastrarAgencia.FormShow(Sender: TObject);
begin
    DbConfigFin.MAgencia.FieldByName('dtcadastro').Value := now;
end;

end.
