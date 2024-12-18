unit DB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Phys,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Pool,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Vcl.Mask,
  Vcl.DBCtrls, Vcl.StdCtrls;

type
  TBanco = class(TForm)
    CadUsuario: TFDTable;
    Dsusuario: TDataSource;
    Pusuario: TDataSetProvider;
    Musuario: TClientDataSet;
    Musuarioidusuario: TIntegerField;
    Musuarionmusuario: TWideStringField;
    Musuariosenha: TWideStringField;
    Musuariocdusuario: TIntegerField;
    CadUsuarioidusuario: TIntegerField;
    nmusuario: TWideStringField;
    CadUsuariosenha: TWideStringField;
    CadUsuariocdusuario: TIntegerField;
    CadUsuariodtcadastro: TDateField;
    Musuariodtcadastro: TDateField;
    procedure MusuarioAfterCancel(DataSet: TDataSet);
    procedure MusuarioAfterDelete(DataSet: TDataSet);
    procedure MusuarioAfterPost(DataSet: TDataSet);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Banco: TBanco;

implementation

{$R *.dfm}

uses TelaCadastroUsuario, DbPrincipal;

procedure TBanco.MusuarioAfterCancel(DataSet: TDataSet);
begin
Musuario.CancelUpdates;
end;

procedure TBanco.MusuarioAfterDelete(DataSet: TDataSet);
begin
Musuario.ApplyUpdates(-1);
end;

procedure TBanco.MusuarioAfterPost(DataSet: TDataSet);
begin
Musuario.ApplyUpdates(-1);
end;

end.
