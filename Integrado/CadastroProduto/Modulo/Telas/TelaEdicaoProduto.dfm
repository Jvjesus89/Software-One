object TelaEdicaoProduto1: TTelaEdicaoProduto1
  Left = 0
  Top = 0
  Caption = 'Editar produto'
  ClientHeight = 202
  ClientWidth = 508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Cod: TLabel
    Left = 9
    Top = 9
    Width = 47
    Height = 19
    Caption = 'C'#243'digo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Valor: TLabel
    Left = 377
    Top = 122
    Width = 94
    Height = 19
    Caption = 'Valor Unitario'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Nome: TLabel
    Left = 9
    Top = 61
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
  object Familia: TLabel
    Left = 9
    Top = 122
    Width = 105
    Height = 19
    Caption = 'Familia Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 405
    Top = 8
    Width = 87
    Height = 57
  end
  object CdProduto: TDBEdit
    Left = 8
    Top = 34
    Width = 132
    Height = 21
    AutoSelect = False
    AutoSize = False
    DataField = 'cdproduto'
    TabOrder = 0
  end
  object NmProduto: TDBEdit
    Left = 8
    Top = 86
    Width = 316
    Height = 21
    AutoSelect = False
    AutoSize = False
    DataField = 'nmproduto'
    TabOrder = 1
    OnExit = NmProdutoExit
  end
  object FamiliaProduto: TDBEdit
    Left = 8
    Top = 147
    Width = 316
    Height = 21
    AutoSelect = False
    AutoSize = False
    DataField = 'nmfamiliaproduto'
    TabOrder = 2
  end
  object VlUnitario: TDBEdit
    Left = 362
    Top = 147
    Width = 130
    Height = 21
    AutoSelect = False
    AutoSize = False
    DataField = 'vlproduto'
    TabOrder = 3
  end
  object Button1: TButton
    Left = 255
    Top = 174
    Width = 69
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Bativo: TDBCheckBox
    Left = 160
    Top = 34
    Width = 87
    Height = 21
    Caption = 'Ativo'
    DataField = 'stproduto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Button2: TButton
    Left = 176
    Top = 174
    Width = 71
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = Button2Click
  end
  object IdProduto: TDBEdit
    Left = 8
    Top = 194
    Width = 117
    Height = 21
    DataField = 'idproduto'
    TabOrder = 7
    Visible = False
  end
end
