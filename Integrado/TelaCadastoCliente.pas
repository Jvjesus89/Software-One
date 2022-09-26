unit TelaCadastoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TTelaCadastroCliente1 = class(TForm)
    Label1: TLabel;
    NomeClienteCampo: TDBEdit;
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
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Button1: TButton;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastroCliente1: TTelaCadastroCliente1;

implementation

{$R *.dfm}

uses DbCliente;

procedure TTelaCadastroCliente1.Button1Click(Sender: TObject);
begin
     if not ((Trim(DBEdit2.Text).IsEmpty) or (Trim(NomeClienteCampo.Text).IsEmpty)or (Trim(DBEdit9.Text).IsEmpty)) then
     begin
     DbClient.Mcliente.Post;
     ShowMessage('Cliente Cadastrado');
     TelaCadastroCliente1.Close;
     DbClient.Qcliente.close;
     DbClient.Qcliente.Open;
     end
     else
     begin
     ShowMessage('Campos obrigatorios para cadastro de cliente CPF/CNPJ, Nome , C�digo') ;
     end;
end;

procedure TTelaCadastroCliente1.FormShow(Sender: TObject);
begin
     DbClient.Mcliente.FieldByName('dtcadastro').Value := now;
end;

end.
