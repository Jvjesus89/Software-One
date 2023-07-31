unit TelaLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
           ShowMessage ('Arquivo n�o encontrado, coloque o arquivo Hub.exe no diretorio '+ GetCurrentDir) ;
           end
        end
        else
        begin
        ShowMessage('Usuario ou Senha invalidos')
        end;


        end ;


  end;


procedure TTelaLoginU.FormShow(Sender: TObject);
var caminhovalido,DiretorioPadrao : string;
  begin
  DiretorioPadrao := GetCurrentDir+ '\libpq.dll';
  // encontrar o arquivo dll na pasta
  DbMaster.Dll32bit.Vendorlib := DiretorioPadrao;
  DbMaster.Conex�oDb.Open;
  end;

procedure TTelaLoginU.PrimeiroAcessoClick(Sender: TObject);
begin
    AlterarDB.Showmodal;
end;

end.
