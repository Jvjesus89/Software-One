unit Forms;

interface

uses
  Vcl.Forms, Vcl.Controls;

type
  TFormAbreFecha = class
  private
    FForm: TForm;

  public
    constructor Create(AForm: TForm);
    procedure FecharForm;
  end;

implementation

{ TFecharForm }

uses TelaPrincipal;

constructor TFormAbreFecha.Create(AForm: TForm);
begin
  inherited Create;
  FForm := AForm;
end;

procedure TFormAbreFecha.FecharForm;
begin
    if Assigned(FForm) then
  begin
    FForm.Free; // Libera a memória do formulário
    HubPrin.SplitViewHub.Opened := True;
  end;
end;

end.
