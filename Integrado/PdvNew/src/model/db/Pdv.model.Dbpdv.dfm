object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 158
  Width = 420
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 344
    Top = 40
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 264
    Top = 40
    object ClientDataSet1idusuario: TAutoIncField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ClientDataSet1nmusuario: TWideStringField
      FieldName = 'nmusuario'
      Origin = 'nmusuario'
      Required = True
      Size = 50
    end
    object ClientDataSet1senha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 50
    end
    object ClientDataSet1cdusuario: TAutoIncField
      FieldName = 'cdusuario'
      Origin = 'cdusuario'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object ClientDataSet1dtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = Vendas
    Left = 176
    Top = 40
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * From vendas'
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 24
    Top = 104
  end
  object Vendas: TFDTable
    IndexFieldNames = 'idusuario'
    ConstraintsEnabled = True
    Connection = DbMaster.ConexãoDb
    CatalogName = 'Software-One'
    TableName = 'usuario'
    Left = 24
    Top = 40
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'OdbcConnection'
    DriverName = 'Odbc'
    Params.Strings = (
      'DriverName=Odbc'
      'DataBase=Software-One'
      'User_Name=postgres'
      'Password=123456'
      'IsolationLevel=ReadCommitted'
      'RowSetSize='
      
        'ConnectionString=DriverName=Odbc,DataBase=Database Name,User_Nam' +
        'e=user,Password=password,IsolationLevel=ReadCommitted,RowSetSize' +
        '=20,ConnectionString=')
    TableScope = []
    Left = 88
    Top = 104
  end
end
