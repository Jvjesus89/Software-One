unit DbPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,System.IniFiles;

type
  TDbMaster = class(TDataModule)
    Conex�oDb: TFDConnection;
    Dll32bit: TFDPhysPgDriverLink;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DbMaster: TDbMaster;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



end.
