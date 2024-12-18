unit Pdv.view.page.pagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Pdv.view.page.pix, Pdv.view.page.Dinheiro,
  Pdv.view.page.cartao;

type
  TPagePagamentos = class(TForm)
    pnlConteiner: TPanel;
    pnlInformacoes: TPanel;
    pnlFormasPagamentos: TPanel;
    pnlResumoVenda: TPanel;
    pnlInfoVenda: TPanel;
    pnlCancelar: TPanel;
    pnlInfoValores: TPanel;
    pnlImagem: TPanel;
    Image1: TImage;
    Label1: TLabel;
    pnlTotalVenda: TPanel;
    lblTotalVenda: TLabel;
    lblValorVenda: TLabel;
    pnlDesconto: TPanel;
    lblDesconto: TLabel;
    editDesconto: TEdit;
    pnlAcrescimo: TPanel;
    lblAcrescimo: TLabel;
    editAcrescimo: TEdit;
    pnlTotalAreceber: TPanel;
    lblTotalAreceber: TLabel;
    lblValorAreceber: TLabel;
    Shape1: TShape;
    pnlRecebimentos: TPanel;
    pnlTotalRecebido: TPanel;
    lblTotalRecebido: TLabel;
    editTotalRecebido: TEdit;
    pnlSaldoRestante: TPanel;
    lblSaldoRestante: TLabel;
    lblValorSaldoRestante: TLabel;
    pnlTroco: TPanel;
    lblTroco: TLabel;
    lblValorTroco: TLabel;
    pnlTitulo: TPanel;
    pnlOnTop: TPanel;
    Shape2: TShape;
    pnlFormaPG: TPanel;
    pnlEscolherFormaPG: TPanel;
    pnlEscolherForma: TPanel;
    pnlFormasPG: TPanel;
    pnlFormaPgCartao: TPanel;
    ShapeCartao: TShape;
    pnlFormaCartao: TPanel;
    pnlImageBanco: TPanel;
    pnlCartao: TPanel;
    ImageBanco: TImage;
    pnlFormaPgPix: TPanel;
    ShapePix: TShape;
    pnlFormaPix: TPanel;
    pnlImagepIx: TPanel;
    imagePix: TImage;
    pnlPix: TPanel;
    pnlFormaPgDinheiro: TPanel;
    ShapeDinheiro: TShape;
    pnlFormaDinheiro: TPanel;
    pnlImageDinheiro: TPanel;
    imageDinheiro: TImage;
    pnlDinheiro: TPanel;
    pnlConteinerPg: TPanel;
    Panel2: TPanel;
    Shape6: TShape;
    procedure pnlImagepIxClick(Sender: TObject);
    procedure pnlImageBancoClick(Sender: TObject);
    procedure pnlImageDinheiroClick(Sender: TObject);
  private
    FrameCartao: TframeCartao;
    procedure SetClick(Shape: TShape; Panel : Tpanel);

  public
    { Public declarations }
  end;

var
  PagePagamentos: TPagePagamentos;

implementation

{$R *.dfm}

procedure TPagePagamentos.pnlImageBancoClick(Sender: TObject);
begin
  if Assigned(FrameCartao) then
    begin
    FrameCartao.Free;
    end;
    FrameCartao:=TframeCartao.New(Self).Alinhamento(AlClient).Embed(pnlconteinerPg);
    SetClick(ShapeCartao,pnlFormasPG);
end;

procedure TPagePagamentos.pnlImageDinheiroClick(Sender: TObject);
var
 lFrame : TframeDinheiro;
begin
  lFrame := TframeDinheiro.create(nil);
  lFrame.Align :=  alClient;
  lFrame.Parent := pnlConteinerPg;
  lFrame.editRecebido.SetFocus;
   SetClick(ShapeDinheiro,pnlFormasPG);
end;

procedure TPagePagamentos.pnlImagepIxClick(Sender: TObject);
var
 lFrame : TframePix;
begin
  lFrame := TframePix.create(nil);
  lFrame.Align :=  alClient;
  lFrame.Parent := pnlConteinerPg;

  SetClick(ShapePix,pnlFormasPG);
end;

procedure TPagePagamentos.SetClick(Shape: TShape; Panel: Tpanel);
begin
  ShapeCartao.Pen.Style := psClear;
  ShapePix.Pen.Style := psClear;
  ShapeDinheiro.Pen.Style := psClear;

  Shape.Pen.Style := psSolid;

  Panel.Visible := False;
  Panel.Visible := True;
end;

end.
