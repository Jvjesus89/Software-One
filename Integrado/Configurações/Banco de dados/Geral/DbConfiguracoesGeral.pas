unit DbConfiguracoesGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls;

type
  TDbGeral = class(TForm)
    Label2: TLabel;
    Diretorios: TFDTable;
    Diretoriosidconfiguracao: TIntegerField;
    Diretoriosnmconfiguracao: TWideStringField;
    Diretoriosdsvalorantigo: TWideStringField;
    Diretoriosdsvalornovo: TWideStringField;
    Diretoriosdtcadastro: TDateField;
    DsDiretorios: TDataSource;
    PDiretorios: TDataSetProvider;
    Mdiretorios: TClientDataSet;
    Mdiretoriosidconfiguracao: TIntegerField;
    Mdiretoriosnmconfiguracao: TWideStringField;
    Mdiretoriosdsvalorantigo: TWideStringField;
    Mdiretoriosdsvalornovo: TWideStringField;
    Mdiretoriosdtcadastro: TDateField;
    InsrerirDireotiros: TFDQuery;
    InsrerirDireotirosidconfiguracao: TIntegerField;
    InsrerirDireotirosnmconfiguracao: TWideStringField;
    InsrerirDireotirosdsvalorantigo: TWideStringField;
    InsrerirDireotirosdsvalornovo: TWideStringField;
    InsrerirDireotirosdtcadastro: TDateField;
    FDUpdateSQL2: TFDUpdateSQL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbGeral: TDbGeral;

implementation

{$R *.dfm}

uses DbPrincipal;



end.
