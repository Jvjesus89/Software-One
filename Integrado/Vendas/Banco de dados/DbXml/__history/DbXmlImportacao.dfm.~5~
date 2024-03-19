object DbImportacaoXml: TDbImportacaoXml
  OldCreateOrder = False
  Height = 310
  Width = 487
  object QInseriDadosXml: TFDQuery
    Active = True
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendas')
    Left = 32
    Top = 80
  end
  object QconsultaTempVendas: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From Temp."#vendas"')
    Left = 120
    Top = 80
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
    Left = 32
    Top = 136
  end
end
