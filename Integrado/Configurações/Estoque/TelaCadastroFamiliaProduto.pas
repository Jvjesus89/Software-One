unit TelaCadastroFamiliaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls;

type
  TCaadastroFamilia = class(TForm)
    pnlMaster: TPanel;
    pnlCampos: TPanel;
    pnlCodigo: TPanel;
    pnlFamiliaProduto: TPanel;
    btnCadastraFamilia: TSpeedButton;
    FamiliaProduto: TFDQuery;
    FamiliaProdutoidprodutosfamilia: TFDAutoIncField;
    FamiliaProdutonmfamiliaproduto: TWideStringField;
    FamiliaProdutocdfamiliaproduto: TIntegerField;
    DsFamiliaProduto: TDataSource;
    DBGrid1: TDBGrid;
    Edtcodigo: TDBEdit;
    edtFamiliaProduto: TDBEdit;
    FamiliaProdutoCampo: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    DsFamiliaProdutoCampo: TDataSource;
    procedure btnCadastraFamiliaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CaadastroFamilia: TCaadastroFamilia;

implementation

{$R *.dfm}

procedure TCaadastroFamilia.btnCadastraFamiliaClick(Sender: TObject);
begin
   FamiliaProduto.Append;
   FamiliaProduto.FieldByName('cdfamiliaproduto').AsInteger := FamiliaProdutoCampo.FieldByName('cdfamiliaproduto').AsInteger;
   FamiliaProduto.FieldByName('nmfamiliaproduto').AsString := uppercase(edtFamiliaProduto.text);
   FamiliaProduto.Post;
   FamiliaProduto.ApplyUpdates(0);
   FamiliaProdutoCampo.EmptyDataSet;
end;

procedure TCaadastroFamilia.FormCreate(Sender: TObject);
begin
   FamiliaProduto.Open;
   FamiliaProdutoCampo.Open;
   FamiliaProdutoCampo.Append;
end;

end.
