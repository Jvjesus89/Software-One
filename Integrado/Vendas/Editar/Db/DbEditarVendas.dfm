object DbEditVenda: TDbEditVenda
  OldCreateOrder = False
  Height = 276
  Width = 481
  object QCriaTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 376
    Top = 80
  end
  object QExcluiTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 272
    Top = 24
  end
  object QInseriTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 368
    Top = 24
  end
  object QConsultavendas: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendas V')
    Left = 40
    Top = 8
    object QConsultavendasidvenda: TFDAutoIncField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QConsultavendasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
    end
    object QConsultavendasvlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
      Required = True
    end
    object QConsultavendasdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      Required = True
    end
    object QConsultavendasdtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object QConsultavendasnrdocumento: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
      Required = True
    end
  end
  object DsQConsultaVendas: TDataSource
    DataSet = QConsultavendas
    Left = 40
    Top = 64
  end
  object QConsultaVendaItem: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendasitem')
    Left = 136
    Top = 8
    object QConsultaVendaItemidvendasitem: TFDAutoIncField
      FieldName = 'idvendasitem'
      Origin = 'idvendasitem'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QConsultaVendaItemidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object QConsultaVendaItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      Required = True
    end
    object QConsultaVendaItemvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
      Required = True
    end
    object QConsultaVendaItemqtvendido: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
      Required = True
    end
    object QConsultaVendaItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
      Required = True
    end
  end
  object DsQConsultaVendaItem: TDataSource
    DataSet = QConsultaVendaItem
    Left = 136
    Top = 64
  end
end
