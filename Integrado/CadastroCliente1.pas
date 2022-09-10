unit CadastroCliente1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TConsultaCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    BotaoEditar: TButton;
    BotaoExcluir: TButton;
    Panel3: TPanel;
    BotaoNovo: TButton;
    BotaoBusca: TButton;
    Busca: TEdit;
    ExportarDados: TButton;
    Label1: TLabel;
    procedure BotaoEditarClick(Sender: TObject);
    procedure BotaoNovoClick(Sender: TObject);
    procedure BotaoBuscaClick(Sender: TObject);
    procedure ExportarDadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaCliente: TConsultaCliente;

implementation

{$R *.dfm}

uses DbCliente, TelaCadastoCliente, TelaEdicaoCliente;

procedure TConsultaCliente.BotaoEditarClick(Sender: TObject);
begin
    TelaEdicaoCliente1.showmodal;
end;

procedure TConsultaCliente.BotaoNovoClick(Sender: TObject);
begin
    TelaCadastroCliente1.showmodal;
end;

procedure TConsultaCliente.ExportarDadosClick(Sender: TObject);
var
  sLista: TStringList;
 nCampo: integer;
 cLinha : string;
begin
  sLista := TstringList.Create;
  DbClient.Qcliente.First;
  while not DbClient.Qcliente.EOF do
  begin
    cLinha := '';
    for nCampo :=0 to DbClient.Qcliente.fields.Count-1 do
    cLinha := cLinha + DbClient.Qcliente.Fields[nCampo].DisplayText+';';
    sLista.Add(cLinha);
    DbClient.Qcliente.Next;
  end;
  if FileExists('C:\Sistema\DadosExportados\Clientes.csv') then DeleteFile('C:\Sistema\DadosExportados\Clientes.csv');
  sLista.SaveToFile('C:\Sistema\DadosExportados\Clientes.csv');

end;

procedure TConsultaCliente.BotaoBuscaClick(Sender: TObject);
begin
     with Dbclient.QCliente do
    begin
      close;
      sql.Clear;
      sql.Add('Select * From clientes Where nmcliente like '+#39+'%'+(Busca.Text)+'%'+#39);
      open;
    end;
end;

end.
