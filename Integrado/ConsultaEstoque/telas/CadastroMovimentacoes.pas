unit CadastroMovimentacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ComCtrls;

type
  TTelaCadastroMovimentacoes = class(TForm)
    Label1: TLabel;
    IdProdutoMov: TDBEdit;
    Label2: TLabel;
    QtdeMovimentada: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    TipoMovimento: TDBComboBox;
    Label6: TLabel;
    Button1: TButton;
    Label7: TLabel;
    Label8: TLabel;
    NomeProdutoMov: TDBEdit;
    CodigoProdutoMov: TDBEdit;
    QtdeDisponivel: TDBEdit;
    Button2: TButton;
    DtMovimento: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure BuscaProdutoClick(Sender: TObject);
    procedure TipoMovimentoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure QtdeMovimentadaExit(Sender: TObject);
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
       DbMov.QInseriMov.Close;
       DbMov.QInseriMov.Sql.Clear;
       DbMov.QInseriMov.Sql.Add('INSERT INTO public.movimentoestoque(idproduto, qtmovimentada, qtdisponivel, dtmovimento, tpmovimento, dtcadastro)');
       DbMov.QInseriMov.Sql.Add('	VALUES (:Pidproduto, :Pqtmovimentada, :Pqtdisponivel, :Pdtmovimento, :Ptpmovimento, :Pdtcadastro);');
       DbMov.QInseriMov.ParamByName('Pidproduto').AsInteger := StrToInt(idprodutoMov.Text);
       DbMov.QInseriMov.ParamByName('Pqtmovimentada').AsInteger := StrToInt(QtdeMovimentada.Text);
       DbMov.QInseriMov.ParamByName('Pqtdisponivel').AsInteger := StrToInt(QtdeDisponivel.Text);
       DbMov.QInseriMov.ParamByName('Pdtmovimento').AsDate := DtMovimento.Date;
       DbMov.QInseriMov.ParamByName('Ptpmovimento').AsString := (TipoMovimento.Text);
       DbMov.QInseriMov.ParamByName('Pdtcadastro').AsDateTime := now;
       DbMov.QInseriMov.ExecSql;

       ShowMessage('Movimento Cadastro');
       TelaCadastroMovimentacoes.Close;
       begin

       end;
end;

procedure TTelaCadastroMovimentacoes.Button2Click(Sender: TObject);
begin

      TelaCadastroMovimentacoes.Close;
end;

procedure TTelaCadastroMovimentacoes.QtdeMovimentadaExit(Sender: TObject);
   var qtdisponivel : integer;
TpMovimento : String;
begin
TpMovimento := TipoMovimento.Text;
   if (Trim(DBEdit3.Text).IsEmpty) then
   begin
   DBEdit3.Text := '0';
    if TpMovimento = 'Entrada' then
    qtdisponivel :=  StrToInt (DBEdit3.Text) +  StrToInt (QtdeMovimentada.Text);
    QtdeDisponivel.Text :=  IntToStr (qtdisponivel);
    if TpMovimento = 'Saida' then
    qtdisponivel :=  StrToInt (DBEdit3.Text) -  StrToInt (QtdeMovimentada.Text);
    QtdeDisponivel.Text :=  IntToStr (qtdisponivel);
   end
   else
   begin
    if TpMovimento = 'Entrada' then
    qtdisponivel :=  StrToInt (DBEdit3.Text) +  StrToInt (QtdeMovimentada.Text);
    QtdeDisponivel.Text :=  IntToStr (qtdisponivel);
    if TpMovimento = 'Saida' then
    qtdisponivel :=  StrToInt (DBEdit3.Text) -  StrToInt (QtdeMovimentada.Text);
    QtdeDisponivel.Text :=  IntToStr (qtdisponivel);
   end;
end;

procedure TTelaCadastroMovimentacoes.TipoMovimentoClick(Sender: TObject);
begin

    begin
    DbMov.QDisponivel.close;
    DbMov.QDisponivel.sql.Clear;
    DbMov.QDisponivel.sql.Add('Select qtdisponivel From movimentoestoque where  idmovimento=(SELECT max(idmovimento ) FROM movimentoestoque Where idproduto =  :Pidproduto)');
    DbMov.QDisponivel.ParamByName('Pidproduto').AsInteger := StrToInt (IdProdutoMov.text);
    DbMov.QDisponivel.open;
    QtdeDisponivel.Text := DBEdit3.Text;
    end;
end;

procedure TTelaCadastroMovimentacoes.BuscaProdutoClick(Sender: TObject);
begin
     ProdutoMov1.ShowModal;
     DbMov.QProduto.close;
     DbMov.QProduto.open;
end;

end.
