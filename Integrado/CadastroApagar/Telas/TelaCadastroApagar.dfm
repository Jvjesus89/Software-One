object TelaCadasrroApagar1: TTelaCadasrroApagar1
  Left = 0
  Top = 0
  Caption = 'Cadastro a pagar'
  ClientHeight = 182
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 87
    Top = 21
    Width = 48
    Height = 19
    Caption = 'Cliente'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 73
    Width = 121
    Height = 19
    Caption = 'Forma Pagamento'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 352
    Top = 73
    Width = 79
    Height = 19
    Caption = 'Valor Titulo'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 21
    Width = 39
    Height = 19
    Caption = 'Titulo'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 129
    Width = 115
    Height = 19
    Caption = 'Data Vencimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit3: TDBEdit
    Left = 87
    Top = 40
    Width = 384
    Height = 27
    DataField = 'nmcliente'
    DataSource = DbFinApagar1.DsQTabelaTempCampo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 96
    Width = 313
    Height = 27
    DataField = 'nmformapagamento'
    DataSource = DbFinApagar1.DsQTabelaTempCampo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit6: TDBEdit
    Left = 352
    Top = 96
    Width = 119
    Height = 27
    DataField = 'vltitulo'
    DataSource = DbFinApagar1.DsQTabelaTempCampo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 40
    Width = 71
    Height = 27
    DataField = 'nrtitulo'
    DataSource = DbFinApagar1.DsQTabelaTempCampo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Busca: TButton
    Left = 479
    Top = 38
    Width = 26
    Height = 25
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BuscaClick
  end
  object BotaoCadastrar: TButton
    Left = 238
    Top = 146
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 5
    OnClick = BotaoCadastrarClick
  end
  object Button1: TButton
    Left = 161
    Top = 146
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = BotaoCadastrarClick
  end
  object Button2: TButton
    Left = 320
    Top = 98
    Width = 26
    Height = 25
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 150
    Width = 121
    Height = 21
    Date = 45123.000000000000000000
    Time = 0.246669201391341600
    TabOrder = 8
  end
end
