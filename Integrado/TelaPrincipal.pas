unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, ShellAPI, System.IniFiles,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  Vcl.Imaging.jpeg, Producao, CadProd, conectarINI, Vcl.WinXCtrls,
  TelaConsultaEstoque;

type
  THubPrin = class(TForm)
    Image1: TImage;
    SplitViewHub: TSplitView;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    CadastroTituloApagar: TBitBtn;
    CadastroTituloAreceber: TBitBtn;
    ConsultaEstoque: TBitBtn;
    Vendas: TBitBtn;
    btnProducao: TBitBtn;
    TabSheet2: TTabSheet;
    CadastroProduto: TBitBtn;
    CadastroUsuario: TBitBtn;
    CadastroCliente: TBitBtn;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    procedure CadastroUsuarioClick(Sender: TObject);
    procedure CadastroProdutoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConsultaEstoqueClick(Sender: TObject);
    procedure CadastroClienteClick(Sender: TObject);
    procedure CadastroTituloAreceberClick(Sender: TObject);
    procedure CadastroTituloApagarClick(Sender: TObject);
    procedure VendasClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnProducaoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
  var
    caminhovalido: string;

    { Private declarations }
  public
      idusuario : integer;
    { Public declarations }
  end;

var
  HubPrin: THubPrin;

implementation

{$R *.dfm}

uses TelaLogin;

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
    ShowMessage
      ('O arquivo Configuracoes.exe n�o foi encontrado no diret�rio padr�o.');
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
    ShowMessage
      ('O arquivo CadastroCliente.exe n�o foi encontrado no diret�rio padr�o.');
  end;
end;

procedure THubPrin.CadastroProdutoClick(Sender: TObject);
var
  Produtos: TCadProduto;
begin
  Produtos := TCadProduto.Create(Application);
  try
    Produtos.FormStyle := fsMDIChild;
    Produtos.Position := poMainFormCenter;
    Produtos.idusuario := idusuario  ;
    Produtos.Show;
    HubPrin.SplitViewHub.Opened := False;
  except
    Produtos.Free;
    raise;
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
    ShowMessage
      ('O arquivo FinApagar.exe n�o foi encontrado no diret�rio padr�o.');
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
    ShowMessage
      ('O arquivo FinAreceber.exe n�o foi encontrado no diret�rio padr�o.');
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
    ShowMessage
      ('O arquivo CadastroUsuario.exe n�o foi encontrado no diret�rio padr�o.');
  end;
end;

procedure THubPrin.ConsultaEstoqueClick(Sender: TObject);
var consultaestoque : TConsultaEstoque1;
begin
    consultaestoque := TConsultaEstoque1.Create(Application);
  try
    consultaestoque.FormStyle := fsMDIChild;
    consultaestoque.Position := poMainFormCenter;
    consultaestoque.WindowState := wsNormal;
    //consultaestoque.idusuario := idusuario  ;
    consultaestoque.Show;
    HubPrin.SplitViewHub.Opened := False;
  except
    consultaestoque.Free;
    raise;
  end;
end;




procedure THubPrin.FormShow(Sender: TObject);
   var ConectarIni : TconectarINI;
begin
  // Inicializa a conex�o com o banco de dados
  ConectarIni := TconectarINI.Create;
  try
    ConectarIni.DiretorioPadrao := GetCurrentDir;
    ConectarIni.consultarConexaoBanco;
  finally
    ConectarIni.Free;
  end;
end;

procedure THubPrin.SpeedButton1Click(Sender: TObject);
begin
  if SplitViewHub.Opened then
  begin
    SplitViewHub.Opened := false;
  end else
  begin
    SplitViewHub.Opened := true;
  end;
end;

procedure THubPrin.btnProducaoClick(Sender: TObject);
var
  producao: TProducao;
begin
  producao := TProducao.Create(Application);
  try
    producao.FormStyle := fsMDIChild;
    producao.Position := poMainFormCenter;
    producao.Show;
    HubPrin.SplitViewHub.Opened := False;
  except
    producao.Free;
    raise;
  end;
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
