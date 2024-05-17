unit TelaCadastroDeProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls;

type
  TTelaCadastroProduto = class(TForm)
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
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastroProduto: TTelaCadastroProduto;

implementation

{$R *.dfm}

uses Dbcadastroproduto, CadProd;

procedure TTelaCadastroProduto.Button1Click(Sender: TObject);
begin
      Dbprod.QProdutoEdicao.close;
      Dbprod.QProdutoEdicao.sql.Clear;
      Dbprod.QProdutoEdicao.sql.Add('Insert into produto ( nmproduto, cdproduto, idfamiliaproduto, vlproduto, nmfamiliaproduto,stproduto,dtcadastro)');
      Dbprod.QProdutoEdicao.sql.Add('VALUES(:Pnmproduto,:Pcdproduto,:Pidfamiliaproduto,:Pvlproduto,:Pnmfamiliaproduto,:Pstproduto,:Pdtcadastro)');
      Dbprod.QProdutoEdicao.ParamByName('Pnmproduto').AsString :=  (NmProduto.Text);
      Dbprod.QProdutoEdicao.ParamByName('Pcdproduto').AsInteger :=  StrToInt (CdProduto.Text);
      Dbprod.QProdutoEdicao.ParamByName('Pidfamiliaproduto').AsInteger :=  1 ;
      Dbprod.QProdutoEdicao.ParamByName('Pvlproduto').AsInteger :=  StrToInt (VlUnitario.Text);
      Dbprod.QProdutoEdicao.ParamByName('Pnmfamiliaproduto').AsString := (FamiliaProduto.Text);
      Dbprod.QProdutoEdicao.ParamByName('Pstproduto').AsBoolean  := (Bativo.Checked);
      Dbprod.QProdutoEdicao.ParamByName('Pdtcadastro').AsdateTime := now;
      Dbprod.QProdutoEdicao.ExecSql;

       ShowMessage('cadastro realizado');
       TelaCadastroProduto.Close;
       Dbprod.Mproduto.Close;
        Dbprod.Qproduto.Close;
        Dbprod.Qproduto.Open;
end;

procedure TTelaCadastroProduto.Button2Click(Sender: TObject);
begin
      Dbprod.Mproduto.Cancel;
      Dbprod.QConsultaCodigo.Close;
end;

procedure TTelaCadastroProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Dbprod.QConsultaCodigo.Close;
end;

procedure TTelaCadastroProduto.FormCreate(Sender: TObject);
begin
     TelaCadastroProduto.WindowState := TWindowState.wsNormal
end;


procedure TTelaCadastroProduto.FormShow(Sender: TObject);
var codigoproduto : integer;
begin
     Dbprod.Mproduto.Append;

      //consultar ultimo código de produtos
      Dbprod.QConsultaCodigo.sql.clear;
      Dbprod.QConsultaCodigo.sql.add('select cdproduto from produto order by cdproduto desc limit 1');
      Dbprod.QConsultaCodigo.Open;
      codigoproduto := Dbprod.QConsultaCodigo.FieldByName('cdproduto').AsInteger ;
      TelaCadastroProduto.CdProduto.Text :=  IntToStr(codigoproduto + 1);
end;

end.
