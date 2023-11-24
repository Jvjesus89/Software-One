object DbConfigFin: TDbConfigFin
  Left = 0
  Top = 0
  Caption = 'DB'
  ClientHeight = 370
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 112
    Width = 149
    Height = 19
    Caption = 'Forma Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 256
    Top = 112
    Width = 55
    Height = 19
    Caption = 'Prazos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 240
    Width = 125
    Height = 19
    Caption = 'Conta Corrente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 280
    Top = 240
    Width = 49
    Height = 19
    Caption = 'Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 444
    Top = 240
    Width = 65
    Height = 19
    Caption = 'Agencia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FormaPagamento: TFDTable
    IndexFieldNames = 'idformapagamento'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'formapagamento'
    Left = 16
    Top = 136
    object FormaPagamentoidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FormaPagamentonmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object FormaPagamentodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object FormaPagamentocdformapagamento: TIntegerField
      FieldName = 'cdformapagamento'
      Origin = 'cdformapagamento'
    end
  end
  object DsForma: TDataSource
    DataSet = Mforma
    Left = 16
    Top = 184
  end
  object Mforma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pforma'
    AfterPost = MformaAfterPost
    AfterCancel = MformaAfterCancel
    AfterDelete = MformaAfterDelete
    Left = 88
    Top = 184
    object Mformaidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Mformadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Mformanmformapagamento: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object Mformacdformapagamento: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdformapagamento'
      Origin = 'cdformapagamento'
    end
  end
  object Pforma: TDataSetProvider
    DataSet = FormaPagamento
    Left = 88
    Top = 136
  end
  object Prazos: TFDTable
    IndexFieldNames = 'idformapagamento'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'prazopagamento'
    Left = 248
    Top = 136
    object Prazosidprazo: TIntegerField
      FieldName = 'idprazo'
    end
    object Prazosnmprazo: TWideStringField
      FieldName = 'nmprazo'
      Size = 50
    end
    object Prazosnrparcelas: TIntegerField
      FieldName = 'nrparcelas'
    end
    object Prazosidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
    end
    object Prazoscdprazo: TIntegerField
      FieldName = 'cdprazo'
      Origin = 'cdprazo'
    end
  end
  object DsPrazo: TDataSource
    DataSet = Mprazo
    Left = 248
    Top = 184
  end
  object Mprazo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pprazo'
    AfterPost = MprazoAfterPost
    AfterCancel = MprazoAfterCancel
    AfterDelete = MprazoAfterDelete
    Left = 284
    Top = 184
    object Mprazoidprazo: TIntegerField
      FieldName = 'idprazo'
    end
    object Mprazonmprazo: TWideStringField
      DisplayLabel = 'Prazo'
      FieldName = 'nmprazo'
      Size = 50
    end
    object Mprazonrparcelas: TIntegerField
      DisplayLabel = 'Nr. Parcelas'
      FieldName = 'nrparcelas'
    end
    object Mprazoidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
    end
    object Mprazocdprazo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdprazo'
      Origin = 'cdprazo'
    end
  end
  object Pprazo: TDataSetProvider
    DataSet = Prazos
    Left = 284
    Top = 136
  end
  object QFormaPagamento: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From formapagamento')
    Left = 136
    Top = 136
    object QFormaPagamentonmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object QFormaPagamentoidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QFormaPagamentocdformapagamento: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdformapagamento'
      Origin = 'cdformapagamento'
    end
  end
  object DsQformaPagamento: TDataSource
    DataSet = QFormaPagamento
    Left = 136
    Top = 184
  end
  object ContaCorrente: TFDTable
    IndexFieldNames = 'idcontabancaria'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'contabancaria'
    Left = 24
    Top = 272
    object ContaCorrenteidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ContaCorrenteidagencia: TIntegerField
      FieldName = 'idagencia'
      Origin = 'idagencia'
    end
    object ContaCorrenteidbanco: TIntegerField
      FieldName = 'idbanco'
      Origin = 'idbanco'
    end
    object ContaCorrentenrcontacorrente: TIntegerField
      FieldName = 'nrcontacorrente'
      Origin = 'nrcontacorrente'
    end
    object ContaCorrentenmcontabancaria: TWideStringField
      FieldName = 'nmcontabancaria'
      Origin = 'nmcontabancaria'
      Size = 30
    end
    object ContaCorrentedtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object ContaCorrentecdcontabancaria: TIntegerField
      FieldName = 'cdcontabancaria'
      Origin = 'cdcontabancaria'
    end
  end
  object DsConta: TDataSource
    DataSet = Mconta
    Left = 24
    Top = 320
  end
  object Mconta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pconta'
    AfterPost = McontaAfterPost
    AfterCancel = McontaAfterCancel
    AfterDelete = McontaAfterDelete
    Left = 80
    Top = 320
    object Mcontaidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Mcontaidagencia: TIntegerField
      FieldName = 'idagencia'
      Origin = 'idagencia'
    end
    object Mcontaidbanco: TIntegerField
      FieldName = 'idbanco'
      Origin = 'idbanco'
    end
    object Mcontanrcontacorrente: TIntegerField
      FieldName = 'nrcontacorrente'
      Origin = 'nrcontacorrente'
    end
    object Mcontanmcontabancaria: TWideStringField
      FieldName = 'nmcontabancaria'
      Origin = 'nmcontabancaria'
      Size = 30
    end
    object Mcontadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Mcontacdcontabancaria: TIntegerField
      FieldName = 'cdcontabancaria'
      Origin = 'cdcontabancaria'
    end
  end
  object Pconta: TDataSetProvider
    DataSet = ContaCorrente
    Left = 80
    Top = 272
  end
  object Banco: TFDTable
    IndexFieldNames = 'idbanco'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'banco'
    Left = 240
    Top = 272
    object Bancoidbanco: TIntegerField
      FieldName = 'idbanco'
      Origin = 'idbanco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Banconmbanco: TWideStringField
      FieldName = 'nmbanco'
      Origin = 'nmbanco'
    end
    object Banconrbanco: TIntegerField
      FieldName = 'nrbanco'
      Origin = 'nrbanco'
    end
    object Bancodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Bancocdbanco: TIntegerField
      FieldName = 'cdbanco'
      Origin = 'cdbanco'
    end
  end
  object DsBanco: TDataSource
    DataSet = MBanco
    Left = 240
    Top = 320
  end
  object MBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PBanco'
    AfterPost = MBancoAfterPost
    AfterCancel = MBancoAfterCancel
    AfterDelete = MBancoAfterDelete
    Left = 280
    Top = 320
    object MBancoidbanco: TIntegerField
      FieldName = 'idbanco'
      Origin = 'idbanco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MBanconmbanco: TWideStringField
      FieldName = 'nmbanco'
      Origin = 'nmbanco'
    end
    object MBanconrbanco: TIntegerField
      FieldName = 'nrbanco'
      Origin = 'nrbanco'
    end
    object MBancodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object MBancocdbanco: TIntegerField
      FieldName = 'cdbanco'
      Origin = 'cdbanco'
    end
  end
  object PBanco: TDataSetProvider
    DataSet = Banco
    Left = 280
    Top = 272
  end
  object MAgencia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PAgencia'
    AfterPost = MAgenciaAfterPost
    AfterCancel = MAgenciaAfterCancel
    AfterDelete = MAgenciaAfterDelete
    Left = 456
    Top = 320
    object MAgenciaidagencia: TIntegerField
      FieldName = 'idagencia'
      Origin = 'idagencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MAgencianmagencia: TWideStringField
      FieldName = 'nmagencia'
      Origin = 'nmagencia'
      Size = 30
    end
    object MAgencianragencia: TIntegerField
      FieldName = 'nragencia'
      Origin = 'nragencia'
    end
    object MAgenciadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object MAgenciacdagencia: TIntegerField
      FieldName = 'cdagencia'
      Origin = 'cdagencia'
    end
    object MAgenciaidbanco: TIntegerField
      FieldName = 'idbanco'
      Origin = 'idbanco'
    end
  end
  object PAgencia: TDataSetProvider
    DataSet = Agencia
    Left = 456
    Top = 272
  end
  object DsAgencia: TDataSource
    DataSet = MAgencia
    Left = 408
    Top = 320
  end
  object Agencia: TFDTable
    IndexFieldNames = 'idagencia'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'agencia'
    Left = 408
    Top = 272
    object Agenciaidagencia: TIntegerField
      FieldName = 'idagencia'
      Origin = 'idagencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Agencianmagencia: TWideStringField
      FieldName = 'nmagencia'
      Origin = 'nmagencia'
      Size = 30
    end
    object Agencianragencia: TIntegerField
      FieldName = 'nragencia'
      Origin = 'nragencia'
    end
    object Agenciadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Agenciacdagencia: TIntegerField
      FieldName = 'cdagencia'
      Origin = 'cdagencia'
    end
    object Agenciaidbanco: TIntegerField
      FieldName = 'idbanco'
      Origin = 'idbanco'
    end
  end
  object QContaCorrente: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From contabancaria')
    Left = 120
    Top = 272
    object QContaCorrenteidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QContaCorrenteidagencia: TIntegerField
      FieldName = 'idagencia'
      Origin = 'idagencia'
    end
    object QContaCorrenteidbanco: TIntegerField
      FieldName = 'idbanco'
      Origin = 'idbanco'
    end
    object QContaCorrentenrcontacorrente: TIntegerField
      DisplayLabel = 'Nr. Conta Corrente'
      FieldName = 'nrcontacorrente'
      Origin = 'nrcontacorrente'
    end
    object QContaCorrentenmcontabancaria: TWideStringField
      DisplayLabel = 'Conta Bancaria'
      FieldName = 'nmcontabancaria'
      Origin = 'nmcontabancaria'
      Size = 30
    end
    object QContaCorrentedtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QContaCorrentecdcontabancaria: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdcontabancaria'
      Origin = 'cdcontabancaria'
    end
  end
  object DsQContaCorrente: TDataSource
    DataSet = QContaCorrente
    Left = 120
    Top = 320
  end
  object Qbanco: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From banco')
    Left = 320
    Top = 272
    object Qbancoidbanco: TIntegerField
      FieldName = 'idbanco'
      Origin = 'idbanco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Qbanconmbanco: TWideStringField
      DisplayLabel = 'Banco'
      FieldName = 'nmbanco'
      Origin = 'nmbanco'
    end
    object Qbanconrbanco: TIntegerField
      DisplayLabel = 'Nr. Banco'
      FieldName = 'nrbanco'
      Origin = 'nrbanco'
    end
    object Qbancodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Qbancocdbanco: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdbanco'
      Origin = 'cdbanco'
    end
  end
  object DsQBanco: TDataSource
    DataSet = Qbanco
    Left = 320
    Top = 320
  end
  object Qagencia: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From agencia')
    Left = 496
    Top = 272
    object Qagencianmagencia: TWideStringField
      DisplayLabel = 'Agencia'
      FieldName = 'nmagencia'
      Origin = 'nmagencia'
      Size = 30
    end
    object Qagencianragencia: TIntegerField
      DisplayLabel = 'Nr. Agencia'
      FieldName = 'nragencia'
      Origin = 'nragencia'
    end
    object Qagenciacdagencia: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdagencia'
      Origin = 'cdagencia'
    end
  end
  object DsQAgencia: TDataSource
    DataSet = Qagencia
    Left = 496
    Top = 320
  end
  object QBancoAgencia: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From banco')
    Left = 536
    Top = 272
    object IntegerField3: TIntegerField
      FieldName = 'idbanco'
      Origin = 'idbanco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object WideStringField2: TWideStringField
      DisplayLabel = 'Banco'
      FieldName = 'nmbanco'
      Origin = 'nmbanco'
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'Nr. Banco'
      FieldName = 'nrbanco'
      Origin = 'nrbanco'
    end
    object DateField1: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdbanco'
      Origin = 'cdbanco'
    end
  end
  object DsQBancoAgencia: TDataSource
    DataSet = QBancoAgencia
    Left = 536
    Top = 320
  end
  object QAgenciaConta: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From agencia')
    Left = 168
    Top = 272
    object WideStringField1: TWideStringField
      DisplayLabel = 'Agencia'
      FieldName = 'nmagencia'
      Origin = 'nmagencia'
      Size = 30
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Nr. Agencia'
      FieldName = 'nragencia'
      Origin = 'nragencia'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdagencia'
      Origin = 'cdagencia'
    end
    object QAgenciaContaidagencia: TIntegerField
      FieldName = 'idagencia'
      Origin = 'idagencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object DsQAgenciaConta: TDataSource
    DataSet = QAgenciaConta
    Left = 168
    Top = 320
  end
  object QPrazo: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From prazopagamento')
    Left = 320
    Top = 138
    object QPrazoidprazo: TFDAutoIncField
      FieldName = 'idprazo'
      Origin = 'idprazo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QPrazonmprazo: TWideStringField
      FieldName = 'nmprazo'
      Origin = 'nmprazo'
      Required = True
      Size = 50
    end
    object QPrazonrparcelas: TIntegerField
      FieldName = 'nrparcelas'
      Origin = 'nrparcelas'
      Required = True
    end
    object QPrazoidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
      Required = True
    end
    object QPrazocdprazo: TFDAutoIncField
      FieldName = 'cdprazo'
      Origin = 'cdprazo'
    end
  end
  object DsQprazo: TDataSource
    DataSet = QPrazo
    Left = 320
    Top = 186
  end
end
