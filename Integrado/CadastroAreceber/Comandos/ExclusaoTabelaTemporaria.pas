unit ExclusaoTabelaTemporaria;

interface
type
   TexclusaoAreceber = class

procedure   ExcluirTempAreceber;

   end;

implementation

{ TexclusaoAreceber }

uses Dbfinreceber;

procedure TexclusaoAreceber.ExcluirTempAreceber;
begin
     DbFinAreceber1.QTabelaTemp.close;
     DbFinAreceber1.QTabelaTemp.sql.clear;
     DbFinAreceber1.QTabelaTemp.sql.add('Drop Table temp."#areceber"');
     DbFinAreceber1.QTabelaTemp.Execsql;
     DbFinAreceber1.QConsultaUltimoTitulo.Close;
     DbFinAreceber1.QTempCampos.Close;
end;

end.
