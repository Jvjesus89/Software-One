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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
     DbFinAreceber1.QTabelaTemp.Close;
     DbFinAreceber1.QTabelaTemp.sql.clear;
     DbFinAreceber1.QTabelaTemp.sql.add('Update temp."#areceber" Set idformapagamento = :Pidformapagamento ,nmformapagamento = :Pnmformapagamento ');
     DbFinAreceber1.QTabelaTemp.ParamByName('Pidformapagamento').AsInteger := StrToInt(DbGrid1.Fields[2].Value);
     DbFinAreceber1.QTabelaTemp.ParamByName('Pnmformapagamento').AsString := DbGrid1.Fields[1].Value;
     DbFinAreceber1.QTabelaTemp.ExecSql;
    ConsultaFormaPagamento.close;
end;

procedure TConsultaFormaPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       DbFinAreceber1.QTempCampos.Close;
    DbFinAreceber1.QTempCampos.open;
end;

end.
