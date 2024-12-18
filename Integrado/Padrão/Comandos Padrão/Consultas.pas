unit Consultas;

interface

uses DBpadrao;

type
  TConsultaProduto = class
  private
  Fcodigo : string;
  Fdescricao :string;
  TelaConsulta :string;
  public
  property codigo: string  read Fcodigo write Fcodigo;
  property descricao: string  read Fdescricao write Fdescricao;
  procedure ConsultaProduto;
  class function New: TConsultaProduto;
  end;

implementation

{ TConsultaProduto }

procedure TConsultaProduto.ConsultaProduto;
var sql :string;
begin
   sql := 'Select * From produto p left join produtosfamilia f on f.idprodutosfamilia = p.idfamiliaproduto where 1=1';

   if Fcodigo <> '' then
   begin
   sql := sql + 'and cdproduto = :PFcodigo';
   end;

   if Fdescricao <> '' then
   begin
   sql := sql + 'and cdproduto = :PFdescricao';
   end;


   dbConsultas.ConsultaProdutoPadrão.Close;
   dbConsultas.ConsultaProdutoPadrão.Sql.Clear;
   dbConsultas.ConsultaProdutoPadrão.Sql.Add(sql);
   if Fcodigo <> '' then
   begin
   dbConsultas.ConsultaProdutoPadrão.ParamByName('PFcodigo').AsString := (Fcodigo)  ;
   end;
   if Fdescricao <> '' then
   begin
   dbConsultas.ConsultaProdutoPadrão.ParamByName('PFdescricao').AsString := (Fdescricao)  ;
   end;
   dbConsultas.ConsultaProdutoPadrão.Open;
end;

class function TConsultaProduto.New: TConsultaProduto;
begin
     Result := TConsultaProduto.Create;
end;

end.
