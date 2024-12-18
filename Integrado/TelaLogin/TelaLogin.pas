unit TelaLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,System.IniFiles, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TTelaLoginU = class(TForm)
    Usuario: TLabel;
    Senha: TLabel;
    Texto1: TLabel;
    Button2: TButton;
    NomeUsuario: TEdit;
    SenhaCampo: TEdit;
    Panel1: TPanel;
    PrimeiroAcesso: TButton;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DsLogin: TDataSource;
    TabelaUsuario: TFDTable;
    TabelaUsuarionmusuario: TWideStringField;
    TabelaUsuariosenha: TWideStringField;
    TabelaUsuarioidusuario: TFDAutoIncField;
    procedure Button2Click(Sender: TObject);
    procedure PrimeiroAcessoClick(Sender: TObject);
    procedure SenhaCampoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaLoginU: TTelaLoginU;

implementation

{$R *.dfm}

uses  EditarConexao, DbPrincipal, TelaPrincipal;

procedure TTelaLoginU.Button2Click(Sender: TObject);
  begin
      TabelaUsuario.open;
      if TabelaUsuario.Locate('nmusuario', NomeUsuario.Text) then
       begin
       // validar login e senha
       if (TabelaUsuario.FieldByName('nmusuario').AsString = NomeUsuario.Text) and
          (TabelaUsuario.FieldByName('senha').AsString = SenhaCampo.Text) then
        begin
          HubPrin.idusuario :=  TabelaUsuario.FieldByName('idusuario').AsInteger;
          TelaLoginU.Close;
          HubPrin.SpeedButton1.visible := true;
          HubPrin.FormStyle := fsMDIForm;
          HubPrin.SplitViewHub.Opened := true;
          HubPrin.Visible := true;
        end
        else
        begin
        ShowMessage('Usuario ou Senha invalidos')
        end;
        end ;
  end;

procedure TTelaLoginU.PrimeiroAcessoClick(Sender: TObject);
begin
    AlterarDB.Show;
end;

procedure TTelaLoginU.SenhaCampoKeyPress(Sender: TObject; var Key: Char);
begin
        if Key = #13 then
        Button2.Click;
end;

end.
