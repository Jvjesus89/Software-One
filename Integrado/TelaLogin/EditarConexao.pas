unit EditarConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.IniFiles;

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
var
ArquivoIni:TIniFile;
DiretorioPadrao,Caminhodll,ININomeBanco,INILogin,INISenhas,INIIPPostgres,INIPortaPostgres:string;
begin
  DiretorioPadrao := GetCurrentDir;
  ArquivoIni := TIniFile.Create(DiretorioPadrao+'\ConexaoBanco.ini');

INILogin         := Login.Text;
ININomeBanco     := NomeBanco.Text;
INISenhas        := Senhas.Text;
INIIPPostgres    := IPPostgres.Text;
INIPortaPostgres := PortaPostgres.Text;
Caminhodll       := GetCurrentDir+ '\libpq.dll';


   try
    // Escreva valores no arquivo INI
    ArquivoIni.WriteString('CONEXAO_BANCO', 'Database', ININomeBanco);
    ArquivoIni.WriteString('CONEXAO_BANCO', 'User_Name', INILogin);
    ArquivoIni.WriteString('CONEXAO_BANCO', 'Password', INISenhas);
    ArquivoIni.WriteString('CONEXAO_BANCO', 'Server', INIIPPostgres);
    ArquivoIni.WriteString('CONEXAO_BANCO', 'Port', INIPortaPostgres);
    ArquivoIni.WriteString('DLL', 'dll', Caminhodll);
    ShowMessage('Arquivo INI criado com sucesso!');
  finally
    ArquivoIni.Free;
  end;


  DbMaster.Conex�oDb.Close;
  DbMaster.Conex�oDb.Params.Clear;
  DbMaster.Conex�oDb.Params.Add('DriverID=PG');
  DbMaster.Conex�oDb.Params.Add('Database='+ININomeBanco);
  DbMaster.Conex�oDb.Params.Add('User_Name='+INILogin);
  DbMaster.Conex�oDb.Params.Add('Password='+INISenhas);
  DbMaster.Conex�oDb.Params.Add('Server='+INIIPPostgres);
  DbMaster.Conex�oDb.Params.Add('Port='+INIPortaPostgres);
  DbMaster.Dll32bit.VendorLib  := Caminhodll;
  DbMaster.Conex�oDb.Open;
end;

procedure TAlterarDB.IPPostgresExit(Sender: TObject);
begin
    IPPostgres.Text := UpperCase(IPPostgres.Text);
end;

end.
