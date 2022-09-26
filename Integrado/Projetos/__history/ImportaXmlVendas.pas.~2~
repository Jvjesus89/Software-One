unit ImportaXmlVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TXML = class(TForm)
    EditXml: TEdit;
    Button1: TButton;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
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

 if EditXml.Text <> '' then
 Begin
   if not fileexists (EditXml.Text) then
   begin
      OpenDialog1.Execute;
      EditXml.Text := OpenDialog1.FileName;
   end;

 End
 else
 begin
     OpenDialog1.Execute;
     EditXml.Text := OpenDialog1.FileName;
 end;

end;

end.
