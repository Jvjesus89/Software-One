unit Conex�oComOBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TConex�oBancoDeDados = class(TForm)
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
  Conex�oBancoDeDados: TConex�oBancoDeDados;

implementation

{$R *.dfm}

uses DbPrincipal, TelaLogin;

procedure TConex�oBancoDeDados.ConectarBancoClick(Sender: TObject);
begin
  DbMaster.Conex�oDb.close;
  DbMaster.Conex�oDb.Params.Clear;
  DbMaster.Conex�oDb.Params.Add('DriverID=PG');
  DbMaster.Conex�oDb.Params.Add('Database='+NomeBanco.Text);
  DbMaster.Conex�oDb.Params.Add('User_Name='+Login.Text);
  DbMaster.Conex�oDb.Params.Add('Password='+Senhas.Text);
  DbMaster.Conex�oDb.Params.Add('Server='+IPPostgres.Text);
  DbMaster.Conex�oDb.Params.Add('Port='+PortaPostgres.Text);
  DbMaster.Conex�oDb.open;
end;

end.
