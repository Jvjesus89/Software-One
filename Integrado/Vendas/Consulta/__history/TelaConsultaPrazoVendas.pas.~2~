unit TelaConsultaPrazoVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TConsultaPrazo = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Busca: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultaPrazo: TConsultaPrazo;

implementation

{$R *.dfm}

uses DBvendas, TelaCadastroVenda;

procedure TConsultaPrazo.Button1Click(Sender: TObject);
begin
    if (Trim(Busca.text).IsEmpty) then

    begin
      DbVendas1.QPrazo.close ;
      DbVendas1.QPrazo.sql.Clear;
      DbVendas1.QPrazo.sql.Add('Select * From prazopagamento');
      DbVendas1.QPrazo.open;
    end
    else
    begin
      DbVendas1.QPrazo.close ;
      DbVendas1.QPrazo.sql.Clear;
      DbVendas1.QPrazo.sql.Add('Select * From prazopagamento Where nmprazo = '+(Busca.Text));
      DbVendas1.QPrazo.open;
    end;
end;

procedure TConsultaPrazo.DBGrid1DblClick(Sender: TObject);
begin
{
      ConsultaPrazo.close;
      TelaCadastroVendas.DBEdit7.Text := DBGrid1.Fields[1].value;
      TelaCadastroVendas.DBEdit3.Text := DBGrid1.Fields[2].value;
      TelaCadastroVendas.DBEdit3.Text := DBGrid1.Fields[3].value;
      }
end;

end.
