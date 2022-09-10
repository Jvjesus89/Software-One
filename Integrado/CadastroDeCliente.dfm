object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 483
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
      Left = 76
      Top = 1
      Width = 75
      Height = 71
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1540
    Height = 410
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 49
      Width = 1538
      Height = 360
      Align = alClient
      DataSource = DbClient.DsQcliente
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1538
      Height = 48
      Align = alTop
      TabOrder = 1
      object nmcliente: TDBEdit
        Left = 1408
        Top = 14
        Width = 121
        Height = 21
        DataField = 'nmcliente'
        DataSource = DbClient.Dscliente
        TabOrder = 0
      end
    end
  end
end
