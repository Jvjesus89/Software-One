unit Pdv.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Imaging.jpeg,Pdv.view.page.login,
  Vcl.WinXCtrls,
  Pdv.view.page.pagamentos;

type
  Tpageprincipal = class(TForm)
    pnlConteiner: TPanel;
    pnlButton: TPanel;
    pnlTitle: TPanel;
    pnlMain: TPanel;
    pnlOperacao: TPanel;
    PnlCancelarOp: TPanel;
    Shape1: TShape;
    btnCancelarOP: TSpeedButton;
    pnlConsultaPreco: TPanel;
    Shape2: TShape;
    btnConsultarPreco: TSpeedButton;
    pnlAbrirCaixa: TPanel;
    Shape3: TShape;
    btnabrircaixa: TSpeedButton;
    pnlCancelarVenda: TPanel;
    Shape4: TShape;
    btnCancelarVenda: TSpeedButton;
    pnlCancelarItem: TPanel;
    Shape5: TShape;
    btnCancelarItem: TSpeedButton;
    pnlMaisFuncoes: TPanel;
    Shape6: TShape;
    btnMaisFuncoes: TSpeedButton;
    pnlGrid: TPanel;
    gridProdutos: TDBGrid;
    pnlTotalCompra: TPanel;
    lblTotalCompra: TLabel;
    Shape7: TShape;
    pnlEditTotalCompra: TPanel;
    lblEditTotalcompra: TLabel;
    pnlSubTotal: TPanel;
    lblSubTotal: TLabel;
    pnlEditSubTotal: TPanel;
    Shape8: TShape;
    lblEditSubTotal: TLabel;
    pnlQuantidade: TPanel;
    lblQuantidade: TLabel;
    pnlEditQuantidade: TPanel;
    Shape9: TShape;
    editQuantidade: TEdit;
    pnlPreco: TPanel;
    lblpreco: TLabel;
    pnlEditPreco: TPanel;
    Shape10: TShape;
    lblEditPreco: TLabel;
    pnlProduto: TPanel;
    lblProduto: TLabel;
    pnlEditProduto: TPanel;
    Shape11: TShape;
    editProduto: TEdit;
    pnlImgProduto: TPanel;
    imagemProduto: TImage;
    pnlMaster: TPanel;
    SplitViewFuncoes: TSplitView;
    pnlSplitView: TPanel;
    pnlDescontoItem: TPanel;
    Shape12: TShape;
    pnlMultplicaItem: TPanel;
    Shape13: TShape;
    pnlFechaVenda: TPanel;
    Shape14: TShape;
    pnlNovaVenda: TPanel;
    Shape15: TShape;
    pnlBtnCpf: TPanel;
    Shape16: TShape;
    pnlSupriSangria: TPanel;
    Shape17: TShape;
    SplitViewPagamentos: TSplitView;
    pnlPg: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMaisFuncoesClick(Sender: TObject);
  private
  Flogin: TPageLogin;
    procedure MontarBotoes;
    procedure SplitViewAction(Value : TsplitView);

  public

  end;

var
  pageprincipal: Tpageprincipal;

implementation

{$R *.dfm}


procedure Tpageprincipal.btnMaisFuncoesClick(Sender: TObject);
begin
  SplitViewAction(SplitViewFuncoes)
end;

procedure Tpageprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Flogin.Free;
end;

procedure Tpageprincipal.FormCreate(Sender: TObject);
begin
  MontarBotoes;
end;

procedure Tpageprincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  lPagamentos :TpagePagamentos;
begin
   case key of
      VK_ESCAPE: ShowMessage('Cancelar Opera��o');
      VK_F4 : ShowMessage('Consultar Pre�o');
      VK_F2 : ShowMessage('Abrir caixa');
      VK_F6 : ShowMessage('Cancelar Venda');
      VK_F5 : ShowMessage('Cancelar Item');
      VK_F12 : btnMaisFuncoesClick(Sender);
      VK_F7 : begin
         lPagamentos := TpagePagamentos.create(Nil);
         lPagamentos.Parent := pnlPg;
         lPagamentos.Show;
         splitViewAction(SplitViewPagamentos) ;
      end;
   end;
end;

procedure Tpageprincipal.FormShow(Sender: TObject);
begin
   {Flogin := TpageLogin.Create(nil);
   Flogin.Parent := pnlMaster;
   Flogin.show;
   }
   end;

procedure Tpageprincipal.MontarBotoes;
begin
  btnCancelarOP.Caption := 'Cancelar Opera��o' + ''#13'' + ' (ESC)';
  btnConsultarPreco.Caption := 'Consultar Pre�o' + ''#13'' + ' (F4)';
  btnAbrirCaixa.Caption := 'Abrir Caixa' + ''#13'' + ' (F2)';
  btnCancelarVenda.Caption := 'Cancelar Venda' + ''#13'' + ' (F6)';
  btnCancelarItem.Caption := 'Cancelar Item' + ''#13'' + ' (F5)';
  btnMaisFuncoes.Caption := 'Abrir Menu' + ''#13'' + ' (F12)';
end;

procedure Tpageprincipal.SplitViewAction(Value: TsplitView);
begin
 Value.Opened := not Value.Opened;
end;

end.
