unit TelaConexaoIni;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.IniFiles;

type
  TForm3 = class(TForm)
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
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ConectarBancoClick(Sender: TObject);
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

end;

procedure TForm3.IPPostgresExit(Sender: TObject);
begin
    IPPostgres.Text := UpperCase(IPPostgres.Text);
end;

end.
