unit TelaConfiguracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.CategoryButtons, Vcl.ExtCtrls,conectarINI,Data.DB,
  TelaCadastroFamiliaProduto;

type
  TTelaConfig = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    btnCadastraFamiliaProduto: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCadastraFamiliaProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaConfig: TTelaConfig;

implementation

{$R *.dfm}

uses TelaCadastroFormaPagamento, DbConfiguracaoFinanceiro, TelaCadastroPrazo,
  TelaConsultaFormaPagamento, TelaConsultaBanco, TelaCadastroBanco,
  TelaConsultaAgencia,TelaConsultaContaCorrente;


procedure TTelaConfig.BitBtn1Click(Sender: TObject);
begin
    DbConfigFin.Mforma.Open;
   Formapagamento.Showmodal;
end;

procedure TTelaConfig.BitBtn2Click(Sender: TObject);
begin
    DbConfigFin.Qprazo.Open;
    Prazos.ShowModal;
end;

procedure TTelaConfig.BitBtn7Click(Sender: TObject);
begin
    DbConfigFin.QContaCorrente.Open;
   ConsultaContaCorrente.ShowModal;

end;

procedure TTelaConfig.BitBtn8Click(Sender: TObject);
begin
     DbConfigFin.Qbanco.Open;
    ConsultaBanco.showmodal;
end;

procedure TTelaConfig.BitBtn9Click(Sender: TObject);
begin
    DbConfigFin.QAgencia.open;
    ConsultaAgencia.showmodal;
end;

procedure TTelaConfig.btnCadastraFamiliaProdutoClick(Sender: TObject);
var cadastroFamilia : TCaadastroFamilia;
begin
  cadastroFamilia := TCaadastroFamilia.Create(self);
  try
    cadastroFamilia.showModal;
  finally
    cadastroFamilia.Free;
  end;
end;

procedure TTelaConfig.FormShow(Sender: TObject);
var
ConectarIni : TconectarINI;
begin

   ConectarIni := TconectarINI.Create;
   try
   ConectarIni.DiretorioPadrao := GetCurrentDir;
   ConectarIni.consultarConexaoBanco;
   finally
       ConectarIni.Free;
   end;

end;

end.
