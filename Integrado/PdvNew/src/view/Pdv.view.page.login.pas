unit Pdv.view.page.login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
   Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

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
  public
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
    close
end;


end.
