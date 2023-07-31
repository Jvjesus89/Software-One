object CadastroBaixaAreceber: TCadastroBaixaAreceber
  Left = 0
  Top = 0
  Caption = 'Cadastro Baixa Areceber'
  ClientHeight = 177
  ClientWidth = 334
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
    Top = 118
    Width = 51
    Height = 13
    Caption = 'idareceber'
    Visible = False
  end
  object Label2: TLabel
    Left = 16
    Top = 21
    Width = 52
    Height = 13
    Caption = 'Data Baixa'
  end
  object Label3: TLabel
    Left = 128
    Top = 21
    Width = 73
    Height = 13
    Caption = 'Conta Bancaria'
  end
  object Label4: TLabel
    Left = 80
    Top = 118
    Width = 76
    Height = 13
    Caption = 'idcontabancaria'
    Visible = False
  end
  object Button1: TButton
    Left = 126
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 45
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 16
    Top = 40
    Width = 81
    Height = 21
    Date = 44834.000000000000000000
    Time = 0.622212939815654000
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button3: TButton
    Left = 245
    Top = 40
    Width = 22
    Height = 21
    Caption = '...'
    TabOrder = 4
    OnClick = Button3Click
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 137
    Width = 51
    Height = 21
    DataField = 'idareceber'
    DataSource = DbFinAreceber1.DsQAreceber
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 137
    Width = 76
    Height = 21
    DataField = 'idcontabancaria'
    DataSource = DbFinAreceber1.DsQAreceber
    TabOrder = 6
  end
end
