unit Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TConsultaProduto = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Busca: TEdit;
    Label1: TLabel;
    Button1: TButton;
    DsProduto: TDataSource;
    Qproduto: TFDQuery;
    Qprodutoidproduto: TIntegerField;
    Qprodutonmproduto: TWideStringField;
    Qprodutocdproduto: TWideStringField;
    Qprodutoidfamiliaproduto: TIntegerField;
    Qprodutovlproduto: TSingleField;
    Qprodutonmfamiliaproduto: TWideStringField;
    Qprodutostproduto: TBooleanField;
    Qprodutodtcadastro: TDateField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
   class function New(Aowner:TComponent): TConsultaProduto;
   function Embed(Value:Tpanel):TConsultaProduto;
    { Public declarations }
  end;

var
  ConsultaProduto: TConsultaProduto;

implementation

{$R *.dfm}

uses DbMovimento, TelaConsultaEstoque, CadastroMovimentacoes;

procedure TConsultaProduto.Button1Click(Sender: TObject);
begin
      with Qproduto do
    begin
      close;
      sql.Clear;
      sql.Add('Select * From produto Where nmproduto like '+#39+'%'+(Busca.Text)+'%'+#39);
      open;
    end;
end;

procedure TConsultaProduto.DBGrid1DblClick(Sender: TObject);
var idproduto : integer;
begin
   ConsultaEstoque1.QConsulta.close;
   ConsultaEstoque1.QConsulta.sql.clear;
   ConsultaEstoque1.QConsulta.sql.add('Select * From movimentoestoque mv  left join vendas v on v.idvenda = mv.idorigem left join produto p on p.idproduto = mv.idproduto where mv.idproduto = :Pidproduto');
   ConsultaEstoque1.QConsulta.ParamByName('Pidproduto').AsInteger := Qproduto.FieldByName('idproduto').AsInteger;
   ConsultaEstoque1.QConsulta.open;


   ConsultaEstoque1.QSaldoAtual.close;
   ConsultaEstoque1.QSaldoAtual.sql.clear;
   ConsultaEstoque1.QSaldoAtual.sql.add('Select * From estoque where idproduto = :Pidproduto');
   ConsultaEstoque1.QSaldoAtual.ParamByName('Pidproduto').AsInteger := Qproduto.FieldByName('idproduto').AsInteger;
   ConsultaEstoque1.QSaldoAtual.open;
   ConsultaEstoque1.label4.Caption := IntToStr(ConsultaEstoque1.QSaldoAtual.FieldByName('qtdeestoque').AsInteger);

   self.Close;
end;

function TConsultaProduto.Embed(Value: Tpanel): TConsultaProduto;
begin
    Result:=self;
    self.Show;
end;

procedure TConsultaProduto.FormShow(Sender: TObject);
begin
 Qproduto.Open;
end;

class function TConsultaProduto.New(Aowner: TComponent): TConsultaProduto;
begin
  Result := Self.Create(AOwner);
end;

end.
