unit TelaEdicaoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,System.JSON,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TTelaEdicaoCliente1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    NomeClienteCampo: TDBEdit;
    Cpf_Cpnj: TDBEdit;
    Endereço: TDBEdit;
    Numero: TDBEdit;
    Complemento: TDBEdit;
    Bairro: TDBEdit;
    Cidade: TDBEdit;
    DBEdit8: TDBEdit;
    Button1: TButton;
    DBEdit9: TDBEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    IdCliente: TEdit;
    Label6: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaEdicaoCliente1: TTelaEdicaoCliente1;

implementation

{$R *.dfm}

uses DbCliente;

procedure TTelaEdicaoCliente1.BitBtn1Click(Sender: TObject);
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
    CampoUF : String;
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

        CampoUF:=  ObjectPed.GetValue<string>('uf', '');
        DBEdit8.Text :=  (CampoUF);

    end;
    ObjectPed.DisposeOf;
end;

procedure TTelaEdicaoCliente1.Button1Click(Sender: TObject);
begin
     if not ((Trim(Cpf_Cpnj.Text).IsEmpty) or (Trim(NomeClienteCampo.Text).IsEmpty)or (Trim(DBEdit9.Text).IsEmpty)) then
     begin
     DbClient.QedicaoCliente.close;
     DbClient.QedicaoCliente.sql.clear;
     DbClient.QedicaoCliente.sql.Add('Update Clientes Set nmcliente = :PNmCliente , cpf_cnpj = :PCpfCnpj, nmendereco = :Pnmendereco, nrendereço = :Pnrendereco, complemento = :Pcomplemento, nmbairro = :Pnmbairro, nmcidade =:Pnmcidade, nmestado = :Pnmestado, cdcliente=:Pcdcliente');
     DbClient.QedicaoCliente.sql.Add('Where idcliente = :Pidcliente');
     DbClient.QedicaoCliente.ParamByName('Pidcliente').AsInteger :=  StrToInt(IdCliente.Text);
     DbClient.QedicaoCliente.ParamByName('PNmCliente').AsString :=  (NomeClienteCampo.Text);
     DbClient.QedicaoCliente.ParamByName('PCpfCnpj').AsString :=  (Cpf_Cpnj.Text);
     DbClient.QedicaoCliente.ParamByName('Pnmendereco').AsString :=  (Endereço.Text);
     DbClient.QedicaoCliente.ParamByName('Pnrendereco').AsString :=  (Numero.Text);
     DbClient.QedicaoCliente.ParamByName('Pcomplemento').AsString :=  (Complemento.Text);
     DbClient.QedicaoCliente.ParamByName('Pnmbairro').AsString :=  (Bairro.Text);
     DbClient.QedicaoCliente.ParamByName('Pnmcidade').AsString :=  (Cidade.Text);
     DbClient.QedicaoCliente.ParamByName('Pnmestado').AsString :=  (DBEdit8.Text);
     DbClient.QedicaoCliente.ParamByName('Pcdcliente').AsInteger := StrToInt (DBEdit9.Text);
     DbClient.QedicaoCliente.ExecSql;
     ShowMessage('Cliente Editado');
     TelaEdicaoCliente1.Close;
     DbClient.Qcliente.close;
     DbClient.Qcliente.Open;
     end
     else
     begin
     ShowMessage('Campos obrigatorios para cadastro de cliente CPF/CNPJ, Nome , Código') ;
     end;
end;

procedure TTelaEdicaoCliente1.Button2Click(Sender: TObject);
begin
   Self.close;
end;

procedure TTelaEdicaoCliente1.RadioButton1Click(Sender: TObject);
begin
Label2.caption :=  'CPF';
end;

procedure TTelaEdicaoCliente1.RadioButton2Click(Sender: TObject);
begin
Label2.caption :=  'CNPJ';
end;

end.
