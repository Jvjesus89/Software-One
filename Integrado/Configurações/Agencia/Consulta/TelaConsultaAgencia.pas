unit TelaConsultaAgencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TConsultaAgencia = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaAgencia: TConsultaAgencia;

implementation

{$R *.dfm}

uses DbConfiguracaoFinanceiro, TelaCadastraAgencia;

procedure TConsultaAgencia.BitBtn1Click(Sender: TObject);
begin
    DbConfigFin.MAgencia.open;
    DbConfigFin.MAgencia.append;
    CadastrarAgencia.showmodal;
end;

procedure TConsultaAgencia.BitBtn2Click(Sender: TObject);
begin
    DbConfigFin.MAgencia.open;
    DbConfigFin.Magencia.delete;
    DbConfigFin.QAgencia.Close;
    DbConfigFin.QAgencia.open;

end;

end.
