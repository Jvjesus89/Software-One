object DbMov: TDbMov
  OldCreateOrder = False
  Height = 347
  Width = 597
  object Produto: TFDTable
    IndexFieldNames = 'idproduto'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'produto'
    Left = 400
    Top = 24
    object nmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object cdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object nmfamiliaproduto: TWideStringField
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object idproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object Pproduto: TDataSetProvider
    DataSet = Produto
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
  object DsProduto: TDataSource
    DataSet = QProduto
    Left = 392
    Top = 96
  end
  object QConsulta: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From movimentoestoque')
    Left = 32
    Top = 184
    object QConsultaqtmovimentada: TIntegerField
      DisplayLabel = 'Quantidade Movimento'
      FieldName = 'qtmovimentada'
      Origin = 'qtmovimentada'
    end
    object QConsultaqtdisponivel: TIntegerField
      DisplayLabel = 'Quantidade Disponivel'
      FieldName = 'qtdisponivel'
      Origin = 'qtdisponivel'
    end
    object QConsultadtmovimento: TDateField
      DisplayLabel = 'Data Movimento'
      FieldName = 'dtmovimento'
      Origin = 'dtmovimento'
    end
    object QConsultatpmovimento: TWideStringField
      DisplayLabel = 'Tipo Movimento'
      FieldName = 'tpmovimento'
      Origin = 'tpmovimento'
      Size = 8
    end
    object QConsultadtcadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QConsultaidmovimento: TIntegerField
      FieldName = 'idmovimento'
      Origin = 'idmovimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QConsultaidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
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
  object DsConsultaQ: TDataSource
    DataSet = QConsulta
    Left = 32
    Top = 240
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
  object QCriarTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 176
    Top = 184
  end
  object DsQCriarTabelaTemp: TDataSource
    DataSet = QCriarTabelaTemp
    Left = 176
    Top = 240
  end
  object QConsultaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From temp."#movimentoestoque" T'
      'join produto P on P.idproduto = T.idproduto')
    Left = 272
    Top = 184
    object QConsultaTempidmovimento: TFDAutoIncField
      FieldName = 'idmovimento'
      Origin = 'idmovimento'
      ReadOnly = True
    end
    object QConsultaTempidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object QConsultaTempqtmovimentada: TIntegerField
      FieldName = 'qtmovimentada'
      Origin = 'qtmovimentada'
    end
    object QConsultaTempqtdisponivel: TIntegerField
      FieldName = 'qtdisponivel'
      Origin = 'qtdisponivel'
    end
    object QConsultaTempdtmovimento: TDateField
      FieldName = 'dtmovimento'
      Origin = 'dtmovimento'
    end
    object QConsultaTemptpmovimento: TWideStringField
      FieldName = 'tpmovimento'
      Origin = 'tpmovimento'
      Size = 8
    end
    object QConsultaTempdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QConsultaTempidorigem: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object QConsultaTempidproduto_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idproduto_1'
      Origin = 'idproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultaTempnmproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QConsultaTempcdproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QConsultaTempidfamiliaproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultaTempvlproduto: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultaTempnmfamiliaproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QConsultaTempstproduto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'stproduto'
      Origin = 'stproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultaTempdtcadastro_1: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtcadastro_1'
      Origin = 'dtcadastro'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DsQConsultaTemp: TDataSource
    DataSet = QConsultaTemp
    Left = 272
    Top = 240
  end
  object QProduto1: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produto')
    Left = 280
    Top = 24
    object QProduto1idproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QProduto1nmproduto: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object QProduto1cdproduto: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object QProduto1idfamiliaproduto: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object QProduto1vlproduto: TSingleField
      DisplayLabel = 'Valor Unitario'
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object QProduto1nmfamiliaproduto: TWideStringField
      DisplayLabel = 'Familia Produto'
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object QProduto1stproduto: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object QProduto1dtcadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
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
