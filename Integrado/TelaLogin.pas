unit TelaLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,System.IniFiles;

type
  TTelaLoginU = class(TForm)
    Usuario: TLabel;
    Senha: TLabel;
    Texto1: TLabel;
    Button1: TButton;
    Button2: TButton;
    NomeUsuario: TEdit;
    SenhaCampo: TEdit;
    Panel1: TPanel;
    PrimeiroAcesso: TButton;
    procedure Button2Click(Sender: TObject);
    procedure PrimeiroAcessoClick(Sender: TObject);
    procedure SenhaCampoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaLoginU: TTelaLoginU;

implementation

{$R *.dfm}

uses BancoLogin, EditarConexao, DbPrincipal;

procedure TTelaLoginU.Button2Click(Sender: TObject);
var caminhovalido,DiretorioPadrao : string;
CoverterCaminho : array[0..255] of AnsiChar;
  begin
      BancoUsuario.TabelaUsuario.open;
      if BancoUsuario.TabelaUsuario.Locate('nmusuario', NomeUsuario.Text) then
       begin
       // validar login e senha
       if (BancoUsuario.TabelaUsuario.FieldByName('nmusuario').AsString = NomeUsuario.Text) and
          (BancoUsuario.TabelaUsuario.FieldByName('senha').AsString = SenhaCampo.Text) then
        begin
        // encontrar o arquivo de hub na pasta
        DiretorioPadrao := GetCurrentDir;
        caminhovalido := FileSearch('Hub.exe' ,DiretorioPadrao);
        if caminhovalido = 'Hub.exe' then
         begin
         DiretorioPadrao := GetCurrentDir +'\Hub.exe';
         StrPCopy(CoverterCaminho, DiretorioPadrao);
         WinExec(CoverterCaminho,SW_SHOW);
         TelaLoginU.close;
         end
        else
           begin
           ShowMessage ('Arquivo não encontrado, coloque o arquivo Hub.exe no diretorio '+ GetCurrentDir) ;
           end
        end
        else
        begin
        ShowMessage('Usuario ou Senha invalidos')
        end;


        end ;


  end;


procedure TTelaLoginU.FormShow(Sender: TObject);
  var
ArquivoIni:TIniFile;
DiretorioPadrao,Caminhodll,ININomeBanco,INILogin,INISenhas,INIIPPostgres,INIPortaPostgres:string;
  begin
    DbMaster.ConexãoDb.Close;
    DiretorioPadrao := GetCurrentDir;

    ArquivoIni := TIniFile.Create(GetCurrentDir +'\ConexaoBanco.ini');
  try
    ININomeBanco := ArquivoIni.ReadString('CONEXAO_BANCO', 'Database', ININomeBanco);
    INILogin := ArquivoIni.ReadString('CONEXAO_BANCO','User_Name' , INILogin);
    INISenhas := ArquivoIni.ReadString('CONEXAO_BANCO', 'Password', INISenhas);
    INIIPPostgres := ArquivoIni.ReadString('CONEXAO_BANCO', 'Server', INIIPPostgres);
    INIPortaPostgres := ArquivoIni.ReadString('CONEXAO_BANCO', 'Port', INIPortaPostgres);
    Caminhodll := ArquivoIni.ReadString('DLL', 'dll', Caminhodll);


  finally
    ArquivoIni.Free;
  end;


  DbMaster.ConexãoDb.Params.Clear;
  DbMaster.ConexãoDb.Params.Add('DriverID=PG');
  DbMaster.ConexãoDb.Params.Add('Database='+ININomeBanco);
  DbMaster.ConexãoDb.Params.Add('User_Name='+INILogin);
  DbMaster.ConexãoDb.Params.Add('Password='+INISenhas);
  DbMaster.ConexãoDb.Params.Add('Server='+INIIPPostgres);
  DbMaster.ConexãoDb.Params.Add('Port='+INIPortaPostgres);
  DbMaster.Dll32bit.VendorLib  := Caminhodll;
  DbMaster.ConexãoDb.Open;
end;

procedure TTelaLoginU.PrimeiroAcessoClick(Sender: TObject);
begin
    AlterarDB.Showmodal;
end;

procedure TTelaLoginU.SenhaCampoKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        Button2.Click;
end;

end.
