unit ImportaXmlVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons,
   // Para XML TO Json
  U_XML.JSON, Xml.XMLDoc,System.JSON, U_JSON.XML, Xml.xmldom,Xml.XmlTransform, Xml.XMLIntf;

type
  TXML = class(TForm)
    EditXml: TEdit;
    Button1: TButton;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    DBGrid2: TDBGrid;
    Panel: TPanel;
    Vazio: TBitBtn;
    Excluir: TBitBtn;
    Gravar: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    MemoXml: TMemo;
    MemoJson: TMemo;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
     XMLtoJSON : TXMLtoJSON;
  public
    { Public declarations }
  end;

var
  XML: TXML;


implementation

{$R *.dfm}

uses  DBXml, DbXmlImportacao, DBvendas;

procedure TXML.Button1Click(Sender: TObject);
Var Arquivo : TStringList;
begin

  if (Trim(EditXml.Text).IsEmpty) then
  begin
     OpenDialog1.Execute;
     EditXml.Text := OpenDialog1.FileName;
     Arquivo := TStringList.Create();
     Arquivo.LoadFromFile(OpenDialog1.FileName);
     MemoXml.Clear;
     MemoXml.Text := Arquivo.Text
 end
    else
 Begin
   if not fileexists (EditXml.Text) then
   begin
      OpenDialog1.Execute;
      EditXml.Text := OpenDialog1.FileName;
   end;

 End;

end;

procedure TXML.Button1Exit(Sender: TObject);
var
// converter xml em Json
  xml : TXMLDocument;
  list : TStringList;
  json : TJSONObject;

//Ler xml
nNF ,dhEmi, CNPJ, xNome, xFant, xLgr, nro,xBairro , cMun, xMun,UF, CEP, cPais, xPais,fone
, IE,IM,CRT,DCNPJ,DxNome, DxLgr, Dnro, DxBairro , DcMun, DxMun,DUF, DCEP, DcPais, DxPais,Dfone
,DindIEdest, DIE, Demail : String;

ObjPed, ObjXml,ObjIde, Objemit, ObjenderEmit,Objdest,ObjenderDest : TJSONObject;
Mjson : string  ;
a,b,c : integer;
  I: Integer;

begin

        // converte xml em json
  xml := XMLtoJSON.normalizeOrigin(MemoXml.Text);
  list := XMLtoJSON.normalizeOrigin(xml);
  MemoXml.Lines.Clear;
  MemoXml.Lines := list;
  json := XMLtoJSON.originTypeToReturnType(xml);
  list := XMLtoJSON.normalizeReturn(json);
  MemoJson.Lines.Clear;
  MemoJson.lines := list;

      //Cria a tabela temporaria importa xml (Temp.#vendas)
    DbImportacaoXml.QInseriDadosXml.close;
    DbImportacaoXml.QInseriDadosXml.sql.clear;
    DbImportacaoXml.QInseriDadosXml.sql.add('CREATE TABLE IF NOT EXISTS Temp."#vendas"');
    DbImportacaoXml.QInseriDadosXml.sql.add('(idvenda integer NOT NULL DEFAULT nextval($$vendas_idvenda_seq$$::regclass),idcliente integer ,idformapagamento integer,vlvenda real , dtcadastro date ,dtvenda date,');
    DbImportacaoXml.QInseriDadosXml.sql.add('nmformapagamento character varying(20) ,nmcliente character varying(50) ,nrdocumento integer)');
    DbImportacaoXml.QInseriDadosXml.ExecSQL;

begin
     Mjson := MemoJson.Lines.Text;
     ObjPed := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(Mjson), 0) as TJSONObject;

   //inicio da leitura do xml
   begin
   ObjXml := ObjPed.GetValue<TJSONObject>('xml');
     // Lendo a Tag IDE
     for b := 0 to ObjXml.Size - 1 do
     begin
     ObjIde := ObjXml.GetValue<TJSONObject>('ide');
       // Itens da TagIde
        for c := 0 to ObjIde.Size - 1 do
        begin
        nNF :=  ObjIde.GetValue<String>('nNF','');
        dhEmi:=  ObjIde.GetValue<String>('dhEmi','');
        end;
     end;
     // Lendo Tag Emit
   Objemit := ObjXml.GetValue<TJSONObject>('emit');
     for b := 1 to Objemit.Size - 1 do
     begin
       CNPJ :=  Objemit.GetValue<String>('CNPJ','');
       xNome :=  Objemit.GetValue<String>('xNome','');
       xFant :=  Objemit.GetValue<String>('xFant','');
       ObjenderEmit := Objemit.GetValue<TJSONObject>('enderEmit');
       // lendo tag  enderEmit
       for c := 1 to ObjenderEmit.size -1 do
       begin
         xLgr :=  ObjenderEmit.GetValue<String>('xLgr','');
         nro  :=  ObjenderEmit.GetValue<String>('nro','');
         xBairro   :=  ObjenderEmit.GetValue<String>('xBairro','');
         cMun   :=  ObjenderEmit.GetValue<String>('cMun','');
         xMun :=  ObjenderEmit.GetValue<String>('xMun','');
         UF   :=  ObjenderEmit.GetValue<String>('UF','');
         CEP   :=  ObjenderEmit.GetValue<String>('CEP','');
         cPais  :=  ObjenderEmit.GetValue<String>('cPais','');
         xPais  :=  ObjenderEmit.GetValue<String>('xPais','');
         fone   :=  ObjenderEmit.GetValue<String>('fone','');
       end;
       IE :=  Objemit.GetValue<String>('IE','');
       IM :=  Objemit.GetValue<String>('IM','');
       CRT :=  Objemit.GetValue<String>('CRT','');
     end;

     //lendo tag dest
   Objdest:= ObjXml.GetValue<TJSONObject>('dest');
     for b := 1 to Objdest.size -1 do
     begin
       DCNPJ :=  Objdest.GetValue<String>('CNPJ','');
       DxNome :=  Objdest.GetValue<String>('xNome','');
       //lendo tag enderDest
       Objenderdest := Objdest.GetValue<TJSONObject>('enderDest');
       for c  :=1 to Objdest.size -1 do
       begin
         DxLgr :=  Objenderdest.GetValue<String>('xLgr','');
         Dnro  :=  Objenderdest.GetValue<String>('nro','');
         DxBairro   :=  Objenderdest.GetValue<String>('xBairro','');
         DcMun   :=  Objenderdest.GetValue<String>('cMun','');
         DxMun :=  Objenderdest.GetValue<String>('xMun','');
         DUF   :=  Objenderdest.GetValue<String>('UF','');
         DCEP   :=  Objenderdest.GetValue<String>('CEP','');
         DcPais  :=  Objenderdest.GetValue<String>('cPais','');
         DxPais  :=  Objenderdest.GetValue<String>('xPais','');
         Dfone   :=  Objenderdest.GetValue<String>('fone','');
       end;
      DindIEDest:=  Objdest.GetValue<String>('indIEDest','');
      DIE :=  Objdest.GetValue<String>('IE','');
      Demail  :=  Objdest.GetValue<String>('email','');
     end;
   end;
    ObjPed.DisposeOf;



        //Importa dados da tabela temporaria (Temp.vendas) para a tabela vendas
    DbImportacaoXml.QInseriDadosXml.close;
    DbImportacaoXml.QInseriDadosXml.sql.clear;
    DbImportacaoXml.QInseriDadosXml.sql.add('INSERT INTO temp."#vendas"(idcliente, idformapagamento, vlvenda, dtcadastro, dtvenda, nmformapagamento, nmcliente, nrdocumento) ');
    DbImportacaoXml.QInseriDadosXml.sql.add('VALUES ( :Pidcliente, :Pidformapagamento, :Pvlvenda, :Pdtcadastro, :Pdtvenda, :Pnmformapagamento, :Pnmcliente, :Pnrdocumento)');
    DbImportacaoXml.QInseriDadosXml.ParamByName('Pidcliente').AsInteger := 0 ;
    DbImportacaoXml.QInseriDadosXml.ParamByName('Pidformapagamento').AsInteger := 0 ;
    DbImportacaoXml.QInseriDadosXml.ParamByName('Pvlvenda').AsInteger := 0 ;
    DbImportacaoXml.QInseriDadosXml.ParamByName('Pdtcadastro').AsDate := now ;
    DbImportacaoXml.QInseriDadosXml.ParamByName('Pdtvenda').AsDate := StrTodate (dhEmi) ;
    DbImportacaoXml.QInseriDadosXml.ParamByName('Pnmformapagamento').AsString := '';
    DbImportacaoXml.QInseriDadosXml.ParamByName('Pnmcliente').AsString := xNome ;
    DbImportacaoXml.QInseriDadosXml.ParamByName('Pnrdocumento').AsInteger := StrToInt (nNF) ;
    DbImportacaoXml.QInseriDadosXml.ExecSQL;

         // Ativar Querry  (Temp.#vendas)
    DbImportacaoXml.QconsultaTempVendas.Open;
end;

end;

procedure TXML.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
    //DbVendas1.Mxml.LoadFromFIle (EditXml.text + '.xml');
end;

procedure TXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   MemoXml.lines.Clear;
   MemoJson.lines.Clear;
   EditXml.Clear;

   DbImportacaoXml.QInseriDadosXml.close;
   DbImportacaoXml.QInseriDadosXml.sql.clear;
   DbImportacaoXml.QInseriDadosXml.sql.add('drop table temp."#vendas"');
   DbImportacaoXml.QInseriDadosXml.ExecSQL;

end;


end.
