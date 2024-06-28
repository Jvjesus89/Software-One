unit Pdv.view.abrirCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Pdv.model.Caixa;

type
  TPageAbrirCaixa = class(TForm)
    pnlConteiner: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Shape1: TShape;
    EditValorSuprimento: TEdit;
    Shape2: TShape;
    btnAbrircaixa: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAbrircaixaClick(Sender: TObject);
  private
  Fproc:Tproc<Tcaixa> ;
  Procedure  Responsive ;
    { Private declarations }
  public
  class function New(Aowner:TComponent): TPageAbrirCaixa;
  function Embed(Value:TWincontrol):TPageAbrirCaixa;
  function Informacoes(Value: Tproc<Tcaixa>) : TPageAbrirCaixa;
    { Public declarations }
  end;

var
  PageAbrirCaixa: TPageAbrirCaixa;

implementation

{$R *.dfm}

{ TForm1 }

procedure TPageAbrirCaixa.btnAbrircaixaClick(Sender: TObject);
var
lCaixa :Tcaixa;
lTurno :Tturno;
lData : Tdatetime;
begin
  lData := now;
  lCaixa := Tcaixa.new;
  try
    lCaixa.Id := 1;
    lCaixa.Caixa := 1;
    lCaixa.Turno := lTurno.RetornaTurno(lData);
    lCaixa.Aberto := True;
    lCaixa.DataHoraAbertura := lData;
    lCaixa.SAldoInicial := StrToCurr(StringReplace(EditValorSuprimento.Text , 'R$ ','',[rfReplaceAll,rfIgnoreCase]));
    Fproc(lCaixa);
  finally
    lCaixa.DisposeOf;
    Self.Close;
  end;

end;

function TPageAbrirCaixa.Embed(Value: TWincontrol): TPageAbrirCaixa;
begin
  Result:=self;
  Self.Parent := value;
end;

procedure TPageAbrirCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  Self.Close;
  self.DisposeOf
end;

procedure TPageAbrirCaixa.FormResize(Sender: TObject);
begin
 Responsive;
end;

procedure TPageAbrirCaixa.FormShow(Sender: TObject);
begin
 Responsive;
end;

function TPageAbrirCaixa.Informacoes(Value: Tproc<Tcaixa>): TPageAbrirCaixa;
begin
  Result := Self;
  Fproc := Value;
end;

class function TPageAbrirCaixa.New(Aowner: TComponent): TPageAbrirCaixa;
begin
  Result := Self.Create(AOwner);
end;

procedure TPageAbrirCaixa.Responsive;
begin
  pnlconteiner.Margins.Left := Round ((Self.Width - pnlconteiner.Width)/2);
  pnlconteiner.Margins.Right := Round ((Self.Width - pnlconteiner.Width)/2);
  pnlconteiner.Margins.Top := Round ((Self.Height - pnlconteiner.Height)/2);
  pnlconteiner.Margins.Bottom := Round ((Self.Height - pnlconteiner.Height)/2);
  pnlconteiner.Align := alClient;
end;

end.
