unit TelaConsultaBancoConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TConsultaBancoContaCorrente = class(TForm)
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
  ConsultaBancoContaCorrente: TConsultaBancoContaCorrente;

implementation

{$R *.dfm}
uses DbConfiguracaoFinanceiro,TelaCadastroContaCorrente,TelaConsultaAgenciaConta;

procedure TConsultaBancoContaCorrente.BotaoBuscaClick(Sender: TObject);
begin
      DbConfigFin.QBancoAgencia.close;
      DbConfigFin.QBancoAgencia.sql.Clear;
      DbConfigFin.QBancoAgencia.sql.Add('Select * From banco Where nmbanco like ''%:Pnmbanco%');
      DbConfigFin.QBancoAgencia.ParamByName('Pnmbanco').AsString := Busca.text;
      DbConfigFin.QBancoAgencia.open;
end;

procedure TConsultaBancoContaCorrente.DBGrid1DblClick(Sender: TObject);
begin

    CadastroContaCorrente.Edit1.text   := DBGrid1.Fields[1].Value;
    CadastroContaCorrente.DBEdit4.text := DBGrid1.Fields[3].Value;
    ConsultaBancoContaCorrente.close;
end;

end.
