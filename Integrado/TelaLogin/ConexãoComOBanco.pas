unit ConexãoComOBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TConexãoBancoDeDados = class(TForm)
    Ip: TLabel;
    NomeBancoDeDados: TLabel;
    Usuario: TLabel;
    Senha: TLabel;
    ConectarBanco: TButton;
    Porta: TLabel;
    IPPostgres: TEdit;
    Login: TEdit;
    NomeBanco: TEdit;
    Senhas: TEdit;
    PortaPostgres: TEdit;
    procedure ConectarBancoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConexãoBancoDeDados: TConexãoBancoDeDados;

implementation

{$R *.dfm}

uses DbPrincipal, TelaLogin;

procedure TConexãoBancoDeDados.ConectarBancoClick(Sender: TObject);
begin
  DbMaster.ConexãoDb.close;
  DbMaster.ConexãoDb.Params.Clear;
  DbMaster.ConexãoDb.Params.Add('DriverID=PG');
  DbMaster.ConexãoDb.Params.Add('Database='+NomeBanco.Text);
  DbMaster.ConexãoDb.Params.Add('User_Name='+Login.Text);
  DbMaster.ConexãoDb.Params.Add('Password='+Senhas.Text);
  DbMaster.ConexãoDb.Params.Add('Server='+IPPostgres.Text);
  DbMaster.ConexãoDb.Params.Add('Port='+PortaPostgres.Text);
  DbMaster.ConexãoDb.open;
end;

end.
