unit Pdv.model.Enum;

interface
uses system.SysUtils,
System.TypInfo;

  type
  TtipoPagamento = (DINHEIRO,CARTAO_DEBITO,CARTAO_CREDITO,PIX);
  TtipoPagamentoHelper = record helper for  TtipoPagamento
  function ToString: String;
  function ToEnum(Value:String) : TtipoPagamento;
  end;

implementation

{ TtipoPagamentoHelper }

function TtipoPagamentoHelper.ToEnum(Value: String): TtipoPagamento;
begin
   Result := TtipoPagamento(GetEnumValue(TypeInfo(TtipoPagamento),StringReplace(value, ' ', '_',  [rfReplaceAll,rfIgnoreCase])));
end;

function TtipoPagamentoHelper.ToString: String;
begin
  Result := StringReplace(GetEnumName(TypeInfo(Ttipopagamento), Integer(Self)),'_', ' ', [rfReplaceAll,rfIgnoreCase]);
end;

end.
