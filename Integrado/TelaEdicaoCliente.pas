unit TelaEdicaoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTelaEdicaoCliente1 = class(TForm)
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
    Button1: TButton;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    UF: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaEdicaoCliente1: TTelaEdicaoCliente1;

implementation

{$R *.dfm}

uses DbCliente;

procedure TTelaEdicaoCliente1.Button1Click(Sender: TObject);
begin
     DbClient.Mcliente.Insert;
     ShowMessage('Cliente Cadastrado');
     TelaEdicaoCliente1.Close;
end;

procedure TTelaEdicaoCliente1.FormShow(Sender: TObject);
begin
     DbClient.Mcliente.Append;
     DbClient.Mcliente.FieldByName('dtcadastro').Value := now;
end;

end.