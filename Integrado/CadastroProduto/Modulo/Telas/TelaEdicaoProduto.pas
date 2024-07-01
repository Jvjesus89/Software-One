unit TelaEdicaoProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TTelaEdicaoProduto1 = class(TForm)
    Cod: TLabel;
    Valor: TLabel;
    Nome: TLabel;
    Familia: TLabel;
    Image1: TImage;
    CdProduto: TDBEdit;
    NmProduto: TDBEdit;
    FamiliaProduto: TDBEdit;
    VlUnitario: TDBEdit;
    Button1: TButton;
    Bativo: TDBCheckBox;
    Button2: TButton;
    IdProduto: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NmProdutoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaEdicaoProduto1: TTelaEdicaoProduto1;

implementation

{$R *.dfm}

uses Dbcadastroproduto;

procedure TTelaEdicaoProduto1.Button1Click(Sender: TObject);
begin

      Dbprod.QProdutoEdicao.close;
      Dbprod.QProdutoEdicao.sql.Clear;
      Dbprod.QProdutoEdicao.sql.Add('Update produto Set nmproduto=:Pnmproduto, cdproduto=:Pcdproduto, idfamiliaproduto=:Pidfamiliaproduto, vlproduto=:Pvlproduto, nmfamiliaproduto=:Pnmfamiliaproduto , stproduto=:Pstproduto Where idproduto =:Pidproduto');
      Dbprod.QProdutoEdicao.ParamByName('Pnmproduto').AsString :=  (NmProduto.Text);
      Dbprod.QProdutoEdicao.ParamByName('Pcdproduto').AsInteger :=  StrToInt (CdProduto.Text);
      Dbprod.QProdutoEdicao.ParamByName('Pidfamiliaproduto').AsInteger :=  1 ;
      Dbprod.QProdutoEdicao.ParamByName('Pvlproduto').AsFloat :=  StrToFloat (VlUnitario.Text);
      Dbprod.QProdutoEdicao.ParamByName('Pnmfamiliaproduto').AsString := (FamiliaProduto.Text);
      Dbprod.QProdutoEdicao.ParamByName('Pstproduto').AsBoolean  := (Bativo.Checked);
      Dbprod.QProdutoEdicao.ParamByName('Pidproduto').AsInteger :=  StrToInt (IdProduto.Text);
      Dbprod.QProdutoEdicao.ExecSql;


   ShowMessage('Edi��o realizado');
   TelaEdicaoProduto1.Close;
   Dbprod.Mproduto.Close;
   Dbprod.QProdutoEdicao.Close;
   Dbprod.Qproduto.Open;
   end;

procedure TTelaEdicaoProduto1.Button2Click(Sender: TObject);
begin
    Dbprod.Mproduto.Cancel;
    TelaEdicaoProduto1.Close;
end;

procedure TTelaEdicaoProduto1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Dbprod.Mproduto.Cancel;
end;

procedure TTelaEdicaoProduto1.FormShow(Sender: TObject);
begin
     Dbprod.Mproduto.Open;
     Dbprod.Mproduto.Edit;
end;

procedure TTelaEdicaoProduto1.NmProdutoExit(Sender: TObject);
begin
    NmProduto.Text := UpperCase(NmProduto.Text);
end;

end.
