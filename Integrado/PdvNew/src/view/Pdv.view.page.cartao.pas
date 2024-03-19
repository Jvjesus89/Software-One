unit Pdv.view.page.cartao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TFrameCartao = class(TFrame)
    pnlConteinerCartao: TPanel;
    pnlCartaoes: TPanel;
    pnlFormaPgCredito: TPanel;
    ShapeCredito: TShape;
    pnlFormaCredito: TPanel;
    pnlImageCredito: TPanel;
    ImageBanco: TImage;
    pnlCredito: TPanel;
    pnlFormaPgDebito: TPanel;
    ShapeDebito: TShape;
    pnlFormaDebito: TPanel;
    pnlImageDebito: TPanel;
    imageDebito: TImage;
    pnlDebito: TPanel;
    pnlBandeiraCartaoes: TPanel;
    Panel2: TPanel;
    ShapeMasterCard: TShape;
    Panel3: TPanel;
    pnlMasterCard: TPanel;
    Image1: TImage;
    Panel6: TPanel;
    ShapeElo: TShape;
    Panel7: TPanel;
    pnlElo: TPanel;
    Image2: TImage;
    Panel5: TPanel;
    ShapeAmerican: TShape;
    Panel9: TPanel;
    pnlAmerican: TPanel;
    Image3: TImage;
    Panel11: TPanel;
    ShapeVisa: TShape;
    Panel12: TPanel;
    pnlVisa: TPanel;
    Image4: TImage;
    procedure pnlImageCreditoClick(Sender: TObject);
    procedure pnlImageDebitoClick(Sender: TObject);
    procedure pnlEloClick(Sender: TObject);
    procedure pnlAmericanClick(Sender: TObject);
    procedure pnlVisaClick(Sender: TObject);
    procedure pnlMasterCardClick(Sender: TObject);
  private
    procedure SetClick(Shape: TShape; Panel : Tpanel);
  public
    class function New(Aowner: Tcomponent): TframeCartao;
    function Alinhamento(Value :Talign): TframeCartao;
    function Embed(value : Twincontrol) : TframeCartao;
  end;

implementation

{$R *.dfm}

{ TFrameCartao }

function TFrameCartao.Alinhamento(Value: Talign): TframeCartao;
begin
 Result := Self;
 Self.Align := Value;
end;

function TFrameCartao.Embed(value: Twincontrol): TframeCartao;
begin
 Result := Self;
 Self.Parent := Value;
end;

class function TFrameCartao.New(Aowner: Tcomponent): TframeCartao;
begin
  Result := Self.Create(Aowner);
end;

procedure TFrameCartao.pnlAmericanClick(Sender: TObject);
begin
  SetClick(ShapeAmerican,pnlBandeiraCartaoes);
end;

procedure TFrameCartao.pnlEloClick(Sender: TObject);
begin
  SetClick(ShapeElo,pnlBandeiraCartaoes);
end;

procedure TFrameCartao.pnlImageCreditoClick(Sender: TObject);
begin
  SetClick(ShapeCredito,pnlCartaoes);
end;

procedure TFrameCartao.pnlImageDebitoClick(Sender: TObject);
begin
  SetClick(ShapeDebito,pnlCartaoes);
end;

procedure TFrameCartao.pnlMasterCardClick(Sender: TObject);
begin
  SetClick(ShapeMasterCard,pnlBandeiraCartaoes);
end;

procedure TFrameCartao.pnlVisaClick(Sender: TObject);
begin
  SetClick(ShapeVisa,pnlBandeiraCartaoes);
end;

procedure TFrameCartao.SetClick(Shape: TShape; Panel: Tpanel);
begin
  ShapeCredito.Pen.Style := psClear;
  ShapeDebito.Pen.Style := psClear;
  ShapeMasterCard.Pen.Style := psClear;
  ShapeVisa.Pen.Style := psClear;
  ShapeAmerican.Pen.Style := psClear;
  ShapeElo.Pen.Style := psClear;

  Shape.Pen.Style := psSolid;

  Panel.Visible := False;
  Panel.Visible := True;
end;

end.
