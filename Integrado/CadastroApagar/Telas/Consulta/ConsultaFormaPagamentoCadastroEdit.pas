unit ConsultaFormaPagamentoCadastroEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TConsultaFormaPagamentoEdit = class(TForm)
    Panel1: TPanel;
    BotaoBusca: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Busca: TEdit;
    procedure BotaoBuscaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaFormaPagamentoEdit: TConsultaFormaPagamentoEdit;

implementation

{$R *.dfm}

uses Dbfinapagar;

procedure TConsultaFormaPagamentoEdit.BotaoBuscaClick(Sender: TObject);
begin
    begin
    if Busca.Text = '' then
      begin
      DbFinApagar1.QFormaPagamento.close ;
      DbFinApagar1.QFormaPagamento.sql.Clear;
      DbFinApagar1.QFormaPagamento.sql.Add('Select * From formapagamento');
      DbFinApagar1.QFormaPagamento.open;
      end
    else
     begin
      DbFinApagar1.QFormaPagamento.close;
      DbFinApagar1.QFormaPagamento.sql.Clear;
      DbFinApagar1.QFormaPagamento.sql.Add('Select * From formapagamento Where nmformapagamento = '+(Busca.Text));
      DbFinApagar1.QFormaPagamento.open;
      end;
    end;
end;

procedure TConsultaFormaPagamentoEdit.DBGrid1DblClick(Sender: TObject);
var idapagar : integer;
begin
   idapagar := DbFinApagar1.QTabelaTempCampo.FieldByName('idapagar').AsInteger;
     DbFinApagar1.QTabelaTemp.Close;
     DbFinApagar1.QTabelaTemp.sql.clear;
     DbFinApagar1.QTabelaTemp.sql.add('Update apagar Set idformapagamento = :Pidformapagamento ,nmformapagamento = :Pnmformapagamento Where Idapagar = :Pidapagar');
     DbFinApagar1.QTabelaTemp.ParamByName('Pidformapagamento').AsInteger := StrToInt(DbGrid1.Fields[2].Value);
     DbFinApagar1.QTabelaTemp.ParamByName('Pnmformapagamento').AsString := DbGrid1.Fields[1].Value;
     DbFinApagar1.QTabelaTemp.ParamByName('Pidapagar').AsInteger := idapagar;
     DbFinApagar1.QTabelaTemp.ExecSql;
    ConsultaFormaPagamentoEdit.close;
end;

procedure TConsultaFormaPagamentoEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DbFinApagar1.QTabelaTempCampo.Close;
    DbFinApagar1.QTabelaTempCampo.open;
end;

end.
