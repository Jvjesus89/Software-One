unit TelaComposicaoProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Consultas, DBpadrao, ConsultaProduto;

type
  TProdutosComp = class(TForm)
    pnlMaster: TPanel;
    pnltop: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ProdutoComp: TFDQuery;
    PprodutoComp: TDataSetProvider;
    MprodutoComp: TClientDataSet;
    DsProdutoComp: TDataSource;
    pnlCodigo: TPanel;
    edtcodigo: TDBEdit;
    pnlProduto: TPanel;
    edtProduto: TDBEdit;
    pnlQtde: TPanel;
    DBEdit3: TDBEdit;
    ExxcluirAreceber: TBitBtn;
    AdicionarTitutlo: TBitBtn;
    MprodutoCompCampo: TClientDataSet;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DsProdutoCompCampo: TDataSource;
    MprodutoCompCampoqtdemp: TSingleField;
    cxGrid1DBTableView1nmproduto: TcxGridDBColumn;
    cxGrid1DBTableView1cdproduto: TcxGridDBColumn;
    cxGrid1DBTableView1vlcusto: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    pnlBotton: TPanel;
    Button1: TButton;
    Button2: TButton;
    MprodutoCompCampoidprodutomp: TIntegerField;
    ProdutoCompcdproduto: TWideStringField;
    ProdutoCompnmproduto: TWideStringField;
    ProdutoCompidproduto: TIntegerField;
    ProdutoCompidprodutomp: TIntegerField;
    ProdutoCompqtdemp: TSingleField;
    MprodutoCompidproduto: TIntegerField;
    MprodutoCompidprodutomp: TIntegerField;
    MprodutoCompqtdemp: TSingleField;
    MprodutoCompcdproduto: TWideStringField;
    MprodutoCompnmproduto: TWideStringField;
    ProdutoCompidprodutocomp: TIntegerField;
    MprodutoCompidprodutocomp: TIntegerField;
    ProdutoCompidusuario: TIntegerField;
    ProdutoCompdtcadastro: TDateField;
    MprodutoCompidusuario: TIntegerField;
    MprodutoCompdtcadastro: TDateField;
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdicionarTitutloClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MprodutoCompReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ExxcluirAreceberClick(Sender: TObject);
  private
    procedure consultarproduto;
    procedure CriaTelaConsultaProd;
    { Private declarations }
  public
    idproduto : integer;
    idusuario : integer;
    { Public declarations }
  end;

var
  ProdutosComp: TProdutosComp;

implementation

{$R *.dfm}

procedure TProdutosComp.AdicionarTitutloClick(Sender: TObject);
begin
    MprodutoComp.Insert;
    MprodutoComp.FieldByName('idprodutomp').AsInteger := MprodutoCompCampo.FieldByName('idprodutomp').AsInteger;
    MprodutoComp.FieldByName('cdproduto').AsString := MprodutoCompCampo.FieldByName('cdproduto').AsString ;
    MprodutoComp.FieldByName('nmproduto').AsString := MprodutoCompCampo.FieldByName('nmproduto').AsString ;
    MprodutoComp.FieldByName('qtdemp').AsInteger := MprodutoCompCampo.FieldByName('qtdemp').AsInteger   ;
    MprodutoComp.FieldByName('idproduto').AsInteger := idproduto ;
    MprodutoComp.FieldByName('idusuario').AsInteger := idusuario;
    MprodutoComp.FieldByName('dtcadastro').AsDateTime := now;
    MprodutoComp.Post;

    MprodutoCompCampo.EmptyDataSet;
end;

procedure TProdutosComp.Button1Click(Sender: TObject);
begin
   MprodutoComp.ApplyUpdates(0);
   self.close;
end;

procedure TProdutosComp.consultarproduto;
var ConsultaProd : TConsultaProduto;
begin

    ConsultaProd  := TConsultaProduto.New;
  try
    ConsultaProd.codigo := (edtcodigo.Text);
    ConsultaProd.descricao := edtProduto.Text;
    ConsultaProd.ConsultaProduto;

    if (dbConsultas.ConsultaProdutoPadrão.RecordCount = 1) then
    begin
       try
      MprodutoCompCampo.FieldByName('idprodutomp').AsInteger := dbConsultas.ConsultaProdutoPadrão.FieldByName('idproduto').AsInteger;
      MprodutoCompCampo.FieldByName('cdproduto').AsString :=  dbConsultas.ConsultaProdutoPadrão.FieldByName('cdproduto').AsString;
      MprodutoCompCampo.FieldByName('nmproduto').AsString :=  dbConsultas.ConsultaProdutoPadrão.FieldByName('nmproduto').AsString;
      MprodutoCompCampo.FieldByName('qtdemp').AsInteger :=  1;
      MprodutoCompCampo.Post;
    except
    MprodutoCompCampo.Cancel;
    raise
    end;
    end
    else
     CriaTelaConsultaProd;
  finally
    ConsultaProd.Free;
  end;
end;


procedure TProdutosComp.CriaTelaConsultaProd;
var ConsultaProdTela : TTelaConsultaProduto;
begin
    ConsultaProdTela := TTelaConsultaProduto.Create(Application);
    try
    ConsultaProdTela.moduloOrigem := 1;
    ConsultaProdTela.codigo := (edtcodigo.Text);
    ConsultaProdTela.descricao := edtProduto.Text;
    ConsultaProdTela.ConsultaProduto;
    ConsultaProdTela.showmodal;
    finally
    //modulo Cadastro Produto -> composição produto
    if ConsultaProdTela.moduloOrigem = 1 then
    begin
    try
      MprodutoCompCampo.Open;
      MprodutoCompCampo.Insert;
      MprodutoCompCampo.FieldByName('idprodutomp').AsInteger := ConsultaProdTela.GridIdproduto;
      MprodutoCompCampo.FieldByName('cdproduto').AsString :=    ConsultaProdTela.GridCdproduto;
      MprodutoCompCampo.FieldByName('nmproduto').AsString :=    ConsultaProdTela.GridNmproduto;
      MprodutoCompCampo.FieldByName('qtdemp').AsInteger :=  1;
      MprodutoCompCampo.Post;
    except
    MprodutoCompCampo.Cancel;
    raise
    end;
    end;

      ConsultaProdTela.Free;
    end;
end;

procedure TProdutosComp.edtcodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
   VK_return : begin
   consultarproduto;
   end;
  end;
end;

procedure TProdutosComp.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
   VK_return : begin
   consultarproduto;
   end;
  end;
end;

procedure TProdutosComp.ExxcluirAreceberClick(Sender: TObject);
begin
  if MprodutoComp.RecordCount > 0 then
      begin
      MprodutoComp.Delete;
      end;
end;

procedure TProdutosComp.FormShow(Sender: TObject);
var sql :string;
begin
sql := 'Select * From produtoscomp pc join produto p on p.idproduto = pc.idprodutomp where pc.idproduto = :PIdproduto';
ProdutoComp.close;
ProdutoComp.sql.Clear;
ProdutoComp.sql.Add(sql);
ProdutoComp.ParamByName('PIdproduto').AsInteger := idproduto;
ProdutoComp.Open;

MprodutoComp.open;
MprodutoCompCampo.Open;
MprodutoCompCampo.Append;
end;

procedure TProdutosComp.MprodutoCompReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  showMessage(e.Message)
end;

end.
