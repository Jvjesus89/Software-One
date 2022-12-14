unit TelaConsultaClienteVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TTelaConsultaCliente = class(TForm)
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
      sql.Add('Select * From cliente Where nmcliente like '+#39+'%'+(Busca.Text)+'%'+#39);
      open;
    end;
end;

procedure TTelaConsultaCliente.DBGrid1DblClick(Sender: TObject);
begin
     TelaConsultaCliente.close;
      TelaCadastroVendas.DBEdit8.Text := DBGrid1.Fields[1].value;
      TelaCadastroVendas.DBEdit2.Text := DBGrid1.Fields[3].value;
end;

end.
