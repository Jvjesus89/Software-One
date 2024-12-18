unit Pdv.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Imaging.jpeg,Pdv.view.page.login,
  Vcl.WinXCtrls,
  Pdv.view.page.pagamentos, Pdv.view.page.IdentifcarCliente,
  Pdv.view.page.ImportarCliente, Pdv.view.abrirCaixa, Vcl.Imaging.pngimage,
  Pdv.model.Caixa, Pdv.view.page.fechamentocaixa;

type
  Tpageprincipal = class(TForm)
    pnlConteiner: TPanel;
    pnlButton: TPanel;
    pnlTitle: TPanel;
    pnlMain: TPanel;
    pnlOperacao: TPanel;
    PnlCancelarOp: TPanel;
    Shape1: TShape;
    btnCancelarOP: TSpeedButton;
    pnlConsultaPreco: TPanel;
    Shape2: TShape;
    btnConsultarPreco: TSpeedButton;
    pnlAbrirCaixa: TPanel;
    Shape3: TShape;
    btnabrircaixa: TSpeedButton;
    pnlCancelarVenda: TPanel;
    Shape4: TShape;
    btnCancelarVenda: TSpeedButton;
    pnlCancelarItem: TPanel;
    Shape5: TShape;
    btnCancelarItem: TSpeedButton;
    pnlMaisFuncoes: TPanel;
    Shape6: TShape;
    btnMaisFuncoes: TSpeedButton;
    pnlGrid: TPanel;
    gridProdutos: TDBGrid;
    pnlTotalCompra: TPanel;
    lblTotalCompra: TLabel;
    Shape7: TShape;
    pnlEditTotalCompra: TPanel;
    lblEditTotalcompra: TLabel;
    pnlSubTotal: TPanel;
    lblSubTotal: TLabel;
    pnlEditSubTotal: TPanel;
    Shape8: TShape;
    lblEditSubTotal: TLabel;
    pnlQuantidade: TPanel;
    lblQuantidade: TLabel;
    pnlEditQuantidade: TPanel;
    Shape9: TShape;
    editQuantidade: TEdit;
    pnlPreco: TPanel;
    lblpreco: TLabel;
    pnlEditPreco: TPanel;
    Shape10: TShape;
    lblEditPreco: TLabel;
    pnlProduto: TPanel;
    lblProduto: TLabel;
    pnlEditProduto: TPanel;
    Shape11: TShape;
    editProduto: TEdit;
    pnlImgProduto: TPanel;
    imagemProduto: TImage;
    pnlMaster: TPanel;
    SplitViewFuncoes: TSplitView;
    pnlSplitView: TPanel;
    pnlDescontoItem: TPanel;
    Shape12: TShape;
    pnlMultplicaItem: TPanel;
    Shape13: TShape;
    pnlFechaVenda: TPanel;
    Shape14: TShape;
    pnlNovaVenda: TPanel;
    Shape15: TShape;
    pnlBtnCpf: TPanel;
    Shape16: TShape;
    pnlSupriSangria: TPanel;
    Shape17: TShape;
    SplitViewPagamentos: TSplitView;
    pnlPg: TPanel;
    PnlInformaCliente: TPanel;
    Shape18: TShape;
    pnlIdentificaCliente: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMaisFuncoesClick(Sender: TObject);
    procedure editProdutoKeyPress(Sender: TObject; var Key: Char);
  private
  Flogin: TPageLogin;
  FF6: integer;
  Fcaixa :Tcaixa;
    procedure MontarBotoes;

    procedure SplitViewAction(Value : TsplitView);
    procedure AjustarCampos;
    procedure VerificaCaixaFechadoOuAberto;
    procedure InformacoesDoOperador;


  public

  end;

var
  pageprincipal: Tpageprincipal;

implementation

{$R *.dfm}


procedure Tpageprincipal.AjustarCampos;
begin
 EditProduto.Text := '';
 lbleditPreco.Caption := FormatCurr('"R$ ",0.00',0);
 EditQuantidade.Text := FormatFloat(',0.000',0);
 lbleditsubtotal.Caption := FormatCurr('"R$ ",0.00',0);
 lblEditTotalcompra.Caption := FormatCurr('"R$ ",0.00',0);
 pnlTitle.SetFocus;
end;

procedure Tpageprincipal.btnMaisFuncoesClick(Sender: TObject);
begin
  SplitViewAction(SplitViewFuncoes)
end;

procedure Tpageprincipal.editProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
        editQuantidade.SetFocus;
end;

procedure Tpageprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Flogin.Free;
end;

procedure Tpageprincipal.FormCreate(Sender: TObject);
begin
  MontarBotoes;
end;

procedure Tpageprincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  lPagamentos :TpagePagamentos;
  lKeyEvent: TKeyEvent;
  I: Integer;
begin
     for I := Pred(pnlMaster.ControlCount) downto 0 do
  begin
    if ((pnlMaster.Controls[I] is TForm) and
    (TForm(pnlMaster.Controls[I]).ModalResult = mrOK)) then
    begin
        if (TForm(pnlMaster.Controls[I]).KeyPreview) then
          lKeyEvent := TForm(pnlMaster.Controls[I]).OnKeyDown;

          if (Assigned(lKeyEvent)) then
          lKeyEvent(Sender, Key, Shift);

        exit;
    end;
  end;


   case key of
      VK_ESCAPE: Self.Close;
      VK_F4 :begin
      if Fcaixa.Aberto then
      begin
         TPageFecharCaixa.New(Self)
         .Embed(pnlMaster)
         .Informacoes(Procedure(Value:tcaixa)
         begin
           Fcaixa.Aberto := Value.Aberto;
           FCaixa.DataHoraFechamento := Value.DataHoraFechamento;
           VerificaCaixaFechadoOuAberto;
         end);
         end;
      end;

       VK_F2 : Begin
       if not Fcaixa.Aberto then
       begin
        TPageAbrirCaixa.New(Self)
        .Embed(pnlMaster)
        .Informacoes(procedure(Value : Tcaixa)
        begin
          Fcaixa.Id := Value.Id;
          Fcaixa.Caixa := Value.caixa;
          Fcaixa.Turno := Value.Turno;
          Fcaixa.Aberto := Value.Aberto;
          Fcaixa.DataHoraAbertura := Value.DataHoraAbertura;
          Fcaixa.SaldoInicial := Value.SaldoInicial;
          VerificaCaixaFechadoOuAberto;
        end);
       end;
       end;
      VK_F6 : begin
      inc(FF6);
      if FF6 > 1 then
      ShowMessage('Cancelar Venda');
      end;
      VK_F5 : ShowMessage('Cancelar Item');
      VK_F12 : btnMaisFuncoesClick(Sender);
      VK_F7 : begin
         lPagamentos := TpagePagamentos.create(Nil);
         lPagamentos.Parent := pnlPg;
         lPagamentos.Show;
         splitViewAction(SplitViewPagamentos) ;
      end;
      VK_F1:begin
           TPageImportarCliente.New(Self)
           .Embed(pnlMaster);
      end;
       VK_F9:begin
           TPageIdentificarCliente.new(Self)
           .IdentifcarCpf
           .Embed(pnlMaster)
           .IdentificarCliente(procedure (aCPF,Acliente :string)
           begin
             if not Acliente.IsEmpty then
                aCliente := 'Cliente: '+ aCliente;
                if not aCPF.IsEmpty then
                aCPF := 'CPF: '+ aCPF;

                if ((not aCliente.IsEmpty) or (not aCPF.IsEmpty))  then
                begin
                  pnlIdentificaCliente.Visible := true;
                  pnlIdentificaCliente.Caption := aCliente + ' ' + aCPF;
                end;
           end);
      end;
   end;
end;

procedure Tpageprincipal.FormShow(Sender: TObject);
begin
   AjustarCampos;
   Tpagelogin.New(Self)
   .Embed(pnlMaster)
   .Informacao(
   procedure (Value : String)
   begin
     if not Assigned(Fcaixa) then
     Fcaixa:= Tcaixa.New;
     Fcaixa.Operador:= value;

     VerificaCaixaFechadoOuAberto;
   end);
   end;

procedure Tpageprincipal.InformacoesDoOperador;
var lCaption,lOperador: String;
begin
   lOperador := 'Caixa ' + Fcaixa.Caixa.Tostring + ' | Operador: ' +  Fcaixa.Operador + '  | Turno: ' + FCaixa.Turno.ToString;

    lCaption := StringOfChar (' ', (255 - (Length(Self.Caption)+ Length(lOperador))));
    Self.Caption := Self.Caption + lCaption + lOperador;
end;

procedure Tpageprincipal.MontarBotoes;
begin
  btnCancelarOP.Caption := 'Cancelar Opera��o' + ''#13'' + ' (F10)';
  btnConsultarPreco.Caption := 'Fechar Caixa' + ''#13'' + ' (F4)';
  btnAbrirCaixa.Caption := 'Abrir Caixa' + ''#13'' + ' (F2)';
  btnCancelarVenda.Caption := 'Cancelar Venda' + ''#13'' + ' (F6)';
  btnCancelarItem.Caption := 'Cancelar Item' + ''#13'' + ' (F5)';
  btnMaisFuncoes.Caption := 'Abrir Menu' + ''#13'' + ' (F12)';
end;

procedure Tpageprincipal.SplitViewAction(Value: TsplitView);
begin
 Value.Opened := not Value.Opened;
end;

procedure Tpageprincipal.VerificaCaixaFechadoOuAberto;
begin
  if not Fcaixa.Aberto then
  begin
  pnlTitle.Caption := 'Caixa Fechado' ;
  AjustarCampos;
  Exit;
  end;
  pnlTitle.Caption := 'Caixa Aberto';

  InformacoesDoOperador;

  AjustarCampos;
end;

end.
