unit CadastroVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCadastroDeVendas = class(TForm)
    Panel1: TPanel;
    BotaoNovo: TButton;
    BotaoExcluir: TButton;
    BotaoEditar: TButton;
    ExportarDados: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Button2: TButton;
    Busca: TEdit;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure BotaoNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BotaoExcluirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroDeVendas: TCadastroDeVendas;

implementation

{$R *.dfm}

uses DBvendas, TelaCadastroVenda, ImportaXmlVendas;





procedure TCadastroDeVendas.BotaoExcluirClick(Sender: TObject);
begin
   DbVendas1.Mvendas.open;
   DbVendas1.Qvendas.delete;
end;

procedure TCadastroDeVendas.BotaoNovoClick(Sender: TObject);
begin
    TelaCadastroVendas.showmodal;
     DbVendas1.Mvendas.open;
     DbVendas1.Mvendasitem.open;;
     DbVendas1.MTempItem.open;
     DbVendas1.Mvendas.Append;
     DbVendas1.Mvendasitem.Append;;
     DbVendas1.MTempItem.Append;
end;

procedure TCadastroDeVendas.Button1Click(Sender: TObject);
begin
   XML.showmodal;
end;

procedure TCadastroDeVendas.Button2Click(Sender: TObject);
begin

    if Busca.Text = '' then
    with DbVendas1.Qvendas do
    begin
      close ;
      sql.Clear;
      sql.Add('Select * From vendas');
      open;
    end
    else
     with DbVendas1.Qvendas do
    begin
      close ;
      sql.Clear;
      sql.Add('Select * From vendas Where nrdocumento = '+(Busca.Text));
      open;
    end;;


end;

procedure TCadastroDeVendas.FormShow(Sender: TObject);
begin
 DbVendas1.Qvendas.Open;
end;

end.
