object TelaCadasrroAreceber1: TTelaCadasrroAreceber1
  Left = 0
  Top = 0
  Caption = 'Cadastro a receber'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 181
    Width = 56
    Height = 19
    Caption = 'idcliente'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
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
  object Label4: TLabel
    Left = 371
    Top = 131
    Width = 124
    Height = 19
    Caption = 'idformapagamento'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
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
    Left = 371
    Top = 72
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
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 240
    Width = 52
    Height = 13
    Caption = 'dtcadastro'
    FocusControl = DBEdit8
    Visible = False
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 197
    Width = 134
    Height = 27
    DataField = 'idcliente'
    DataSource = DbFinAreceber1.DsAreceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object DBEdit3: TDBEdit
    Left = 87
    Top = 40
    Width = 386
    Height = 27
    DataField = 'nmcliente'
    DataSource = DbFinAreceber1.DsAreceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 371
    Top = 147
    Width = 134
    Height = 27
    DataField = 'idformapagamento'
    DataSource = DbFinAreceber1.DsAreceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 96
    Width = 315
    Height = 27
    DataField = 'nmformapagamento'
    DataSource = DbFinAreceber1.DsAreceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 371
    Top = 95
    Width = 121
    Height = 27
    DataField = 'vltitulo'
    DataSource = DbFinAreceber1.DsAreceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 40
    Width = 73
    Height = 27
    DataField = 'nrtitulo'
    DataSource = DbFinAreceber1.DsAreceber
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
    TabOrder = 7
    OnClick = BuscaClick
  end
  object BotaoCadastrar: TButton
    Left = 248
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 8
    OnClick = BotaoCadastrarClick
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 148
    Width = 134
    Height = 27
    DataField = 'dtvencimento'
    DataSource = DbFinAreceber1.DsAreceber
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 8
    Top = 256
    Width = 134
    Height = 21
    DataField = 'dtcadastro'
    DataSource = DbFinAreceber1.DsAreceber
    TabOrder = 9
    Visible = False
  end
  object Button1: TButton
    Left = 167
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 321
    Top = 96
    Width = 26
    Height = 27
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Button2Click
  end
end
