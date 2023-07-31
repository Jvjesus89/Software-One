unit TelaConsultaClienteApagarEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TConsultaClienteEdit = class(TForm)
    Panel1: TPanel;
    BotaoBusca: TButton;
    Busca: TEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BotaoBuscaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaClienteEdit: TConsultaClienteEdit;

implementation

{$R *.dfm}

uses Dbfinapagar;

procedure TConsultaClienteEdit.BotaoBuscaClick(Sender: TObject);
begin
    begin
      DbFinApagar1.Qcliente.close;
      DbFinApagar1.Qcliente.sql.Clear;
      DbFinApagar1.Qcliente.sql.Add('Select * From clientes Where nmcliente like '+#39+'%'+(Busca.Text)+'%'+#39);
      DbFinApagar1.Qcliente.open;
    end;
end;

procedure TConsultaClienteEdit.DBGrid1DblClick(Sender: TObject);
var idapagar : integer;
begin
  idapagar := DbFinApagar1.QTabelaTempCampo.FieldByName('idapagar').AsInteger;
     DbFinApagar1.QTabelaTemp.Close;
     DbFinApagar1.QTabelaTemp.sql.clear;
     DbFinApagar1.QTabelaTemp.sql.add('Update apagar Set idcliente = :Pidcliente ,nmcliente = :Pnmcliente Where idapagar = :PIdapagar ');
     DbFinApagar1.QTabelaTemp.ParamByName('Pidcliente').AsInteger := StrToInt(DbGrid1.Fields[3].Value);
     DbFinApagar1.QTabelaTemp.ParamByName('Pnmcliente').AsString := DbGrid1.Fields[1].Value;
     DbFinApagar1.QTabelaTemp.ParamByName('Pidapagar').AsInteger := idapagar;
     DbFinApagar1.QTabelaTemp.ExecSql;
     ConsultaClienteEdit.close;
end;

procedure TConsultaClienteEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DbFinApagar1.QTabelaTempCampo.Close;
     DbFinApagar1.QTabelaTempCampo.Open;
end;

end.
