unit CadastroProdutoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TTelaCadastroProdutoVenda = class(TForm)
    Label3: TLabel;
    idproduto: TDBEdit;
    Label4: TLabel;
    nmproduto: TDBEdit;
    Label5: TLabel;
    vlunitario: TDBEdit;
    Label6: TLabel;
    quantidade: TDBEdit;
    Button1: TButton;
    Label1: TLabel;
    vlitem: TDBEdit;
    Button2: TButton;
    Button3: TButton;
    QtDisponivel: TDBEdit;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure vlunitarioExit(Sender: TObject);
    procedure quantidadeExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastroProdutoVenda: TTelaCadastroProdutoVenda;

implementation

{$R *.dfm}

uses DBvendas, TelaConsultaProdutoVenda;

procedure TTelaCadastroProdutoVenda.Button1Click(Sender: TObject);
begin
    TelaConsultaProduto.showmodal;
end;

procedure TTelaCadastroProdutoVenda.Button2Click(Sender: TObject);
var
Qdisponivel : Integer;

begin
    DbVendas1.MTempItem.Insert;
    with DbVendas1.Qestoque do
    begin
      close;
      sql.Clear;
      sql.Add('Select qtdisponivel From movimentoestoque where idproduto ='+ idproduto.text);
      open;
    end;

    DbVendas1.MTempItem.Close;
    DbVendas1.MTempItem.Open;
end;


procedure TTelaCadastroProdutoVenda.Button3Click(Sender: TObject);
begin
    DbVendas1.MTempItem.Cancel;
    TelaCadastroProdutoVenda.close;
end;

procedure TTelaCadastroProdutoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
       DbVendas1.MTempItem.Cancel;
    TelaCadastroProdutoVenda.close;
end;

procedure TTelaCadastroProdutoVenda.FormShow(Sender: TObject);
begin
    DbVendas1.MTempItem.Append;
end;


procedure TTelaCadastroProdutoVenda.quantidadeExit(Sender: TObject);
var qtitem, vlunit, vltotal : real;
begin
   qtitem := StrToInt (quantidade.Text);
   vlunit := StrToFloat (vlunitario.Text);
   vltotal := qtitem * vlunit;
   vlitem.text := formatfloat('###.00',vltotal);
end;

procedure TTelaCadastroProdutoVenda.vlunitarioExit(Sender: TObject);
var qtitem, vlunit, vltotal : real;
begin
   qtitem := StrToInt (quantidade.Text);
   vlunit := StrToFloat (vlunitario.Text);
   vltotal := qtitem * vlunit;
   vlitem.text := formatfloat('###.00',vltotal);
end;


end.
