object ConsultaEstoque1: TConsultaEstoque1
  Left = 0
  Top = 0
  Caption = 
    '                                                                ' +
    '                                    Consulta Estoque'
  ClientHeight = 639
  ClientWidth = 1210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1210
    Height = 81
    Align = alTop
    TabOrder = 0
    object Entrada: TButton
      Left = 1
      Top = 1
      Width = 80
      Height = 79
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
      OnClick = EntradaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 1019
    Height = 558
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1017
      Height = 556
      Align = alClient
      DataSource = DbMov.DsConsultaQ
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtmovimentada'
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tpmovimento'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtdisponivel'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtmovimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idproduto'
          Visible = False
        end
        item
          Expanded = False
          Width = 526
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 1019
    Top = 81
    Width = 191
    Height = 558
    Align = alRight
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 158
      Height = 19
      Caption = 'Informa'#231#245'es do produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 118
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
    object Label3: TLabel
      Left = 16
      Top = 189
      Width = 104
      Height = 19
      Caption = 'Familia produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 56
      Width = 47
      Height = 19
      Caption = 'C'#243'digo'
      FocusControl = CodigoProduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 253
      Width = 46
      Height = 13
      Caption = 'idproduto'
      Visible = False
    end
    object CodigoProduto: TDBEdit
      Left = 16
      Top = 81
      Width = 76
      Height = 21
      DataField = 'cdproduto'
      TabOrder = 0
    end
    object FamiliaProduto: TDBEdit
      Left = 16
      Top = 214
      Width = 158
      Height = 21
      DataField = 'nmfamiliaproduto'
      ReadOnly = True
      TabOrder = 1
    end
    object NomeProduto: TDBEdit
      Left = 16
      Top = 143
      Width = 158
      Height = 21
      DataField = 'nmproduto'
      ReadOnly = True
      TabOrder = 2
    end
    object Localizaproduto: TButton
      Left = 98
      Top = 79
      Width = 23
      Height = 25
      Caption = '...'
      TabOrder = 3
      OnClick = LocalizaprodutoClick
    end
    object IdProduto: TEdit
      Left = 16
      Top = 272
      Width = 159
      Height = 21
      TabOrder = 4
      Visible = False
      OnChange = IdProdutoChange
    end
  end
end
