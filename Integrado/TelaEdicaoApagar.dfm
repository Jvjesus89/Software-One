object TelaEdicaoApagar1: TTelaEdicaoApagar1
  Left = 0
  Top = 0
  Caption = 'Editar Apagar'
  ClientHeight = 212
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
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
    Left = 352
    Top = 135
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
    Top = 229
    Width = 52
    Height = 13
    Caption = 'dtcadastro'
    FocusControl = DBEdit8
    Visible = False
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 197
    Width = 130
    Height = 27
    DataField = 'idcliente'
    DataSource = DbFinApagar1.DsApagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object DBEdit3: TDBEdit
    Left = 87
    Top = 40
    Width = 382
    Height = 27
    DataField = 'nmcliente'
    DataSource = DbFinApagar1.DsApagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 352
    Top = 151
    Width = 130
    Height = 27
    DataField = 'idformapagamento'
    DataSource = DbFinApagar1.DsApagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 96
    Width = 311
    Height = 27
    DataField = 'nmformapagamento'
    DataSource = DbFinApagar1.DsApagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit6: TDBEdit
    Left = 352
    Top = 96
    Width = 117
    Height = 27
    DataField = 'vltitulo'
    DataSource = DbFinApagar1.DsApagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 40
    Width = 69
    Height = 27
    DataField = 'nrtitulo'
    DataSource = DbFinApagar1.DsApagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Busca: TButton
    Left = 479
    Top = 38
    Width = 24
    Height = 25
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BuscaClick
  end
  object BotaoCadastrar: TButton
    Left = 259
    Top = 175
    Width = 73
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 7
    OnClick = BotaoCadastrarClick
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 148
    Width = 130
    Height = 27
    DataField = 'dtvencimento'
    DataSource = DbFinApagar1.DsApagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 8
    Top = 248
    Width = 130
    Height = 21
    DataField = 'dtcadastro'
    DataSource = DbFinApagar1.DsApagar
    TabOrder = 9
    Visible = False
  end
  object DBEdit9: TDBEdit
    Left = 352
    Top = 184
    Width = 132
    Height = 27
    DataField = 'idapagar'
    DataSource = DbFinApagar1.DsApagar
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Visible = False
  end
  object Button1: TButton
    Left = 178
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 11
    OnClick = Button1Click
  end
end
