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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
       Dbprod.Mproduto.Insert;
       ShowMessage('cadastro realizado');
       TelaCadastroProduto.Close;
       Dbprod.Mproduto.Close;
       Dbprod.Qproduto.Close;
       Dbprod.Qproduto.Open;
end;

procedure TTelaCadastroProduto.Button2Click(Sender: TObject);
begin
      Dbprod.Mproduto.Cancel;
end;

procedure TTelaCadastroProduto.FormCreate(Sender: TObject);
begin
     TelaCadastroProduto.WindowState := TWindowState.wsNormal
end;


procedure TTelaCadastroProduto.FormShow(Sender: TObject);
begin
     Dbprod.Mproduto.Append;
     Dbprod.Mproduto.FieldByName('dtcadastro').Value := now;
end;

end.
