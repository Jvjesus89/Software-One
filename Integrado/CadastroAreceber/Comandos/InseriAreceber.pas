unit InseriAreceber;

interface

uses
  System.SysUtils;

type

  TtituloAreceber = class
  public
    Vltitulo: integer;
    nrtitulo: integer;
    dtvencimento: Tdate;
     dtcadastro: Tdate;
  Private

  public
    procedure InserirAreceber;
  end;


implementation

{ TInseriAreceber }

uses Dbfinreceber;

procedure TtituloAreceber.InserirAreceber;
begin
    // inserir dados na tabela temp
    DbFinAreceber1.QTabelaTemp.close;
    DbFinAreceber1.QTabelaTemp.sql.Clear;
    DbFinAreceber1.QTabelaTemp.sql.add
      ('update temp."#areceber" Set vltitulo = :Pvltitulo, nrtitulo = :Pnrtitulo, dtcadastro = :Pdtcadastro, dtvencimento =:Pdtvencimento');
    DbFinAreceber1.QTabelaTemp.ParamByName('Pvltitulo').AsInteger := Vltitulo;
    DbFinAreceber1.QTabelaTemp.ParamByName('Pnrtitulo').AsInteger := nrtitulo;
    DbFinAreceber1.QTabelaTemp.ParamByName('Pdtcadastro').AsDateTime := dtcadastro;
    DbFinAreceber1.QTabelaTemp.ParamByName('Pdtvencimento').AsDateTime := dtvencimento;
    DbFinAreceber1.QTabelaTemp.ExecSQL;
   // verificar registro na tabela temp e copiar para tabela a receber
  DbFinAreceber1.QTabelaTemp.close;
  DbFinAreceber1.QTabelaTemp.sql.Clear;
  DbFinAreceber1.QTabelaTemp.sql.add('Insert into areceber (idcliente, nmcliente, idformapagamento, nmformapagamento, vltitulo, nrtitulo, dtcadastro, dtvencimento, idorigem, dtbaixa, idcontabancaria)');
  DbFinAreceber1.QTabelaTemp.sql.add('select idcliente, nmcliente  ,idformapagamento ,nmformapagamento,vltitulo  ,nrtitulo  ,dtcadastro  ,dtvencimento ,idorigem ,dtbaixa ,idcontabancaria  From temp."#areceber"');
  DbFinAreceber1.QTabelaTemp.ExecSQL;

  DbFinAreceber1.QAreceber.close;
  DbFinAreceber1.QAreceber.Open;
end;

end.
