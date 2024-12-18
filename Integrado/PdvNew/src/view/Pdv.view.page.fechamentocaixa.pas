unit Pdv.view.page.FechamentoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Pdv.model.Caixa, Pdv.view.componente.listatipospgfechamento,pdvnew.Utils;

type
  TPageFecharCaixa = class(TForm)
    pnlConteiner: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel5: TPanel;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Shape2: TShape;
    Shape3: TShape;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel12: TPanel;
    ListBox1: TListBox;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
  Fproc:Tproc<Tcaixa> ;
  FIndex : Integer;
  FLista: TComponenteListaFechamentoCaixa;
  Procedure  Responsive ;
  Procedure RemoveItemDaLista(Sender :Tobject);
    { Private declarations }
  public
  class function New(Aowner:TComponent): TPageFecharCaixa;
  function Embed(Value:TPanel):TPageFecharCaixa;
  function Informacoes(Value: Tproc<Tcaixa>) : TPageFecharCaixa;
    { Public declarations }
  end;

var
  PageFecharCaixa: TPageFecharCaixa;

implementation

uses
  Pdv.model.Enum;

{$R *.dfm}

{ TForm1 }

function TPageFecharCaixa.Embed(Value: TPanel): TPageFecharCaixa;
begin
  Result:=self;
  Self.AddObject(value);
end;

procedure TPageFecharCaixa.FormCreate(Sender: TObject);
var i :TTipoPagamento;
begin
  Responsive;
  ComboBox1.Items.Clear;
  for I := Low(TTipoPagamento) to High(TTipoPagamento) do
  ComboBox1.Items.Add(I.ToString);

end;

procedure TPageFecharCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  Self.RemoveObject;
end;

procedure TPageFecharCaixa.FormResize(Sender: TObject);
begin
 Responsive;
end;

procedure TPageFecharCaixa.FormShow(Sender: TObject);
begin
 Responsive;
end;

function TPageFecharCaixa.Informacoes(Value: Tproc<Tcaixa>): TPageFecharCaixa;
begin
  Result := Self;
  Fproc := Value;
end;

class function TPageFecharCaixa.New(Aowner: TComponent): TPageFecharCaixa;
begin
  Result := Self.Create(AOwner);
end;

procedure TPageFecharCaixa.RemoveItemDaLista(Sender: Tobject);
begin
  ListBox1.DeleteSelected;
  Flista.DisposeOf;
  Dec(Findex);
end;

procedure TPageFecharCaixa.Responsive;
begin
  pnlconteiner.Margins.Left := Round ((Self.Width - pnlconteiner.Width)/2);
  pnlconteiner.Margins.Right := Round ((Self.Width - pnlconteiner.Width)/2);
  pnlconteiner.Margins.Top := Round ((Self.Height - pnlconteiner.Height)/2);
  pnlconteiner.Margins.Bottom := Round ((Self.Height - pnlconteiner.Height)/2);
  pnlconteiner.Align := alClient;
end;

procedure TPageFecharCaixa.SpeedButton1Click(Sender: TObject);
begin
  inc(Findex);
   Flista:= TComponenteListaFechamentoCaixa.New(Self)
   .TipoPagamento(ComboBox1.text)
   .Valor(Edit1.Text)
   .Embed(ListBox1)
   .Nome('Frame'+ Findex.ToString)
   .Click(RemoveItemDaLista)
   .Alinhamento(AlTop);
end;

procedure TPageFecharCaixa.SpeedButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TPageFecharCaixa.SpeedButton3Click(Sender: TObject);
Var
 LCaixa : Tcaixa;
 lturno : Tturno;
 lData : TdateTime;
begin
lData := now;
lCaixa := Tcaixa.New;
try
 lCaixa.Aberto := False;
 lCaixa.DataHoraFechamento := lData;
 FProc(LCaixa);
finally
 lCaixa.DisposeOf;
 Self.RemoveObject;
end;

end;

end.
