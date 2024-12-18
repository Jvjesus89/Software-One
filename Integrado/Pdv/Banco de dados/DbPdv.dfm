object BancoPdv: TBancoPdv
  OldCreateOrder = False
  Height = 449
  Width = 726
  object DsQvendasPdv: TDataSource
    DataSet = QvendasPdvItem
    Left = 32
    Top = 144
  end
  object DbPdv: TFDConnection
    Params.Strings = (
      'Password=123456'
      'User_Name=postgres'
      'Database=Software-One'
      'Server=192.168.1.10'
      'Port=5433'
      'DriverID=PG')
    Connected = True
    Left = 32
    Top = 8
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 128
    Top = 8
  end
  object QVendasPdv: TFDQuery
    Active = True
    Connection = DbPdv
    SQL.Strings = (
      'Select * From temp."#VendasPdv"')
    Left = 32
    Top = 72
    object QVendasPdvidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object QVendasPdvidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object QVendasPdvidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object QVendasPdvvlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
    object QVendasPdvdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QVendasPdvdtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object QVendasPdvnmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object QVendasPdvnmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object QVendasPdvnrdocumento: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
  end
  object QvendasPdvItem: TFDQuery
    Connection = DbPdv
    SQL.Strings = (
      
        'Select * From temp."#VendasPdvItem" VPI join produto P on (P.idp' +
        'roduto = VPI.idproduto)')
    Left = 128
    Top = 72
    object QvendasPdvItemiditemvenda: TIntegerField
      FieldName = 'iditemvenda'
      Origin = 'iditemvenda'
    end
    object QvendasPdvItemnmitemvenda: TWideStringField
      FieldName = 'nmitemvenda'
      Origin = 'nmitemvenda'
      Size = 50
    end
    object QvendasPdvItemvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
      currency = True
    end
    object QvendasPdvItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
      currency = True
    end
    object QvendasPdvItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object QvendasPdvItemqtitem: TIntegerField
      FieldName = 'qtitem'
      Origin = 'qtitem'
    end
    object QvendasPdvItemidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object QvendasPdvItemvldesconto: TSingleField
      FieldName = 'vldesconto'
      Origin = 'vldesconto'
      currency = True
    end
    object QvendasPdvItemvlacrescimo: TSingleField
      FieldName = 'vlacrescimo'
      Origin = 'vlacrescimo'
      currency = True
    end
    object QvendasPdvItemnmsistema: TWideStringField
      FieldName = 'nmsistema'
      Origin = 'nmsistema'
      Size = 50
    end
    object QvendasPdvItemidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object QvendasPdvItemcdproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
  end
  object DsQvendasPdvItem: TDataSource
    DataSet = QvendasPdvItem
    Left = 128
    Top = 144
  end
  object QProdutos: TFDQuery
    Connection = DbPdv
    SQL.Strings = (
      'Select * From produto Where stproduto = '#39'True'#39)
    Left = 656
    Top = 24
    object QProdutosidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QProdutosnmproduto: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object QProdutoscdproduto: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object QProdutosidfamiliaproduto: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object QProdutosvlproduto: TSingleField
      DisplayLabel = 'Valor Unitario'
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object QProdutosnmfamiliaproduto: TWideStringField
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object QProdutosstproduto: TBooleanField
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object QProdutosdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
  end
  object DsQprodutos: TDataSource
    DataSet = QProdutos
    Left = 656
    Top = 88
  end
  object QVendasPdvCreateTable: TFDQuery
    Active = True
    Connection = DbPdv
    SQL.Strings = (
      'Select * From temp."#VendasPdv"')
    Left = 528
    Top = 320
    object IntegerField1: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object IntegerField2: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object IntegerField3: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object SingleField1: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
    object DateField1: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField2: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object WideStringField1: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object WideStringField2: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object IntegerField4: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
  end
  object QVendasPdvItemCreateTable: TFDQuery
    Connection = DbPdv
    SQL.Strings = (
      
        'Select * From temp."#VendasPdvItem" VPI join produto P on (P.idp' +
        'roduto = VPI.idproduto)')
    Left = 528
    Top = 384
    object IntegerField5: TIntegerField
      FieldName = 'iditemvenda'
      Origin = 'iditemvenda'
    end
    object WideStringField3: TWideStringField
      FieldName = 'nmitemvenda'
      Origin = 'nmitemvenda'
      Size = 50
    end
    object SingleField2: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object SingleField3: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
    object IntegerField6: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object IntegerField7: TIntegerField
      FieldName = 'qtitem'
      Origin = 'qtitem'
    end
    object IntegerField8: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object SingleField4: TSingleField
      FieldName = 'vldesconto'
      Origin = 'vldesconto'
    end
    object SingleField5: TSingleField
      FieldName = 'vlacrescimo'
      Origin = 'vlacrescimo'
    end
    object WideStringField4: TWideStringField
      FieldName = 'nmsistema'
      Origin = 'nmsistema'
      Size = 50
    end
    object IntegerField9: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object WideStringField5: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
  end
  object QVendasPdvTemp: TFDQuery
    Active = True
    Connection = DbPdv
    SQL.Strings = (
      'Select * From temp."#VendasPdv"')
    Left = 672
    Top = 320
    object IntegerField10: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object IntegerField11: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object IntegerField12: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object SingleField6: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
    object DateField3: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField4: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object WideStringField6: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object WideStringField7: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object IntegerField13: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
  end
  object QVendasPdvTempItem: TFDQuery
    Connection = DbPdv
    SQL.Strings = (
      
        'Select * From temp."#VendasPdvItem" VPI join produto P on (P.idp' +
        'roduto = VPI.idproduto)')
    Left = 672
    Top = 384
    object IntegerField14: TIntegerField
      FieldName = 'iditemvenda'
      Origin = 'iditemvenda'
    end
    object WideStringField8: TWideStringField
      FieldName = 'nmitemvenda'
      Origin = 'nmitemvenda'
      Size = 50
    end
    object SingleField7: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object SingleField8: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
    object IntegerField15: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object IntegerField16: TIntegerField
      FieldName = 'qtitem'
      Origin = 'qtitem'
    end
    object IntegerField17: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object SingleField9: TSingleField
      FieldName = 'vldesconto'
      Origin = 'vldesconto'
    end
    object SingleField10: TSingleField
      FieldName = 'vlacrescimo'
      Origin = 'vlacrescimo'
    end
    object WideStringField9: TWideStringField
      FieldName = 'nmsistema'
      Origin = 'nmsistema'
      Size = 50
    end
    object IntegerField18: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object WideStringField10: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
  end
  object QVendasPdvItensCampo: TFDQuery
    Connection = DbPdv
    SQL.Strings = (
      'Select * From temp."#VendasPdvItemCampos"')
    Left = 256
    Top = 72
    object QVendasPdvItensCampoiditemvenda: TIntegerField
      FieldName = 'iditemvenda'
      Origin = 'iditemvenda'
    end
    object QVendasPdvItensCamponmitemvenda: TWideStringField
      FieldName = 'nmitemvenda'
      Origin = 'nmitemvenda'
      Size = 50
    end
    object QVendasPdvItensCampocdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
    end
    object QVendasPdvItensCampovlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object QVendasPdvItensCampovlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
    object QVendasPdvItensCampoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object QVendasPdvItensCampoqtitem: TIntegerField
      FieldName = 'qtitem'
      Origin = 'qtitem'
    end
    object QVendasPdvItensCampoidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object QVendasPdvItensCampovldesconto: TSingleField
      FieldName = 'vldesconto'
      Origin = 'vldesconto'
    end
    object QVendasPdvItensCampovlacrescimo: TSingleField
      FieldName = 'vlacrescimo'
      Origin = 'vlacrescimo'
    end
    object QVendasPdvItensCamponmsistema: TWideStringField
      FieldName = 'nmsistema'
      Origin = 'nmsistema'
      Size = 50
    end
    object QVendasPdvItensCampoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
  end
  object DsQVendasPdvItensCampo: TDataSource
    DataSet = QVendasPdvItensCampo
    Left = 256
    Top = 144
  end
  object QInsereDados: TFDQuery
    Active = True
    Connection = DbPdv
    SQL.Strings = (
      'Select * From temp."#VendasPdv"')
    Left = 32
    Top = 216
    object IntegerField19: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object IntegerField20: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object IntegerField21: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object SingleField11: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
    object DateField5: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField6: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object WideStringField11: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object WideStringField12: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object IntegerField22: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
  end
  object QSomaItensTemp: TFDQuery
    Connection = DbPdv
    SQL.Strings = (
      'Select * From temp."#VendasPdvItem"')
    Left = 32
    Top = 304
    object IntegerField23: TIntegerField
      FieldName = 'iditemvenda'
      Origin = 'iditemvenda'
    end
    object WideStringField13: TWideStringField
      FieldName = 'nmitemvenda'
      Origin = 'nmitemvenda'
      Size = 50
    end
    object WideStringField14: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
    end
    object SingleField12: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object SingleField13: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
    object IntegerField24: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object IntegerField25: TIntegerField
      FieldName = 'qtitem'
      Origin = 'qtitem'
    end
    object IntegerField26: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object SingleField14: TSingleField
      FieldName = 'vldesconto'
      Origin = 'vldesconto'
    end
    object SingleField15: TSingleField
      FieldName = 'vlacrescimo'
      Origin = 'vlacrescimo'
    end
    object WideStringField15: TWideStringField
      FieldName = 'nmsistema'
      Origin = 'nmsistema'
      Size = 50
    end
    object IntegerField27: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
  end
  object DsSomaItensTemp: TDataSource
    DataSet = QSomaItensTemp
    Left = 32
    Top = 376
  end
  object QExcluiDados: TFDQuery
    Active = True
    Connection = DbPdv
    SQL.Strings = (
      'Select * From temp."#VendasPdv"')
    Left = 112
    Top = 216
    object IntegerField28: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object IntegerField29: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object IntegerField30: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object SingleField16: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
    object DateField7: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField8: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object WideStringField16: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object WideStringField17: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object IntegerField31: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
  end
  object QSomatorioValor: TFDQuery
    Active = True
    Connection = DbPdv
    SQL.Strings = (
      'SELECT SUM(vlitem) FROM temp."#VendasPdvItem";')
    Left = 368
    Top = 72
    object QSomatorioValorsum: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'sum'
      Origin = 'sum'
      ReadOnly = True
    end
  end
  object DsQSomatorioValor: TDataSource
    DataSet = QSomatorioValor
    Left = 368
    Top = 144
  end
end
