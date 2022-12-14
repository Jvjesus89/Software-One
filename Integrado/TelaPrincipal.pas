unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ComCtrls;

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
begin
    WinExec('C:\Sistema\Integrado\Projetos\Win32\Debug\Configuracoes.exe',SW_SHOW)
end;

procedure THubPrin.CadastroClienteClick(Sender: TObject);
begin
    WinExec('C:\Sistema\Integrado\Projetos\Win32\Debug\CadastroCliente.exe',SW_SHOW)
end;

procedure THubPrin.CadastroProdutoClick(Sender: TObject);
begin
    WinExec('C:\Sistema\Integrado\Projetos\Win32\Debug\CadastroProduto.exe',SW_SHOW)
end;

procedure THubPrin.CadastroTituloApagarClick(Sender: TObject);
begin
    WinExec('C:\Sistema\Integrado\Projetos\Win32\Debug\FinApagar.exe',SW_SHOW)
end;

procedure THubPrin.CadastroTituloAreceberClick(Sender: TObject);
begin
    WinExec('C:\Sistema\Integrado\Projetos\Win32\Debug\FinAreceber.exe',SW_SHOW)
end;

procedure THubPrin.CadastroUsuarioClick(Sender: TObject);
begin
    WinExec('C:\Sistema\Integrado\Projetos\Win32\Debug\CadastroUsuario.exe',SW_SHOW)

end;

procedure THubPrin.ConsultaEstoqueClick(Sender: TObject);
begin
    WinExec('C:\Sistema\Integrado\Projetos\Win32\Debug\ConsultaEstoque.exe',SW_SHOW)
end;

procedure THubPrin.FormShow(Sender: TObject);
begin
     HubPrin.WindowState := TWindowState.wsMaximized
end;

procedure THubPrin.VendasClick(Sender: TObject);
begin
    WinExec('C:\Sistema\Integrado\Projetos\Win32\Debug\Vendas.exe',SW_SHOW)
end;

end.
