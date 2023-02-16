object DbFinApagar1: TDbFinApagar1
  Left = 0
  Top = 0
  Caption = 'DbFinApagar'
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
  object DsApagar: TDataSource
    DataSet = Mapagar
    Left = 24
    Top = 128
  end
  object Mapagar: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Papagar'
    AfterPost = MapagarAfterPost
    AfterCancel = MapagarAfterCancel
    AfterDelete = MapagarAfterDelete
    Left = 96
    Top = 128
    object Mapagaridapagar: TIntegerField
      FieldName = 'idapagar'
      Origin = 'idapagar'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Mapagaridcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object Mapagarnmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object Mapagaridformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object Mapagarnmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object Mapagarvltitulo: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object Mapagarnrtitulo: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object Mapagardtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Mapagardtvencimento: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object Papagar: TDataSetProvider
    DataSet = TabelaApagar
    Left = 104
    Top = 72
  end
  object DsQApagar: TDataSource
    DataSet = QApagar
    Left = 168
    Top = 128
  end
  object TabelaCliente: TFDTable
    Active = True
    IndexFieldNames = 'idcliente'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'clientes'
    Left = 320
    Top = 80
    object TabelaClienteidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TabelaClientenmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object TabelaClientecpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object TabelaClientenmendereco: TWideStringField
      FieldName = 'nmendereco'
      Origin = 'nmendereco'
      Size = 50
    end
    object TabelaClientenrendereço: TWideStringField
      FieldName = 'nrendere'#231'o'
      Origin = '"nrendere'#231'o"'
      Size = 8
    end
    object TabelaClientecomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object TabelaClientedtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object TabelaClientenmbairro: TWideStringField
      FieldName = 'nmbairro'
      Origin = 'nmbairro'
      Size = 50
    end
    object TabelaClientenmcidade: TWideStringField
      FieldName = 'nmcidade'
      Origin = 'nmcidade'
      Size = 50
    end
    object TabelaClientenmestado: TWideStringField
      FieldName = 'nmestado'
      Origin = 'nmestado'
      Size = 2
    end
    object TabelaClientecdcliente: TWideStringField
      FieldName = 'cdcliente'
      Origin = 'cdcliente'
      Size = 6
    end
  end
  object Dscliente: TDataSource
    DataSet = Mcliente
    Left = 320
    Top = 136
  end
  object Mcliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Pcliente'
    Left = 392
    Top = 136
    object Mclienteidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Mclientenmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object Mclientecpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object Mclientenmendereco: TWideStringField
      FieldName = 'nmendereco'
      Origin = 'nmendereco'
      Size = 50
    end
    object Mclientenrendereço: TWideStringField
      FieldName = 'nrendere'#231'o'
      Origin = '"nrendere'#231'o"'
      Size = 8
    end
    object Mclientecomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object Mclientedtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Mclientenmbairro: TWideStringField
      FieldName = 'nmbairro'
      Origin = 'nmbairro'
      Size = 50
    end
    object Mclientenmcidade: TWideStringField
      FieldName = 'nmcidade'
      Origin = 'nmcidade'
      Size = 50
    end
    object Mclientenmestado: TWideStringField
      FieldName = 'nmestado'
      Origin = 'nmestado'
      Size = 2
    end
    object Mclientecdcliente: TWideStringField
      FieldName = 'cdcliente'
      Origin = 'cdcliente'
      Size = 6
    end
  end
  object Pcliente: TDataSetProvider
    DataSet = TabelaCliente
    Left = 392
    Top = 80
  end
  object Qcliente: TFDQuery
    Active = True
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From clientes')
    Left = 448
    Top = 80
    object Qclienteidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Qclientenmcliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object Qclientecpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object Qclientenmendereco: TWideStringField
      DisplayLabel = 'Endereco'
      FieldName = 'nmendereco'
      Origin = 'nmendereco'
      Size = 50
    end
    object Qclientenrendereço: TWideStringField
      DisplayLabel = 'Numero'
      FieldName = 'nrendere'#231'o'
      Origin = '"nrendere'#231'o"'
      Size = 8
    end
    object Qclientecomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object Qclientedtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Qclientenmbairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'nmbairro'
      Origin = 'nmbairro'
      Size = 50
    end
    object Qclientenmcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'nmcidade'
      Origin = 'nmcidade'
      Size = 50
    end
    object Qclientenmestado: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'nmestado'
      Origin = 'nmestado'
      Size = 2
    end
    object Qclientecdcliente: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdcliente'
      Origin = 'cdcliente'
      Size = 6
    end
  end
  object DsQcliente: TDataSource
    DataSet = Qcliente
    Left = 448
    Top = 128
  end
  object TabelaApagar: TFDTable
    Active = True
    IndexFieldNames = 'idapagar'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'apagar'
    Left = 24
    Top = 80
    object TabelaApagaridapagar: TIntegerField
      FieldName = 'idapagar'
      Origin = 'idapagar'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TabelaApagaridcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object TabelaApagarnmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object TabelaApagaridformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object TabelaApagarnmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object TabelaApagarvltitulo: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object TabelaApagarnrtitulo: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object TabelaApagardtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object TabelaApagardtvencimento: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
  end
  object QApagar: TFDQuery
    Active = True
    AfterPost = QApagarAfterPost
    AfterCancel = QApagarAfterCancel
    AfterDelete = QApagarAfterDelete
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From apagar')
    Left = 168
    Top = 80
    object QApagaridcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object QApagarnmcliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object QApagaridformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object QApagarnmformapagamento: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object QApagarvltitulo: TSingleField
      DisplayLabel = 'Vl. Titulo'
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
      currency = True
    end
    object QApagarnrtitulo: TIntegerField
      DisplayLabel = 'Nr. Titulo'
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object QApagardtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QApagardtvencimento: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object QApagaridapagar: TIntegerField
      FieldName = 'idapagar'
      Origin = 'idapagar'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object Qapagar1: TFDQuery
    Active = True
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From apagar')
    Left = 216
    Top = 80
    object Qapagar1idapagar: TIntegerField
      FieldName = 'idapagar'
      Origin = 'idapagar'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Qapagar1idcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object Qapagar1nmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object Qapagar1idformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object Qapagar1nmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object Qapagar1vltitulo: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object Qapagar1nrtitulo: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object Qapagar1dtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Qapagar1dtvencimento: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
  end
end
