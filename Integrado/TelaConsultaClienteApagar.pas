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
    Busca: TDBEdit;
    BotaoBusca: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BotaoBuscaClick(Sender: TObject);
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
      with DbFinApagar1.Qcliente do
    begin
      close;
      sql.Clear;
      sql.Add('Select * From cliente Where nmcliente like '+#39+'%'+(Busca.Text)+'%'+#39);
      open;
    end;
end;

procedure TTelaConsultaCliente1.DBGrid1DblClick(Sender: TObject);
begin
     TelaConsultaCliente1.close;
      TelaCadasrroApagar1.DBEdit3.Text := DBGrid1.Fields[1].value;
      TelaCadasrroApagar1.DBEdit2.Text := DBGrid1.Fields[3].value;
end;

end.
