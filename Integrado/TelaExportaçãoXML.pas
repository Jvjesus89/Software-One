unit TelaExporta��oXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.XMLDoc, System.JSON, U_JSON.XML, Xml.xmldom,
  Xml.XmlTransform, Xml.XMLIntf, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TExportarXML = class(TForm)
    Label1: TLabel;
    EditXml: TEdit;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    MemoOriginal: TMemo;
    MemoResultado: TMemo;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Exit(Sender: TObject);

  private
       var
      JSONtoXML : TJSONtoXML;
  public
    { Public declarations }
  end;

var
  ExportarXML: TExportarXML;

implementation

{$R *.dfm}

uses DBvendas;

procedure TExportarXML.Button1Click(Sender: TObject);
begin
  if (Trim(EditXml.Text).IsEmpty) then
  begin
     OpenDialog1.Execute;
     EditXml.Text := OpenDialog1.FileName;
 end
    else
 Begin
   if not fileexists (EditXml.Text) then
   begin
      OpenDialog1.Execute;
      EditXml.Text := OpenDialog1.FileName;
   end;

 End ;


end;

procedure TExportarXML.Button1Exit(Sender: TObject);
 var
  xml : TXMLDocument;
  list : TStringList;
  json : TJSONObject;
begin
  json := JSONtoXML.normalizeOrigin(memoOriginal.Text);
  list := JSONtoXML.normalizeOrigin(json);
  memoOriginal.Lines := list;
  xml := JSONtoXML.originTypeToReturnType(json);
  list := JSONtoXML.normalizeReturn(xml);
  memoResultado.Lines.Clear;
  memoResultado.lines := list;
end;

procedure TExportarXML.Button2Click(Sender: TObject);
begin
   MemoResultado.lines.SaveToFile(EditXml.text + '.xml');
end;


end.
