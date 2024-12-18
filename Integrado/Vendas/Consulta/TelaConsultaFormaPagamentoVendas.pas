unit TelaConsultaFormaPagamentoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls;

type
  TConsultaFormaPagamento = class(TForm)
    DBGrid1: TDBGrid;
    QFormaPagamento: TFDQuery;
    QFormaPagamentoidformapagamento: TIntegerField;
    QFormaPagamentonmformapagamento: TWideStringField;
    QFormaPagamentodtcadastro: TDateField;
    QFormaPagamentocdformapagamento: TIntegerField;
    DsQFormaPagamento: TDataSource;
    Panel1: TPanel;
    Busca: TEdit;
    Button2: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
   procedure SelecionaFormaPagamento;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaFormaPagamento: TConsultaFormaPagamento;

implementation

{$R *.dfm}

uses DBvendas, TelaCadastroFinanceiro;

procedure TConsultaFormaPagamento.Button1Click(Sender: TObject);
begin
      QFormaPagamento.close;
      QFormaPagamento.sql.Clear;
      QFormaPagamento.sql.Add('Select * From formapagamento Where nmformapagamento like '+#39+'%'+UpperCase(Busca.Text)+'%'+#39);
      QFormaPagamento.open;
end;

procedure TConsultaFormaPagamento.DBGrid1DblClick(Sender: TObject);
begin
    SelecionaFormaPagamento;
 end;

procedure TConsultaFormaPagamento.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
   VK_return : begin
   SelecionaFormaPagamento;
   end;
  end;
end;

procedure TConsultaFormaPagamento.SelecionaFormaPagamento;
begin
   try
    CadastroAreceber.MAreceber.FieldByName('idformapagamento').AsInteger := QFormaPagamento.FieldByName('idformapagamento').AsInteger ;
    CadastroAreceber.MAreceber.FieldByName('nmformapagamento').AsString := QFormaPagamento.FieldByName('nmformapagamento').AsString ;
    ConsultaFormaPagamento.Close;
     except
     on E: Exception do
      ShowMessage('Erro ao Salvar o produto: ' + E.Message);
     end;
end;

end.
