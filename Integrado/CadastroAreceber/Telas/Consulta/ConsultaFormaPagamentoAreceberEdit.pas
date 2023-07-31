unit ConsultaFormaPagamentoAreceberEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFormaPagemento = class(TForm)
    Panel1: TPanel;
    Busca: TDBEdit;
    BotaoBusca: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BotaoBuscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormaPagemento: TFormaPagemento;

implementation

{$R *.dfm}

uses Dbfinreceber, TelaEdicaoAreceber;

procedure TFormaPagemento.BotaoBuscaClick(Sender: TObject);
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

procedure TFormaPagemento.DBGrid1DblClick(Sender: TObject);
begin
var idareceber : integer;
begin
   idareceber := DbFinAreceber1.QediçãoTituloAreceber.FieldByName('idareceber').AsInteger;
     DbFinAreceber1.QTabelaTemp.Close;
     DbFinAreceber1.QTabelaTemp.sql.clear;
     DbFinAreceber1.QTabelaTemp.sql.add('Update areceber Set idformapagamento = :Pidformapagamento ,nmformapagamento = :Pnmformapagamento Where Idareceber = :Pidareceber');
     DbFinAreceber1.QTabelaTemp.ParamByName('Pidformapagamento').AsInteger := StrToInt(DbGrid1.Fields[2].Value);
     DbFinAreceber1.QTabelaTemp.ParamByName('Pnmformapagamento').AsString := DbGrid1.Fields[1].Value;
     DbFinAreceber1.QTabelaTemp.ParamByName('Pidareceber').AsInteger := idareceber;
     DbFinAreceber1.QTabelaTemp.ExecSql;
    DbFinAreceber1.QediçãoTituloAreceber.close;
    DbFinAreceber1.QediçãoTituloAreceber.open;
    FormaPagemento.close;
end;
end;

end.
