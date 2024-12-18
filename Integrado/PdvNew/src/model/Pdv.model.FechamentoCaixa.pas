unit Pdv.model.FechamentoCaixa;

interface

uses
  Pdv.model.Caixa;

type

 TFechamentoCaixa = class
   private
    Fid: integer;
    Fcaixa: Tcaixa;
    FDinheiro  :Double;
    FCartaoDebito    :Double;
    FCartaoCredito  :Double;
    FPix  :Double;
    FTotal :Double;
   public
    property  Id : integer read Fid write Fid;
    property  Caixa : Tcaixa read Fcaixa write Fcaixa;
    property  Dinheiro : Double read FDinheiro write FDinheiro;
    property  CartaoDebito : Double read FCartaoDebito write FCartaoDebito;
    property  CartaoCredito : Double read FCartaoCredito write FCartaoCredito;
    property  Pix : Double read FPix write FPix;
    property  Total : Double read FTotal write FTotal;
    Class function New: TfechamentoCaixa;

 end;

implementation

{ TFechamentoCaixa }

class function TFechamentoCaixa.New: TfechamentoCaixa;
begin
   Result := self.Create;
end;

end.
