unit CadProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.DBCGrids;

type
  TCadProduto = class(TForm)
    Panel1: TPanel;
    BtExcluir: TBitBtn;
    BtNovo: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Busca: TEdit;
    Panel3: TPanel;
    BtEditar: TBitBtn;
    BuscaProduto: TLabel;
    ExportarDados: TButton;
    BuscaBotao: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure ExportarDadosClick(Sender: TObject);
    procedure BuscaBotaoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadProduto: TCadProduto;

implementation

{$R *.dfm}

uses  TelaCadastroDeProdutos, Dbcadastroproduto, TelaEdicaoProduto;

procedure TCadProduto.BtEditarClick(Sender: TObject);
begin
      Dbprod.Mproduto.Open;
      Dbprod.QProdutoEdicao.close;
      Dbprod.QProdutoEdicao.sql.Clear ;
      Dbprod.QProdutoEdicao.sql.Add('Select * From produto Where idproduto = :Pidproduto');
      Dbprod.QProdutoEdicao.ParamByName('Pidproduto').AsInteger := DBGrid1.Fields[6].value;
      Dbprod.QProdutoEdicao.Open;
      TelaEdicaoProduto1.ShowModal;
end;

procedure TCadProduto.BtExcluirClick(Sender: TObject);
var Vidproduto : integer;
begin
   Vidproduto := dbgrid1.Fields[6].value;

   if Application.MessageBox(Pchar('Deseja excluir o Produto?'), 'Confirma��o', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then
      begin;
      Dbprod.Qexclus�o.close;
      Dbprod.Qexclus�o.sql.Clear;
      Dbprod.Qexclus�o.sql.Add('Delete From produto Where idproduto = :PIdproduto');
      Dbprod.Qexclus�o.Parambyname('PIdproduto').AsInteger := Vidproduto;
      Dbprod.Qexclus�o.ExecSql;
      Dbprod.Qproduto.close;
      Dbprod.Qproduto.Open;
      end;



end;

procedure TCadProduto.BtNovoClick(Sender: TObject);
begin
      Dbprod.Mproduto.Open;
      TelaCadastroProduto.ShowModal;
end;

procedure TCadProduto.BuscaBotaoClick(Sender: TObject);
begin

      Dbprod.Qproduto.close;
      Dbprod.Qproduto.sql.Clear;
      Dbprod.Qproduto.sql.Add('Select * From produto Where nmproduto like '+#39+'%'+(Busca.Text)+'%'+#39);
      Dbprod.Qproduto.open;

end;

procedure TCadProduto.DBGrid1DblClick(Sender: TObject);
begin
   //Dbprod.Mproduto.Close;
   Dbprod.Mproduto.Open;
   TelaEdicaoProduto1.ShowModal;

end;

procedure TCadProduto.ExportarDadosClick(Sender: TObject);
var
  sLista: TStringList;
 nCampo: integer;
 cLinha : string;
begin
  sLista := TstringList.Create;
  Dbprod.Qproduto.First;
  while not Dbprod.Qproduto.EOF do
  begin
    cLinha := '';
    for nCampo :=0 to Dbprod.Qproduto.fields.Count-1 do
    cLinha := cLinha + Dbprod.Qproduto.Fields[nCampo].DisplayText+';';
    sLista.Add(cLinha);
    Dbprod.Qproduto.Next;
  end;
  if FileExists('C:\Sistema\DadosExportados\produto.csv') then DeleteFile('C:\Sistema\DadosExportados\produto.csv');
  sLista.SaveToFile('C:\Sistema\DadosExportados\produto.csv');

end;

procedure TCadProduto.FormCreate(Sender: TObject);
begin
     CadProduto.WindowState := TWindowState.wsMaximized ;
end;

end.
