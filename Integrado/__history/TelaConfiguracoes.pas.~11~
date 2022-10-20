unit TelaConfiguracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons;

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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaConfig: TTelaConfig;

implementation

{$R *.dfm}

uses TelaCadastroFormaPagamento, Dbconfiguracao, TelaConsultaFormaPagamento,
  TelaCadastroPrazo;

procedure TTelaConfig.BitBtn1Click(Sender: TObject);
begin
    DbConfig.Mforma.Open;
   Formapagamento.Showmodal;
end;

procedure TTelaConfig.BitBtn2Click(Sender: TObject);
begin
    Prazos.ShowModal;
end;

end.
