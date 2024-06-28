object DbVendas1: TDbVendas1
  OldCreateOrder = False
  Height = 103
  Width = 262
  object QComandoConsulta: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'SELECT currval('#39'vendas_idvenda_seq'#39') as idvenda')
    Left = 160
    Top = 24
  end
  object QCriaTrigger: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 72
    Top = 24
  end
end
