object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 8
    Width = 161
    Height = 19
    Caption = 'MovimentoBancario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 392
    Top = 8
    Width = 132
    Height = 19
    Caption = 'ExtratoBancario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DbMovBanco: TFDConnection
    Params.Strings = (
      'Database=Software One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 16
    Top = 56
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 16
  end
  object DsMovBancario: TDataSource
    DataSet = MMovBancario
    Left = 104
    Top = 96
  end
  object MMovBancario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PMovBancario'
    Left = 176
    Top = 96
    object MMovBancarioidmovimentobancario: TIntegerField
      FieldName = 'idmovimentobancario'
      Origin = 'idmovimentobancario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MMovBancarioidareceber: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
    end
    object MMovBancarioidextratobancario: TIntegerField
      FieldName = 'idextratobancario'
      Origin = 'idextratobancario'
    end
    object MMovBancariodtconciliacao: TDateField
      FieldName = 'dtconciliacao'
      Origin = 'dtconciliacao'
    end
    object MMovBancarioidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
  object PMovBancario: TDataSetProvider
    DataSet = MovBancario
    Left = 184
    Top = 40
  end
  object DsQMovBancario: TDataSource
    DataSet = QMovBancario
    Left = 248
    Top = 96
  end
  object QMovBancario: TFDQuery
    Active = True
    Connection = DbMovBanco
    SQL.Strings = (
      
        'Select * From movimentobancario MOV join areceber A on (MOV.idar' +
        'eceber = A.idareceber) '
      '')
    Left = 248
    Top = 48
    object QMovBancarioidmovimentobancario: TIntegerField
      FieldName = 'idmovimentobancario'
    end
    object QMovBancarioidareceber: TIntegerField
      FieldName = 'idareceber'
    end
    object QMovBancarioidextratobancario: TIntegerField
      FieldName = 'idextratobancario'
    end
    object QMovBancariodtconciliacao: TDateField
      FieldName = 'dtconciliacao'
    end
    object QMovBancarioidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
    end
    object QMovBancarioidareceber_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idareceber_1'
      Origin = 'idareceber'
    end
    object QMovBancarioidcliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object QMovBancarionmcliente: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object QMovBancarioidformapagamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object QMovBancarionmformapagamento: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object QMovBancariovltitulo: TSingleField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Recebido'
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
      currency = True
    end
    object QMovBancarionrtitulo: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = ' Nr. Titulo'
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object QMovBancariodtcadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QMovBancariodtvencimento: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object QMovBancarioidorigem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object QMovBancariodtbaixa: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Baixa'
      FieldName = 'dtbaixa'
      Origin = 'dtbaixa'
    end
    object QMovBancarioidcontabancaria_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcontabancaria_1'
      Origin = 'idcontabancaria'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 360
    Top = 96
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Papagar'
    Left = 432
    Top = 96
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
      EditMask = '!99/99/0000;1;_'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = FDTable1
    Left = 440
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = FDQuery1
    Left = 504
    Top = 96
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'idapagar'
    Connection = DbMovBanco
    SchemaName = 'public'
    TableName = 'apagar'
    Left = 360
    Top = 48
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
  object FDQuery1: TFDQuery
    Connection = DbMovBanco
    SQL.Strings = (
      'Select * From apagar')
    Left = 504
    Top = 48
    object IntegerField9: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object WideStringField5: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object IntegerField10: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object WideStringField6: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object SingleField3: TSingleField
      DisplayLabel = 'Vl. Titulo'
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
      currency = True
    end
    object IntegerField11: TIntegerField
      DisplayLabel = 'Nr. Titulo'
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object DateField5: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField6: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object IntegerField12: TIntegerField
      FieldName = 'idapagar'
      Origin = 'idapagar'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object MovBancario: TFDTable
    Active = True
    IndexFieldNames = 'idmovimentobancario'
    Connection = DbMovBanco
    SchemaName = 'public'
    TableName = 'movimentobancario'
    Left = 104
    Top = 48
    object MovBancarioidmovimentobancario: TIntegerField
      FieldName = 'idmovimentobancario'
      Origin = 'idmovimentobancario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MovBancarioidareceber: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
    end
    object MovBancarioidextratobancario: TIntegerField
      FieldName = 'idextratobancario'
      Origin = 'idextratobancario'
    end
    object MovBancariodtconciliacao: TDateField
      FieldName = 'dtconciliacao'
      Origin = 'dtconciliacao'
    end
    object MovBancarioidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
end
