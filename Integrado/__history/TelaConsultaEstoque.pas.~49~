unit TelaConsultaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,conectarINI,DropTable,CreatTable;

type
  TConsultaEstoque1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Entrada: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    NomeProduto: TDBEdit;
    Label6: TLabel;
    FamiliaProduto: TDBEdit;
    CodigoProduto: TDBEdit;
    Panel3: TPanel;
    Localizaproduto: TButton;
    Label4: TLabel;
    IdProduto: TEdit;
    procedure LocalizaprodutoClick(Sender: TObject);
    procedure EntradaClick(Sender: TObject);
    procedure IdProdutoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaEstoque1: TConsultaEstoque1;

implementation

{$R *.dfm}

uses DbMovimento, Produtos, CadastroMovimentacoes;

procedure TConsultaEstoque1.EntradaClick(Sender: TObject);

begin
     DbMov.MConsulta.Open;
     DbMov.MConsulta.Append;
     TelaCadastroMovimentacoes.ShowModal;
end;

procedure TConsultaEstoque1.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
DropTabelaTempMovimento : TDropTableTempMovimento;
begin

   DropTabelaTempMovimento := TDropTableTempMovimento.Create;
   try
   DropTabelaTempMovimento.DropMovimento;
   finally
       DropTabelaTempMovimento.Free;
   end;
end;

procedure TConsultaEstoque1.FormShow(Sender: TObject);
var
ConectarIni : TconectarINI;
begin

   ConectarIni := TconectarINI.Create;
   try
   ConectarIni.DiretorioPadrao := GetCurrentDir;
   ConectarIni.consultarConexaoBanco;
   finally
       ConectarIni.Free;
   end;
end;

procedure TConsultaEstoque1.IdProdutoChange(Sender: TObject);
begin
      DbMov.QConsulta.close;
      DbMov.QConsulta.sql.Clear;
      DbMov.QConsulta.sql.Add('Select * From movimentoestoque Where idproduto = '+(IdProduto.Text));
      DbMov.QConsulta.open;
end;

procedure TConsultaEstoque1.LocalizaprodutoClick(Sender: TObject);
var
CreatTabelamovimento : TCreatTableTempMovimento;
begin
   CreatTabelamovimento := TCreatTableTempMovimento.Create;
   try
   CreatTabelamovimento.CreatTableTempMovimento;
   finally
       CreatTabelamovimento.Free;
   end;

    DbMov.QProduto.open;
    ConsultaProduto.ShowModal;
end;

end.
