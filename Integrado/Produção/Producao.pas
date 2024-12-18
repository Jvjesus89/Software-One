unit Producao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, CadastraProducao,Forms;

type
  TProducao = class(TForm)
    pnlMaster: TPanel;
    Panel1: TPanel;
    Buscar: TPanel;
    Shape4: TShape;
    pnlBusca: TPanel;
    edtBuscaNumero: TEdit;
    Consultar: TPanel;
    Shape1: TShape;
    btnConsultas: TButton;
    Cadastrar: TPanel;
    Shape2: TShape;
    btnCadastrar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaProducao: TProducao;

implementation

{$R *.dfm}


{ TProducao }

procedure TProducao.btnCadastrarClick(Sender: TObject);
var cadastroProducao : TCadastroProducao;
begin
    cadastroProducao := TCadastroProducao.Create(Application);
  try
    cadastroProducao.FormStyle := fsMDIChild;
    cadastroProducao.Position := poMainFormCenter;
    cadastroProducao.Show;
  except
    cadastroProducao.Free;
    raise;
  end;
end;

procedure TProducao.FormClose(Sender: TObject; var Action: TCloseAction);
   var fechar :TFormAbreFecha;
begin
   fechar := TFormAbreFecha.Create(self);
   try
   fechar.fecharForm;
   finally
   fechar.Free;
  end;

end;

end.
