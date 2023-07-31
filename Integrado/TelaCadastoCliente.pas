unit TelaCadastoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,System.JSON,
  Vcl.ExtCtrls, Vcl.Buttons, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TTelaCadastroCliente1 = class(TForm)
    Label1: TLabel;
    NomeClienteCampo: TDBEdit;
    Label2: TLabel;
    Cpf_Cpnj: TDBEdit;
    Label3: TLabel;
    Endereço: TDBEdit;
    Label4: TLabel;
    Numero: TDBEdit;
    Label5: TLabel;
    Complemento: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Bairro: TDBEdit;
    Label8: TLabel;
    Cidade: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Button1: TButton;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Memo1: TMemo;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastroCliente1: TTelaCadastroCliente1;

implementation

{$R *.dfm}

uses DbCliente;

procedure TTelaCadastroCliente1.BitBtn1Click(Sender: TObject);
 var
     ObjectPed: TJSONObject;
    json : string;
    x, j : integer;
    CampoNome    : String;
    CampoBairro   : String;
    CampoEndereço  : String;
    CampoCidade  : String;
    CampoNumero  : String;
    CampoComplemento : String;


begin

  Memo1.lines.Clear;
   // trazer json da api
  RestClient1.BaseURL  := 'https://receitaws.com.br/v1/cnpj/' + Cpf_Cpnj.text;
  RESTRequest1.Execute;
  Memo1.lines.Add(RESTRequest1.Response.JSONText);

    // ler json adicionando o valor nos campos edit
    json := Memo1.Lines.Text;

    ObjectPed := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONObject;

    begin

        CampoNome := ObjectPed.GetValue<string>('nome', '');
        NomeClienteCampo.text :=  (CampoNome) ;

        CampoEndereço :=  ObjectPed.GetValue<string>('logradouro', '');
        Endereço.Text :=   CampoEndereço;

        CampoCidade:=  ObjectPed.GetValue<string>('municipio', '');
        Cidade.Text :=  (CampoCidade);

        CampoBairro:=  ObjectPed.GetValue<string>('bairro', '');
        Bairro.Text :=  (CampoBairro);

        CampoNumero:=  ObjectPed.GetValue<string>('numero', '');
        Numero.Text :=  (CampoNumero);

        CampoComplemento:=  ObjectPed.GetValue<string>('complemento', '');
        Complemento.Text :=  (CampoBairro);

    end;
    ObjectPed.DisposeOf;
end;

procedure TTelaCadastroCliente1.Button1Click(Sender: TObject);
begin
     if not ((Trim(Cpf_Cpnj.Text).IsEmpty) or (Trim(NomeClienteCampo.Text).IsEmpty)or (Trim(DBEdit9.Text).IsEmpty)) then
     begin
     DbClient.Mcliente.Post;
     ShowMessage('Cliente Cadastrado');
     TelaCadastroCliente1.Close;
     DbClient.Qcliente.close;
     DbClient.Qcliente.Open;
     end
     else
     begin
     ShowMessage('Campos obrigatorios para cadastro de cliente CPF/CNPJ, Nome , Código') ;
     end;
end;

procedure TTelaCadastroCliente1.Button2Click(Sender: TObject);
begin
   TelaCadastroCliente1.close;
end;

procedure TTelaCadastroCliente1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DbClient.Mcliente.Cancel;
end;

procedure TTelaCadastroCliente1.FormShow(Sender: TObject);
begin
     DbClient.Mcliente.FieldByName('dtcadastro').Value := now;
end;

procedure TTelaCadastroCliente1.RadioButton1Click(Sender: TObject);
begin
Label2.caption :=  'CPF';
end;

procedure TTelaCadastroCliente1.RadioButton2Click(Sender: TObject);
begin
Label2.caption :=  'CNPJ';
end;

end.
