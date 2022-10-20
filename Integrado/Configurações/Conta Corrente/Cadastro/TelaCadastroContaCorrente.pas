unit TelaCadastroContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TCadastroContaCorrente = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Button3: TButton;
    Edit1: TEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroContaCorrente: TCadastroContaCorrente;

implementation

{$R *.dfm}

uses DbConfiguracaoFinanceiro,TelaConsultaAgenciaConta,
  TelaConsultaBancoConta;

procedure TCadastroContaCorrente.Button1Click(Sender: TObject);
begin
      DbConfigFin.Mconta.Cancel;
    CadastroContaCorrente.close;
end;

procedure TCadastroContaCorrente.Button2Click(Sender: TObject);
begin
    DbConfigFin.Mconta.Post;
    DbConfigFin.Mconta.close;
    CadastroContaCorrente.close;
    DbConfigFin.QContaCorrente.close;
    DbConfigFin.QContaCorrente.open;
end;

procedure TCadastroContaCorrente.Button3Click(Sender: TObject);
begin
   ConsultaBancoContaCorrente.showmodal;
end;

procedure TCadastroContaCorrente.Button4Click(Sender: TObject);
begin
   ConsultaAgenciaConta.showmodal;
end;

procedure TCadastroContaCorrente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DbConfigFin.Mconta.Cancel;
end;

procedure TCadastroContaCorrente.FormShow(Sender: TObject);
begin
    DbConfigFin.Mconta.FieldByName('dtcadastro').Value := now;
end;

end.
