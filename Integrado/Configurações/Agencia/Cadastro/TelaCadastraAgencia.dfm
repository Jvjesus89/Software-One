object CadastrarAgencia: TCadastrarAgencia
  Left = 0
  Top = 0
  Caption = 'Cadastrar Agencia'
  ClientHeight = 80
  ClientWidth = 441
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
    Left = 137
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Agencia'
  end
  object Label2: TLabel
    Left = 315
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Nr. Agencia'
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 52
    Height = 13
    Caption = 'dtcadastro'
    Visible = False
  end
  object Label4: TLabel
    Left = 315
    Top = 56
    Width = 37
    Height = 13
    Caption = 'idbanco'
    Visible = False
  end
  object Label5: TLabel
    Left = 8
    Top = 8
    Width = 29
    Height = 13
    Caption = 'Banco'
  end
  object Button1: TButton
    Left = 128
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 209
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 137
    Top = 24
    Width = 169
    Height = 21
    DataField = 'nmagencia'
    DataSource = DbConfigFin.DsAgencia
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 315
    Top = 24
    Width = 121
    Height = 21
    DataField = 'nragencia'
    DataSource = DbConfigFin.DsAgencia
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 75
    Width = 73
    Height = 21
    DataField = 'dtcadastro'
    DataSource = DbConfigFin.DsAgencia
    TabOrder = 4
    Visible = False
  end
  object Button3: TButton
    Left = 105
    Top = 24
    Width = 25
    Height = 21
    Caption = '...'
    TabOrder = 5
    OnClick = Button3Click
  end
  object DBEdit4: TDBEdit
    Left = 315
    Top = 75
    Width = 73
    Height = 21
    DataField = 'idbanco'
    DataSource = DbConfigFin.DsAgencia
    TabOrder = 6
    Visible = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 91
    Height = 21
    TabOrder = 7
  end
end
