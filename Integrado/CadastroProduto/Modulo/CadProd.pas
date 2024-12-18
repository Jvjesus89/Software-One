unit CadProd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.DBCGrids,conectarINI,
  frxSmartMemo, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet,
  frCoreClasses, frxDCtrl, frxDesgn, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Forms,TelaExportacaoProduto;

type
  TCadProduto = class(TForm)
    Panel1: TPanel;
    BtExcluir: TBitBtn;
    BtNovo: TBitBtn;
    Panel2: TPanel;
    Busca: TEdit;
    Panel3: TPanel;
    BtEditar: TBitBtn;
    BuscaProduto: TLabel;
    ExportarDados: TButton;
    BuscaBotao: TButton;
    btnImprimirProdutos: TBitBtn;
    frxRelatorio: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBClientes: TfrxDBDataset;
    frxDialogControls1: TfrxDialogControls;
    DsQproduto: TDataSource;
    Qproduto: TFDQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    IntegerField2: TIntegerField;
    BooleanField1: TBooleanField;
    DateField1: TDateField;
    Qprodutovlproduto: TSingleField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1nmproduto: TcxGridDBColumn;
    cxGrid1DBTableView1cdproduto: TcxGridDBColumn;
    cxGrid1DBTableView1nmfamiliaproduto: TcxGridDBColumn;
    cxGrid1DBTableView1vlproduto: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Qprodutovlcusto: TSingleField;
    SomenteAtivo: TCheckBox;
    Qprodutonmfamiliaproduto: TWideStringField;
    Qprodutoidprodutosfamilia: TIntegerField;
    procedure BtExcluirClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtNovoClick(Sender: TObject);
    procedure ExportarDadosClick(Sender: TObject);
    procedure BuscaBotaoClick(Sender: TObject);
    procedure btnImprimirProdutosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BuscaExit(Sender: TObject);
  private
   procedure EditarProduto;
    { Private declarations }
  public
   idusuario: integer;
    { Public declarations }
  end;

var
  CadProduto: TCadProduto;

implementation

{$R *.dfm}

uses  TelaCadastroDeProdutos;

procedure TCadProduto.BtEditarClick(Sender: TObject);
begin
EditarProduto;
end;

procedure TCadProduto.BtExcluirClick(Sender: TObject);
begin
   if Application.MessageBox(Pchar('Deseja excluir o Produto?'), 'Confirmação', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then
      begin;
      if Qproduto.RecordCount > 0 then
      begin
      //Qproduto.Delete;
      end;

      Qproduto.close;
      Qproduto.Open;
      end;



end;

procedure TCadProduto.btnImprimirProdutosClick(Sender: TObject);
begin
    frxRelatorio.showreport;
end;

procedure TCadProduto.BtNovoClick(Sender: TObject);
var
  cadastroproduto :TTelaCadastroProduto;
begin
  cadastroproduto := TTelaCadastroProduto.Create(Application);
  try
    cadastroproduto.CadastrarEditar := 0;
    cadastroproduto.idusuario := idusuario;
    cadastroproduto.ShowModal;
  except
    cadastroproduto.Free;
    raise;
  end;

  Qproduto.Close;
  Qproduto.Open;
end;

procedure TCadProduto.BuscaBotaoClick(Sender: TObject);
var sql : string;
begin
     sql := 'Select * From produto p join estoque e on e.idproduto = p.idproduto left join produtosfamilia f on f.idprodutosfamilia = p.idfamiliaproduto where 1=1';

      if SomenteAtivo.Checked then
      begin
        sql := sql + ' and stproduto = $$true$$';
      end;
      if not((Trim(Busca.text).IsEmpty)) then
      begin
        sql := sql + ' and nmproduto like'+#39+'%'+(Busca.Text)+'%'+#39;
      end;

      Qproduto.close;
      Qproduto.sql.Clear;
      Qproduto.sql.Add(sql);
      Qproduto.open;

end;


procedure TCadProduto.BuscaExit(Sender: TObject);
begin
    Busca.text := Uppercase(Busca.Text);
end;

procedure TCadProduto.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
EditarProduto;
end;

procedure TCadProduto.EditarProduto;
var
  cadastroproduto :TTelaCadastroProduto;
begin
  cadastroproduto := TTelaCadastroProduto.Create(Application);
  try
    cadastroproduto.CadastrarEditar := 1;
    cadastroproduto.Caption := 'Editar Produto';
    cadastroproduto.idproduto := Qproduto.FieldByName('idproduto').AsInteger;
    cadastroproduto.idusuario := idusuario;
    cadastroproduto.ShowModal;
  except
    cadastroproduto.Free;
    raise;
  end;

  Qproduto.Close;
  Qproduto.Open;
end;

procedure TCadProduto.ExportarDadosClick(Sender: TObject);
var exportaproduto : TExportaProdutos;
begin
   exportaproduto := TExportaProdutos.create(self);
   try
    exportaproduto.ShowModal;
  except
    exportaproduto.Free;
    raise;
  end;
end;

procedure TCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
   var fechar :TFormAbreFecha;
begin
   fechar := TFormAbreFecha.Create(self);
   try
   fechar.fecharForm;
   finally
   fechar.Free;
  end;
end;

procedure TCadProduto.FormCreate(Sender: TObject);
begin
    Qproduto.open;
end;

end.
