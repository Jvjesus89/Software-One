object BancoPdv: TBancoPdv
  OldCreateOrder = False
  Height = 352
  Width = 391
  object DsQvendasPdv: TDataSource
    DataSet = QvendasPdvItem
    Left = 32
    Top = 144
  end
  object DbPdv: TFDConnection
    Params.Strings = (
      'Password=123456'
      'User_Name=postgres'
      'Database=Software One'
      'Server=localhost'
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
    Active = True
    Connection = DbPdv
    SQL.Strings = (
      'Select * From temp."#VendasPdvItem"')
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
    end
    object QvendasPdvItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
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
    end
    object QvendasPdvItemvlacrescimo: TSingleField
      FieldName = 'vlacrescimo'
      Origin = 'vlacrescimo'
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
  end
  object DsQvendasPdvItem: TDataSource
    DataSet = QvendasPdvItem
    Left = 128
    Top = 144
  end
  object QProdutos: TFDQuery
    Active = True
    Connection = DbPdv
    SQL.Strings = (
      'Select * From produto Where stproduto = '#39'True'#39)
    Left = 24
    Top = 240
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
      currency = True
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
    Left = 24
    Top = 296
  end
end
