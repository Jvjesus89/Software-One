unit TelaCadastroApagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTelaCadasrroApagar1 = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadasrroApagar1: TTelaCadasrroApagar1;

implementation

{$R *.dfm}

uses Dbfinapagar, TelaConsultaClienteApagar;

procedure TTelaCadasrroApagar1.BotaoCadastrarClick(Sender: TObject);
begin
    DbFinApagar1.Mapagar.Insert;
     ShowMessage('Titulo Cadastrado');
     TelaCadasrroApagar1.Close;
     DbFinApagar1.Qapagar.close;
     DbFinApagar1.Qapagar.open;
end;

procedure TTelaCadasrroApagar1.BuscaClick(Sender: TObject);
begin
      TelaConsultaCliente1.showmodal;
end;

procedure TTelaCadasrroApagar1.FormShow(Sender: TObject);
begin
     DbFinApagar1.Mapagar.Append;
     DbFinApagar1.Mapagar.FieldByName('dtcadastro').Value := now;
end;

end.
