unit TelaConsultaClienteVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TTelaConsultaCliente = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Qcliente: TFDQuery;
    Qclienteidcliente: TIntegerField;
    Qclientenmcliente: TWideStringField;
    Qclientecpf_cnpj: TWideStringField;
    Qclientenmendereco: TWideStringField;
    Qclientenrendere�o: TWideStringField;
    Qclientecomplemento: TWideStringField;
    Qclientedtcadastro: TDateField;
    Qclientenmbairro: TWideStringField;
    Qclientenmcidade: TWideStringField;
    Qclientenmestado: TWideStringField;
    Qclientecdcliente: TWideStringField;
    DsQcliente: TDataSource;
    Panel1: TPanel;
    Busca: TEdit;
    btnBusca: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaConsultaCliente: TTelaConsultaCliente;

implementation

{$R *.dfm}

uses DBvendas, TelaCadastroVenda;


procedure TTelaConsultaCliente.btnBuscaClick(Sender: TObject);
begin
    with Qcliente do
    begin
      close;
      sql.Clear;
      sql.Add('Select * From clientes Where nmcliente like '+#39+'%'+(Busca.Text)+'%'+#39);
      open;
    end;
end;

procedure TTelaConsultaCliente.DBGrid1DblClick(Sender: TObject);
begin
  try
    TelaCadastroVendas.MVenda.FieldByName('idcliente').AsInteger := Qcliente.FieldByName('idcliente').AsInteger ;
    TelaCadastroVendas.MVenda.FieldByName('nmcliente').AsString := Qcliente.FieldByName('nmcliente').AsString ;
    self.Close;
  except
    TelaCadastroVendas.MVenda.Cancel;
    raise;
  end;
end;

end.
