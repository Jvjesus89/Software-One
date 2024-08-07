unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ComCtrls, Vcl.Imaging.pngimage,ShellAPI,System.IniFiles,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  Vcl.Imaging.jpeg;

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
  var caminhovalido : string;
  CoverterCaminho : array[0..255] of AnsiChar;
  arquivoini: TIniFile;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HubPrin: THubPrin;

implementation

{$R *.dfm}

procedure THubPrin.BitBtn1Click(Sender: TObject);
begin
// encontrar o arquivo de Configuracoes na pasta
caminhovalido := (GetcurrentDir) + '\Configuracoes.exe';

 if FileExists(caminhovalido) then
  begin
    // Se o arquivo for encontrado, execute-o
  ShellExecute(0, 'open', PChar(caminhovalido), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    // Se o arquivo n�o for encontrado, exiba uma mensagem
    ShowMessage('O arquivo Configuracoes.exe n�o foi encontrado no diret�rio padr�o.');
  end;
end;

procedure THubPrin.CadastroClienteClick(Sender: TObject);
begin
// encontrar o arquivo de Configuracoes na pasta
caminhovalido := (GetcurrentDir) + '\CadastroCliente.exe';

 if FileExists(caminhovalido) then
  begin
    // Se o arquivo for encontrado, execute-o
  ShellExecute(0, 'open', PChar(caminhovalido), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    // Se o arquivo n�o for encontrado, exiba uma mensagem
    ShowMessage('O arquivo CadastroCliente.exe n�o foi encontrado no diret�rio padr�o.');
  end;
end;

procedure THubPrin.CadastroProdutoClick(Sender: TObject);
begin
// encontrar o arquivo de Configuracoes na pasta
caminhovalido := (GetcurrentDir) + '\CadastroProduto.exe';

 if FileExists(caminhovalido) then
  begin
    // Se o arquivo for encontrado, execute-o
  ShellExecute(0, 'open', PChar(caminhovalido), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    // Se o arquivo n�o for encontrado, exiba uma mensagem
    ShowMessage('O arquivo CadastroProduto.exe n�o foi encontrado no diret�rio padr�o.');
  end;
end;

procedure THubPrin.CadastroTituloApagarClick(Sender: TObject);
begin
// encontrar o arquivo de Configuracoes na pasta
caminhovalido := (GetcurrentDir) + '\FinApagar.exe';

 if FileExists(caminhovalido) then
  begin
    // Se o arquivo for encontrado, execute-o
  ShellExecute(0, 'open', PChar(caminhovalido), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    // Se o arquivo n�o for encontrado, exiba uma mensagem
    ShowMessage('O arquivo FinApagar.exe n�o foi encontrado no diret�rio padr�o.');
  end;
end;

procedure THubPrin.CadastroTituloAreceberClick(Sender: TObject);
begin
// encontrar o arquivo de Configuracoes na pasta
caminhovalido := (GetcurrentDir) + '\FinAreceber.exe';

 if FileExists(caminhovalido) then
  begin
    // Se o arquivo for encontrado, execute-o
  ShellExecute(0, 'open', PChar(caminhovalido), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    // Se o arquivo n�o for encontrado, exiba uma mensagem
    ShowMessage('O arquivo FinAreceber.exe n�o foi encontrado no diret�rio padr�o.');
  end;
end;

procedure THubPrin.CadastroUsuarioClick(Sender: TObject);
begin
// encontrar o arquivo de Configuracoes na pasta
caminhovalido := (GetcurrentDir) + '\CadastroUsuario.exe';

 if FileExists(caminhovalido) then
  begin
    // Se o arquivo for encontrado, execute-o
  ShellExecute(0, 'open', PChar(caminhovalido), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    // Se o arquivo n�o for encontrado, exiba uma mensagem
    ShowMessage('O arquivo CadastroUsuario.exe n�o foi encontrado no diret�rio padr�o.');
  end;
end;

procedure THubPrin.ConsultaEstoqueClick(Sender: TObject);
begin
// encontrar o arquivo de Configuracoes na pasta
caminhovalido := (GetcurrentDir) + '\ConsultaEstoque.exe';

 if FileExists(caminhovalido) then
  begin
    // Se o arquivo for encontrado, execute-o
  ShellExecute(0, 'open', PChar(caminhovalido), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    // Se o arquivo n�o for encontrado, exiba uma mensagem
    ShowMessage('O arquivo ConsultaEstoque.exe n�o foi encontrado no diret�rio padr�o.');
  end;
end;

procedure THubPrin.FormShow(Sender: TObject);
begin
     HubPrin.WindowState := TWindowState.wsMaximized;
end;

procedure THubPrin.VendasClick(Sender: TObject);
begin
// encontrar o arquivo de Configuracoes na pasta
caminhovalido := (GetcurrentDir) + '\Vendas.exe';

 if FileExists(caminhovalido) then
  begin
    // Se o arquivo for encontrado, execute-o
  ShellExecute(0, 'open', PChar(caminhovalido), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    // Se o arquivo n�o for encontrado, exiba uma mensagem
    ShowMessage('O arquivo Vendas.exe n�o foi encontrado no diret�rio padr�o.');
  end;
end;

end.
