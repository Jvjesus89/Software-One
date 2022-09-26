unit TelaCadastroAreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTelaCadasrroAreceber1 = class(TForm)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Busca: TButton;
    BotaoCadastrar: TButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Button1: TButton;
    procedure BuscaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BotaoCadastrarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadasrroAreceber1: TTelaCadasrroAreceber1;

implementation

{$R *.dfm}

uses Dbfinreceber, TelaConsultaClienteAreceber;

procedure TTelaCadasrroAreceber1.BotaoCadastrarClick(Sender: TObject);
begin
     DBEdit4.text := '1';
     DbFinAreceber1.MAreceber.Insert;
     ShowMessage('Titulo Cadastrado');
     TelaCadasrroAreceber1.Close;

     DbFinAreceber1.QAreceber.Close;
     DbFinAreceber1.QAreceber.Open;
end;

procedure TTelaCadasrroAreceber1.BuscaClick(Sender: TObject);
begin
      TelaConsultaClienteAreceber1.showmodal;
      DbFinAreceber1.Qcliente.Open;
end;

procedure TTelaCadasrroAreceber1.Button1Click(Sender: TObject);
begin
    DbFinAreceber1.MAreceber.Close;
    DbFinAreceber1.MAreceber.Cancel;
    TelaCadasrroAreceber1.close;
end;

procedure TTelaCadasrroAreceber1.FormShow(Sender: TObject);
begin
     DbFinAreceber1.MAreceber.Append;
     DbFinAreceber1.MAreceber.FieldByName('dtcadastro').Value := now;
end;

end.
