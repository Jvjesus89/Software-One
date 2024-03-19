unit CreatTable;

interface
type
  TCreatTableTempMovimento  = class
  public
  procedure CreatTableTempMovimento;
  end;

implementation

{ TCreatTableTempMovimento }

uses DbMovimento;

procedure TCreatTableTempMovimento.CreatTableTempMovimento;
begin
    DbMov.QCriarTabelaTemp.close;
    DbMov.QCriarTabelaTemp.sql.Clear;
    DbMov.QCriarTabelaTemp.sql.Add('CREATE SEQUENCE IF NOT EXISTS  temp."#movimentoestoque_idmovimento_seq" INCREMENT 1 MINVALUE 000001;');
    DbMov.QCriarTabelaTemp.ExecSQl;

    //criação tabela temporaria para movimentações
    DbMov.QCriarTabelaTemp.close;
    DbMov.QCriarTabelaTemp.sql.Clear;
    DbMov.QCriarTabelaTemp.sql.Add('CREATE TABLE IF NOT EXISTS temp."#movimentoestoque"(idmovimento integer NOT NULL DEFAULT nextval($$temp."#movimentoestoque_idmovimento_seq"$$::regclass),idproduto integer ,');
    DbMov.QCriarTabelaTemp.sql.Add('qtmovimentada integer ,qtdisponivel integer ,dtmovimento date , tpmovimento character varying(8) COLLATE pg_catalog."default", dtcadastro date ,idorigem integer)');
    DbMov.QCriarTabelaTemp.ExecSQl;


end;

end.
