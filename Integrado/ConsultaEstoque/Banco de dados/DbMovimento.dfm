object DbMov: TDbMov
  OldCreateOrder = False
  Height = 347
  Width = 597
  object Pproduto: TDataSetProvider
    Left = 456
    Top = 24
  end
  object Mproduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pproduto'
    Left = 456
    Top = 96
    object Mprodutonmproduto: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object Mprodutocdproduto: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object Mprodutonmfamiliaproduto: TWideStringField
      DisplayLabel = 'Familia Produto'
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object Mprodutoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object QProduto: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produto')
    Left = 344
    Top = 24
    object QProdutoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QProdutonmproduto: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object QProdutocdproduto: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object QProdutoidfamiliaproduto: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object QProdutovlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object QProdutonmfamiliaproduto: TWideStringField
      DisplayLabel = 'Nome Familia'
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object QProdutostproduto: TBooleanField
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object QProdutodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
  end
  object DsProdutoQ: TDataSource
    DataSet = QProduto
    Left = 336
    Top = 96
  end
  object QDisponivel: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select qtdisponivel From movimentoestoque ')
    Left = 184
    Top = 24
    object QDisponivelqtdisponivel: TIntegerField
      FieldName = 'qtdisponivel'
      Origin = 'qtdisponivel'
    end
  end
  object DsQdisponivel: TDataSource
    DataSet = QDisponivel
    Left = 176
    Top = 96
  end
  object QInseriMov: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 40
    Top = 32
  end
  object DsQInseriMov: TDataSource
    DataSet = QInseriMov
    Left = 32
    Top = 96
  end
end
