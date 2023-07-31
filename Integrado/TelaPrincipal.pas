unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  THubPrin = class(TForm)
    CadastroProduto: TBitBtn;
    CadastroUsuario: TBitBtn;
    CadastroTituloApagar: TBitBtn;
    ConsultaEstoque: TBitBtn;
    CadastroCliente: TBitBtn;
    Vendas: TBitBtn;
    CadastroTituloAreceber: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    Image1: TImage;
    procedure CadastroUsuarioClick(Sender: TObject);
    procedure CadastroProdutoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConsultaEstoqueClick(Sender: TObject);
    procedure CadastroClienteClick(Sender: TObject);
    procedure CadastroTituloAreceberClick(Sender: TObject);
    procedure CadastroTituloApagarClick(Sender: TObject);
    procedure VendasClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HubPrin: THubPrin;

implementation

{$R *.dfm}



procedure THubPrin.BitBtn1Click(Sender: TObject);
var caminhovalido,DiretorioPadrao : string;
CoverterCaminho : array[0..255] of AnsiChar;
begin
// encontrar o arquivo de Configuracoes na pasta
DiretorioPadrao := GetCurrentDir;
caminhovalido := FileSearch('Configuracoes.exe' ,DiretorioPadrao);
if caminhovalido = 'Configuracoes.exe' then
  begin
  DiretorioPadrao := GetCurrentDir +'\Configuracoes.exe';
  StrPCopy(CoverterCaminho, DiretorioPadrao);
  WinExec(CoverterCaminho,SW_SHOW)
  end;
end;

procedure THubPrin.CadastroClienteClick(Sender: TObject);
var caminhovalido,DiretorioPadrao : string;
CoverterCaminho : array[0..255] of AnsiChar;
begin
// encontrar o arquivo de CadastroCliente na pasta
DiretorioPadrao := GetCurrentDir;
caminhovalido := FileSearch('CadastroCliente.exe' ,DiretorioPadrao);
if caminhovalido = 'CadastroCliente.exe' then
  begin
  DiretorioPadrao := GetCurrentDir +'\CadastroCliente.exe';
  StrPCopy(CoverterCaminho, DiretorioPadrao);
  WinExec(CoverterCaminho,SW_SHOW)
  end;
end;

procedure THubPrin.CadastroProdutoClick(Sender: TObject);
var caminhovalido,DiretorioPadrao : string;
CoverterCaminho : array[0..255] of AnsiChar;
begin
// encontrar o arquivo de CadastroProduto na pasta
DiretorioPadrao := GetCurrentDir;
caminhovalido := FileSearch('CadastroProduto.exe' ,DiretorioPadrao);
if caminhovalido = 'CadastroProduto.exe' then
  begin
  DiretorioPadrao := GetCurrentDir +'\CadastroProduto.exe';
  StrPCopy(CoverterCaminho, DiretorioPadrao);
  WinExec(CoverterCaminho,SW_SHOW)
  end;
end;

procedure THubPrin.CadastroTituloApagarClick(Sender: TObject);
var caminhovalido,DiretorioPadrao : string;
CoverterCaminho : array[0..255] of AnsiChar;
// encontrar o arquivo de FinApagar na pasta
begin
DiretorioPadrao := GetCurrentDir;
caminhovalido := FileSearch('FinApagar.exe' ,DiretorioPadrao);
if caminhovalido = 'FinApagar.exe' then
  begin
  DiretorioPadrao := GetCurrentDir +'\FinApagar.exe';
  StrPCopy(CoverterCaminho, DiretorioPadrao);
  WinExec(CoverterCaminho,SW_SHOW)
  end;
end;

procedure THubPrin.CadastroTituloAreceberClick(Sender: TObject);
var caminhovalido,DiretorioPadrao : string;
CoverterCaminho : array[0..255] of AnsiChar;
// encontrar o arquivo de FinApagar na pasta
begin
DiretorioPadrao := GetCurrentDir;
caminhovalido := FileSearch('FinAreceber.exe' ,DiretorioPadrao);
if caminhovalido = 'FinAreceber.exe' then
  begin
  DiretorioPadrao := GetCurrentDir +'\FinAreceber.exe';
  StrPCopy(CoverterCaminho, DiretorioPadrao);
  WinExec(CoverterCaminho,SW_SHOW)
  end;
end;

procedure THubPrin.CadastroUsuarioClick(Sender: TObject);
var caminhovalido,DiretorioPadrao : string;
CoverterCaminho : array[0..255] of AnsiChar;
// encontrar o arquivo de CadastroUsuario na pasta
begin
DiretorioPadrao := GetCurrentDir;
caminhovalido := FileSearch('CadastroUsuario.exe' ,DiretorioPadrao);
if caminhovalido = 'CadastroUsuario.exe' then
  begin
  DiretorioPadrao := GetCurrentDir +'\CadastroUsuario.exe';
  StrPCopy(CoverterCaminho, DiretorioPadrao);
  WinExec(CoverterCaminho,SW_SHOW)
  end;
end;


procedure THubPrin.ConsultaEstoqueClick(Sender: TObject);
var caminhovalido,DiretorioPadrao : string;
CoverterCaminho : array[0..255] of AnsiChar;
// encontrar o arquivo de ConsultaEstoque na pasta
begin
DiretorioPadrao := GetCurrentDir;
caminhovalido := FileSearch('ConsultaEstoque.exe' ,DiretorioPadrao);
if caminhovalido = 'ConsultaEstoque.exe' then
  begin
  DiretorioPadrao := GetCurrentDir +'\ConsultaEstoque.exe';
  StrPCopy(CoverterCaminho, DiretorioPadrao);
  WinExec(CoverterCaminho,SW_SHOW)
  end;
end;

procedure THubPrin.FormShow(Sender: TObject);
begin
     HubPrin.WindowState := TWindowState.wsMaximized
end;

procedure THubPrin.VendasClick(Sender: TObject);
var caminhovalido,DiretorioPadrao : string;
CoverterCaminho : array[0..255] of AnsiChar;
// encontrar o arquivo de ConsultaEstoque na pasta
begin
DiretorioPadrao := GetCurrentDir;
caminhovalido := FileSearch('Vendas.exe' ,DiretorioPadrao);
if caminhovalido = 'Vendas.exe' then
  begin
  DiretorioPadrao := GetCurrentDir +'\Vendas.exe';
  StrPCopy(CoverterCaminho, DiretorioPadrao);
  WinExec(CoverterCaminho,SW_SHOW)
  end;
end;

end.
