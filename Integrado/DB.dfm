object Banco: TBanco
  Left = 0
  Top = 0
  Align = alClient
  AutoSize = True
  Caption = 'DB'
  ClientHeight = 230
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
  object DbSoft: TFDConnection
    Params.Strings = (
      'Database=Software One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 16
    Top = 48
  end
  object CadUsuario: TFDTable
    Active = True
    IndexFieldNames = 'idusuario'
    ConstraintsEnabled = True
    Connection = DbSoft
    CatalogName = 'Software One'
    TableName = 'usuario'
    Left = 16
    Top = 96
    object CadUsuarioidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object nmusuario: TWideStringField
      FieldName = 'nmusuario'
      Origin = 'nmusuario'
      Size = 50
    end
    object CadUsuariosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 50
    end
    object CadUsuariocdusuario: TIntegerField
      FieldName = 'cdusuario'
      Origin = 'cdusuario'
    end
    object CadUsuariodtcadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
    end
  end
  object Dsusuario: TDataSource
    DataSet = Musuario
    Left = 16
    Top = 144
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 16
  end
  object Pusuario: TDataSetProvider
    DataSet = CadUsuario
    Left = 72
    Top = 96
  end
  object Musuario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Pusuario'
    AfterPost = MusuarioAfterPost
    AfterCancel = MusuarioAfterCancel
    AfterDelete = MusuarioAfterDelete
    Left = 72
    Top = 146
    object Musuarioidusuario: TIntegerField
      DisplayLabel = 'IdUsuario'
      FieldName = 'idusuario'
      Origin = 'idusuario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Musuarionmusuario: TWideStringField
      DisplayLabel = 'NmUsuario'
      FieldName = 'nmusuario'
      Origin = 'nmusuario'
      Required = True
      Size = 50
    end
    object Musuariosenha: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 50
    end
    object Musuariocdusuario: TIntegerField
      DisplayLabel = 'CdUsuario'
      FieldName = 'cdusuario'
      Origin = 'cdusuario'
    end
    object Musuariodtcadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
    end
  end
end
