object DbFinAreceber1: TDbFinAreceber1
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 426
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object QAreceber: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'SELECT * FROM areceber order by dtcadastro desc')
    Left = 168
    Top = 8
    object QAreceberidareceber: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QAreceberidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object QArecebernmcliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object QAreceberidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object QArecebernmformapagamento: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object QArecebernrtitulo: TIntegerField
      DisplayLabel = 'Nr Titulo'
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object QAreceberdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QAreceberdtvencimento: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object QAreceberidorigem: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object QArecebervltitulo: TSingleField
      DisplayLabel = 'Vl. Titulo'
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
      currency = True
    end
    object QAreceberdtbaixa: TDateField
      DisplayLabel = 'Dt. Recebimento'
      FieldName = 'dtbaixa'
      Origin = 'dtbaixa'
    end
    object QAreceberidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
  object TabelaAreceber: TFDTable
    IndexFieldNames = 'idareceber'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'areceber'
    Left = 24
    Top = 8
    object TabelaAreceberidareceber: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TabelaAreceberidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object TabelaArecebernmcliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object TabelaAreceberidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object TabelaArecebernmformapagamento: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object TabelaArecebernrtitulo: TIntegerField
      DisplayLabel = 'Nr. Titulo'
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object TabelaAreceberdtvencimento: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object TabelaAreceberdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object TabelaArecebervltitulo: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object TabelaAreceberidorigem: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object TabelaAreceberdtbaixa: TDateField
      FieldName = 'dtbaixa'
      Origin = 'dtbaixa'
    end
    object TabelaAreceberidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
  object DsAreceber: TDataSource
    DataSet = MAreceber
    Left = 24
    Top = 64
  end
  object MAreceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pareceber'
    Left = 96
    Top = 64
    object MAreceberidareceber: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MAreceberidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object MArecebernmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object MAreceberidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object MArecebernmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object MArecebernrtitulo: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object MAreceberdtvencimento: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object MAreceberdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object MArecebervltitulo: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object MAreceberidorigem: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object MAreceberdtbaixa: TDateField
      FieldName = 'dtbaixa'
      Origin = 'dtbaixa'
    end
    object MAreceberidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
  object Pareceber: TDataSetProvider
    DataSet = TabelaAreceber
    Left = 104
    Top = 8
  end
  object DsQAreceber: TDataSource
    DataSet = QAreceber
    Left = 168
    Top = 64
  end
  object TabelaCliente: TFDTable
    IndexFieldNames = 'idcliente'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'clientes'
    Left = 16
    Top = 152
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
    Left = 16
    Top = 208
  end
  object Mcliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pcliente'
    Left = 88
    Top = 208
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
    Left = 88
    Top = 152
  end
  object Qcliente: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From clientes')
    Left = 144
    Top = 160
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
    Left = 144
    Top = 208
  end
  object QEdiçãoAreceber: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'SELECT * FROM areceber')
    Left = 408
    Top = 16
    object IntegerField1: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object WideStringField1: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object IntegerField3: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object WideStringField2: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'Nr Titulo'
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object DateField1: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField2: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object IntegerField5: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object SingleField1: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object QEdiçãoAreceberdtbaixa: TDateField
      FieldName = 'dtbaixa'
      Origin = 'dtbaixa'
    end
    object QEdiçãoAreceberidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
  object QConsultaConta: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From contabancaria')
    Left = 336
    Top = 152
    object QConsultaContaidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QConsultaContaidagencia: TIntegerField
      FieldName = 'idagencia'
      Origin = 'idagencia'
    end
    object QConsultaContaidbanco: TIntegerField
      FieldName = 'idbanco'
      Origin = 'idbanco'
    end
    object QConsultaContanrcontacorrente: TIntegerField
      DisplayLabel = 'Nr. Conta Corrente'
      FieldName = 'nrcontacorrente'
      Origin = 'nrcontacorrente'
    end
    object QConsultaContanmcontabancaria: TWideStringField
      DisplayLabel = 'Conta Bancaria'
      FieldName = 'nmcontabancaria'
      Origin = 'nmcontabancaria'
      Size = 30
    end
    object QConsultaContadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QConsultaContacdcontabancaria: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdcontabancaria'
      Origin = 'cdcontabancaria'
    end
  end
  object DsQConsultaConta: TDataSource
    DataSet = QConsultaConta
    Left = 336
    Top = 200
  end
  object DsQAreceberEdição: TDataSource
    DataSet = QediçãoTituloAreceber
    Left = 336
    Top = 64
  end
  object QediçãoTituloAreceber: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'SELECT * FROM areceber')
    Left = 336
    Top = 16
    object IntegerField6: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField7: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object WideStringField3: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object IntegerField8: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object WideStringField4: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object IntegerField9: TIntegerField
      DisplayLabel = 'Nr Titulo'
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object DateField3: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField4: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object IntegerField10: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object SingleField2: TSingleField
      DisplayLabel = 'Vl. Titulo'
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object DateField5: TDateField
      DisplayLabel = 'Dt. Recebimento'
      FieldName = 'dtbaixa'
      Origin = 'dtbaixa'
    end
    object IntegerField11: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
  object QInseriDadosMovimentobancario: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'SELECT * FROM areceber')
    Left = 464
    Top = 152
    object IntegerField12: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField13: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object WideStringField5: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object IntegerField14: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object WideStringField6: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object IntegerField15: TIntegerField
      DisplayLabel = 'Nr Titulo'
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object DateField6: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField7: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object IntegerField16: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object SingleField3: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object DateField8: TDateField
      FieldName = 'dtbaixa'
      Origin = 'dtbaixa'
    end
    object IntegerField17: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
  object QFormaPagamento: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From formapagamento')
    Left = 536
    Top = 16
    object QFormaPagamentocdformapagamento: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdformapagamento'
      Origin = 'cdformapagamento'
    end
    object QFormaPagamentoidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QFormaPagamentonmformapagamento: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object QFormaPagamentodtcadastro: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
  end
  object DsQFormapagamento: TDataSource
    DataSet = QFormaPagamento
    Left = 536
    Top = 64
  end
  object QExcluiRecebimento: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 464
    Top = 200
  end
  object QTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 88
    Top = 288
  end
  object QTempCampos: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From temp."#areceber"')
    Left = 16
    Top = 288
    object QTempCamposidareceber: TFDAutoIncField
      FieldName = 'idareceber'
      Origin = 'idareceber'
      ReadOnly = True
    end
    object QTempCamposidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object QTempCamposnmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object QTempCamposidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object QTempCamposnmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object QTempCamposvltitulo: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object QTempCamposnrtitulo: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object QTempCamposdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QTempCamposdtvencimento: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object QTempCamposidorigem: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object QTempCamposdtbaixa: TDateField
      FieldName = 'dtbaixa'
      Origin = 'dtbaixa'
    end
    object QTempCamposidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
  object DsQTempCampos: TDataSource
    DataSet = QTempCampos
    Left = 8
    Top = 344
  end
  object QConsultaUltimoTitulo: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select MAX (nrtitulo) From areceber')
    Left = 88
    Top = 344
  end
  object QtempCamposRecebimento: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'Select C.nmcontabancaria From temp."#areceber" A join contabanca' +
        'ria C on C.idcontabancaria = A.idcontabancaria')
    Left = 328
    Top = 280
    object QtempCamposRecebimentonmcontabancaria: TWideStringField
      FieldName = 'nmcontabancaria'
      Origin = 'nmcontabancaria'
      Required = True
      Size = 30
    end
  end
  object DsQtenmpCamposRecebimento: TDataSource
    DataSet = QtempCamposRecebimento
    Left = 320
    Top = 336
  end
end
