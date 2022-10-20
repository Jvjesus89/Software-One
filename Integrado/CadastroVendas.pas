unit CadastroVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls,System.JSON;

type
  TCadastroDeVendas = class(TForm)
    Panel1: TPanel;
    BotaoNovo: TButton;
    BotaoExcluir: TButton;
    BotaoEditar: TButton;
    ExportarDados: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Button2: TButton;
    Busca: TEdit;
    Button1: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure BotaoNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BotaoExcluirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroDeVendas: TCadastroDeVendas;

implementation

{$R *.dfm}

uses DBvendas, TelaCadastroVenda, ImportaXmlVendas, TelaExporta��oXML;





procedure TCadastroDeVendas.BotaoExcluirClick(Sender: TObject);
var IdVenda : integer;
begin
   IdVenda := dbgrid1.Fields[5].Value;
   if Application.MessageBox(Pchar('Deseja excluir o Titulo?'), 'Confirma��o', MB_USEGLYPHCHARS + MB_DEFBUTTON2)= mrYes then


      begin
      DbVendas1.QExclus�oVendaItem.close;
      DbVendas1.QExclus�oVendaItem.sql.Clear;
      DbVendas1.QExclus�oVendaItem.sql.Add('Delete From movimentoestoque Where idorigem = :Pidorigem');
      DbVendas1.QExclus�oVendaItem.ParamByName('Pidorigem').AsInteger := IdVenda;
      DbVendas1.QExclus�oVendaItem.ExecSql;
      end;
      begin
      DbVendas1.QExclus�oVendaItem.close;
      DbVendas1.QExclus�oVendaItem.sql.Clear;
      DbVendas1.QExclus�oVendaItem.sql.Add('Delete From areceber Where idorigem = :Pidorigem');
      DbVendas1.QExclus�oVendaItem.ParamByName('Pidorigem').AsInteger := IdVenda;
      DbVendas1.QExclus�oVendaItem.ExecSql;
      end;
       begin
      DbVendas1.QExclus�oVendaItem.close;
      DbVendas1.QExclus�oVendaItem.sql.Clear;
      DbVendas1.QExclus�oVendaItem.sql.Add('Delete From vendasitem Where idvenda = :Pidvenda');
      DbVendas1.QExclus�oVendaItem.ParamByName('Pidvenda').AsInteger := IdVenda;
      DbVendas1.QExclus�oVendaItem.ExecSql;
      end;
      begin;
      DbVendas1.QExclus�oVenda.close;
      DbVendas1.QExclus�oVenda.sql.Clear;
      DbVendas1.QExclus�oVenda.sql.Add('Delete From vendas Where idvenda = :Pidvenda');
      DbVendas1.QExclus�oVenda.ParamByName('Pidvenda').AsInteger := IdVenda;
      DbVendas1.QExclus�oVenda.ExecSql;
      end;

      DbVendas1.Qvendas.Close;
      DbVendas1.Qvendas.Open;
end;

procedure TCadastroDeVendas.BotaoNovoClick(Sender: TObject);
begin
    TelaCadastroVendas.showmodal;
     DbVendas1.Mvendas.open;
     DbVendas1.Mvendasitem.open;;
     DbVendas1.MTempItem.open;
     DbVendas1.Mvendas.Append;
     DbVendas1.Mvendasitem.Append;;
     DbVendas1.MTempItem.Append;
end;

procedure TCadastroDeVendas.Button1Click(Sender: TObject);
begin
   XML.showmodal;
end;

procedure TCadastroDeVendas.Button2Click(Sender: TObject);
begin

    if (Trim(Busca.text).IsEmpty) then

    begin
      DbVendas1.Qvendas.close ;
      DbVendas1.Qvendas.sql.Clear;
      DbVendas1.Qvendas.sql.Add('Select * From vendas');
      DbVendas1.Qvendas.open;
    end
    else
    begin
      DbVendas1.Qvendas.close ;
      DbVendas1.Qvendas.sql.Clear;
      DbVendas1.Qvendas.sql.Add('Select * From vendas Where nrdocumento = '+(Busca.Text));
      DbVendas1.Qvendas.open;
    end;;


end;

procedure TCadastroDeVendas.Button3Click(Sender: TObject);
var
    jsonObjPed, jsonObjItem: TJSONObject;
    jsonArrayItem, jsonArrayPed: TJSONArray;
    x, y : integer;
    IdVenda : integer;
    QtdItensGrid: integer;
begin
   IdVenda := dbgrid1.Fields[5].Value;
   ExportarXML.MemoResultado.lines.clear;
   ExportarXML.MemoOriginal.lines.clear;


   DbVendas1.QItensGeradoXML.close;
   DbVendas1.QItensGeradoXML.sql.clear;
   DbVendas1.QItensGeradoXML.sql.add('Select * From vendasitem Where idvenda = :Pidvenda');
   DbVendas1.QItensGeradoXML.ParamByName('Pidvenda').AsInteger := IdVenda ;
   DbVendas1.QItensGeradoXML.open;

   QtdItensGrid := dbvendas1.QItensGeradoXML.RecordCount;


       try
        jsonObjPed := TJSONObject.Create;
        // Pedidos...
        for x := 1 to 1 do
        begin
            jsonObjPed.AddPair('SoftwareName','SoftwareOne');
            jsonObjPed.AddPair('NrNF-e', DBGrid1.fields[0].Value);
            jsonObjPed.AddPair('NmCliente', DBGrid1.fields[1].Value);
            jsonObjPed.AddPair('VlVenda', DBGrid1.fields[2].Value);
            jsonObjPed.AddPair('NmFormaPagamento', DBGrid1.fields[3].Value);
            jsonObjPed.AddPair('DtVenda', (DBGrid1.fields[4].Value));

            // Itens...
            jsonArrayItem := TJSONArray.Create;

            for y := 1 to QtdItensGrid do
            begin
              while not DbVendas1.QItensGeradoXML.EOF do
              begin
                jsonObjItem := TJSONObject.Create;
                jsonObjItem.AddPair('Nitem', TJSONNumber.Create(y));
                jsonObjItem.AddPair('produto', ExportarXML.DBGrid1.fields[0].Value);
                jsonObjItem.AddPair('Qtd', ExportarXML.DBGrid1.fields[1].Value);
                jsonObjItem.AddPair('VlUnitario', ExportarXML.DBGrid1.fields[2].Value);
                jsonObjItem.AddPair('VlItem', ExportarXML.DBGrid1.fields[3].Value);
                jsonArrayItem.AddElement(jsonObjItem);
                DbVendas1.QItensGeradoXML.Next;
              end;
            end;

            jsonObjPed.AddPair('itens', jsonArrayItem);

        end;

        ExportarXML.MemoOriginal.Lines.Add(jsonObjPed.ToString);

    finally
        jsonObjPed.DisposeOf;
    end;

    ExportarXML.showmodal;
end;

procedure TCadastroDeVendas.FormShow(Sender: TObject);
begin
 DbVendas1.Qvendas.Open;
end;

end.
