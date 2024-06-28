unit Consultas;

interface
uses
DbVendas;

type
  TconsultaIdVenda = class
    public idvenda : integer;

    procedure ConsultandoIdVenda;
  end;
  TConsultaNrVenda = class
    public nrdocumento : integer;
    procedure ConsultandoNrDocumento;
  end;


implementation

{ TconsultaIdVenda }



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

end.
