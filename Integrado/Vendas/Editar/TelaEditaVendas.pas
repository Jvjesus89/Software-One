unit TelaEditaVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    Button1: TButton;
    BuscaCliente: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Button2: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    Adicionar: TBitBtn;
    Excluirproduto: TBitBtn;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    DBGrid2: TDBGrid;
    DBEdit7: TDBEdit;
    Button3: TButton;
    ToolBar2: TToolBar;
    AdicionarTitutlo: TBitBtn;
    ExxcluirAreceber: TBitBtn;
    Valor: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses DbEditarVendas;

end.
