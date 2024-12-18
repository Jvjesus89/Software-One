unit ConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TTelaConsultaProduto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtCodigo: TEdit;
    pnlCodigo: TPanel;
    pnlDescricao: TPanel;
    edtProduto: TEdit;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    QProdutos: TFDQuery;
    DsProdutos: TDataSource;
    QProdutosidproduto: TFDAutoIncField;
    QProdutosnmproduto: TWideStringField;
    QProdutoscdproduto: TWideStringField;
    QProdutosvlproduto: TSingleField;
    QProdutosvlcusto: TSingleField;
    QProdutosnmfamiliaproduto: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    Fcodigo : string;
    Fdescricao :string;
      { Private declarations }
  public
    moduloOrigem : integer;
    GridIdproduto : integer;
    GridCdproduto,GridNmproduto : string;
    procedure BuscaProduto;
    property codigo: string  read Fcodigo write Fcodigo;
    property descricao: string  read Fdescricao write Fdescricao;
    procedure ConsultaProduto;
    { Public declarations }
  end;

var
  TelaConsultaProduto: TTelaConsultaProduto;

implementation

{$R *.dfm}

uses TelaComposicaoProdutos, DBpadrao, Consultas;

procedure TTelaConsultaProduto.BuscaProduto;
var sql : string;
begin
   sql := 'select * from produto p left join produtosfamilia f on f.idprodutosfamilia = p.idfamiliaproduto where stproduto = true';

   if edtCodigo.Text <> '' then
   sql := sql + ' and cdproduto like :Pcdproduto';

   if edtProduto.Text <> '' then
   sql := sql + ' and nmproduto like :Pnmproduto';

   Qprodutos.Close;
   Qprodutos.SQL.Clear;
   Qprodutos.SQL.Add(sql);

   if edtCodigo.Text <> '' then
   Qprodutos.ParamByName('Pcdproduto').AsString := '%' + edtCodigo.Text + '%';

   if edtProduto.Text <> '' then
   Qprodutos.ParamByName('Pnmproduto').AsString := '%' + UPPERCASE(edtProduto.Text) + '%';

   Qprodutos.Open;
end;


procedure TTelaConsultaProduto.ConsultaProduto;
var sql : string;
begin
   sql := 'select * from produto where 1=1';

   if Fcodigo <> '' then
   sql := sql + ' and cdproduto = :Pcdproduto';

   if Fdescricao <> '' then
   sql := sql + ' and nmproduto = :Pnmproduto';

   Qprodutos.Close;
   Qprodutos.SQL.Clear;
   Qprodutos.SQL.Add(sql);

   if Fcodigo <> '' then
   Qprodutos.ParamByName('Pcdproduto').AsString := Fcodigo;

   if Fdescricao <> '' then
   Qprodutos.ParamByName('Pnmproduto').AsString := UPPERCASE(Fdescricao);

   Qprodutos.Open;
end;

procedure TTelaConsultaProduto.DBGrid1DblClick(Sender: TObject);
begin
  GridIdproduto := QProdutos.FieldByName('idproduto').AsInteger;
  GridCdproduto := QProdutos.FieldByName('cdproduto').AsString;
  GridNmProduto := QProdutos.FieldByName('nmproduto').AsString;
  self.close;
end;

procedure TTelaConsultaProduto.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
   VK_return : begin
   BuscaProduto;
   end;
  end;
end;

procedure TTelaConsultaProduto.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
   VK_return : begin
   BuscaProduto;
   end;
  end;
end;

procedure TTelaConsultaProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Qprodutos.Close;
end;

procedure TTelaConsultaProduto.FormCreate(Sender: TObject);
begin
   Qprodutos.Open;
end;

procedure TTelaConsultaProduto.SpeedButton1Click(Sender: TObject);
begin
   BuscaProduto;
end;



end.
