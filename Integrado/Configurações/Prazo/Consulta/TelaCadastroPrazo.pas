unit TelaCadastroPrazo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TPrazos = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Prazos: TPrazos;

implementation

{$R *.dfm}

uses DbConfiguracaoFinanceiro, TelaCadastroPrazos;

procedure TPrazos.BitBtn1Click(Sender: TObject);
begin
   DbConfigFin.Mprazo.Append;
   TelaPrazos.ShowModal;
end;

procedure TPrazos.BitBtn2Click(Sender: TObject);
begin
    DbConfigFin.Mprazo.delete;
end;

end.
