unit Pdv.view.page.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
   Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,PdvNew.Utils;

type
  TPageLogin = class(TForm)
    pnlConteiner: TPanel;
    pnlLogin: TPanel;
    pnlImage: TPanel;
    pnlLogar: TPanel;
    Panel1: TPanel;
    pnlUsuario: TPanel;
    lblUsuario: TLabel;
    pnlEditUsuario: TPanel;
    Shape1: TShape;
    editUsuario: TEdit;
    pnlSenha: TPanel;
    lblSenha: TLabel;
    pnlEditSenha: TPanel;
    Shape2: TShape;
    editSenha: TEdit;
    pnlBtnLogar: TPanel;
    pnlBtnLogin: TPanel;
    Shape3: TShape;
    btnLogar: TSpeedButton;
    Imagem: TImage;
    procedure btnLogarClick(Sender: TObject);
  private
  Fproc: Tproc<String>;
  public
  class function New(AOWNER: Tcomponent): Tpagelogin;
  function Embed (Value: TPanel): TpageLogin;
  function Informacao (Value:Tproc<String>):Tpagelogin;
  end;

var
  PageLogin: TPageLogin;

implementation

{$R *.dfm}

procedure TPageLogin.btnLogarClick(Sender: TObject);
begin
    if not ((editUsuario.text = 'a') and
    (editSenha.text = 'a')) then
    begin
      ShowMessage ('Login e senha invalido');
      Exit;
    end;
    FProc(editUsuario.Text);
    Self.RemoveObject;
end;


function TPageLogin.Embed(Value: TPanel): TpageLogin;
begin
    Result := Self;
    Self.AddObject(value);

end;

function TPageLogin.Informacao(Value: Tproc<String>): Tpagelogin;
begin
   Result:= Self;
   Fproc := value;
end;

class function TPageLogin.New(AOWNER: Tcomponent): Tpagelogin;
begin
    Result := Self.Create(AOwner) ;
end;

end.
