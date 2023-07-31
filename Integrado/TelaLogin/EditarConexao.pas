unit EditarConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAlterarDB = class(TForm)
    Ip: TLabel;
    NomeBancoDeDados: TLabel;
    Usuario: TLabel;
    Senha: TLabel;
    Porta: TLabel;
    ConectarBanco: TButton;
    IPPostgres: TEdit;
    Login: TEdit;
    NomeBanco: TEdit;
    Senhas: TEdit;
    PortaPostgres: TEdit;
    procedure ConectarBancoClick(Sender: TObject);
    procedure IPPostgresExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlterarDB: TAlterarDB;

implementation

{$R *.dfm}

uses DbPrincipal;

procedure TAlterarDB.ConectarBancoClick(Sender: TObject);
begin
  DbMaster.Conex�oDb.Close;
  DbMaster.Conex�oDb.Params.Clear;
  DbMaster.Conex�oDb.Params.Add('DriverID=PG');
  DbMaster.Conex�oDb.Params.Add('Database='+NomeBanco.Text);
  DbMaster.Conex�oDb.Params.Add('User_Name='+Login.Text);
  DbMaster.Conex�oDb.Params.Add('Password='+Senhas.Text);
  DbMaster.Conex�oDb.Params.Add('Server='+IPPostgres.Text);
  DbMaster.Conex�oDb.Params.Add('Port='+PortaPostgres.Text);
  DbMaster.Conex�oDb.Open;
end;

procedure TAlterarDB.IPPostgresExit(Sender: TObject);
begin
    IPPostgres.Text := UpperCase(IPPostgres.Text);
end;

end.
