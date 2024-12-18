unit TelaConsultaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,conectarINI, Forms, ConsultaProduto,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TConsultaEstoque1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
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
    pnlConteiner: TPanel;
    QConsulta: TFDQuery;
    DsConsultaQ: TDataSource;
    Panel4: TPanel;
    QSaldoAtual: TFDQuery;
    QSaldoAtualidestoque: TFDAutoIncField;
    QSaldoAtualidproduto: TIntegerField;
    QSaldoAtualqtdeestoque: TIntegerField;
    QConsultaidmovimento: TFDAutoIncField;
    QConsultaidproduto: TFDAutoIncField;
    QConsultaqtmovimentada: TIntegerField;
    QConsultaqtdisponivel: TIntegerField;
    QConsultadtmovimento: TDateField;
    QConsultatpmovimento: TWideStringField;
    QConsultadtcadastro: TDateField;
    QConsultaidorigem: TIntegerField;
    QConsultaidmoduloorigem: TIntegerField;
    QConsultaidvenda: TIntegerField;
    QConsultaidcliente: TIntegerField;
    QConsultavlvenda: TSingleField;
    QConsultadtcadastro_1: TDateField;
    QConsultadtvenda: TDateField;
    QConsultanrdocumento: TIntegerField;
    QConsultaidproduto_1: TIntegerField;
    QConsultanmproduto: TWideStringField;
    QConsultacdproduto: TWideStringField;
    QConsultaidfamiliaproduto: TIntegerField;
    QConsultavlproduto: TSingleField;
    QConsultastproduto: TBooleanField;
    QConsultadtcadastro_2: TDateField;
    QConsultaidusuario: TIntegerField;
    QConsultavlcusto: TSingleField;
    QConsultadtultalter: TDateField;
    QConsultaidusuarioultalter: TIntegerField;
    QConsultatrablote: TBooleanField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1qtmovimentada: TcxGridDBColumn;
    cxGrid1DBTableView1dtmovimento: TcxGridDBColumn;
    cxGrid1DBTableView1idorigem: TcxGridDBColumn;
    cxGrid1DBTableView1nrdocumento: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    QConsultaidprodutosfamilia: TIntegerField;
    QConsultanmfamiliaproduto: TWideStringField;
    QConsultacdfamiliaproduto: TIntegerField;
    Label4: TLabel;
    QConsultacdlote: TWideStringField;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    procedure LocalizaprodutoClick(Sender: TObject);
    procedure EntradaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QSaldoAtualAfterOpen(DataSet: TDataSet);
  private
    Procedure atualizasaldoatualLbl;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaEstoque1: TConsultaEstoque1;

implementation

{$R *.dfm}

uses DbMovimento, CadastroMovimentacoes;

procedure TConsultaEstoque1.atualizasaldoatualLbl;
  var qtdeestoque : real;
begin
   qtdeestoque:= QSaldoAtual.FieldByName('qtdeestoque').AsFloat;
   Label4.caption := FloattoStr(qtdeestoque);
end;

procedure TConsultaEstoque1.EntradaClick(Sender: TObject);

begin
     TelaCadastroMovimentacoes.ShowModal;
end;


procedure TConsultaEstoque1.FormClose(Sender: TObject; var Action: TCloseAction);
var fechar :TFormAbreFecha;
begin
   fechar := TFormAbreFecha.Create(self);
   try
   fechar.fecharForm;
   finally
   fechar.Free;
  end;
end;

procedure TConsultaEstoque1.LocalizaprodutoClick(Sender: TObject);
var consultaProduto : TTelaConsultaProduto;
begin
   consultaProduto := TTelaConsultaProduto.Create(Application);
  try
    consultaProduto.WindowState := wsNormal;
    consultaProduto.ShowModal;
  finally
    begin
      //Consulta Movimentação
      QConsulta.Close;
      QConsulta.ParamByName('Pidproduto').AsInteger := consultaProduto.GridIdproduto;
      QConsulta.Open;
      //Consulta saldo do produto
      QSaldoAtual.Close;
      QSaldoAtual.SQL.Clear;
      QSaldoAtual.Sql.Add('select * From estoque where idproduto = :Pidproduto');
      QSaldoAtual.ParamByName('Pidproduto').AsInteger := consultaProduto.GridIdproduto;
      QSaldoAtual.Open
    end;

  consultaProduto.Free;
  end;

end;

procedure TConsultaEstoque1.QSaldoAtualAfterOpen(DataSet: TDataSet);
begin
   atualizasaldoatualLbl
end;

end.
