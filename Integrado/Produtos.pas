unit Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TConsultaProduto = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Busca: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaProduto: TConsultaProduto;

implementation

{$R *.dfm}

uses DbMovimento, TelaConsultaEstoque, CadastroMovimentacoes;

procedure TConsultaProduto.Button1Click(Sender: TObject);
begin
      with DbMov.QProduto1 do
    begin
      close;
      sql.Clear;
      sql.Add('Select * From produto Where nmproduto like '+#39+'%'+(Busca.Text)+'%'+#39);
      open;
    end;
end;

procedure TConsultaProduto.DBGrid1DblClick(Sender: TObject);
begin
      ConsultaProduto.close;
      ConsultaEstoque1.CodigoProduto.Text := DBGrid1.Fields[0].value;
      ConsultaEstoque1.NomeProduto.Text := DBGrid1.Fields[1].value;
      ConsultaEstoque1.FamiliaProduto.Text := DBGrid1.Fields[2].value;
      ConsultaEstoque1.IdProduto.Text := DBGrid1.Fields[3].value;
end;

end.
