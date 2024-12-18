unit TelaCadastroDeLotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TCadastroLote = class(TForm)
    pnlMaster: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    pnltop: TPanel;
    pnlCodigoLote: TPanel;
    edtcodigoLote: TDBEdit;
    pnlQtde: TPanel;
    edtquantidade: TDBEdit;
    ExxcluirAreceber: TBitBtn;
    AdicionarTitutlo: TBitBtn;
    pnlBotton: TPanel;
    Button1: TButton;
    Button2: TButton;
    ProdutosLote: TFDQuery;
    PProdutosLote: TDataSetProvider;
    MProdutosLote: TClientDataSet;
    DsProdutosLote: TDataSource;
    cxGrid1DBTableView1cdlote: TcxGridDBColumn;
    cxGrid1DBTableView1qtdelote: TcxGridDBColumn;
    ProdutosLoteidprodutolote: TFDAutoIncField;
    ProdutosLotecdlote: TWideStringField;
    ProdutosLoteqtdelote: TSingleField;
    ProdutosLoteidproduto: TIntegerField;
    ProdutosLotedtcadastro: TDateField;
    ProdutosLoteidusuario: TIntegerField;
    MProdutosLotecdlote: TWideStringField;
    MProdutosLoteqtdelote: TSingleField;
    MProdutosLoteidproduto: TIntegerField;
    MProdutosLotedtcadastro: TDateField;
    MProdutosLoteidusuario: TIntegerField;
    MProdutosLoteCampo: TClientDataSet;
    WideStringField1: TWideStringField;
    SingleField1: TSingleField;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    DsProdutosLoteCampo: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    Panel1: TPanel;
    dtValidadeCampo: TDateTimePicker;
    MProdutosLoteCampodtvalidade: TDateField;
    ProdutosLotedtvalidade: TDateField;
    MProdutosLotedtvalidade: TDateField;
    procedure AdicionarTitutloClick(Sender: TObject);
    procedure ExxcluirAreceberClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure cadastraLote;
    { Private declarations }
  public
    idproduto : integer;
    idusuario : integer;
    { Public declarations }
  end;

var
  CadastroLote: TCadastroLote;

implementation

{$R *.dfm}

{ TCadastroLote }

procedure TCadastroLote.AdicionarTitutloClick(Sender: TObject);
begin
  cadastraLote;
end;

procedure TCadastroLote.Button1Click(Sender: TObject);
begin
   MProdutosLote.ApplyUpdates(0);
   self.Close;
end;

procedure TCadastroLote.cadastraLote;
begin
    MProdutosLote.Insert;
    MProdutosLote.FieldByName('idproduto').AsInteger := idproduto;
    MProdutosLote.FieldByName('cdlote').AsString := MProdutosLoteCampo.FieldByName('cdlote').AsString;
    MProdutosLote.FieldByName('qtdelote').AsString := MProdutosLoteCampo.FieldByName('qtdelote').AsString;
    MProdutosLote.FieldByName('dtcadastro').AsDateTime := now ;
    MProdutosLote.FieldByName('idusuario').AsInteger := idusuario;
    MProdutosLote.FieldByName('dtvalidade').AsDateTime := dtValidadeCampo.Date;
    MProdutosLote.Post;
    MProdutosLoteCampo.EmptyDataSet;
end;

procedure TCadastroLote.ExxcluirAreceberClick(Sender: TObject);
begin
  if MProdutosLote.RecordCount > 0 then
      begin
      MProdutosLote.Delete;
      end;
end;

procedure TCadastroLote.FormShow(Sender: TObject);
begin
   ProdutosLote.ParamByName('Idproduto').AsInteger := idproduto;
   MProdutosLote.Open;
   MProdutosLoteCampo.Open;
   MProdutosLoteCampo.Append;
   dtValidadeCampo.Date := now;
end;

end.
