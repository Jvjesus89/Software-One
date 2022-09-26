unit TelaConsultaFormaPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormapagamento = class(TForm)
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
  Formapagamento: TFormapagamento;

implementation

{$R *.dfm}

uses DbConfiguracao, TelaCadastroFormaPagamento;

procedure TFormapagamento.BitBtn1Click(Sender: TObject);
begin
      DbConfig.Mforma.Open;
    DbConfig.Mforma.Append;
    CadastroFormaPagamento.showModal;
end;

procedure TFormapagamento.BitBtn2Click(Sender: TObject);
begin
    DbConfig.Mforma.Delete;
end;

end.
