unit SomaValorVenda;

interface

uses
  System.SysUtils;

   Function CalculoValorVenda : integer;

implementation

uses Pdv_Principal;

   function CalculoValorVenda: integer;
var
    Qtd, VlUnit , VlTot, vldesc , vlacres : integer;
begin
   if (Trim(TelaPdv.CampoQuantidade.text).IsEmpty) then
   begin
        Qtd := 1 ;
        TelaPdv.CampoQuantidade.Text := '1';
   end
   else
   begin
        Qtd   :=  StrToInt (TelaPdv.CampoQuantidade.Text) ;
   end;

   if (Trim(TelaPdv.CampoValorUnitario.text).IsEmpty) then
    begin
       VlUnit := 0;
       TelaPdv.CampoValorUnitario.Text := '0';
   end
   else
   begin
       VlUnit := StrToInt (TelaPdv.CampoValorUnitario.Text) ;
   end;


   if (Trim(TelaPdv.CampoDesconto.text).IsEmpty) then
    begin
      vldesc := 0;
      TelaPdv.CampoDesconto.Text := '0';
   end
   else
   begin
      vldesc  :=  StrToInt (TelaPdv.CampoDesconto.Text);
   end;


   if (Trim(TelaPdv.CampoAcrescimo.text).IsEmpty) then
    begin
      vlacres := 0;
      TelaPdv.CampoAcrescimo.Text := '0';
   end
   else
   begin
      vlacres :=  StrToInt (TelaPdv.CampoAcrescimo.Text);
   end;

  VlTot := (Qtd * VlUnit) - vldesc + vlacres;
  Result:= VlTot ;
   TelaPdv.CampoValorItem.text :=  IntToStr (VlTot);
end;
end.
