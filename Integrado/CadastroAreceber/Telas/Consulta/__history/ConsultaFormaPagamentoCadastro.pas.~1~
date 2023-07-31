unit ConsultaFormaPagamentoCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TConsultaFormaPagamento = class(TForm)
    Panel1: TPanel;
    Busca: TDBEdit;
    BotaoBusca: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure BotaoBuscaClick(Sender: TObject);
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

uses Dbfinreceber, TelaCadastroAreceber;

procedure TConsultaFormaPagamento.BotaoBuscaClick(Sender: TObject);
begin
    begin
    if Busca.Text = '' then
    begin
      DbFinAreceber1.QFormaPagamento.close ;
      DbFinAreceber1.QFormaPagamento.sql.Clear;
      DbFinAreceber1.QFormaPagamento.sql.Add('Select * From formapagamento');
      DbFinAreceber1.QFormaPagamento.open;
    end
    else
    begin
      DbFinAreceber1.QFormaPagamento.close;
      DbFinAreceber1.QFormaPagamento.sql.Clear;
      DbFinAreceber1.QFormaPagamento.sql.Add('Select * From formapagamento Where cdformapagamento = '+(Busca.Text));
      DbFinAreceber1.QFormaPagamento.open;
    end;
end;
end;

procedure TConsultaFormaPagamento.DBGrid1DblClick(Sender: TObject);
begin
    TelaCadasrroAreceber1.DBEdit5.text := dbgrid1.fields[1].value;
    TelaCadasrroAreceber1.DBEdit4.text := dbgrid1.fields[2].value;
    ConsultaFormaPagamento.close;
end;

end.
