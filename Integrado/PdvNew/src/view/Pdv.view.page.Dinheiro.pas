unit Pdv.view.page.Dinheiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrameDinheiro = class(TFrame)
    pnlConteiner: TPanel;
    pnlTotalRecebido: TPanel;
    lblTotalRecebido: TLabel;
    editRecebido: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
