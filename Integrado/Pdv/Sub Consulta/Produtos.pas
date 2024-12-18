unit Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TConsultaProdutos = class(TForm)
    Panel1: TPanel;
    BotaoBusca: TButton;
    Busca: TEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure BotaoBuscaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaProdutos: TConsultaProdutos;

implementation

{$R *.dfm}

uses DbPdv, Pdv_Principal;

procedure TConsultaProdutos.BotaoBuscaClick(Sender: TObject);
begin
    begin
    if (Trim(Busca.text).IsEmpty) then
    begin
      BancoPdv.QProdutos.close;
      BancoPdv.QProdutos.sql.Clear;
      BancoPdv.QProdutos.sql.Add('Select * From produto Where stproduto = $$True$$ ');
      BancoPdv.QProdutos.open;
    end else
    begin
      BancoPdv.QProdutos.close;
      BancoPdv.QProdutos.sql.Clear;
      BancoPdv.QProdutos.sql.Add('Select * From produto Where nmproduto like :PNmproduto and stproduto = $$True$$');
      BancoPdv.QProdutos.ParamByName('PNmproduto').AsString := '%'+(Busca.Text)+'%';
      BancoPdv.QProdutos.open;
    end;
    end;
end;

procedure TConsultaProdutos.DBGrid1DblClick(Sender: TObject);
var
VlUnitario, NmProduto,CdProduto,IdProduto: string;
begin
   CdProduto := DBGrid1.fields[0].value;
   NmProduto :=  DBGrid1.fields[1].value;
   VlUnitario := DBGrid1.fields[2].value;
   IdProduto := DBGrid1.fields[3].value;

   BancoPdv.QVendasPdvItensCampo.close;
   BancoPdv.QVendasPdvItensCampo.sql.Clear;
   BancoPdv.QVendasPdvItensCampo.sql.add('INSERT INTO temp."#VendasPdvItemCampos"(nmitemvenda,cdproduto, vlunitario, idproduto)');
   BancoPdv.QVendasPdvItensCampo.sql.add('VALUES (:Pnmitemvenda,:Pcdproduto, :Pvlunitario, :Pidproduto)');
   BancoPdv.QVendasPdvItensCampo.ParamByName('Pnmitemvenda').AsString :=  NmProduto;
   BancoPdv.QVendasPdvItensCampo.ParamByName('Pcdproduto').AsInteger :=  StrToInt (CdProduto);
   BancoPdv.QVendasPdvItensCampo.ParamByName('Pvlunitario').AsInteger :=  StrToInt (VlUnitario);
   BancoPdv.QVendasPdvItensCampo.ParamByName('Pidproduto').AsInteger := StrToInt (IdProduto);
   BancoPdv.QVendasPdvItensCampo.ExecSql;

   BancoPdv.QVendasPdvItensCampo.close;
   BancoPdv.QVendasPdvItensCampo.sql.Clear;
   BancoPdv.QVendasPdvItensCampo.sql.add('Select * From temp."#VendasPdvItemCampos"');
   BancoPdv.QVendasPdvItensCampo.open;
   ConsultaProdutos.close;

   TelaPdv.NmProduto.caption := TelaPdv.CampoNomeProduto.Text;
   TelaPdv.NmProduto.visible := true;

end;

procedure TConsultaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TelaPdv.CampoValorUnitario.TEXT:= FORMATFLOAT('R$ ###,##0.00', STRTOFLOAT(TelaPdv.CampoValorUnitario.TEXT));
end;

procedure TConsultaProdutos.FormCreate(Sender: TObject);
begin
   BancoPdv.QProdutos.open;
end;

procedure TConsultaProdutos.FormShow(Sender: TObject);
begin
  BancoPdv.QVendasPdvItensCampo.close;
  BancoPdv.QVendasPdvItensCampo.sql.clear;
  BancoPdv.QVendasPdvItensCampo.sql.add('Delete From temp."#VendasPdvItemCampos"');
  BancoPdv.QVendasPdvItensCampo.ExecSql;
end;

end.
