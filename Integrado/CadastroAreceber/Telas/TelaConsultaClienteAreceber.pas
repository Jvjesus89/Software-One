unit TelaConsultaClienteAreceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TTelaConsultaClienteAreceber1 = class(TForm)
    Panel1: TPanel;
    BotaoBusca: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Busca: TEdit;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BotaoBuscaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaConsultaClienteAreceber1: TTelaConsultaClienteAreceber1;

implementation

{$R *.dfm}

uses Dbfinreceber, TelaCadastroAreceber;

procedure TTelaConsultaClienteAreceber1.BotaoBuscaClick(Sender: TObject);
begin
    begin
      DbFinAreceber1.Qcliente.close;
      DbFinAreceber1.Qcliente.sql.Clear;
      DbFinAreceber1.Qcliente.sql.Add('Select * From clientes Where nmcliente like '+#39+'%'+(Busca.Text)+'%'+#39);
      DbFinAreceber1.Qcliente.open;
    end;
end;

procedure TTelaConsultaClienteAreceber1.DBGrid1DblClick(Sender: TObject);
begin

     DbFinAreceber1.QTabelaTemp.Close;
     DbFinAreceber1.QTabelaTemp.sql.clear;
     DbFinAreceber1.QTabelaTemp.sql.add('Update temp."#areceber" Set idcliente = :Pidcliente ,nmcliente = :Pnmcliente ');
     DbFinAreceber1.QTabelaTemp.ParamByName('Pidcliente').AsInteger := StrToInt(DbGrid1.Fields[3].Value);
     DbFinAreceber1.QTabelaTemp.ParamByName('Pnmcliente').AsString := DbGrid1.Fields[1].Value;
     DbFinAreceber1.QTabelaTemp.ExecSql;

    TelaConsultaClienteAreceber1.close;
end;

procedure TTelaConsultaClienteAreceber1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DbFinAreceber1.QTempCampos.Close;
    DbFinAreceber1.QTempCampos.open;
end;

procedure TTelaConsultaClienteAreceber1.FormShow(Sender: TObject);
begin
         DbFinAreceber1.Qcliente.Open;
end;

end.
