object TelaCadastroProduto: TTelaCadastroProduto
  Left = 0
  Top = 0
  Caption = 
    '                                                          Cadast' +
    'ro produto'
  ClientHeight = 202
  ClientWidth = 508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
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
    Width = 89
    Height = 57
  end
  object CdProduto: TDBEdit
    Left = 8
    Top = 34
    Width = 134
    Height = 21
    AutoSelect = False
    AutoSize = False
    Color = clBtnFace
    Ctl3D = True
    DataField = 'cdproduto'
    DataSource = Dbprod.DsProduto
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
  end
  object NmProduto: TDBEdit
    Left = 8
    Top = 86
    Width = 318
    Height = 21
    AutoSelect = False
    AutoSize = False
    DataField = 'nmproduto'
    DataSource = Dbprod.DsProduto
    TabOrder = 0
    OnExit = NmProdutoExit
  end
  object FamiliaProduto: TDBEdit
    Left = 8
    Top = 147
    Width = 318
    Height = 21
    AutoSelect = False
    AutoSize = False
    DataField = 'nmfamiliaproduto'
    DataSource = Dbprod.DsProduto
    TabOrder = 1
  end
  object VlUnitario: TDBEdit
    Left = 360
    Top = 147
    Width = 130
    Height = 21
    AutoSelect = False
    AutoSize = False
    DataField = 'vlproduto'
    DataSource = Dbprod.DsProduto
    TabOrder = 2
  end
  object Button1: TButton
    Left = 267
    Top = 175
    Width = 71
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Bativo: TDBCheckBox
    Left = 160
    Top = 34
    Width = 89
    Height = 21
    Caption = 'Ativo'
    DataField = 'stproduto'
    DataSource = Dbprod.DsProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Button2: TButton
    Left = 168
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = Button2Click
  end
end
