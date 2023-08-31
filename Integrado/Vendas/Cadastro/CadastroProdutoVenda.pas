unit CadastroProdutoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TTelaCadastroProdutoVenda = class(TForm)
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
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure vlunitarioExit(Sender: TObject);
    procedure quantidadeExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Exit(Sender: TObject);

  private
      ConsultaIdProduto : integer;
    procedure ExclusãoMovimentaçãoTemp;
    procedure ConsultarIdProduto;
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
   dbvendas1.TempItemExclusao.close;
   dbvendas1.TempItemExclusao.sql.Clear;
   dbvendas1.TempItemExclusao.sql.add('delete from temp."#vendasItensCampos"');
   dbvendas1.TempItemExclusao.execsql;
   ExclusãoMovimentaçãoTemp;

    DbVendas1.Qproduto.open;
    TelaConsultaProduto.showmodal;
end;

procedure TTelaCadastroProdutoVenda.Button1Exit(Sender: TObject);

begin
    ConsultarIdProduto;

    DbVendas1.Qestoque.Open;
    if QtDisponivel.text = '' then
    begin
        // realizar a inclusão da tabela movimentoestoque para a temp
    DbVendas1.QInseriTabelaTemp.close;
    DbVendas1.QInseriTabelaTemp.sql.clear;
    DbVendas1.QInseriTabelaTemp.sql.add('Insert Into temp.movimentoestoque Select * From movimentoestoque where  idmovimento=(SELECT max(idmovimento ) FROM movimentoestoque Where idproduto =  :Pidproduto)');
    DbVendas1.QInseriTabelaTemp.ParamByName('Pidproduto').AsInteger := ConsultaIdProduto ;
    DbVendas1.QInseriTabelaTemp.execsql;
    end;

        //Trazer quantidade disponivel
   begin
      DbVendas1.Qestoque.close;
      DbVendas1.Qestoque.sql.Clear;
      DbVendas1.Qestoque.sql.add('Select * From temp.movimentoestoque Where idproduto = :Pidproduto');
      DbVendas1.Qestoque.ParamByName('Pidproduto').AsInteger := ConsultaIdProduto ;
      DbVendas1.Qestoque.open;
   end;

end;

procedure TTelaCadastroProdutoVenda.ExclusãoMovimentaçãoTemp;
begin

end;

procedure TTelaCadastroProdutoVenda.Button2Click(Sender: TObject);
//var
//Qdisponivel : Integer;

begin
      ConsultarIdProduto;

      // movimentação na tabela temp
      DbVendas1.QInseriTabelaTemp.close;
      DbVendas1.QInseriTabelaTemp.sql.clear;
      DbVendas1.QInseriTabelaTemp.sql.add('Update temp.movimentoestoque Set qtmovimentada = :Pqtmovimentada, qtdisponivel = :Pqtdisponivel, dtmovimento = :Pdtmovimento, tpmovimento = :Ptpmovimento, dtcadastro = :Pdtcadastro Where idproduto = :Pidproduto');
      DbVendas1.QInseriTabelaTemp.ParamByName('Pidproduto').AsInteger :=  ConsultaIdProduto;
      DbVendas1.QInseriTabelaTemp.ParamByName('Pqtmovimentada').AsInteger := StrToInt (quantidade.Text);
      DbVendas1.QInseriTabelaTemp.ParamByName('Pqtdisponivel').AsInteger :=  StrToInt(Edit1.Text);
      DbVendas1.QInseriTabelaTemp.ParamByName('Pdtmovimento').Asdate :=  now;
      DbVendas1.QInseriTabelaTemp.ParamByName('Ptpmovimento').AsString :=  'Saida';
      DbVendas1.QInseriTabelaTemp.ParamByName('Pdtcadastro').Asdate := now ;
      DbVendas1.QInseriTabelaTemp.ExecSql ;

      // Inserir na tabela #vendasitem
      DbVendas1.QInseriTabelaTemp.close;
      DbVendas1.QInseriTabelaTemp.sql.clear;
      DbVendas1.QInseriTabelaTemp.sql.add('Update temp."#vendasItensCampos"  Set');
      DbVendas1.QInseriTabelaTemp.sql.add('vlunitario = :vlunitario, vlitem = :vlitem, qtitem = :qtitem');
      DbVendas1.QInseriTabelaTemp.ParamByName('vlunitario').AsInteger := StrToInt (vlunitario.Text);
      DbVendas1.QInseriTabelaTemp.ParamByName('vlitem').AsFloat :=  StrToFloat (vlitem.Text);
      DbVendas1.QInseriTabelaTemp.ParamByName('qtitem').AsInteger := StrToInt (quantidade.text);
      DbVendas1.QInseriTabelaTemp.ExecSql ;

      {// realizar a inclusão da tabela vendasitenscampos para a temp.vendasitens
      DbVendas1.QInseriTabelaTemp.close;
      DbVendas1.QInseriTabelaTemp.sql.clear;
      DbVendas1.QInseriTabelaTemp.sql.add('Insert Into temp."#vendasitem"  Select * From temp."#vendasItensCampos"');
      DbVendas1.QInseriTabelaTemp.ParamByName('Pidproduto').AsInteger := ConsultaIdProduto ;
      DbVendas1.QInseriTabelaTemp.execsql;
     }
      DbVendas1.QTempVendasItem.close;
      DbVendas1.QTempVendasItem.open;
      DbVendas1.Qestoque.close;
end;


procedure TTelaCadastroProdutoVenda.Button3Click(Sender: TObject);
begin
    TelaCadastroProdutoVenda.close;
    ExclusãoMovimentaçãoTemp;
end;

procedure TTelaCadastroProdutoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   dbvendas1.TempItemExclusao.close;
   dbvendas1.TempItemExclusao.sql.Clear;
   dbvendas1.TempItemExclusao.sql.add('drop table temp."#vendasItensCampos"');
   dbvendas1.TempItemExclusao.execsql;
   ExclusãoMovimentaçãoTemp;


      dbvendas1.TempItemExclusao.close;
   dbvendas1.TempItemExclusao.sql.Clear;
   dbvendas1.TempItemExclusao.sql.add('delete from temp.movimentoestoque');
   dbvendas1.TempItemExclusao.execsql;
   ExclusãoMovimentaçãoTemp;




end;

procedure TTelaCadastroProdutoVenda.quantidadeExit(Sender: TObject);
var qtitem, vlunit, vltotal : real;
qtdisponivelatual : integer;
begin
   qtitem := StrToInt (quantidade.Text);
   vlunit := StrToFloat (vlunitario.Text);
   vltotal := qtitem * vlunit;
   vlitem.text := formatfloat('###.00',vltotal);

                   //Cadastrar a movimentação no estoque

   DbVendas1.Qestoque.open;

   if (Trim(QtDisponivel.text).IsEmpty) then
    begin
     QtDisponivel.Text := '0';
    end;

     if StrToInt (QtDisponivel.text) >= StrToInt (quantidade.Text) then
    begin
      qtdisponivelatual :=  StrToInt (QtDisponivel.Text) - StrToInt (quantidade.Text) ;
      Edit1.Text := IntToStr (qtdisponivelatual);
    end;

    if StrToInt (QtDisponivel.text) < StrToInt(quantidade.Text) then
    begin
    ShowMessage('Produto sem quantidade em estoque');
    end;
end;

procedure TTelaCadastroProdutoVenda.vlunitarioExit(Sender: TObject);
var qtitem, vlunit, vltotal : real;
begin
   if quantidade.Text <> '' then
   begin
   qtitem := StrToInt (quantidade.Text);
   vlunit := StrToFloat (vlunitario.Text);
   vltotal := qtitem * vlunit;
   vlitem.text := formatfloat('###.00',vltotal);
   end;
end;

procedure TTelaCadastroProdutoVenda.ConsultarIdProduto;
begin
     DbVendas1.QConsultaTabelaTemp.close;
     DbVendas1.QConsultaTabelaTemp.sql.clear;
     DbVendas1.QConsultaTabelaTemp.sql.add('Select idproduto from temp."#vendasItensCampos" ');
     DbVendas1.QConsultaTabelaTemp.open;
     ConsultaIdProduto := DbVendas1.QConsultaTabelaTemp.FieldbyName('idproduto').AsInteger  ;
end;

end.
