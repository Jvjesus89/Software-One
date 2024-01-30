unit ConsultaFormaPagamentoCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TConsultaFormaPagamentoC = class(TForm)
    Panel1: TPanel;
    Busca: TDBEdit;
    BotaoBusca: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure BotaoBuscaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaFormaPagamentoC: TConsultaFormaPagamentoC;

implementation

{$R *.dfm}

uses Dbfinreceber;

procedure TConsultaFormaPagamentoC.BotaoBuscaClick(Sender: TObject);
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

procedure TConsultaFormaPagamentoC.DBGrid1DblClick(Sender: TObject);
begin
     DbFinAreceber1.QTabelaTemp.Close;
     DbFinAreceber1.QTabelaTemp.sql.clear;
     DbFinAreceber1.QTabelaTemp.sql.add('Update temp."#areceber" Set idformapagamento = :Pidformapagamento ,nmformapagamento = :Pnmformapagamento ');
     DbFinAreceber1.QTabelaTemp.ParamByName('Pidformapagamento').AsInteger := StrToInt(DbGrid1.Fields[2].Value);
     DbFinAreceber1.QTabelaTemp.ParamByName('Pnmformapagamento').AsString := DbGrid1.Fields[1].Value;
     DbFinAreceber1.QTabelaTemp.ExecSql;
    ConsultaFormaPagamentoC.close;
end;

procedure TConsultaFormaPagamentoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       DbFinAreceber1.QTempCampos.Close;
    DbFinAreceber1.QTempCampos.open;
end;

procedure TConsultaFormaPagamentoC.FormShow(Sender: TObject);
begin
      DbFinAreceber1.QFormapagamento.Open;
end;

end.
