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

      DbVendas1.QProduto.close;
      DbVendas1.QProduto.sql.Clear;
      DbVendas1.QProduto.sql.Add('Select * From produto Where nmproduto like '+#39+'%'+(Busca.Text)+'%'+#39);
      DbVendas1.QProduto.open;
end;

procedure TTelaConsultaProduto.DBGrid1DblClick(Sender: TObject);
begin
      // Inserir na tabela #vendasitem
      DbVendas1.QestoqueTemp.close;
      DbVendas1.QestoqueTemp.sql.clear;
      DbVendas1.QestoqueTemp.sql.add('insert into temp."#vendasitem"');
      DbVendas1.QestoqueTemp.sql.add('nmitemvenda, vlunitario, vlitem, idproduto, qtitem');
      DbVendas1.QestoqueTemp.sql.add('VALUES ( :nmitemvenda, :vlunitario, :vlitem, :idproduto, :qtitem)');
      DbVendas1.QestoqueTemp.ParamByName('nmitemvenda').AsString :=  (DBGrid1.Fields[1].value);
      DbVendas1.QestoqueTemp.ParamByName('vlunitario').AsInteger := DBGrid1.Fields[4].value;
      DbVendas1.QestoqueTemp.ParamByName('idproduto').AsInteger := StrToInt(DBGrid1.Fields[3].value);
      DbVendas1.QestoqueTemp.ExecSql ;

     TelaConsultaProduto.close;
end;

end.
