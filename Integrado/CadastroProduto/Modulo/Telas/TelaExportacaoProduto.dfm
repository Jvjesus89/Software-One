object ExportaProdutos: TExportaProdutos
  Left = 0
  Top = 0
  Caption = 'Exporta Produtos'
  ClientHeight = 89
  ClientWidth = 505
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
    Left = 64
    Top = 8
    Width = 299
    Height = 19
    Caption = 'Selecione o diretorio para salvar o arquivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 64
    Top = 32
    Width = 289
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 359
    Top = 32
    Width = 36
    Height = 21
    Caption = 'Busca'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 59
    Width = 83
    Height = 25
    Caption = 'Salvar Arquivo'
    TabOrder = 2
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Left = 8
    Top = 61
  end
end
