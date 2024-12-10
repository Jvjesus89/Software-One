object CadastroAreceber: TCadastroAreceber
  Left = 0
  Top = 0
  Caption = 'Cadastrar pagamento'
  ClientHeight = 95
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 56
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object Label2: TLabel
    Left = 18
    Top = 8
    Width = 87
    Height = 13
    Caption = 'Forma Pagamento'
    FocusControl = EditFormaPagamento
  end
  object Label3: TLabel
    Left = 365
    Top = 11
    Width = 55
    Height = 13
    Caption = 'Vencimento'
  end
  object Label4: TLabel
    Left = 18
    Top = 103
    Width = 90
    Height = 13
    Caption = 'idformapagamento'
    FocusControl = DBEdit4
    Visible = False
  end
  object EditFormaPagamento: TDBEdit
    Left = 18
    Top = 27
    Width = 318
    Height = 21
    DataField = 'nmformapagamento'
    DataSource = DsAreceber
    TabOrder = 0
    OnKeyDown = EditFormaPagamentoKeyDown
  end
  object Button1: TButton
    Left = 180
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 261
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 334
    Top = 27
    Width = 23
    Height = 21
    Caption = '...'
    TabOrder = 2
    OnClick = Button3Click
  end
  object DBEdit4: TDBEdit
    Left = 18
    Top = 122
    Width = 134
    Height = 21
    DataField = 'idformapagamento'
    TabOrder = 4
    Visible = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 366
    Top = 27
    Width = 95
    Height = 21
    Date = 44830.000000000000000000
    Time = 0.590133032404992300
    TabOrder = 5
  end
  object Valor: TDBEdit
    Left = 18
    Top = 72
    Width = 134
    Height = 21
    DataField = 'vltitulo'
    DataSource = DsAreceber
    TabOrder = 6
  end
  object Areceber: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'select * from areceber where 1=2')
    Left = 120
    object Areceberidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object Arecebernmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object Areceberidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object Arecebernmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object Arecebervltitulo: TSingleField
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object Arecebernrtitulo: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object Areceberdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Areceberdtvencimento: TDateField
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object Areceberidorigem: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object Areceberdtbaixa: TDateField
      FieldName = 'dtbaixa'
      Origin = 'dtbaixa'
    end
    object Areceberidcontabancaria: TIntegerField
      FieldName = 'idcontabancaria'
      Origin = 'idcontabancaria'
    end
  end
  object PAreceber: TDataSetProvider
    DataSet = Areceber
    Left = 176
  end
  object MAreceber: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idareceber'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'idcliente'
        DataType = ftInteger
      end
      item
        Name = 'nmcliente'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'idformapagamento'
        DataType = ftInteger
      end
      item
        Name = 'nmformapagamento'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'vltitulo'
        DataType = ftSingle
      end
      item
        Name = 'nrtitulo'
        DataType = ftInteger
      end
      item
        Name = 'dtcadastro'
        DataType = ftDate
      end
      item
        Name = 'dtvencimento'
        DataType = ftDate
      end
      item
        Name = 'idorigem'
        DataType = ftInteger
      end
      item
        Name = 'dtbaixa'
        DataType = ftDate
      end
      item
        Name = 'idcontabancaria'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'PAreceber'
    StoreDefs = True
    Left = 240
    object MAreceberidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object MArecebernmcliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object MAreceberidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object MArecebernmformapagamento: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object MArecebervltitulo: TSingleField
      DisplayLabel = 'Vl. Titulo'
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object MArecebernrtitulo: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object MAreceberdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object MAreceberdtvencimento: TDateField
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
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
  object DsAreceber: TDataSource
    DataSet = MAreceber
    Left = 296
  end
end
