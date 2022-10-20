unit TelaConsultaBancoAgencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TConsultaBancoAgencia = class(TForm)
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
  ConsultaBancoAgencia: TConsultaBancoAgencia;

implementation

{$R *.dfm}

uses DbConfiguracaoFinanceiro, TelaCadastraAgencia;

procedure TConsultaBancoAgencia.BotaoBuscaClick(Sender: TObject);
begin
      DbConfigFin.QBancoAgencia.close;
      DbConfigFin.QBancoAgencia.sql.Clear;
      DbConfigFin.QBancoAgencia.sql.Add('Select * From banco Where nmbanco like %:Pnmbanco%');
      DbConfigFin.QBancoAgencia.ParamByName('Pnmbanco').AsString := Busca.text;
      DbConfigFin.QBancoAgencia.open;
end;

procedure TConsultaBancoAgencia.DBGrid1DblClick(Sender: TObject);
begin
    CadastrarAgencia.Edit1.text   := dbgrid1.Fields[1].Value;
    CadastrarAgencia.DBEdit4.text := dbgrid1.Fields[3].Value;
    ConsultaBancoAgencia.close;
end;

end.
