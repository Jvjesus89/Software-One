﻿object DbFinApagar1: TDbFinApagar1
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
    Left = 16
    Top = 72
  end
  object Mapagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Papagar'
    AfterPost = MapagarAfterPost
    AfterCancel = MapagarAfterCancel
    AfterDelete = MapagarAfterDelete
    Left = 88
    Top = 72
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
    Left = 88
    Top = 16
  end
  object DsQApagar: TDataSource
    DataSet = QApagar
    Left = 160
    Top = 72
  end
  object Qcliente: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From clientes')
    Left = 440
    Top = 24
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
    Left = 440
    Top = 72
  end
  object TabelaApagar: TFDTable
    IndexFieldNames = 'idapagar'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'apagar'
    Left = 16
    Top = 24
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
    AfterPost = QApagarAfterPost
    AfterCancel = QApagarAfterCancel
    AfterDelete = QApagarAfterDelete
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From apagar')
    Left = 160
    Top = 24
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
  object QTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From apagar')
    Left = 16
    Top = 128
    object QTabelaTempidapagar: TIntegerField
      FieldName = 'idapagar'
      Origin = 'idapagar'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QTabelaTempidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object QTabelaTempnmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object QTabelaTempidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object QTabelaTempnmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object QTabelaTempvltitulo: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object QTabelaTempnrtitulo: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object QTabelaTempdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QTabelaTempdtvencimento: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
  end
  object QFormaPagamento: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From formapagamento')
    Left = 376
    Top = 24
    object QFormaPagamentoidformapagamento: TFDAutoIncField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QFormaPagamentonmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Required = True
      Size = 50
    end
    object QFormaPagamentodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      Required = True
    end
    object QFormaPagamentocdformapagamento: TFDAutoIncField
      FieldName = 'cdformapagamento'
      Origin = 'cdformapagamento'
      ReadOnly = True
    end
  end
  object DsQFormaPagamento: TDataSource
    DataSet = QFormaPagamento
    Left = 376
    Top = 72
  end
  object QConsultaUltimoTitulo: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select MAX (nrtitulo) From apagar ')
    Left = 424
    Top = 136
    object QConsultaUltimoTitulomax: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'max'
      Origin = 'max'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QExcluiTitulo: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 168
    Top = 128
    object IntegerField1: TIntegerField
      FieldName = 'idapagar'
      Origin = 'idapagar'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object WideStringField1: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object IntegerField3: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object WideStringField2: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object SingleField1: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object IntegerField4: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object DateField1: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField2: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
  end
  object QTabelaTempCampo: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From temp."#apagar"')
    Left = 96
    Top = 128
    object QTabelaTempCampoidapagar: TFDAutoIncField
      FieldName = 'idapagar'
      Origin = 'idapagar'
    end
    object QTabelaTempCampoidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object QTabelaTempCamponmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object QTabelaTempCampoidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object QTabelaTempCamponmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object QTabelaTempCampovltitulo: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object QTabelaTempCamponrtitulo: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object QTabelaTempCampodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QTabelaTempCampodtvencimento: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object QTabelaTempCampodtbaixa: TDateField
      FieldName = 'dtbaixa'
      Origin = 'dtbaixa'
    end
    object QTabelaTempCampoidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
  object DsQTabelaTempCampo: TDataSource
    DataSet = QTabelaTempCampo
    Left = 96
    Top = 184
  end
  object QEditarTituloApagar: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 231
    Top = 24
    object IntegerField5: TIntegerField
      FieldName = 'idapagar'
      Origin = 'idapagar'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField6: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object WideStringField3: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object IntegerField7: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object WideStringField4: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object SingleField2: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object IntegerField8: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object DateField3: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField4: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
  end
  object DsQEditarTituloApagar: TDataSource
    DataSet = QEditarTituloApagar
    Left = 231
    Top = 72
  end
end
