unit TelaConsultaAgenciaConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TConsultaAgenciaConta = class(TForm)
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
  ConsultaAgenciaConta: TConsultaAgenciaConta;

implementation

{$R *.dfm}
uses DbConfiguracaoFinanceiro,TelaCadastroContaCorrente;

procedure TConsultaAgenciaConta.BotaoBuscaClick(Sender: TObject);
begin
      DbConfigFin.QAgenciaConta.close;
      DbConfigFin.QAgenciaConta.sql.Clear;
      DbConfigFin.QAgenciaConta.sql.Add('Select * From agencia Where nmagencia like %:Pnmagencia%');
      DbConfigFin.QAgenciaConta.ParamByName('Pnmagencia').AsString := Busca.text;
      DbConfigFin.QAgenciaConta.open;
end;

procedure TConsultaAgenciaConta.DBGrid1DblClick(Sender: TObject);
begin
    CadastroContaCorrente.Edit2.text   := dbgrid1.Fields[1].Value;
    CadastroContaCorrente.DBEdit1.text := dbgrid1.Fields[3].Value;
    ConsultaAgenciaConta.close;
end;

end.
