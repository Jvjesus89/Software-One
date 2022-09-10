unit TelaConsultaProdutoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TTelaConsultaProduto = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Busca: TEdit;
    Button1: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaConsultaProduto: TTelaConsultaProduto;

implementation

{$R *.dfm}

uses DBvendas, CadastroProdutoVenda;

procedure TTelaConsultaProduto.Button1Click(Sender: TObject);
begin
   with DbVendas1.QProduto do
    begin
      close;
      sql.Clear;
      sql.Add('Select * From produto Where nmproduto like '+#39+'%'+(Busca.Text)+'%'+#39);
      open;
    end;
end;

procedure TTelaConsultaProduto.DBGrid1DblClick(Sender: TObject);
begin
     TelaConsultaProduto.close;
      TelaCadastroProdutoVenda.nmproduto.Text := DBGrid1.Fields[1].value;
      TelaCadastroProdutoVenda.idproduto.Text := DBGrid1.Fields[3].value;
      TelaCadastroProdutoVenda.vlunitario.Text := DBGrid1.Fields[4].value;
end;

end.
