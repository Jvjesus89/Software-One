﻿object Dbprod: TDbprod
  Left = 0
  Top = 0
  Caption = 'dbprod'
  ClientHeight = 231
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DsProduto: TDataSource
    DataSet = Mproduto
    Left = 32
    Top = 176
  end
  object Db: TFDConnection
    Params.Strings = (
      'Database=Software One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 32
    Top = 72
  end
  object TabelaProd: TFDTable
    Active = True
    IndexFieldNames = 'idproduto'
    Connection = Db
    CatalogName = 'Software One'
    SchemaName = 'public'
    TableName = 'produto'
    Left = 32
    Top = 120
    object TabelaProdcdproduto: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object TabelaProdnmproduto: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object TabelaProdnmfamiliaproduto: TWideStringField
      DisplayLabel = 'Familia produto'
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object TabelaProdstproduto: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object TabelaProddtcadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      EditMask = '!99/99/0000;1;_'
    end
    object TabelaProdidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object TabelaProdidfamiliaproduto: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
      Visible = False
    end
    object TabelaProdvlproduto: TSingleField
      DisplayLabel = 'Valor Unitario'
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 32
    Top = 16
  end
  object Pproduto: TDataSetProvider
    DataSet = TabelaProd
    Left = 120
    Top = 120
  end
  object DsQproduto: TDataSource
    DataSet = Qproduto
    Left = 192
    Top = 176
  end
  object Qproduto: TFDQuery
    Active = True
    AfterPost = QprodutoAfterPost
    AfterCancel = QprodutoAfterCancel
    AfterDelete = QprodutoAfterDelete
    Connection = Db
    SQL.Strings = (
      'Select * From produto')
    Left = 192
    Top = 120
    object IntegerField1: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object WideStringField1: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object WideStringField2: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object IntegerField2: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object WideStringField3: TWideStringField
      DisplayLabel = 'Familia Produto'
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object BooleanField1: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object DateField1: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Qprodutovlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
  end
  object QProdutoEdicao: TFDQuery
    Active = True
    AfterPost = QProdutoEdicaoAfterPost
    AfterCancel = QProdutoEdicaoAfterCancel
    AfterDelete = QProdutoEdicaoAfterDelete
    Connection = Db
    SQL.Strings = (
      'Select * From produto')
    Left = 432
    Top = 128
    object IntegerField3: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object WideStringField4: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object WideStringField5: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object IntegerField4: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object WideStringField6: TWideStringField
      DisplayLabel = 'Familia Produto'
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object BooleanField2: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object DateField2: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QProdutoEdicaovlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
  end
  object Mproduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Pproduto'
    AfterPost = Mproduto2AfterPost
    AfterCancel = Mproduto2AfterCancel
    AfterDelete = Mproduto2AfterDelete
    Left = 112
    Top = 176
    object WideStringField7: TWideStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object WideStringField8: TWideStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 85
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object WideStringField9: TWideStringField
      DisplayLabel = 'Familia Produto'
      DisplayWidth = 54
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object DateField3: TDateField
      DisplayLabel = 'Data Cadastro'
      DisplayWidth = 10
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      EditMask = '!99/99/0000;1;_'
    end
    object IntegerField5: TIntegerField
      DisplayWidth = 10
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField6: TIntegerField
      DisplayWidth = 12
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object BooleanField3: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object Mprodutovlproduto: TSingleField
      DisplayLabel = 'Valor Unitario'
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
  end
  object Qexclusão: TFDQuery
    Active = True
    AfterPost = QProdutoEdicaoAfterPost
    AfterCancel = QProdutoEdicaoAfterCancel
    AfterDelete = QProdutoEdicaoAfterDelete
    Connection = Db
    SQL.Strings = (
      'Select * From produto')
    Left = 248
    Top = 120
    object IntegerField7: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object WideStringField10: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object WideStringField11: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object IntegerField8: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object WideStringField12: TWideStringField
      DisplayLabel = 'Familia Produto'
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object BooleanField4: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object DateField4: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object SingleField1: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
  end
  object DsQprodutoEditar: TDataSource
    DataSet = QProdutoEdicao
    Left = 432
    Top = 176
  end
end
