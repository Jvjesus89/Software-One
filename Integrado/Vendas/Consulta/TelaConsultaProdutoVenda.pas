unit TelaConsultaProdutoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TTelaConsultaProduto = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Busca: TEdit;
    Button1: TButton;
    QProduto: TFDQuery;
    QProdutoidproduto: TIntegerField;
    QProdutonmproduto: TWideStringField;
    QProdutocdproduto: TWideStringField;
    QProdutoidfamiliaproduto: TIntegerField;
    QProdutonmfamiliaproduto: TWideStringField;
    QProdutostproduto: TBooleanField;
    QProdutodtcadastro: TDateField;
    QProdutovlproduto: TSingleField;
    DsQproduto: TDataSource;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure SelecionaProduto;
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

      QProduto.close;
      QProduto.sql.Clear;
      QProduto.sql.Add('Select * From produto Where nmproduto like '+#39+'%'+UpperCase(Busca.Text)+'%'+#39);
      QProduto.open;
end;

procedure TTelaConsultaProduto.DBGrid1DblClick(Sender: TObject);
begin
   SelecionaProduto;
end;

procedure TTelaConsultaProduto.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    case key of
   VK_return : begin
   SelecionaProduto;
   end;
  end;

end;

procedure TTelaConsultaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TelaCadastroProdutoVenda.quantidade.SetFocus;
end;

procedure TTelaConsultaProduto.SelecionaProduto;
begin
   try
      TelaCadastroProdutoVenda.MVendasItem.FieldByName('idproduto').AsInteger := QProduto.FieldByName('idproduto').AsInteger;
      TelaCadastroProdutoVenda.MVendasItem.FieldByName('cdproduto').AsString :=  QProduto.FieldByName('cdproduto').AsString;
      TelaCadastroProdutoVenda.MVendasItem.FieldByName('nmproduto').AsString :=  QProduto.FieldByName('nmproduto').AsString;
      TelaCadastroProdutoVenda.MVendasItem.FieldByName('vlunitario').AsString :=  QProduto.FieldByName('vlproduto').AsString;

     TelaConsultaProduto.close;
     except
     on E: Exception do
      ShowMessage('Erro ao Salvar o produto: ' + E.Message);
     end;
end;

end.
