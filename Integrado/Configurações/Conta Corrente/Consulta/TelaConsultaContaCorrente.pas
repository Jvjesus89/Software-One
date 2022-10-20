unit TelaConsultaContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TConsultaContaCorrente = class(TForm)
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
  ConsultaContaCorrente: TConsultaContaCorrente;

implementation

{$R *.dfm}

uses DbConfiguracaoFinanceiro,TelaCadastroContaCorrente;

procedure TConsultaContaCorrente.BitBtn1Click(Sender: TObject);
begin
   DbConfigFin.Mconta.Open;
   DbConfigFin.Mconta.Append;
   CadastroContaCorrente.showmodal;
end;

procedure TConsultaContaCorrente.BitBtn2Click(Sender: TObject);
begin
    DbConfigFin.Mconta.open;
    DbConfigFin.Mconta.delete;
    DbConfigFin.QContaCorrente.Close;
    DbConfigFin.QContaCorrente.open;
end;

end.
