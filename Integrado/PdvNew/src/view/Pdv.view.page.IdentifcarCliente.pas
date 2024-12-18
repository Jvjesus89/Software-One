unit Pdv.view.page.IdentifcarCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage,PdvNew.Utils;

type
  TPageIdentificarCliente = class(TForm)
    pnlIdentificaoCliente: TPanel;
    PnlLblIndentificacliente: TPanel;
    Shape1: TShape;
    PnlInformaCPF: TPanel;
    LblCPF: TLabel;
    Shape2: TShape;
    EditCPFCNPJ: TEdit;
    PnlNome: TPanel;
    Label1: TLabel;
    Shape3: TShape;
    EditNome: TEdit;
    pnlButtom: TPanel;
    pnlpesquisar: TPanel;
    ShapeCredito: TShape;
    pnlPesquisa: TPanel;
    pnlImageCredito: TPanel;
    ImagePesquisa: TImage;
    pnlLblPesquisa: TPanel;
    pnlFormaPgDebito: TPanel;
    ShapeDebito: TShape;
    pnlFormaDebito: TPanel;
    pnlImageConfirma: TPanel;
    imageDebito: TImage;
    pnlDebito: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure pnlImageConfirmaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  Fproc: Tproc<String, String>;
  public
  class function New (Aowner: Tcomponent) :  TPageIdentificarCliente;
  function Embed(Value : TPanel): TPageIdentificarCliente;
  function IdentifcarCpf :TPageIdentificarCliente;
  Function IdentificarCliente(Value : Tproc<String,String>): TPageIdentificarCliente;
  end;

var
  PageIdentificarCliente: TPageIdentificarCliente;

implementation

{$R *.dfm}

function TPageIdentificarCliente.Embed(
  Value: TPanel): TPageIdentificarCliente;
begin
  Result := Self;
  Self.AddObject(value);
end;

procedure TPageIdentificarCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case Key of
     VK_F2:Showmessage('Pesquisa Cliente PageIdemtificador');
     VK_F5: pnlImageConfirmaClick(Sender);

     VK_ESCAPE: begin
     Self.RemoveObject;
     end;
    end;
end;

procedure TPageIdentificarCliente.FormResize(Sender: TObject);
var
  lHeigth,lWidth : Integer;
begin
  lHeigth := Round((Self.Height - pnlIdentificaoCliente.Height)/2);
  lWidth  := Round((Self.Width - pnlIdentificaoCliente.Width)/2);

   pnlIdentificaoCliente.Margins.Left := lWidth;
   pnlIdentificaoCliente.Margins.Right := lWidth;
   pnlIdentificaoCliente.Margins.Top := lHeigth;
   pnlIdentificaoCliente.Margins.Bottom := lHeigth;

   pnlIdentificaoCliente.Align := alClient;

end;

procedure TPageIdentificarCliente.FormShow(Sender: TObject);
begin
  editCPFCnpj.SetFocus;
end;

function TPageIdentificarCliente.IdentifcarCpf: TPageIdentificarCliente;
begin
    Result := Self;
    pnlNome.visible := False;
    pnlIdentificaoCliente.Height := (pnlIdentificaoCliente.Height - pnlnome.Height);
end;

function TPageIdentificarCliente.IdentificarCliente(
  Value: Tproc<String, String>): TPageIdentificarCliente;
begin
  Result := self;
  FProc := value;
end;

class function TPageIdentificarCliente.New(
  Aowner: Tcomponent): TPageIdentificarCliente;
begin
   Result := Self.Create(Aowner);
end;

procedure TPageIdentificarCliente.pnlImageConfirmaClick(Sender: TObject);
begin
    if Assigned(FProc) then
    FProc(EditCPFCNPJ.Text,EditNome.Text);
    Self.RemoveObject;
end;

end.
