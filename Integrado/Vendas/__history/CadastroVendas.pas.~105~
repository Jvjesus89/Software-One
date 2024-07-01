unit CadastroVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls,System.JSON,Vcl.Mask, Vcl.DBCtrls,System.IniFiles,conectarINI,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.Buttons, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxSmartMemo, frCoreClasses, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDCtrl, frxDBSet;
type
  TCadastroDeVendas = class(TForm)
    Panel1: TPanel;
    BotaoNovo: TButton;
    BotaoExcluir: TButton;
    BotaoEditar: TButton;
    ExportarDados: TButton;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Busca: TEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    DtFinal: TDateTimePicker;
    DtInicial: TDateTimePicker;
    Label1: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QGridVendas: TFDQuery;
    DsQGridVendas: TDataSource;
    QGridVendasidvenda: TFDAutoIncField;
    QGridVendasidcliente: TIntegerField;
    QGridVendasvlvenda: TSingleField;
    QGridVendasdtvenda: TDateField;
    QGridVendasnrdocumento: TIntegerField;
    QGridVendasnmcliente: TWideStringField;
    QGridVendasnmformapagamento: TWideStringField;
    cxGrid1DBTableView1idvenda: TcxGridDBColumn;
    cxGrid1DBTableView1idcliente: TcxGridDBColumn;
    cxGrid1DBTableView1vlvenda: TcxGridDBColumn;
    cxGrid1DBTableView1dtcadastro: TcxGridDBColumn;
    cxGrid1DBTableView1dtvenda: TcxGridDBColumn;
    cxGrid1DBTableView1nrdocumento: TcxGridDBColumn;
    cxGrid1DBTableView1nmcliente: TcxGridDBColumn;
    cxGrid1DBTableView1nmformapagamento: TcxGridDBColumn;
    QGridVendasdtcadastro: TDateField;
    QExclusão: TFDQuery;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    WideStringField15: TWideStringField;
    IntegerField18: TIntegerField;
    SingleField2: TSingleField;
    SingleField3: TSingleField;
    ImpriveVendaDialog: TfrxDialogControls;
    ExportPDF: TfrxPDFExport;
    ImprimeVenda: TfrxReport;
    frxDbVendas: TfrxDBDataset;
    QfrxDbVendas: TFDQuery;
    DsQfrxDbVendas: TDataSource;
    QfrxDbVendasvlunitario: TSingleField;
    QfrxDbVendasqtvendido: TIntegerField;
    QfrxDbVendasvlitem: TSingleField;
    QfrxDbVendasvlvenda: TSingleField;
    QfrxDbVendasdtvenda: TDateField;
    QfrxDbVendasnrdocumento: TIntegerField;
    QfrxDbVendasnmcliente: TWideStringField;
    QfrxDbVendascpf_cnpj: TWideStringField;
    QfrxDbVendasnmendereco: TWideStringField;
    QfrxDbVendasnrendereço: TWideStringField;
    QfrxDbVendascomplemento: TWideStringField;
    QfrxDbVendasnmbairro: TWideStringField;
    QfrxDbVendasnmcidade: TWideStringField;
    QfrxDbVendasnmestado: TWideStringField;
    QfrxDbVendascdcliente: TWideStringField;
    QfrxDbVendasnmproduto: TWideStringField;
    QfrxDbVendascdproduto: TWideStringField;
    QfrxDbVendasvlproduto: TSingleField;
    QfrxDbVendasnmfamiliaproduto: TWideStringField;
    QfrxDbVendasnmformapagamento: TWideStringField;
    procedure BotaoNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BotaoExcluirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BotaoEditarClick(Sender: TObject);
    procedure BuscaExit(Sender: TObject);
    procedure BuscaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure BuscaVendaPorNumero;
    procedure BuscaVendaFiltros;
  public
    { Public declarations }
  end;

var
  CadastroDeVendas: TCadastroDeVendas;

implementation

{$R *.dfm}

uses DBvendas, TelaCadastroVenda, TelaExportaçãoXML, DBXml, ImportaXmlVendas,
  DbPrincipal,DbEditarVendas;





procedure TCadastroDeVendas.BotaoEditarClick(Sender: TObject);
var idvenda : integer;
begin
     idVenda := QGridVendas.FieldByName('idvenda').AsInteger;
     // consulta venda
     DbEditVenda.QConsultavendas.close;
     DbEditVenda.QConsultavendas.sql.Clear;
     DbEditVenda.QConsultavendas.sql.Add('Select * From vendas V  Where v.idvenda= :PIdVenda');
     DbEditVenda.QConsultavendas.ParamByName('PIdVenda').AsInteger := IdVenda;
     DbEditVenda.QConsultavendas.open;
     // consulta item venda
     DbEditVenda.QConsultaVendaItem.close;
     DbEditVenda.QConsultaVendaItem.sql.Clear;
     DbEditVenda.QConsultaVendaItem.sql.Add('Select * From vendasitem Where idvenda= :PIdVenda');
     DbEditVenda.QConsultaVendaItem.ParamByName('PIdVenda').AsInteger := IdVenda;
     DbEditVenda.QConsultaVendaItem.open;

     TelaCadastroVendas.showmodal;
end;

procedure TCadastroDeVendas.BotaoExcluirClick(Sender: TObject);
var IdVenda : integer;
begin
   idVenda := QGridVendas.FieldByName('idvenda').AsInteger;

   if Application.MessageBox(Pchar('Deseja excluir o Titulo?'), 'Confirmação', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then
     begin
     QExclusão.close;
     QExclusão.sql.Clear;
     QExclusão.sql.Add('Delete From movimentoestoque Where idorigem = :Pidorigem');
     QExclusão.ParamByName('Pidorigem').AsInteger := IdVenda;
     QExclusão.ExecSql;
     end;
      begin
      QExclusão.close;
      QExclusão.sql.Clear;
      QExclusão.sql.Add('Delete From areceber Where idorigem = :Pidorigem');
      QExclusão.ParamByName('Pidorigem').AsInteger := IdVenda;
      QExclusão.ExecSql;
      end;
       begin
       QExclusão.close;
       QExclusão.sql.Clear;
       QExclusão.sql.Add('Delete From vendasitem Where idvenda = :Pidvenda');
       QExclusão.ParamByName('Pidvenda').AsInteger := IdVenda;
       QExclusão.ExecSql;
       end;
      begin;
      QExclusão.close;
      QExclusão.sql.Clear;
      QExclusão.sql.Add('Delete From vendas Where idvenda = :Pidvenda');
      QExclusão.ParamByName('Pidvenda').AsInteger := IdVenda;
      QExclusão.ExecSql;
      end;
    QGridVendas.close;
    QGridVendas.Open;
end;

procedure TCadastroDeVendas.BotaoNovoClick(Sender: TObject);
begin
            // criação Trigger numero vendas
     DbVendas1.QCriaTrigger.close;
     DbVendas1.QCriaTrigger.sql.Clear;
     DbVendas1.QCriaTrigger.sql.Add('CREATE OR REPLACE FUNCTION NrVenda() RETURNS TRIGGER AS $$ BEGIN NEW.nrdocumento :=  NEXTVAL(''"Vendas_NumeroVenda_Seq"''); RETURN NEW; END; $$ LANGUAGE plpgsql;');
     DbVendas1.QCriaTrigger.sql.Add('DO $$ BEGIN  IF NOT EXISTS ( SELECT 1  FROM pg_trigger   WHERE tgname = ''nrvenda''  AND tgrelid = ''vendas''::regclass    )');
     DbVendas1.QCriaTrigger.sql.Add(' THEN EXECUTE ''CREATE TRIGGER NrVenda BEFORE INSERT ON vendas FOR EACH ROW EXECUTE FUNCTION NrVenda()''; END IF; END $$;');
     DbVendas1.QCriaTrigger.ExecSQl;


    TelaCadastroVendas.showmodal;

end;

procedure TCadastroDeVendas.BuscaExit(Sender: TObject);
begin
    BuscaVendaPorNumero;
end;

procedure TCadastroDeVendas.BuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
  VK_RETURN: BuscaVendaPorNumero;
end;
end;

procedure TCadastroDeVendas.BuscaVendaFiltros;
begin

    if (dtInicial.Date <> 0) and (DtFinal.Date <> 0) then
    begin
      QGridVendas.close ;
      QGridVendas.sql.Clear;
      QGridVendas.sql.Add('Select v.*,C.nmcliente, (Select F.nmformapagamento from formapagamento F ');
      QGridVendas.sql.Add('join  areceber A on V.idvenda = A.idorigem Where F.idformapagamento = A.idformapagamento limit 1) From vendas V  ');
      QGridVendas.sql.Add('join clientes C on C.idcliente = V.idcliente Where  v.dtvenda between (:Pdtinicial) and (:Pdtfinal)');
      QGridVendas.ParamByName('Pdtinicial').AsDate :=  DtInicial.Date;
      QGridVendas.ParamByName('Pdtfinal').AsDate :=  DtFinal.Date;
      QGridVendas.open;
    end;

    if  (Busca.text <> '') then
    begin
      QGridVendas.close ;
      QGridVendas.sql.Clear;
      QGridVendas.sql.Add('Select v.*,C.nmcliente, (Select F.nmformapagamento from formapagamento F ');
      QGridVendas.sql.Add('join  areceber A on V.idvenda = A.idorigem Where F.idformapagamento = A.idformapagamento limit 1) From vendas V  ');
      QGridVendas.sql.Add('join clientes C on C.idcliente = V.idcliente Where v.nrdocumento = (:Pnrdocumento) and v.dtvenda between (:Pdtinicial) and (:Pdtfinal) ');
      QGridVendas.ParamByName('Pdtinicial').AsDate :=  DtInicial.Date;
      QGridVendas.ParamByName('Pdtfinal').AsDate :=  DtFinal.Date;
      QGridVendas.ParamByName('Pnrdocumento').AsInteger :=  StrToInt(Busca.text);
      QGridVendas.open;
    end;
end;

procedure TCadastroDeVendas.BuscaVendaPorNumero;
begin
    if (Trim(Busca.text).IsEmpty) then

    begin
      QGridVendas.close ;
      QGridVendas.sql.Clear;
      QGridVendas.sql.Add('Select v.*,C.nmcliente, (Select F.nmformapagamento from formapagamento F ');
      QGridVendas.sql.Add('join  areceber A on V.idvenda = A.idorigem Where F.idformapagamento = A.idformapagamento limit 1) From vendas V  ');
      QGridVendas.sql.Add('join clientes C on C.idcliente = V.idcliente');
      QGridVendas.open;
    end
    else
    begin
      QGridVendas.close ;
      QGridVendas.sql.Clear;
      QGridVendas.sql.Add('Select v.*,C.nmcliente, (Select F.nmformapagamento from formapagamento F ');
      QGridVendas.sql.Add('join  areceber A on V.idvenda = A.idorigem Where F.idformapagamento = A.idformapagamento limit 1) From vendas V  ');
      QGridVendas.sql.Add('join clientes C on C.idcliente = V.idcliente Where v.nrdocumento = '+(Busca.Text));
      QGridVendas.open;
    end;
end;

procedure TCadastroDeVendas.Button1Click(Sender: TObject);
begin
   XML.showmodal;
end;


procedure TCadastroDeVendas.Button3Click(Sender: TObject);
var
    jsonObjInfNota, jsonObjEmitente,jsonObjEmitenteEnd, jsonObjInf,jsonObjXmlNota,
    jsonObjDestino, jsonObjDestinoEnd, jsonObjItem, jsonObjInfItem , jsonObjNitem
     : TJSONObject;

    jsonArrayInfEmitente,jsonArrayEmitenteendereco,
    jsonArrayDestinatarioendereco,jsonArrayDestinatario , jsonArrayNitem
     : TJSONArray;

    x, y ,z, a : integer;
    IdVenda : integer;
    QtdItensGrid: integer;
begin
   {IdVenda := dbgrid1.Fields[5].Value;
   ExportarXML.MemoResultado.lines.clear;
   ExportarXML.MemoOriginal.lines.clear;


   DbXmlVendas.QItensGeradoXML.close;
   DbXmlVendas.QItensGeradoXML.sql.clear;
   DbXmlVendas.QItensGeradoXML.sql.add('Select * From vendasitem VI join produto P on (VI.idproduto = P.idproduto) Where idvenda = :Pidvenda');
   DbXmlVendas.QItensGeradoXML.ParamByName('Pidvenda').AsInteger := IdVenda ;
   DbXmlVendas.QItensGeradoXML.open;

   DbXmlVendas.QClienteXml.close;
   DbXmlVendas.QClienteXml.sql.clear;
   DbXmlVendas.QClienteXml.sql.add('Select * From clientes Where idcliente = :Pidcliente');
   DbXmlVendas.QClienteXml.ParamByName('Pidcliente').AsInteger := dbgrid1.Fields[6].Value; ;
   DbXmlVendas.QClienteXml.open;

   QtdItensGrid := DbXmlVendas.QItensGeradoXML.RecordCount;


       try
        jsonObjXmlNota := TJSONObject.Create;


        // Xml...
        for x := 1 to 1 do
        begin
        jsonObjInfNota:= TJSONObject.Create;
        jsonObjInfNota.AddPair('SoftwareName','SoftwareOne');


            // Criação tag Ide
            for y := 1 to 1 do
            begin
            jsonObjInf := TJSONObject.Create;
            jsonObjInf.AddPair('natOp', 'Venda');
            jsonObjInf.AddPair('nNF', DBGrid1.fields[0].Value);
            jsonObjInf.AddPair('dhEmi', (DBGrid1.fields[4].Value));
            //jsonArrayInf.AddElement(jsonObjInf);
            end;
        jsonObjInfNota.AddPair('ide', jsonObjInf);

            // Criação tag Emit
            for y := 1 to 1 do
            begin
            jsonObjEmitente := TJSONObject.Create;
            jsonObjEmitente.AddPair('CNPJ', '11.111.111/0001-14');
            jsonObjEmitente.AddPair('xNome', 'Empresa 1');
            jsonObjEmitente.AddPair('xFant', 'Emp');

            jsonArrayEmitenteendereco := TJSONArray.Create;
            jsonArrayInfEmitente := TJSONArray.Create;

                for z := 1 to 1 do
                begin
                jsonObjEmitenteEnd := TJSONObject.Create;
                jsonObjEmitenteEnd.AddPair('xLgr', 'Rua 1');
                jsonObjEmitenteEnd.AddPair('nro', '10');
                jsonObjEmitenteEnd.AddPair('xBairro', 'Bairro 2');
                jsonObjEmitenteEnd.AddPair('cMun', 'Cidade 3');
                jsonObjEmitenteEnd.AddPair('xMun', '2712701');
                jsonObjEmitenteEnd.AddPair('UF', 'RJ');
                jsonObjEmitenteEnd.AddPair('CEP', '28654123');
                jsonObjEmitenteEnd.AddPair('cPais', '1058');
                jsonObjEmitenteEnd.AddPair('xPais', 'Brasil');
                jsonObjEmitenteEnd.AddPair('fone', '2288130934');
                jsonArrayEmitenteendereco.AddElement(jsonObjEmitenteEnd);
                end;

            jsonObjEmitente.AddPair('enderEmit', jsonArrayEmitenteendereco);
            jsonObjEmitente.AddPair('IE', '15454');
            jsonObjEmitente.AddPair('IM', '11254');
            jsonObjEmitente.AddPair('CRT', '3');
            jsonArrayInfEmitente.AddElement(jsonObjEmitente);
            end;
        jsonObjInfNota.AddPair('emit', jsonArrayInfEmitente);

            // Criação da tag Dest
            for y := 1 to 1 do
            begin
             jsonObjDestino := TJSONObject.Create;
            jsonObjDestino.AddPair('CNPJ', ExportarXML.DBGrid2.fields[6].Value);
            jsonObjDestino.AddPair('xNome', ExportarXML.DBGrid2.fields[1].Value);

            jsonArrayDestinatario := TJSONArray.Create;
            jsonArrayDestinatarioendereco := TJSONArray.Create;

                for z := 1 to 1 do
                begin
                jsonObjDestinoEnd := TJSONObject.Create;
                jsonObjDestinoEnd.AddPair('xLgr',  ExportarXML.DBGrid2.fields[4].Value);
                jsonObjDestinoEnd.AddPair('nro', ExportarXML.DBGrid2.fields[8].Value);
                jsonObjDestinoEnd.AddPair('xBairro', ExportarXML.DBGrid2.fields[2].Value);
                jsonObjDestinoEnd.AddPair('cMun', 'NULL');
                jsonObjDestinoEnd.AddPair('xMun', ExportarXML.DBGrid2.fields[3].Value);
                jsonObjDestinoEnd.AddPair('UF', ExportarXML.DBGrid2.fields[5].Value);
                jsonObjDestinoEnd.AddPair('CEP', '28654123');
                jsonObjDestinoEnd.AddPair('cPais', '1058');
                jsonObjDestinoEnd.AddPair('xPais', 'Brasil');
                jsonObjDestinoEnd.AddPair('fone', '2288130934');
                jsonArrayDestinatarioendereco.AddElement(jsonObjDestinoEnd);
                end;

            jsonObjDestino.AddPair('enderDest',jsonArrayDestinatarioendereco);
            jsonObjDestino.AddPair('indIEDest', 'NULL');
            jsonObjDestino.AddPair('IE', 'NULL');
            jsonObjDestino.AddPair('email', 'NULL');
            jsonArrayDestinatario.AddElement(jsonObjDestino);
            end;
        jsonObjInfNota.AddPair('dest', jsonArrayDestinatario);



        // Criação da tag Det Item
        jsonObjNitem  := TJSONObject.Create;
           for y := 1 to QtdItensGrid do
           begin
           jsonArrayNitem := TJSONArray.Create;
           jsonObjInfNota :=  TJSONObject.Create;
               for z := 1 to 1 do
               begin
               jsonObjItem:= TJSONObject.Create;
                 for a := 1 to 1 do
                 begin
                 jsonObjInfItem := TJSONObject.Create;
                 jsonObjInfItem.AddPair('cProd',ExportarXML.DBGrid1.fields[0].Value );
                 jsonObjInfItem.AddPair('cEAN', 'NULL');
                 jsonObjInfItem.AddPair('xProd',ExportarXML.DBGrid1.fields[1].Value  );
                 jsonObjInfItem.AddPair('NCM', 'NULL');
                 jsonObjInfItem.AddPair('CFOP','NULL');
                 jsonObjInfItem.AddPair('uCom', 'UND');
                 jsonObjInfItem.AddPair('qCom',ExportarXML.DBGrid1.fields[2].Value);
                 jsonObjInfItem.AddPair('vUnCom', ExportarXML.DBGrid1.fields[3].Value );
                 jsonObjInfItem.AddPair('vProd',ExportarXML.DBGrid1.fields[4].Value );
                 jsonObjInfItem.AddPair('uTrib', 'UND');
                 jsonObjInfItem.AddPair('qTrib', ExportarXML.DBGrid1.fields[2].Value);
                 jsonObjInfItem.AddPair('vUnTrib',ExportarXML.DBGrid1.fields[3].Value );
                 end;
               jsonObjItem.AddPair('prod',jsonObjInfItem );
               end;
           jsonObjNitem.AddPair('Nitem', y.ToString );
           jsonObjNitem.AddPair('item',jsonObjItem);
           jsonArrayNitem.AddElement(jsonObjNitem);
           DbXmlVendas.QItensGeradoXML.Next;
           end;
        jsonObjInfNota.AddPair('det', jsonArrayNitem);

           //Criar a tag total
        jsonObjInfItem := TJSONObject.Create;
           for y := 1 to 1 do
           begin
           jsonObjInfItem.AddPair('vBC','0,00');
           jsonObjInfItem.AddPair('vICMS', '0,00');
           jsonObjInfItem.AddPair('vICMSDeson','0,00');
           jsonObjInfItem.AddPair('vBCST', '0,00');
           jsonObjInfItem.AddPair('vST','0,00');
           jsonObjInfItem.AddPair('vProd',DBGrid1.fields[2].Value);
           jsonObjInfItem.AddPair('vFrete', '0,00');
           jsonObjInfItem.AddPair('vSeg','0,00');
           jsonObjInfItem.AddPair('vDesc', '0,00');
           jsonObjInfItem.AddPair('vII','0,00');
           jsonObjInfItem.AddPair('vIPI','0,00');
           jsonObjInfItem.AddPair('vPIS','0,00');
           jsonObjInfItem.AddPair('vCOFINS','0,00');
           jsonObjInfItem.AddPair('vOutro','0,00');
           jsonObjInfItem.AddPair('vNF',DBGrid1.fields[2].Value);
           jsonObjInfItem.AddPair('vTotTrib','0,00');
           end;
        jsonObjInfNota.AddPair('total', jsonObjInfItem);
        end;


        ExportarXML.MemoOriginal.Lines.Add(jsonObjInfNota.ToString);

    finally
        jsonObjXmlNota.DisposeOf;
    end;

    ExportarXML.showmodal;
    }
end;

procedure TCadastroDeVendas.Button4Click(Sender: TObject);
begin
    ImprimeVenda.showreport;
end;

procedure TCadastroDeVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not DirectoryExists(GetcurrentDir + '\ConfigGrid') then
    CreateDir(GetcurrentDir + '\ConfigGrid');
  // Salva a customização da grid no arquivo INI
  cxGrid1DBTableView1.StoreToIniFile(GetcurrentDir + '\ConfigGrid\LayoutGridVendas.ini');
end;

procedure TCadastroDeVendas.FormShow(Sender: TObject);
var
ConectarIni : TconectarINI;
begin
 //filtro de data
   dtinicial.datetime := now - 30;
   dtfinal.datetime := now;

   ConectarIni := TconectarINI.Create;
   try
   ConectarIni.DiretorioPadrao := GetCurrentDir;
   ConectarIni.consultarConexaoBanco;
   finally
      ConectarIni.Free;
  end;

  // Ativara Grid
  begin
      QGridVendas.close ;
      QGridVendas.sql.Clear;
      QGridVendas.sql.Add('Select v.*,C.nmcliente, (Select F.nmformapagamento from formapagamento F ');
      QGridVendas.sql.Add('join  areceber A on V.idvenda = A.idorigem Where F.idformapagamento = A.idformapagamento limit 1) From vendas V  ');
      QGridVendas.sql.Add('join clientes C on C.idcliente = V.idcliente Where  v.dtvenda between (:Pdtinicial) and (:Pdtfinal)');
      QGridVendas.ParamByName('Pdtinicial').AsDate :=  DtInicial.Date;
      QGridVendas.ParamByName('Pdtfinal').AsDate :=  DtFinal.Date;
      QGridVendas.open;
    end;


    // Restaura a customização da grid de um arquivo INI
  if FileExists(GetcurrentDir + '\ConfigGrid\LayoutGridVendas.ini') then
    cxGrid1DBTableView1.RestoreFromIniFile(GetcurrentDir + '\ConfigGrid\LayoutGridVendas.ini');

end;

procedure TCadastroDeVendas.SpeedButton1Click(Sender: TObject);
begin
  BuscaVendaFiltros;
end;

procedure TCadastroDeVendas.SpeedButton2Click(Sender: TObject);
begin
 cxGrid1DBTableView1.Controller.Customization := True;
end;

end.
