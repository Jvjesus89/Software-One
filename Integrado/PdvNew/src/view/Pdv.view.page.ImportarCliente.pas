unit Pdv.view.page.ImportarCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Buttons, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls,pdvnew.Utils;

type
  TPageImportarCliente = class(TForm)
    pnlConteiner: TPanel;
    pnlTop: TPanel;
    pnlInfor: TPanel;
    Panel1: TPanel;
    Image1: TImage;
    btnSair: TSpeedButton;
    pnlTitulo: TPanel;
    ImageCliente: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Shape1: TShape;
    editPesquisar: TSearchBox;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  Fproc: Tproc<Tobject>;

  public
  class function New(AOwner :TComponent):TPageImportarCliente;
  function Titulo(Value: String):TPageImportarCliente;
  function Image(value:String):TPageImportarCliente;
  function Click(value:Tproc<Tobject>) :TPageImportarCliente;
  function Embed(Value : TPanel):TPageImportarCliente ;

  end;

var
  PageImportarCliente: TPageImportarCliente;

implementation

{$R *.dfm}

{ TPageImportarCliente }

procedure TPageImportarCliente.btnSairClick(Sender: TObject);
begin
    Self.RemoveObject;
end;

function TPageImportarCliente.Click(
  value: Tproc<Tobject>): TPageImportarCliente;
begin
     Result := Self;
     FProc := Value;
end;

function TPageImportarCliente.Embed(Value: TPanel): TPageImportarCliente;
begin
    Result := Self;
    Self.AddObject(value);
end;

procedure TPageImportarCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
   Self.RemoveObject;
  end;
end;

function TPageImportarCliente.Image(value: String): TPageImportarCliente;
begin
   Result := Self;
   ImageCliente.Picture.LoadFromFile(value);
end;

class function TPageImportarCliente.New(
  AOwner: TComponent): TPageImportarCliente;
begin
  Result := Self.Create(Aowner);
end;

function TPageImportarCliente.Titulo(Value: String): TPageImportarCliente;
begin
  Result := Self;
  pnlTitulo.Caption := Value;
end;

end.
