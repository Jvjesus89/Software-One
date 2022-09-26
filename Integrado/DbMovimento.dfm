object DbMov: TDbMov
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 370
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 240
    Top = 8
  end
  object ConsultaEstoque: TFDTable
    Active = True
    IndexFieldNames = 'idmovimento'
    Connection = Db
    CatalogName = 'Software One'
    SchemaName = 'public'
    TableName = 'movimentoestoque'
    Left = 32
    Top = 112
    object ConsultaEstoqueidmovimento: TIntegerField
      FieldName = 'idmovimento'
      Origin = 'idmovimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ConsultaEstoqueidproduto: TIntegerField
      DisplayWidth = 10
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object ConsultaEstoqueqtmovimentada: TIntegerField
      FieldName = 'qtmovimentada'
      Origin = 'qtmovimentada'
    end
    object ConsultaEstoqueqtdisponivel: TIntegerField
      FieldName = 'qtdisponivel'
      Origin = 'qtdisponivel'
    end
    object ConsultaEstoquedtmovimento: TDateField
      FieldName = 'dtmovimento'
      Origin = 'dtmovimento'
    end
    object ConsultaEstoquetpmovimento: TWideStringField
      DisplayLabel = 'Tipo Movimento'
      FieldName = 'tpmovimento'
      Origin = 'tpmovimento'
      Size = 8
    end
    object ConsultaEstoquedtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
  end
  object Db: TFDConnection
    Params.Strings = (
      'Database=Software One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 240
    Top = 64
  end
  object DsConsulta: TDataSource
    DataSet = MConsulta
    Left = 32
    Top = 184
  end
  object MConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PConsulta'
    AfterPost = MConsultaAfterPost
    AfterCancel = MConsultaAfterCancel
    AfterDelete = MConsultaAfterDelete
    Left = 104
    Top = 184
    object MConsultaidmovimento: TIntegerField
      FieldName = 'idmovimento'
      Origin = 'idmovimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MConsultaidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object MConsultaqtmovimentada: TIntegerField
      DisplayLabel = 'Quantidade Movimentada'
      FieldName = 'qtmovimentada'
      Origin = 'qtmovimentada'
    end
    object MConsultaqtdisponivel: TIntegerField
      DisplayLabel = 'Quantidade Disponivel'
      FieldName = 'qtdisponivel'
      Origin = 'qtdisponivel'
    end
    object MConsultadtmovimento: TDateField
      DisplayLabel = 'Data Movimento'
      FieldName = 'dtmovimento'
      Origin = 'dtmovimento'
      EditMask = '!99/99/0000;1;_'
    end
    object MConsultatpmovimento: TWideStringField
      DisplayLabel = 'Tipo de movimento'
      FieldName = 'tpmovimento'
      Origin = 'tpmovimento'
      Size = 8
    end
    object MConsultadtcadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
  end
  object PConsulta: TDataSetProvider
    DataSet = ConsultaEstoque
    Left = 104
    Top = 112
  end
  object Produto: TFDTable
    Active = True
    IndexFieldNames = 'idproduto'
    Connection = Db
    SchemaName = 'public'
    TableName = 'produto'
    Left = 376
    Top = 112
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
    Left = 432
    Top = 112
  end
  object Mproduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Pproduto'
    AfterPost = MprodutoAfterPost
    AfterCancel = MprodutoAfterCancel
    AfterDelete = MprodutoAfterDelete
    Left = 432
    Top = 184
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
    Left = 368
    Top = 184
  end
  object QConsulta: TFDQuery
    AfterPost = QConsultaAfterPost
    AfterCancel = QConsultaAfterCancel
    AfterDelete = QConsultaAfterDelete
    Connection = Db
    SQL.Strings = (
      'Select * From movimentoestoque')
    Left = 32
    Top = 232
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
    Active = True
    AfterPost = QProdutoAfterPost
    AfterCancel = QProdutoAfterCancel
    AfterDelete = QProdutoAfterDelete
    Connection = Db
    SQL.Strings = (
      'Select * From produto')
    Left = 312
    Top = 184
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
    Top = 304
  end
  object DsProdutoQ: TDataSource
    DataSet = QProduto1
    Left = 320
    Top = 120
  end
  object QProduto1: TFDQuery
    Active = True
    Connection = Db
    SQL.Strings = (
      'Select * From produto')
    Left = 264
    Top = 184
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
  object QDisponivel: TFDQuery
    Connection = Db
    SQL.Strings = (
      'Select qtdisponivel From movimentoestoque ')
    Left = 224
    Top = 112
    object QDisponivelqtdisponivel: TIntegerField
      FieldName = 'qtdisponivel'
      Origin = 'qtdisponivel'
    end
  end
  object DsQdisponivel: TDataSource
    DataSet = QDisponivel
    Left = 216
    Top = 184
  end
  object QdisponivelTemp: TFDQuery
    Active = True
    Connection = Db
    SQL.Strings = (
      'Select * From temp.movimentoestoque')
    Left = 488
    Top = 16
  end
end
