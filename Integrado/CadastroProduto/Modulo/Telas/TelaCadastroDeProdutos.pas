unit TelaCadastroDeProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,CadProd,
  Vcl.Buttons, TelaComposicaoProdutos,TelaCadastroDeLotes;

type
  TTelaCadastroProduto = class(TForm)
    Cod: TLabel;
    Valor: TLabel;
    Nome: TLabel;
    Familia: TLabel;
    Image1: TImage;
    CdProduto: TDBEdit;
    NmProduto: TDBEdit;
    VlUnitario: TDBEdit;
    Button1: TButton;
    Bativo: TDBCheckBox;
    Button2: TButton;
    DsProduto: TDataSource;
    Pproduto: TDataSetProvider;
    Mproduto: TClientDataSet;
    Mprodutonmproduto: TWideStringField;
    Mprodutocdproduto: TWideStringField;
    Mprodutoidfamiliaproduto: TIntegerField;
    Mprodutovlproduto: TSingleField;
    Mprodutostproduto: TBooleanField;
    Mprodutodtcadastro: TDateField;
    Produto: TFDQuery;
    IntegerField7: TIntegerField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    IntegerField8: TIntegerField;
    BooleanField4: TBooleanField;
    DateField4: TDateField;
    SingleField1: TSingleField;
    Produtoidusuario: TIntegerField;
    Produtovlcusto: TSingleField;
    Mprodutoidusuario: TIntegerField;
    Mprodutovlcusto: TSingleField;
    DsConsultaCodigo: TDataSource;
    QConsultaCodigo: TFDQuery;
    QConsultaCodigocdproduto: TWideStringField;
    edtCusto: TDBEdit;
    lblCusto: TLabel;
    btnComposicao: TSpeedButton;
    ConsultaUltimoIdProduto: TFDQuery;
    btnLote: TSpeedButton;
    BLote: TDBCheckBox;
    Produtodtultalter: TDateField;
    Produtoidusuarioultalter: TIntegerField;
    Mprodutodtultalter: TDateField;
    Mprodutoidusuarioultalter: TIntegerField;
    Produtotrablote: TBooleanField;
    Mprodutotrablote: TBooleanField;
    ConsultaUltimoIdProdutoidproduto: TFDAutoIncField;
    DsFamiliaProduto: TDataSource;
    FamiliaProduto: TFDQuery;
    FamiliaProdutoidprodutosfamilia: TFDAutoIncField;
    FamiliaProdutonmfamiliaproduto: TWideStringField;
    FamiliaProdutocdfamiliaproduto: TIntegerField;
    CbFamiliaProduto: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NmProdutoExit(Sender: TObject);
    procedure btnComposicaoClick(Sender: TObject);
    procedure btnLoteClick(Sender: TObject);
  private
    Procedure ConsultaLote;
    { Private declarations }
  public
    CadastrarEditar : integer;
    idproduto : integer;
    idusuario : integer;
    { Public declarations }
  end;

var
  TelaCadastroProduto: TTelaCadastroProduto;

implementation

{$R *.dfm}

procedure TTelaCadastroProduto.btnComposicaoClick(Sender: TObject);
var composicao :TProdutosComp;
begin
   if idproduto = 0 then
   begin
    ShowMessage('Salve o Produto Primeiro');
   end;

   if idproduto <> 0 then
   begin
   composicao := TProdutosComp.Create(Self);
    try
    composicao.Idproduto := idproduto;
    composicao.idusuario := idusuario;
    composicao.ShowModal;
    except
    composicao.Free;
    raise;
    end;
   end;
end;

procedure TTelaCadastroProduto.btnLoteClick(Sender: TObject);
var Lote :TCadastroLote;
begin
   if idproduto = 0 then
   begin
    ShowMessage('Salve o Produto Primeiro');
   end;

   if idproduto <> 0 then
   begin
   Lote := TCadastroLote.Create(Self);
    try
    Lote.Idproduto := idproduto;
    Lote.idusuario := idusuario;
    Lote.ShowModal;
    finally
    Lote.Free;
    end;
   end;
end;

procedure TTelaCadastroProduto.Button1Click(Sender: TObject);
begin
       //cadastrar
       if CadastrarEditar = 0 then
       begin
       Mproduto.FieldByname('nmproduto').AsString :=  UpperCase(NmProduto.Text);
       Mproduto.FieldByname('cdproduto').AsInteger :=  StrToInt (CdProduto.Text);
       Mproduto.FieldByname('idfamiliaproduto').AsInteger := (CbFamiliaProduto.KeyValue);
       Mproduto.FieldByname('vlproduto').AsFloat :=  StrToFloat (VlUnitario.Text);
       Mproduto.FieldByname('stproduto').AsBoolean  := (Bativo.Checked);
       Mproduto.FieldByname('dtcadastro').AsdateTime := now;
       Mproduto.FieldByname('idusuario').AsInteger := idusuario;
       Mproduto.FieldByname('vlcusto').AsFloat := StrToFloat (edtCusto.Text);
       Mproduto.FieldByname('trablote').AsBoolean  := BLote.Checked;
       Mproduto.post;

       try
       Mproduto.ApplyUpdates(0);
       ConsultaUltimoIdProduto.Close;
       ConsultaUltimoIdProduto.Open;
       idproduto := ConsultaUltimoIdProduto.FieldByName('idproduto').AsInteger;
       ShowMessage('cadastro realizado');
       except
        on E: Exception do
       ShowMessage('Erro ao ativar ClientDataSet: ' + E.Message);
       end;
       end;

       // editar
       if CadastrarEditar = 1 then
       begin
       Mproduto.FieldByname('nmproduto').AsString :=  UpperCase(NmProduto.Text);
       Mproduto.FieldByname('cdproduto').AsInteger :=  StrToInt (CdProduto.Text);
       Mproduto.FieldByname('idfamiliaproduto').AsInteger := (CbFamiliaProduto.KeyValue);
       Mproduto.FieldByname('vlproduto').AsFloat :=  StrToFloat (VlUnitario.Text);
       Mproduto.FieldByname('stproduto').AsBoolean  := (Bativo.Checked);
       Mproduto.FieldByname('vlcusto').AsFloat := StrToFloat (edtCusto.Text);
       Mproduto.FieldByname('dtultalter').AsdateTime := now;
       Mproduto.FieldByname('idusuarioultalter').AsInteger := idusuario;
       Mproduto.FieldByname('trablote').AsBoolean  := BLote.Checked;
       Mproduto.post;
       try
       Mproduto.ApplyUpdates(0);
       ShowMessage('cadastro Editado');
       except
       on E: Exception do
       ShowMessage('Erro ao ativar ClientDataSet: ' + E.Message);
       end;
       end;

      self.close;
      Mproduto.Close;
end;

procedure TTelaCadastroProduto.Button2Click(Sender: TObject);
begin
      Mproduto.Cancel;
      QConsultaCodigo.Close;
end;

procedure TTelaCadastroProduto.ConsultaLote;
begin
      if BLote.Checked then
      begin
      btnLote.Visible := true;
      end else
      btnLote.Visible := false
end;

procedure TTelaCadastroProduto.FormShow(Sender: TObject);
var codigoproduto : integer;
begin
       //Cadastrar
       if CadastrarEditar = 0 then
       begin
       Mproduto.Open;
       Mproduto.Append;
       Bativo.checked := true;
       //consultar ultimo c�digo de produtos
        QConsultaCodigo.sql.clear;
        QConsultaCodigo.sql.add('select cdproduto from produto order by idproduto desc limit 1');
        QConsultaCodigo.Open;
        codigoproduto := QConsultaCodigo.FieldByName('cdproduto').AsInteger ;
        CdProduto.Text :=  IntToStr(codigoproduto + 1);

       end;

       //editar
       if CadastrarEditar = 1 then
       begin
       Produto.Close;
       Produto.sql.Clear;
       Produto.SQL.Add('select * from produto Where idproduto = :Pidproduto');
       Produto.ParamByName('Pidproduto').AsInteger := idproduto;
       Produto.Open;

       // Abrir a tabela de fam�lias e vincular ao TDBLookupComboBox
       FamiliaProduto.Open;
       CbFamiliaProduto.KeyValue := Produto.FieldByName('idfamiliaproduto').AsInteger;

       CdProduto.text := Produto.FieldByName('cdproduto').AsString;
       Mproduto.Open;
       Mproduto.Edit;
       end;


      ConsultaLote;
end;

procedure TTelaCadastroProduto.NmProdutoExit(Sender: TObject);
begin
    NmProduto.Text := UpperCase(NmProduto.Text);
end;

end.
