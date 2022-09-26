object TelaCadastroMovimentacoes: TTelaCadastroMovimentacoes
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 208
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 210
    Width = 63
    Height = 19
    Caption = 'idproduto'
    FocusControl = IdProdutoMov
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 275
    Top = 60
    Width = 174
    Height = 19
    Caption = 'Quantidade Movimentada'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 280
    Top = 118
    Width = 152
    Height = 19
    Caption = 'Quantidade Disponivel'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 118
    Width = 114
    Height = 19
    Caption = 'Data Movimento'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 280
    Top = 209
    Width = 98
    Height = 19
    Caption = 'Data Cadastro'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label6: TLabel
    Left = 32
    Top = 62
    Width = 150
    Height = 19
    Caption = 'Tipo de movimenta'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 30
    Top = 0
    Width = 47
    Height = 19
    Caption = 'C'#243'digo'
    FocusControl = CodigoProdutoMov
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 141
    Top = 0
    Width = 40
    Height = 19
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object IdProdutoMov: TDBEdit
    Left = 32
    Top = 235
    Width = 150
    Height = 27
    DataField = 'idproduto'
    DataSource = DbMov.DsConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    Visible = False
  end
  object DBEdit2: TDBEdit
    Left = 280
    Top = 85
    Width = 152
    Height = 27
    DataField = 'qtmovimentada'
    DataSource = DbMov.DsConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnExit = DBEdit2Exit
  end
  object DBEdit3: TDBEdit
    Left = 428
    Top = 233
    Width = 86
    Height = 27
    DataField = 'qtdisponivel'
    DataSource = DbMov.DsQdisponivel
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Visible = False
  end
  object DBEdit4: TDBEdit
    Left = 32
    Top = 143
    Width = 148
    Height = 27
    DataField = 'dtmovimento'
    DataSource = DbMov.DsConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 280
    Top = 233
    Width = 134
    Height = 27
    DataField = 'dtcadastro'
    DataSource = DbMov.DsConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    Visible = False
  end
  object TipoMovimento: TDBComboBox
    Left = 32
    Top = 87
    Width = 150
    Height = 27
    DataField = 'tpmovimento'
    DataSource = DbMov.DsConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    Items.Strings = (
      'Entrada'
      'Saida')
    ParentFont = False
    TabOrder = 2
    OnClick = TipoMovimentoClick
  end
  object Button1: TButton
    Left = 239
    Top = 178
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object NomeProdutoMov: TDBEdit
    Left = 141
    Top = 25
    Width = 291
    Height = 27
    DataField = 'nmproduto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object CodigoProdutoMov: TDBEdit
    Left = 30
    Top = 25
    Width = 76
    Height = 27
    DataField = 'cdproduto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object BuscaProduto: TButton
    Left = 112
    Top = 23
    Width = 23
    Height = 28
    Caption = '...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BuscaProdutoClick
  end
  object DBEdit1: TDBEdit
    Left = 280
    Top = 143
    Width = 152
    Height = 27
    DataField = 'qtdisponivel'
    DataSource = DbMov.DsConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Button2: TButton
    Left = 158
    Top = 178
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = Button2Click
  end
end
