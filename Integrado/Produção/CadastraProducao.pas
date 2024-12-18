unit CadastraProducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DbPrincipal,Forms, Consultas,
  DBpadrao;

type
  TCadastroProducao = class(TForm)
    pnlMaster: TPanel;
    Panel1: TPanel;
    pnlProducao: TPanel;
    edtProducao: TDBEdit;
    pnlData: TPanel;
    dtcadastro: TDateTimePicker;
    pnlPrevisao: TPanel;
    dtprevisao: TDateTimePicker;
    pnlCliente: TPanel;
    edtCliente: TDBEdit;
    pnlPA: TPanel;
    ProdutoAcabado: TPageControl;
    ProdutoPA: TTabSheet;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    pnlcodigo: TPanel;
    edtCodigo: TDBEdit;
    pnlProduto: TPanel;
    edtProduto: TDBEdit;
    pnlqtde: TPanel;
    edtQtde: TDBEdit;
    pnlbotoesPA: TPanel;
    Panel3: TPanel;
    Materiaprima: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    edtCodigoMP: TDBEdit;
    Panel6: TPanel;
    edtProdutoMP: TDBEdit;
    Panel7: TPanel;
    edtQtdeMP: TDBEdit;
    Panel8: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Producao: TFDQuery;
    ProducaoDTVENDA: TDateField;
    ProducaoCODCLI: TIntegerField;
    ProducaoCODCLI_1: TIntegerField;
    ProducaoCODIGO: TIntegerField;
    ProducaoRAZAO: TStringField;
    ProducaoFISICA_JURIDICA: TStringField;
    ProducaoCPF_CNPJ: TStringField;
    ProducaoCODEND: TIntegerField;
    ProducaoTELEFONE: TStringField;
    ProducaoTOTALVENDA: TFMTBCDField;
    ProducaoNUMVENDA: TIntegerField;
    ProducaoCODVENDA: TIntegerField;
    PProducoes: TDataSetProvider;
    Mproducoes: TClientDataSet;
    MproducoesDTVENDA: TDateField;
    MproducoesCODCLI: TIntegerField;
    MproducoesCODIGO: TIntegerField;
    MproducoesRAZAO: TStringField;
    MproducoesFISICA_JURIDICA: TStringField;
    MproducoesCPF_CNPJ: TStringField;
    MproducoesCODEND: TIntegerField;
    MproducoesTELEFONE: TStringField;
    MproducoesTOTALVENDA: TFMTBCDField;
    MproducoesNUMVENDA: TIntegerField;
    DsProducoes: TDataSource;
    Producoesitens: TFDQuery;
    PProducoesitens: TDataSetProvider;
    MProducoesitens: TClientDataSet;
    DsProducoesitens: TDataSource;
    producoesitensmp: TFDQuery;
    Pproducoesitensmp: TDataSetProvider;
    Mproducoesitensmp: TClientDataSet;
    DsProducoesitensmp: TDataSource;
    Producoesitensidproducoesitens: TFDAutoIncField;
    Producoesitensidproducao: TIntegerField;
    Producoesitensidproduto: TIntegerField;
    Producoesitensqtdeproducao: TIntegerField;
    Producoesitensdatafinalizacao: TDateField;
    producoesitensmpidproducoesitensmp: TFDAutoIncField;
    producoesitensmpidproducao: TIntegerField;
    producoesitensmpidproduto: TIntegerField;
    producoesitensmpqtde: TIntegerField;
    MProducoesitensidproducao: TIntegerField;
    MProducoesitensidproduto: TIntegerField;
    MProducoesitensqtdeproducao: TIntegerField;
    MProducoesitensdatafinalizacao: TDateField;
    Mproducoesitensmpidproducao: TIntegerField;
    Mproducoesitensmpidproduto: TIntegerField;
    Mproducoesitensmpqtde: TIntegerField;
    Producoesitensnmproduto: TWideStringField;
    Producoesitenscdproduto: TWideStringField;
    MProducoesitensnmproduto: TWideStringField;
    MProducoesitenscdproduto: TWideStringField;
    cxGrid1DBTableView1qtdeproducao: TcxGridDBColumn;
    cxGrid1DBTableView1datafinalizacao: TcxGridDBColumn;
    cxGrid1DBTableView1nmproduto: TcxGridDBColumn;
    cxGrid1DBTableView1cdproduto: TcxGridDBColumn;
    producoesitensmpnmproduto: TWideStringField;
    producoesitensmpcdproduto: TWideStringField;
    Mproducoesitensmpnmproduto: TWideStringField;
    Mproducoesitensmpcdproduto: TWideStringField;
    cxGridDBTableView1qtde: TcxGridDBColumn;
    cxGridDBTableView1nmproduto: TcxGridDBColumn;
    cxGridDBTableView1cdproduto: TcxGridDBColumn;
    DsMProducoesitensCampo: TDataSource;
    MProducoesitensCampo: TClientDataSet;
    MProducoesitensCampoidproducao: TIntegerField;
    MProducoesitensCampoidproduto: TIntegerField;
    MProducoesitensCampoqtdeproducao: TIntegerField;
    MProducoesitensCampodatafinalizacao: TDateField;
    MProducoesitensCamponmproduto: TWideStringField;
    MProducoesitensCampocdproduto: TWideStringField;
    ProdutoComposicao: TFDQuery;
    ProdutoComposicaoidprodutocomp: TFDAutoIncField;
    ProdutoComposicaoidproduto: TIntegerField;
    ProdutoComposicaoidprodutomp: TIntegerField;
    ProdutoComposicaoqtdemp: TSingleField;
    ProdutoComposicaoidusuario: TIntegerField;
    ProdutoComposicaodtcadastro: TDateField;
    ProdutoComposicaonmproduto: TWideStringField;
    ProdutoComposicaocdproduto: TWideStringField;
    btnIncluirMp: TBitBtn;
    btnexcluiMP: TBitBtn;
    btnIIncluirPa: TBitBtn;
    btnexcluirpa: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcluirpaClick(Sender: TObject);
    procedure btnexcluiMPClick(Sender: TObject);
    procedure btnIIncluirPaClick(Sender: TObject);

  private
    procedure consultaProduto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroProducao: TCadastroProducao;

implementation

{$R *.dfm}


procedure TCadastroProducao.btnexcluiMPClick(Sender: TObject);
begin
 Mproducoesitensmp.Delete;
end;

procedure TCadastroProducao.btnexcluirpaClick(Sender: TObject);
begin
  MProducoesitens.Delete;
end;

procedure TCadastroProducao.btnIIncluirPaClick(Sender: TObject);
var i : integer;
begin
  MProducoesitens.Open;
  MProducoesitens.Append;
  MProducoesitens.FieldByName('idproduto').AsInteger :=  MProducoesitensCampo.FieldByName('idproduto').AsInteger;
  MProducoesitens.FieldByName('cdproduto').AsString := MProducoesitensCampo.FieldByName('cdproduto').AsString ;
  MProducoesitens.FieldByName('nmproduto').AsString := MProducoesitensCampo.FieldByName('nmproduto').AsString ;
  MProducoesitens.FieldByName('qtdeproducao').AsInteger := MProducoesitensCampo.FieldByName('qtdeproducao').AsInteger ;
  MProducoesitens.Post;
  MProducoesitensCampo.EmptyDataSet;

  //trazer automaticamente os produtos composição
  begin
    ProdutoComposicao.sql.Clear;
    ProdutoComposicao.sql.Add('select * from produtoscomp pc join produto p on p.idproduto = pc.idprodutomp  where pc.idproduto = :Pidproduto');
    ProdutoComposicao.ParamByName('Pidproduto').AsInteger :=  MProducoesitens.FieldByName('idproduto').AsInteger;
    ProdutoComposicao.Open;
    ProdutoComposicao.First;

    if ProdutoComposicao.RecordCount <> 0 then
    begin
    for I := 1 to ProdutoComposicao.RecordCount do
    begin
    Mproducoesitensmp.Open;
    Mproducoesitensmp.Append;
    Mproducoesitensmp.FieldByName('idproduto').AsInteger := ProdutoComposicao.FieldByName('idprodutoMP').AsInteger;
    Mproducoesitensmp.FieldByName('cdproduto').AsString := ProdutoComposicao.FieldByName('cdproduto').AsString;
    Mproducoesitensmp.FieldByName('nmproduto').AsString := ProdutoComposicao.FieldByName('nmproduto').AsString;
    Mproducoesitensmp.FieldByName('qtde').AsFloat := (MProducoesitens.FieldByName('qtdeproducao').AsInteger * ProdutoComposicao.FieldByName('qtdemp').AsFloat);
    Mproducoesitensmp.Post;
    ProdutoComposicao.Next;
    end;
    end;
  end;
end;


procedure TCadastroProducao.consultaProduto;
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
      MProducoesitensCampo.FieldByName('idproduto').AsInteger := dbConsultas.ConsultaProdutoPadrão.FieldByName('idproduto').AsInteger;
      MProducoesitensCampo.FieldByName('cdproduto').AsString :=  dbConsultas.ConsultaProdutoPadrão.FieldByName('cdproduto').AsString;
      MProducoesitensCampo.FieldByName('nmproduto').AsString :=  dbConsultas.ConsultaProdutoPadrão.FieldByName('nmproduto').AsString;
      MProducoesitensCampo.FieldByName('qtdeproducao').AsInteger :=  1;
      MProducoesitensCampo.Post;
    except
    MProducoesitensCampo.Cancel;
    raise
    end;
    end
    else
     //CriaTelaConsultaProd;
  finally
    ConsultaProd.Free;
  end;
end;

procedure TCadastroProducao.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
   VK_return : begin
   consultaProduto;
   end;
  end;
end;

procedure TCadastroProducao.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
   VK_return : begin
   consultaProduto;
   end;
  end;
end;

procedure TCadastroProducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
   var fechar :TFormAbreFecha;
begin
   fechar := TFormAbreFecha.Create(self);
   try
   fechar.fecharForm;
   finally
   fechar.Free;
  end;


end;

procedure TCadastroProducao.FormShow(Sender: TObject);
begin
  dtcadastro.Date := now;
  dtprevisao.Date := now;
  Producoesitens.Open;
  MProducoesitensCampo.Open;
end;

end.
