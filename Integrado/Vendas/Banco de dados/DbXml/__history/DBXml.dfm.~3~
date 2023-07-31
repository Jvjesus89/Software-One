object DbXmlVendas: TDbXmlVendas
  OldCreateOrder = False
  Height = 374
  Width = 535
  object DbVendas: TFDConnection
    Params.Strings = (
      'Database=Software One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 112
    Top = 8
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 32
    Top = 8
  end
  object QItensGeradoXML: TFDQuery
    Connection = DbVendas
    SQL.Strings = (
      
        'Select * From vendasitem VI join produto P on (VI.idproduto = P.' +
        'idproduto) ')
    Left = 32
    Top = 80
    object IntegerField29: TIntegerField
      FieldName = 'idvendasitem'
      Origin = 'idvendasitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField30: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object IntegerField31: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object WideStringField19: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 50
    end
    object IntegerField32: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
    end
    object SingleField5: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object SingleField6: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
    object QItensGeradoXMLcdproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object QItensGeradoXMLidfamiliaproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object QItensGeradoXMLvlproduto: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object QItensGeradoXMLnmfamiliaproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object QItensGeradoXMLstproduto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object QItensGeradoXMLdtcadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
  end
  object DsItensGeradoXML: TDataSource
    DataSet = QItensGeradoXML
    Left = 32
    Top = 134
  end
  object QClienteXml: TFDQuery
    Connection = DbVendas
    SQL.Strings = (
      'Select * From clientes')
    Left = 120
    Top = 80
    object QClienteXmlidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QClienteXmlnmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object QClienteXmlcpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object QClienteXmlnmendereco: TWideStringField
      FieldName = 'nmendereco'
      Origin = 'nmendereco'
      Size = 50
    end
    object QClienteXmlnrendereço: TWideStringField
      FieldName = 'nrendere'#231'o'
      Origin = '"nrendere'#231'o"'
      Size = 8
    end
    object QClienteXmlcomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object QClienteXmldtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QClienteXmlnmbairro: TWideStringField
      FieldName = 'nmbairro'
      Origin = 'nmbairro'
      Size = 50
    end
    object QClienteXmlnmcidade: TWideStringField
      FieldName = 'nmcidade'
      Origin = 'nmcidade'
      Size = 50
    end
    object QClienteXmlnmestado: TWideStringField
      FieldName = 'nmestado'
      Origin = 'nmestado'
      Size = 2
    end
    object QClienteXmlcdcliente: TWideStringField
      FieldName = 'cdcliente'
      Origin = 'cdcliente'
      Size = 6
    end
  end
  object DsQClienteXml: TDataSource
    DataSet = QClienteXml
    Left = 120
    Top = 134
  end
end
