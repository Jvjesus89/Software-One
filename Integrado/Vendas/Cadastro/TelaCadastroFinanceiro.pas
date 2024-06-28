unit TelaCadastroFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Consultas;

type
  TCadastroAreceber = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    Areceber: TFDQuery;
    PAreceber: TDataSetProvider;
    MAreceber: TClientDataSet;
    DsAreceber: TDataSource;
    Areceberidareceber: TFDAutoIncField;
    Areceberidcliente: TIntegerField;
    Arecebernmcliente: TWideStringField;
    Areceberidformapagamento: TIntegerField;
    Arecebernmformapagamento: TWideStringField;
    Arecebervltitulo: TSingleField;
    Arecebernrtitulo: TIntegerField;
    Areceberdtcadastro: TDateField;
    Areceberdtvencimento: TDateField;
    Areceberidorigem: TIntegerField;
    Areceberdtbaixa: TDateField;
    Areceberidcontabancaria: TIntegerField;
    MAreceberidareceber: TAutoIncField;
    MAreceberidcliente: TIntegerField;
    MArecebernmcliente: TWideStringField;
    MAreceberidformapagamento: TIntegerField;
    MArecebernmformapagamento: TWideStringField;
    MArecebervltitulo: TSingleField;
    MArecebernrtitulo: TIntegerField;
    MAreceberdtcadastro: TDateField;
    MAreceberdtvencimento: TDateField;
    MAreceberidorigem: TIntegerField;
    MAreceberdtbaixa: TDateField;
    MAreceberidcontabancaria: TIntegerField;
    Valor: TDBEdit;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    nrdocuemnto: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroAreceber: TCadastroAreceber;

implementation

{$R *.dfm}

uses  TelaConsultaFormaPagamentoVendas, TelaCadastroVenda, CadastroProdutoVenda;

procedure TCadastroAreceber.Button1Click(Sender: TObject);
begin
  CadastroAreceber.MAreceber.Cancel;
  self.Close;
end;

procedure TCadastroAreceber.Button2Click(Sender: TObject);
var
  ConsultandoIdVenda : TconsultaIdVenda;
  consultaNrVenda : TConsultaNrVenda;
  idvenda : integer;
begin
   // consulta idvenda
   ConsultandoIdVenda := TconsultaIdVenda.Create;
   try
   ConsultandoIdVenda.ConsultandoIdVenda;
   idvenda := ConsultandoIdVenda.idvenda;
   finally
      ConsultandoIdVenda.Free;
  end;

    // consulta Nrdocumento
   consultaNrVenda := TConsultaNrVenda.Create;
   try
   consultaNrVenda.ConsultandoNrDocumento;
   nrdocuemnto := consultaNrVenda.nrdocumento;
   finally
      consultaNrVenda.Free;
  end;

  try
   CadastroAreceber.MAreceber.FieldByName('vltitulo').AsInteger := StrToInt(Valor.Text) ;
   CadastroAreceber.MAreceber.FieldByName('dtvencimento').AsDatetime := DateTimePicker1.Date;
   CadastroAreceber.MAreceber.FieldByName('dtcadastro').AsDatetime := now;
   CadastroAreceber.MAreceber.FieldByName('idorigem').AsInteger := idvenda + 1 ;
   CadastroAreceber.Mareceber.FieldByName('nrtitulo').AsInteger := nrdocuemnto;
   CadastroAreceber.MAreceber.Post;
   CadastroAreceber.close;
  except
    Mareceber.Cancel;
    raise;
  end;


end;

procedure TCadastroAreceber.Button3Click(Sender: TObject);
begin
    ConsultaFormaPagamento.showmodal;
end;

procedure TCadastroAreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     CadastroAreceber.MAreceber.Cancel;
end;

procedure TCadastroAreceber.FormShow(Sender: TObject);
var
  Total: Double;
begin
    DateTimePicker1.date := now;

  Total := 0;
   TelaCadastroProdutoVenda.MVendasItem.First;
  while not  TelaCadastroProdutoVenda.MVendasItem.Eof do
  begin
    Total := Total +  TelaCadastroProdutoVenda.MVendasItem.FieldByName('vlitem').AsFloat;
     TelaCadastroProdutoVenda.MVendasItem.Next;
  end;
  Valor.text := FloatToStr(Total);
end;

end.
