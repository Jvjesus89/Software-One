object XML: TXML
  Left = 0
  Top = 0
  Caption = 'XML'
  ClientHeight = 373
  ClientWidth = 665
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
    Left = 8
    Top = 27
    Width = 159
    Height = 23
    Caption = 'Informe o diretorio do xml'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object EditXml: TEdit
    Left = 180
    Top = 27
    Width = 417
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 596
    Top = 25
    Width = 41
    Height = 27
    Caption = 'Busca'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 71
    Width = 665
    Height = 126
    Align = alBottom
    DataSource = DbVendas1.DsQxml
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 222
    Width = 665
    Height = 151
    Align = alBottom
    DataSource = DbVendas1.DsQxmlitem
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 197
    Width = 665
    Height = 25
    DataSource = DbVendas1.DsVendas
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 191
  end
  object OpenDialog1: TOpenDialog
    Left = 8
    Top = 48
  end
end
