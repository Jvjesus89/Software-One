unit TelaCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client,conectarINI;

type
  TCadastro = class(TForm)
    Usuario: TLabel;
    Senha: TLabel;
    UsuarioCadastro: TDBEdit;
    SenhaUsuario: TDBEdit;
    SuperiorU: TPanel;
    Painel: TPanel;
    CodigoUsuario: TDBEdit;
    Cdusu: TLabel;
    Icones: TImageList;
    ToolBar1: TToolBar;
    Novo: TToolButton;
    Cancelar: TToolButton;
    Salvar: TToolButton;
    Editar: TToolButton;
    Excluir: TToolButton;
    Esquerda: TToolButton;
    Direita: TToolButton;
    DBGrid1: TDBGrid;
    DataCriaçãotext: TLabel;
    DataCadastro: TDBEdit;
    procedure CadastrarUsuarioClick(Sender: TObject);
    procedure BotaocancelarClick(Sender: TObject);



    procedure StatusBarra(Ds: TDataSet);
    procedure NovoClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure EsquerdaClick(Sender: TObject);
    procedure DireitaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro: TCadastro;

implementation

{$R *.dfm}

uses DB;


procedure TCadastro.BotaocancelarClick(Sender: TObject);
begin
        showmessage('Cadastro excluido com sucesso');
end;

procedure TCadastro.CadastrarUsuarioClick(Sender: TObject);
begin

        showmessage('Cadastro cadastrado com sucesso');
end;

procedure TCadastro.CancelarClick(Sender: TObject);
begin
     Banco.Musuario.Cancel;
     StatusBarra(Banco.Musuario);
end;

procedure TCadastro.DireitaClick(Sender: TObject);
begin
       Banco.Musuario.next;
       StatusBarra(Banco.Musuario)
end;

procedure TCadastro.EditarClick(Sender: TObject);
begin
   Banco.Musuario.Edit;
   StatusBarra (Banco.Musuario);
end;

procedure TCadastro.EsquerdaClick(Sender: TObject);
begin
    Banco.Musuario.prior;
    StatusBarra(Banco.Musuario)
end;

procedure TCadastro.ExcluirClick(Sender: TObject);
begin
     if Application.MessageBox(Pchar('Deseja excluir o Usuario?'), 'Confirmação', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then
      begin;
      Banco.Musuario.Delete;
      StatusBarra(Banco.Musuario);
      end;
end;

procedure TCadastro.FormShow(Sender: TObject);
var
ConectarIni : TconectarINI;
begin

   ConectarIni := TconectarINI.Create;
   try
   ConectarIni.DiretorioPadrao := GetCurrentDir;
   ConectarIni.consultarConexaoBanco;
   finally
       ConectarIni.Free;
   end;
end;

procedure TCadastro.NovoClick(Sender: TObject);
begin
   Banco.Musuario.Append;
   StatusBarra(Banco.Musuario);
   Banco.Musuario.FieldByName('dtcadastro').Value := now;
   CodigoUsuario.SetFocus;
end;


procedure TCadastro.SalvarClick(Sender: TObject);
begin
   Banco.Musuario.Post;
   Banco.Musuario.Close;
   Banco.Musuario.open;
   StatusBarra(Banco.Musuario);
end;

procedure TCadastro.StatusBarra(DS: TDataSet);
begin
  Novo.Enabled := not (ds.State in[dsedit , dsinsert]);
  Salvar.Enabled :=(ds.State in[dsedit , dsinsert]);
  Excluir.Enabled := not (ds.State in[dsedit , dsinsert])and not (ds.Isempty);
  Editar.Enabled := not (ds.State in[dsedit , dsinsert])and not (ds.Isempty);
  Cancelar.Enabled := (ds.State in[dsedit , dsinsert]);
  Esquerda.Enabled := not (ds.State in[dsedit , dsinsert])and not (ds.Isempty);
  Direita.Enabled := not (ds.State in[dsedit , dsinsert])and not (ds.Isempty);
  Painel.Enabled := (ds.State in[dsedit , dsinsert]);
end;

end.
