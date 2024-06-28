unit Pdv.view.componente.listatipospgfechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TComponenteListaFechamentoCaixa = class(TFrame)
    Shape1: TShape;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    pnlTipoPg: TPanel;
    pnlValor: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
  private
      FProc: TProc<TObject>;
  public
      class function New(Aowner:TComponent): TComponenteListaFechamentoCaixa;
      function Embed(Value:TWincontrol):TComponenteListaFechamentoCaixa;
      function Nome (Value: String):TComponenteListaFechamentoCaixa;
      function TipoPagamento (Value: String):TComponenteListaFechamentoCaixa;
      function Valor (Value: String):TComponenteListaFechamentoCaixa;
      function Click (Value: TProc<Tobject>):TComponenteListaFechamentoCaixa;
      function alinhamento(Value: TAlign):TComponenteListaFechamentoCaixa;

  end;

implementation

{$R *.dfm}

{ TComponenteListaFechamentoCaixa }

function TComponenteListaFechamentoCaixa.alinhamento(
  Value: TAlign): TComponenteListaFechamentoCaixa;
begin
    Result := Self;
    Self.Align := AlBottom;
    Self.Align := value;
end;

function TComponenteListaFechamentoCaixa.Click(
  Value: TProc<Tobject>): TComponenteListaFechamentoCaixa;
begin
  Result := Self;
  FProc := value;
end;

function TComponenteListaFechamentoCaixa.Embed(
  Value: TWincontrol): TComponenteListaFechamentoCaixa;
begin
  Result := Self;
  Self.parent := value;
end;

class function TComponenteListaFechamentoCaixa.New(
  Aowner: TComponent): TComponenteListaFechamentoCaixa;
begin
    Result := Self.Create(Aowner);
end;

function TComponenteListaFechamentoCaixa.Nome(
  Value: String): TComponenteListaFechamentoCaixa;
begin
   Result := Self;
   Self.Name := value;
end;

procedure TComponenteListaFechamentoCaixa.SpeedButton1Click(Sender: TObject);
begin
  if Assigned(Fproc) then
  Fproc(Sender);
end;

function TComponenteListaFechamentoCaixa.TipoPagamento(
  Value: String): TComponenteListaFechamentoCaixa;
begin
   Result := Self;
   pnlTipoPg.Caption := value;
end;

function TComponenteListaFechamentoCaixa.Valor(
  Value: String): TComponenteListaFechamentoCaixa;
begin
  Result := Self;
  pnlValor.Caption :=  Format('R$ %s',[value]);
end;

end.
