object Apagar1: TApagar1
  Left = 0
  Top = 0
  Caption = 'A pagar'
  ClientHeight = 478
  ClientWidth = 1540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1540
    Height = 73
    Align = alTop
    TabOrder = 0
    object BotaoNovo: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 71
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
      OnClick = BotaoNovoClick
    end
    object BotaoExcluir: TButton
      Left = 153
      Top = 1
      Width = 75
      Height = 71
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = BotaoExcluirClick
    end
    object BotaoEditar: TButton
      Left = 76
      Top = 1
      Width = 77
      Height = 71
      Align = alLeft
      Caption = 'Editar'
      TabOrder = 2
      OnClick = BotaoEditarClick
    end
    object ExportarDadosApagar: TButton
      Left = 1456
      Top = 1
      Width = 83
      Height = 71
      Align = alRight
      Caption = 'Exportar'
      TabOrder = 3
      OnClick = ExportarDadosApagarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1540
    Height = 405
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1538
      Height = 32
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 1255
        Top = 5
        Width = 84
        Height = 19
        Caption = 'Busca Titulo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button1: TButton
        Left = 1472
        Top = 5
        Width = 41
        Height = 21
        Caption = 'Busca'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Busca: TEdit
        Left = 1345
        Top = 5
        Width = 121
        Height = 21
        TabOrder = 1
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 33
      Width = 1538
      Height = 371
      Align = alClient
      DataSource = DbFinApagar1.DsQApagar
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
    end
  end
end
