unit Consultas;

interface
uses
DbVendas, TelaConsultaProdutoVenda;

type
  TconsultaIdVenda = class
    public idvenda : integer;

    procedure ConsultandoIdVenda;
  end;
  TConsultaNrVenda = class
    public nrdocumento : integer;
    procedure ConsultandoNrDocumento;
  end;
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

  TConsultaCliente = class
  private
  Fcodigo : string;
  Frazao :string;
  TelaConsulta :string;
  public
  property codigo: string  read Fcodigo write Fcodigo;
  property razao: string  read Frazao write Frazao;
  procedure ConsultaCliente;
  class function New: TConsultaCliente;
  end;


implementation

{ TconsultaIdVenda }

uses CadastroProdutoVenda, TelaConsultaClienteVenda, TelaCadastroVenda;



procedure TconsultaIdVenda.ConsultandoIdVenda;
begin
      DbVendas1.QComandoConsulta.Close;
      DbVendas1.QComandoConsulta.sql.Clear;
      DbVendas1.QComandoConsulta.sql.Add('SELECT max(idvenda) as idvenda from vendas');
      DbVendas1.QComandoConsulta.Open;

      idvenda := DbVendas1.QComandoConsulta.Fields[0].AsInteger;

      DbVendas1.QComandoConsulta.Close;
end;

{ TConsultaNrVenda }

procedure TConsultaNrVenda.ConsultandoNrDocumento;
begin
      DbVendas1.QComandoConsulta.Close;
      DbVendas1.QComandoConsulta.sql.Clear;
      DbVendas1.QComandoConsulta.sql.Add('SELECT (nrdocumento) as nrdocumento  from vendas order by idvenda desc ');
      DbVendas1.QComandoConsulta.Open;

      nrdocumento := DbVendas1.QComandoConsulta.Fields[0].AsInteger + 1;

      DbVendas1.QComandoConsulta.Close;
end;

{ TConsultaProduto }

procedure TConsultaProduto.ConsultaProduto;
var sql :string;
begin
   sql := 'Select * From produto where 1=1';

   if Fcodigo <> '' then
   begin
   sql := sql + 'and cdproduto = :PFcodigo';
   end;

   if Fdescricao <> '' then
   begin
   sql := sql + 'and cdproduto = :PFdescricao';
   end;


   TelaConsultaProduto.QProduto.Close;
   TelaConsultaProduto.QProduto.Sql.Clear;
   TelaConsultaProduto.QProduto.Sql.Add(sql);
   if Fcodigo <> '' then
   begin
   TelaConsultaProduto.QProduto.ParamByName('PFcodigo').AsString := (Fcodigo)  ;
   end;
   if Fdescricao <> '' then
   begin
   TelaConsultaProduto.QProduto.ParamByName('PFdescricao').AsString := (Fdescricao)  ;
   end;
   TelaConsultaProduto.QProduto.Open;

   if (TelaConsultaProduto.QProduto.RecordCount = 1) then
    begin
       try
      TelaCadastroProdutoVenda.MVendasItem.FieldByName('idproduto').AsInteger := TelaConsultaProduto.QProduto.FieldByName('idproduto').AsInteger;
      TelaCadastroProdutoVenda.MVendasItem.FieldByName('cdproduto').AsString :=  TelaConsultaProduto.QProduto.FieldByName('cdproduto').AsString;
      TelaCadastroProdutoVenda.MVendasItem.FieldByName('nmproduto').AsString :=  TelaConsultaProduto.QProduto.FieldByName('nmproduto').AsString;
      TelaCadastroProdutoVenda.MVendasItem.FieldByName('vlunitario').AsString :=  TelaConsultaProduto.QProduto.FieldByName('vlproduto').AsString;
    except
    TelaCadastroProdutoVenda.MVendasItem.Cancel;
    raise
    end;
    end
    else
    TelaConsultaProduto.ShowModal;

end;

class function TConsultaProduto.New: TConsultaProduto;
begin
   Result := TConsultaProduto.Create;
end;

{ TConsultaCliente }

procedure TConsultaCliente.ConsultaCliente;
var sql :string;
begin
   sql := 'Select * From clientes where 1=1';

   if Fcodigo <> '' then
   begin
   sql := sql + 'and cdcliente = :PFcodigo';
   end;

   if Frazao <> '' then
   begin
   sql := sql + 'and razao = :PFrazao';
   end;


   TelaConsultaCliente.Qcliente.Close;
   TelaConsultaCliente.Qcliente.Sql.Clear;
   TelaConsultaCliente.Qcliente.Sql.Add(sql);
   if Fcodigo <> '' then
   begin
   TelaConsultaCliente.Qcliente.ParamByName('PFcodigo').AsString := (Fcodigo)  ;
   end;
   if Frazao <> '' then
   begin
   TelaConsultaCliente.Qcliente.ParamByName('PFrazao').AsString := (Frazao)  ;
   end;
   TelaConsultaCliente.Qcliente.Open;

   if (TelaConsultaCliente.Qcliente.RecordCount = 1) then
   begin
    try
    TelaCadastroVendas.MVenda.FieldByName('idcliente').AsInteger := TelaConsultaCliente.Qcliente.FieldByName('idcliente').AsInteger ;
    TelaCadastroVendas.MVenda.FieldByName('cdcliente').AsString := TelaConsultaCliente.Qcliente.FieldByName('cdcliente').AsString ;
    TelaCadastroVendas.MVenda.FieldByName('nmcliente').AsString := TelaConsultaCliente.Qcliente.FieldByName('nmcliente').AsString ;
     except
    TelaCadastroVendas.MVenda.Cancel;
    raise;
     end;
    end
    else
    TelaConsultaCliente.ShowModal;

end;

class function TConsultaCliente.New: TConsultaCliente;
begin
  Result := TConsultaCliente.Create;
end;

end.
