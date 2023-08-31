unit TelaConsultaClienteVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TTelaConsultaCliente = class(TForm)
    Panel1: TPanel;
    BotaoBusca: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Busca: TEdit;
    procedure BotaoBuscaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaConsultaCliente: TTelaConsultaCliente;

implementation

{$R *.dfm}

uses DBvendas, TelaCadastroVenda;

procedure TTelaConsultaCliente.BotaoBuscaClick(Sender: TObject);
begin
      with DbVendas1.Qcliente do
    begin
      close;
      sql.Clear;
      sql.Add('Select * From clientes Where nmcliente like '+#39+'%'+(Busca.Text)+'%'+#39);
      open;
    end;
end;

procedure TTelaConsultaCliente.DBGrid1DblClick(Sender: TObject);
begin
     TelaConsultaCliente.close;
     DbVendas1.QInseriTabelaTemp.close;
     DbVendas1.QInseriTabelaTemp.sql.clear;
     DbVendas1.QInseriTabelaTemp.sql.add('Update temp."#vendas" Set idcliente = :PIdCliente');
     DbVendas1.QInseriTabelaTemp.ParamByname('PIdCliente').AsInteger := DBGrid1.Fields[3].value;;
     DbVendas1.QInseriTabelaTemp.Execsql;

     DbVendas1.QTempCamposVenda.close;
     DbVendas1.QTempCamposVenda.open;
end;

end.
