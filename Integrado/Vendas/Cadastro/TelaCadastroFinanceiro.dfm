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
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 18
    Top = 8
    Width = 87
    Height = 13
    Caption = 'Forma Pagamento'
    FocusControl = DBEdit2
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
  object DBEdit1: TDBEdit
    Left = 18
    Top = 72
    Width = 134
    Height = 21
    DataField = 'vltitulo'
    DataSource = DbVendas1.DsQareceberTempCampo
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 18
    Top = 27
    Width = 318
    Height = 21
    DataField = 'nmformapagamento'
    DataSource = DbVendas1.DsQareceberTempCampo
    TabOrder = 2
  end
  object Button1: TButton
    Left = 180
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 261
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 334
    Top = 27
    Width = 23
    Height = 21
    Caption = '...'
    TabOrder = 0
    OnClick = Button3Click
  end
  object DBEdit4: TDBEdit
    Left = 18
    Top = 122
    Width = 134
    Height = 21
    DataField = 'idformapagamento'
    DataSource = DbVendas1.DsQAreceberTemp
    TabOrder = 5
    Visible = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 366
    Top = 27
    Width = 95
    Height = 21
    Date = 44830.000000000000000000
    Time = 0.590133032404992300
    TabOrder = 6
  end
end
