unit TelaConsultaFormaPagamantoPPrazo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TConsultaFormaPagamento = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Busca: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaFormaPagamento: TConsultaFormaPagamento;

implementation

{$R *.dfm}

uses TelaCadastroPrazos ,DbConfiguracaoFinanceiro;

procedure TConsultaFormaPagamento.Button1Click(Sender: TObject);
begin
       if (Trim(Busca.text).IsEmpty) then

    begin
      DbConfigFin.QFormaPagamento.close ;
      DbConfigFin.QFormaPagamento.sql.Clear;
      DbConfigFin.QFormaPagamento.sql.Add('Select * From formapagamento');
      DbConfigFin.QFormaPagamento.open;
    end
    else
    begin
      DbConfigFin.QFormaPagamento.close ;
      DbConfigFin.QFormaPagamento.sql.Clear;
      DbConfigFin.QFormaPagamento.sql.Add('Select * From formapagamento Where nmformapagamento = '+(Busca.Text));
      DbConfigFin.QFormaPagamento.open;
    end;
end;

procedure TConsultaFormaPagamento.DBGrid1DblClick(Sender: TObject);
begin
        ConsultaFormaPagamento.close;
      TelaPrazos.Edit1.Text := DBGrid1.Fields[1].value;
      TelaPrazos.DBEdit3.Text := DBGrid1.Fields[2].value;
end;

end.
