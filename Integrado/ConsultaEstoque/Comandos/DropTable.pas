unit DropTable;

interface

type
  TDropTableTempMovimento  = class
  public
  procedure DropMovimento;
  end;

implementation

{ TDropTableTempMovimento }

uses DbMovimento;

procedure TDropTableTempMovimento.DropMovimento;
begin
    DbMov.QCriarTabelaTemp.close;
    DbMov.QCriarTabelaTemp.sql.Clear;
    DbMov.QCriarTabelaTemp.sql.Add('Drop Table IF EXISTS temp."#movimentoestoque"');
    DbMov.QCriarTabelaTemp.ExecSQl;
end;

end.
