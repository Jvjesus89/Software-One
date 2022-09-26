unit CadastroMovimentacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TTelaCadastroMovimentacoes = class(TForm)
    Label1: TLabel;
    IdProdutoMov: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    TipoMovimento: TDBComboBox;
    Label6: TLabel;
    Button1: TButton;
    Label7: TLabel;
    Label8: TLabel;
    NomeProdutoMov: TDBEdit;
    CodigoProdutoMov: TDBEdit;
    BuscaProduto: TButton;
    DBEdit1: TDBEdit;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BuscaProdutoClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure TipoMovimentoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastroMovimentacoes: TTelaCadastroMovimentacoes;

implementation

{$R *.dfm}

uses DbMovimento, Produtos, TelaConsultaEstoque, ProdutoMov;

procedure TTelaCadastroMovimentacoes.Button1Click(Sender: TObject);
begin
       DbMov.QdisponivelTemp.Open;
       DbMov.MConsulta.Insert;
       ShowMessage('Movimento Cadastro');
       TelaCadastroMovimentacoes.Close;
end;

procedure TTelaCadastroMovimentacoes.Button2Click(Sender: TObject);
begin
      DbMov.MConsulta.Cancel;
      DbMov.MConsulta.close;
      TelaCadastroMovimentacoes.Close;
end;

procedure TTelaCadastroMovimentacoes.DBEdit2Exit(Sender: TObject);
var qtdisponivel : integer;
TpMovimento : String;
begin
TpMovimento := TipoMovimento.Text;
   if DBEdit3.Text = '' then
   begin
   DBEdit3.Text := '0';
    if TpMovimento = 'Entrada' then
    qtdisponivel :=  StrToInt (DBEdit3.Text) +  StrToInt (DBEdit2.Text);
    DBEdit1.Text :=  IntToStr (qtdisponivel);
    if TpMovimento = 'Saida' then
    qtdisponivel :=  StrToInt (DBEdit3.Text) -  StrToInt (DBEdit2.Text);
    DBEdit1.Text :=  IntToStr (qtdisponivel);
   end;

   if DBEdit3.Text <> '' then
   begin
    if TpMovimento = 'Entrada' then
    qtdisponivel :=  StrToInt (DBEdit3.Text) +  StrToInt (DBEdit2.Text);
    DBEdit1.Text :=  IntToStr (qtdisponivel);
    if TpMovimento = 'Saida' then
    qtdisponivel :=  StrToInt (DBEdit3.Text) -  StrToInt (DBEdit2.Text);
    DBEdit1.Text :=  IntToStr (qtdisponivel);
   end;

end ;
procedure TTelaCadastroMovimentacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DbMov.MConsulta.Cancel;
    DbMov.MConsulta.close;
end;

procedure TTelaCadastroMovimentacoes.FormShow(Sender: TObject);
begin
     DbMov.MConsulta.FieldByName('dtcadastro').Value := now;
end;


procedure TTelaCadastroMovimentacoes.TipoMovimentoClick(Sender: TObject);
begin
    with DbMov.QDisponivel do
    begin
    close;
    sql.Clear;
    sql.Add('Select qtdisponivel From movimentoestoque Where idproduto =' + (IdProdutoMov.text));
    open;
    DBEdit1.Text := DBEdit3.Text;
    end;
end;

procedure TTelaCadastroMovimentacoes.BuscaProdutoClick(Sender: TObject);
begin
     ProdutoMov1.ShowModal;
     DbMov.QProduto.close;
     DbMov.QProduto.open;
end;

end.
