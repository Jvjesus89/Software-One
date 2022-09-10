﻿object DbFinAreceber1: TDbFinAreceber1
  Left = 0
  Top = 0
  Caption = 'Form2'
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
  object DbFin: TFDConnection
    Params.Strings = (
      'Database=Software One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 232
    Top = 72
  end
  object QAreceber: TFDQuery
    Active = True
    AfterPost = QAreceberAfterPost
    AfterCancel = QAreceberAfterCancel
    AfterDelete = QAreceberAfterDelete
    Connection = DbFin
    SQL.Strings = (
      'SELECT * FROM areceber')
    Left = 168
    Top = 112
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
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
  end
  object TabelaAreceber: TFDTable
    Active = True
    IndexFieldNames = 'idareceber'
    Connection = DbFin
    SchemaName = 'public'
    TableName = 'areceber'
    Left = 24
    Top = 112
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
  end
  object DsAreceber: TDataSource
    DataSet = MAreceber
    Left = 24
    Top = 168
  end
  object MAreceber: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Pareceber'
    AfterPost = MAreceberAfterPost
    AfterCancel = MAreceberAfterCancel
    AfterDelete = MAreceberAfterDelete
    Left = 96
    Top = 168
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
  end
  object Pareceber: TDataSetProvider
    DataSet = TabelaAreceber
    Left = 104
    Top = 112
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 232
    Top = 16
  end
  object DsQAreceber: TDataSource
    DataSet = QAreceber
    Left = 168
    Top = 168
  end
  object TabelaCliente: TFDTable
    Active = True
    IndexFieldNames = 'idcliente'
    Connection = DbFin
    SchemaName = 'public'
    TableName = 'clientes'
    Left = 320
    Top = 120
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
    Top = 176
  end
  object Mcliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Pcliente'
    Left = 392
    Top = 176
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
    Top = 120
  end
  object Qcliente: TFDQuery
    Connection = DbFin
    SQL.Strings = (
      'Select * From clientes')
    Left = 448
    Top = 120
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
    Top = 168
  end
  object QEdiçãoAreceber: TFDQuery
    Active = True
    AfterPost = QAreceberAfterPost
    AfterCancel = QAreceberAfterCancel
    AfterDelete = QAreceberAfterDelete
    Connection = DbFin
    SQL.Strings = (
      'SELECT * FROM areceber')
    Left = 224
    Top = 168
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
  end
end
