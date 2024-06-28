unit Pdv.model.Caixa;

interface

  Uses
    System.SysUtils,
    System.TypInfo ;
type
Tturno = (MANHA, TARDE, NOITE) ;

TTurnoHelper = record helper for TTurno
  function ToString :String;
  function TEnum (Value : string) :TTurno;
  function RetornaTurno(Value : TdateTime):TTurno;
end;

Tcaixa = class
  private
    FOperador: String;
    Fcaixa: integer;
    Fid: integer;
    FTurno: Tturno;
    FSupervisor: String;
    Fdatahoraabertura: TDateTime;
    FDataHoraFechamento : TDateTime;
    FAberto: Boolean;
    FSaldoInicial: Currency;


  public
  property id: integer  read Fid write Fid;
  property Caixa: integer  read Fcaixa write Fcaixa;
  property Turno: Tturno  read FTurno write FTurno;
  property Operador: String  read FOperador write FOperador;
  property Supervisor: String  read FSupervisor write FSupervisor;
  property Aberto: Boolean  read FAberto write FAberto;
  property DataHoraAbertura: TDateTime  read Fdatahoraabertura write Fdatahoraabertura;
  property DataHoraFechamento: TDateTime  read FDataHoraFechamento write FDataHoraFechamento;
  property Saldoinicial: Currency  read FSaldoInicial write FSaldoInicial;
  class function New: Tcaixa;
end;

implementation

{ Tcaixa }

class function Tcaixa.New: Tcaixa;
begin
   Result := self.Create;
end;

{ TTurnoHelper }

function TTurnoHelper.RetornaTurno(Value: TdateTime): TTurno;
begin
  if (value >= StrToTime('06:00:00')) and
  (value <= StrToTime('11:59:59')) then
  Result := MANHA ;

  if (value >= StrToTime('12:00:00')) and
  (value <= StrToTime('17:59:59')) then
  Result := TARDE;

  if (value >= StrToTime('18:00:00')) and
  (value <= StrToTime('23:59:59')) then
  Result := NOITE;

end;

function TTurnoHelper.TEnum(Value: string): TTurno;
begin
  Result := TTurno(GetEnumValue(TypeInfo(Tturno),value));
end;

function TTurnoHelper.ToString: String;
begin
  Result := GetEnumName(TypeInfo(Tturno),Integer(SELF));
end;

end.
