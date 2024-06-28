unit PdvNew.Utils;

interface
uses
    System.Classes,
    Vcl.ExtCtrls,
    Vcl.Forms,
    Vcl.Controls;

type
  TFromHelper = class helper for TForm
  public
  procedure RemoveObject;
  procedure AddObject(Value: Tpanel);
  end;


implementation

{ TFromHelper }

procedure TFromHelper.AddObject(Value: Tpanel);
begin
   Self.ModalResult := mrOk;
   Self.parent := Value;
   Self.Show;
end;

procedure TFromHelper.RemoveObject;
begin
  Self.ModalResult := mrNone;
  Self.Parent := nil;
  Self.Close;
end;

end.
