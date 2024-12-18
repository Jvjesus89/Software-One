unit TelaMovimentoBancario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxBarEditItem,
   dxRibbonCustomizationForm, dxCore,
  cxTextEdit, cxContainer, cxEdit, dxSkinsForm, dxStatusBar, dxRibbonStatusBar,
  cxLabel, dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, Vcl.ExtCtrls,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinVisualStudio2013Dark,
  dxSkinDevExpressDarkStyle,conectarINI;

type
  TConsultaMovimentoBancario = class(TdxRibbonForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    cxGrid1DBTableView1idmovimentobancario: TcxGridDBColumn;
    cxGrid1DBTableView1idareceber: TcxGridDBColumn;
    cxGrid1DBTableView1idextratobancario: TcxGridDBColumn;
    cxGrid1DBTableView1dtconciliacao: TcxGridDBColumn;
    cxGrid1DBTableView1idcontabancaria: TcxGridDBColumn;
    cxGrid1DBTableView1idareceber_1: TcxGridDBColumn;
    cxGrid1DBTableView1idcliente: TcxGridDBColumn;
    cxGrid1DBTableView1nmcliente: TcxGridDBColumn;
    cxGrid1DBTableView1idformapagamento: TcxGridDBColumn;
    cxGrid1DBTableView1nmformapagamento: TcxGridDBColumn;
    cxGrid1DBTableView1vltitulo: TcxGridDBColumn;
    cxGrid1DBTableView1nrtitulo: TcxGridDBColumn;
    cxGrid1DBTableView1dtcadastro: TcxGridDBColumn;
    cxGrid1DBTableView1dtvencimento: TcxGridDBColumn;
    cxGrid1DBTableView1idorigem: TcxGridDBColumn;
    cxGrid1DBTableView1dtbaixa: TcxGridDBColumn;
    cxGrid1DBTableView1idcontabancaria_1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaMovimentoBancario: TConsultaMovimentoBancario;

implementation

{$R *.dfm}

uses DbMovimentoBancario;

{ TForm1 }

procedure TConsultaMovimentoBancario.FormCreate(Sender: TObject);
begin
  DisableAero := True;
end;

procedure TConsultaMovimentoBancario.FormShow(Sender: TObject);
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

end.
