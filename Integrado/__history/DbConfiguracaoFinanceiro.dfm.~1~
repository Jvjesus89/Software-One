object DbConfig: TDbConfig
  Left = 0
  Top = 0
  Caption = 'DB'
  ClientHeight = 231
  ClientWidth = 505
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
  object DB: TFDConnection
    Params.Strings = (
      'Database=Software One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 16
    Top = 56
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 16
  end
  object FormaPagamento: TFDTable
    Active = True
    IndexFieldNames = 'idformapagamento'
    Connection = DB
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
      Size = 50
    end
    object Mformacdformapagamento: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdformapagamento'
    end
  end
  object Pforma: TDataSetProvider
    DataSet = FormaPagamento
    Left = 88
    Top = 136
  end
  object Prazos: TFDTable
    Active = True
    IndexFieldNames = 'idformapagamento'
    Connection = DB
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
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Pprazo'
    AfterPost = MprazoAfterPost
    AfterCancel = MprazoAfterCancel
    AfterDelete = MprazoAfterDelete
    Left = 320
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
    Left = 320
    Top = 136
  end
  object QFormaPagamento: TFDQuery
    Active = True
    Connection = DB
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
end
