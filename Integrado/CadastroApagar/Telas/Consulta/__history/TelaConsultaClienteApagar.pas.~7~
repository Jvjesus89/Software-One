unit TelaConsultaClienteApagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTelaConsultaCliente1 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    BotaoBusca: TButton;
    Busca: TEdit;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BotaoBuscaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaConsultaCliente1: TTelaConsultaCliente1;

implementation

{$R *.dfm}

uses Dbfinapagar, TelaCadastroApagar;


procedure TTelaConsultaCliente1.BotaoBuscaClick(Sender: TObject);
begin
    begin
      DbFinApagar1.Qcliente.close;
      DbFinApagar1.Qcliente.sql.Clear;
      DbFinApagar1.Qcliente.sql.Add('Select * From clientes Where nmcliente like '+#39+'%'+(Busca.Text)+'%'+#39);
      DbFinApagar1.Qcliente.open;
    end;
end;

procedure TTelaConsultaCliente1.DBGrid1DblClick(Sender: TObject);
begin
     DbFinApagar1.QTabelaTemp.Close;
     DbFinApagar1.QTabelaTemp.sql.clear;
     DbFinApagar1.QTabelaTemp.sql.add('Update temp."#apagar" Set idcliente = :Pidcliente ,nmcliente = :Pnmcliente ');
     DbFinApagar1.QTabelaTemp.ParamByName('Pidcliente').AsInteger := StrToInt(DbGrid1.Fields[3].Value);
     DbFinApagar1.QTabelaTemp.ParamByName('Pnmcliente').AsString := DbGrid1.Fields[1].Value;
     DbFinApagar1.QTabelaTemp.ExecSql;
     TelaConsultaCliente1.close;
end;

procedure TTelaConsultaCliente1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DbFinApagar1.QTabelaTempCampo.Close;
    DbFinApagar1.QTabelaTempCampo.open;
end;

end.
