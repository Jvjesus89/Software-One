unit ProdutoMov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TProdutoMov1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Busca: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdutoMov1: TProdutoMov1;

implementation

{$R *.dfm}
uses DbMovimento, TelaConsultaEstoque, CadastroMovimentacoes;



   procedure TProdutoMov1.DBGrid1DblClick(Sender: TObject);
begin
      ProdutoMov1.close;
      TelaCadastroMovimentacoes.CodigoProdutoMov.Text := DBGrid1.Fields[0].value;
      TelaCadastroMovimentacoes.NomeProdutoMov.Text := DBGrid1.Fields[1].value;
      TelaCadastroMovimentacoes.IdProdutoMov.Text := DBGrid1.Fields[3].value;
end;
end.