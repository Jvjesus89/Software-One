object CadastroBanco: TCadastroBanco
  Left = 0
  Top = 0
  Caption = 'Cadastro Banco'
  ClientHeight = 80
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Banco'
  end
  object Label2: TLabel
    Left = 216
    Top = 8
    Width = 69
    Height = 13
    Caption = 'Numero Banco'
  end
  object D: TLabel
    Left = 8
    Top = 48
    Width = 70
    Height = 13
    Caption = 'Data Cadastro'
    Visible = False
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 24
    Width = 169
    Height = 21
    DataField = 'nmbanco'
    DataSource = DbConfigFin.DsBanco
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 216
    Top = 24
    Width = 121
    Height = 21
    DataField = 'nrbanco'
    DataSource = DbConfigFin.DsBanco
    TabOrder = 1
  end
  object Button1: TButton
    Left = 117
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 193
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 63
    Width = 104
    Height = 21
    DataField = 'dtcadastro'
    DataSource = DbConfigFin.DsBanco
    TabOrder = 4
    Visible = False
  end
end
