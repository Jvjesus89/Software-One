unit ConsultaContaCorrenteAreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TConsultaContaBancaria = class(TForm)
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
  ConsultaContaBancaria: TConsultaContaBancaria;

implementation

{$R *.dfm}

uses Dbfinreceber, TelaCadastroBaixaAreceber;

procedure TConsultaContaBancaria.BotaoBuscaClick(Sender: TObject);
begin
   begin
    if Busca.Text = '' then
    begin
      DbFinAreceber1.QConsultaConta.close ;
      DbFinAreceber1.QConsultaConta.sql.Clear;
      DbFinAreceber1.QConsultaConta.sql.Add('Select * From contabancaria');
      DbFinAreceber1.QConsultaConta.open;
    end
    else
    begin
      DbFinAreceber1.QConsultaConta.close;
      DbFinAreceber1.QConsultaConta.sql.Clear;
      DbFinAreceber1.QConsultaConta.sql.Add('Select * From contabancaria Where cdcontabancaria like :Pcdconta');
      DbFinAreceber1.QConsultaConta.ParamByName('Pcdconta').AsInteger := StrToInt (Busca.Text);
      DbFinAreceber1.QConsultaConta.open;
    end;
end;
end;

procedure TConsultaContaBancaria.DBGrid1DblClick(Sender: TObject);
begin
     //DbFinAreceber1.QTabelaTemp.Close;
     //DbFinAreceber1.QTabelaTemp.sql.clear;
     //DbFinAreceber1.QTabelaTemp.sql.add('Update temp"#areceber" Set idformapagamento = :Pidformapagamento ,nmformapagamento = :Pnmformapagamento ');
     //DbFinAreceber1.QTabelaTemp.ParamByName('Pidformapagamento').AsString := DbGrid1.Fields[3].Value;
     //DbFinAreceber1.QTabelaTemp.ParamByName('Pnmformapagamento').AsString := DbGrid1.Fields[1].Value;
     //DbFinAreceber1.QTabelaTemp.ExecSql;
    ConsultaContaBancaria.close;
end;

end.
