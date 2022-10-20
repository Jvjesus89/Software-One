unit TelaConfiguracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.CategoryButtons, Vcl.ExtCtrls;

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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
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
  TelaConsultaAgencia,TelaConsultaContaCorrente,
  TelaOpções;


procedure TTelaConfig.BitBtn1Click(Sender: TObject);
begin
    DbConfigFin.Mforma.Open;
   Formapagamento.Showmodal;
end;

procedure TTelaConfig.BitBtn2Click(Sender: TObject);
begin
    Prazos.ShowModal;
end;

procedure TTelaConfig.BitBtn6Click(Sender: TObject);
begin
   Opções.showmodal;
end;

procedure TTelaConfig.BitBtn7Click(Sender: TObject);
begin
   ConsultaContaCorrente.ShowModal;
   DbConfigFin.QContaCorrente.Open;
end;

procedure TTelaConfig.BitBtn8Click(Sender: TObject);
begin
    ConsultaBanco.showmodal;
     DbConfigFin.Qbanco.Open;
end;

procedure TTelaConfig.BitBtn9Click(Sender: TObject);
begin
    DbConfigFin.QAgencia.open;
    ConsultaAgencia.showmodal;
end;

end.
