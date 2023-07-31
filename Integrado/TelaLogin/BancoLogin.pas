unit BancoLogin;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TBancoUsuario = class(TDataModule)
    DsLogin: TDataSource;
    TabelaUsuario: TFDTable;
    TabelaUsuarionmusuario: TWideStringField;
    TabelaUsuariosenha: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BancoUsuario: TBancoUsuario;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DbPrincipal;

{$R *.dfm}

end.
