object CadastroContaCorrente: TCadastroContaCorrente
  Left = 0
  Top = 0
  Caption = 'Cadastro Conta Corrente'
  ClientHeight = 132
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 161
    Top = 49
    Width = 38
    Height = 13
    Caption = 'Agencia'
  end
  object Label2: TLabel
    Left = 161
    Top = 6
    Width = 93
    Height = 13
    Caption = 'Nr. Conta Corrente'
  end
  object Label5: TLabel
    Left = 8
    Top = 49
    Width = 29
    Height = 13
    Caption = 'Banco'
  end
  object Label4: TLabel
    Left = 328
    Top = 46
    Width = 37
    Height = 13
    Caption = 'idbanco'
    Visible = False
  end
  object Label3: TLabel
    Left = 328
    Top = 6
    Width = 52
    Height = 13
    Caption = 'dtcadastro'
    Visible = False
  end
  object Label6: TLabel
    Left = 328
    Top = 94
    Width = 45
    Height = 13
    Caption = 'idagencia'
    Visible = False
  end
  object Label7: TLabel
    Left = 8
    Top = 6
    Width = 75
    Height = 13
    Caption = 'Conta Corrente'
  end
  object Button1: TButton
    Left = 53
    Top = 103
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 134
    Top = 103
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 25
    Width = 121
    Height = 21
    DataField = 'nrcontacorrente'
    DataSource = DbConfigFin.DsConta
    TabOrder = 2
  end
  object Button3: TButton
    Left = 97
    Top = 65
    Width = 25
    Height = 21
    Caption = '...'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 65
    Width = 91
    Height = 21
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 328
    Top = 65
    Width = 73
    Height = 21
    DataField = 'idbanco'
    DataSource = DbConfigFin.DsConta
    TabOrder = 5
    Visible = False
  end
  object DBEdit3: TDBEdit
    Left = 328
    Top = 25
    Width = 73
    Height = 21
    DataField = 'dtcadastro'
    DataSource = DbConfigFin.DsConta
    TabOrder = 6
    Visible = False
  end
  object Edit2: TEdit
    Left = 160
    Top = 65
    Width = 91
    Height = 21
    TabOrder = 7
  end
  object Button4: TButton
    Left = 249
    Top = 65
    Width = 25
    Height = 21
    Caption = '...'
    TabOrder = 8
    OnClick = Button4Click
  end
  object DBEdit1: TDBEdit
    Left = 328
    Top = 113
    Width = 73
    Height = 21
    DataField = 'idagencia'
    DataSource = DbConfigFin.DsConta
    TabOrder = 9
    Visible = False
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 25
    Width = 121
    Height = 21
    DataField = 'nmcontabancaria'
    DataSource = DbConfigFin.DsConta
    TabOrder = 10
  end
end
