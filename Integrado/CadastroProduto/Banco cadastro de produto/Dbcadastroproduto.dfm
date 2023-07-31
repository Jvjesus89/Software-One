﻿object Dbprod: TDbprod
  OldCreateOrder = False
  Height = 337
  Width = 600
  object DsProduto: TDataSource
    DataSet = Mproduto
    Left = 32
    Top = 72
  end
  object TabelaProd: TFDTable
    IndexFieldNames = 'idproduto'
    Connection = DbMaster.ConexãoDb
    CatalogName = 'Software-One'
    SchemaName = 'public'
    TableName = 'produto'
    Left = 32
    Top = 16
    object TabelaProdidproduto: TFDAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TabelaProdnmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Required = True
      Size = 100
    end
    object TabelaProdcdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Required = True
      Size = 10
    end
    object TabelaProdidfamiliaproduto: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object TabelaProdvlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object TabelaProdnmfamiliaproduto: TWideStringField
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object TabelaProdstproduto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object TabelaProddtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      Required = True
    end
  end
  object Pproduto: TDataSetProvider
    DataSet = TabelaProd
    Left = 120
    Top = 16
  end
  object DsQproduto: TDataSource
    DataSet = Qproduto
    Left = 248
    Top = 80
  end
  object Qproduto: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produto')
    Left = 248
    Top = 24
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
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produto')
    Left = 318
    Top = 24
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
    Aggregates = <>
    Params = <>
    ProviderName = 'Pproduto'
    Left = 112
    Top = 72
    object Mprodutoidproduto: TAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Mprodutonmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Required = True
      Size = 100
    end
    object Mprodutocdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Required = True
      Size = 10
    end
    object Mprodutoidfamiliaproduto: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object Mprodutovlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object Mprodutonmfamiliaproduto: TWideStringField
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object Mprodutostproduto: TBooleanField
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object Mprodutodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      Required = True
    end
  end
  object Qexclusão: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produto')
    Left = 390
    Top = 24
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
    Left = 318
    Top = 80
  end
  object DsConsultaCodigo: TDataSource
    DataSet = QConsultaCodigo
    Left = 32
    Top = 200
  end
  object QConsultaCodigo: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'select cdproduto from produto order by cdproduto desc limit 1')
    Left = 32
    Top = 152
    object QConsultaCodigocdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Required = True
      Size = 10
    end
  end
end
