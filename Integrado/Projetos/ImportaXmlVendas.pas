unit ImportaXmlVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TXML = class(TForm)
    EditXml: TEdit;
    Button1: TButton;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel: TPanel;
    Vazio: TBitBtn;
    Excluir: TBitBtn;
    Gravar: TBitBtn;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  XML: TXML;

implementation

{$R *.dfm}

uses DBvendas;

procedure TXML.Button1Click(Sender: TObject);
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

 End;
end;

procedure TXML.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
    DbVendas1.Mxml.LoadFromFIle (EditXml.text + '.xml');
end;

end.
