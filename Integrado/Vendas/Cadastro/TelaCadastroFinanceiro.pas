unit TelaCadastroFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TCadastroAreceber = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroAreceber: TCadastroAreceber;

implementation

{$R *.dfm}

uses DBvendas, TelaConsultaFormaPagamentoVendas, TelaCadastroVenda;

procedure TCadastroAreceber.Button2Click(Sender: TObject);
begin

   // inserindo dados na tabela areceber campo temp
   DbVendas1.QInseriTabelaTemp.close;
   DbVendas1.QInseriTabelaTemp.sql.clear;
   DbVendas1.QInseriTabelaTemp.sql.add('Update temp."#areceberCampo" Set  vltitulo = :Pvltitulo, dtvencimento = :Pdtvencimento');
   DbVendas1.QInseriTabelaTemp.Parambyname('Pvltitulo').Asfloat := StrToFloat(DBEdit1.text);
   DbVendas1.QInseriTabelaTemp.Parambyname('Pdtvencimento').Asdate := DateTimePicker1.date;
   DbVendas1.QInseriTabelaTemp.ExecSQL;

   // inserindo na tabela temp.vendas os dados da tabela   temp.#vendasitem
      DbVendas1.QInseriTabelaTemp.close;
      DbVendas1.QInseriTabelaTemp.sql.clear;
      DbVendas1.QInseriTabelaTemp.sql.add('Insert Into temp."#areceber"  Select * From temp."#areceberCampo"');
      DbVendas1.QInseriTabelaTemp.execsql;


   CadastroAreceber.close;

   DbVendas1.QarecebrTemp.Close;
   DbVendas1.QarecebrTemp.Open;
end;

procedure TCadastroAreceber.Button3Click(Sender: TObject);
begin
     DbVendas1.QCriaTabelaTemp.close;
     DbVendas1.QCriaTabelaTemp.sql.Clear;
     DbVendas1.QCriaTabelaTemp.sql.Add('CREATE TABLE IF NOT EXISTS temp."#areceberCampo"');
     DbVendas1.QCriaTabelaTemp.sql.Add('(idareceber integer NOT NULL DEFAULT nextval($$temp."#areceber_idareceber_seq"$$::regclass),idcliente integer,nmcliente character varying(100) COLLATE pg_catalog."default" ,idformapagamento integer,');
     DbVendas1.QCriaTabelaTemp.sql.Add('nmformapagamento character varying(50) COLLATE pg_catalog."default" ,vltitulo real ,nrtitulo integer ,dtcadastro date,dtvencimento date,idorigem integer,dtbaixa date,idcontabancaria integer)');
     DbVendas1.QCriaTabelaTemp.ExecSQl;

     DbVendas1.QFormaPagamento.open;
    ConsultaFormaPagamento.showmodal;
end;

procedure TCadastroAreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DbVendas1.QCriaTabelaTemp.close;
     DbVendas1.QCriaTabelaTemp.sql.Clear;
     DbVendas1.QCriaTabelaTemp.sql.Add('Drop Table IF EXISTS temp."#areceberCampo"');
     DbVendas1.QCriaTabelaTemp.ExecSQl;
end;

procedure TCadastroAreceber.FormShow(Sender: TObject);
begin
    DateTimePicker1.date := now;
    DBEdit1.text := TelaCadastroVendas.Valor.text  ;
end;

end.
