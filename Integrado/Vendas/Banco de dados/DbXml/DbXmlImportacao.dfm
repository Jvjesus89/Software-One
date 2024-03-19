object DbImportacaoXml: TDbImportacaoXml
  OldCreateOrder = False
  Height = 192
  Width = 290
  object QInseriDadosXml: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendas')
    Left = 56
    Top = 48
  end
  object QconsultaTempVendas: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From Temp."#vendas"')
    Left = 144
    Top = 48
    object QconsultaTempVendasidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object QconsultaTempVendasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object QconsultaTempVendasidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object QconsultaTempVendasvlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
    object QconsultaTempVendasdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QconsultaTempVendasdtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object QconsultaTempVendasnmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object QconsultaTempVendasnmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object QconsultaTempVendasnrdocumento: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
  end
  object DsQconsultaTempVendas: TDataSource
    DataSet = QconsultaTempVendas
    Left = 56
    Top = 104
  end
end
