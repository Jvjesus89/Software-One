object TelaCadastroCliente1: TTelaCadastroCliente1
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 217
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 122
    Top = 8
    Width = 92
    Height = 19
    Caption = 'Nome Cliente'
    FocusControl = NomeClienteCampo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 61
    Width = 68
    Height = 19
    Caption = 'Cpf/CNPJ'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 193
    Top = 61
    Width = 63
    Height = 19
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 632
    Top = 62
    Width = 65
    Height = 19
    Caption = 'Numero'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 117
    Width = 92
    Height = 19
    Caption = 'Complemento'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 173
    Width = 70
    Height = 19
    Caption = 'dtcadastro'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label7: TLabel
    Left = 280
    Top = 117
    Width = 43
    Height = 19
    Caption = 'Bairro'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 458
    Top = 117
    Width = 47
    Height = 19
    Caption = 'Cidade'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 667
    Top = 119
    Width = 20
    Height = 19
    Caption = 'UF'
    FocusControl = DBEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 8
    Width = 47
    Height = 19
    Caption = 'C'#243'digo'
    FocusControl = DBEdit9
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object NomeClienteCampo: TDBEdit
    Left = 122
    Top = 33
    Width = 472
    Height = 27
    DataField = 'nmcliente'
    DataSource = DbClient.Dscliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 86
    Width = 169
    Height = 27
    DataField = 'cpf_cnpj'
    DataSource = DbClient.Dscliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 193
    Top = 86
    Width = 433
    Height = 27
    DataField = 'nmendereco'
    DataSource = DbClient.Dscliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 632
    Top = 87
    Width = 65
    Height = 27
    DataField = 'nrendere'#231'o'
    DataSource = DbClient.Dscliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 142
    Width = 266
    Height = 27
    DataField = 'complemento'
    DataSource = DbClient.Dscliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 198
    Width = 134
    Height = 27
    DataField = 'dtcadastro'
    DataSource = DbClient.Dscliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
  end
  object DBEdit1: TDBEdit
    Left = 280
    Top = 142
    Width = 172
    Height = 27
    DataField = 'nmbairro'
    DataSource = DbClient.Dscliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 458
    Top = 142
    Width = 203
    Height = 27
    DataField = 'nmcidade'
    DataSource = DbClient.Dscliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 667
    Top = 142
    Width = 30
    Height = 27
    DataField = 'nmestado'
    DataSource = DbClient.Dscliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object Button1: TButton
    Left = 352
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 10
    OnClick = Button1Click
  end
  object DBEdit9: TDBEdit
    Left = 8
    Top = 33
    Width = 108
    Height = 27
    DataField = 'cdcliente'
    DataSource = DbClient.Dscliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object RadioGroup1: TRadioGroup
    Left = 600
    Top = 33
    Width = 97
    Height = 27
    Columns = 2
    TabOrder = 11
  end
  object RadioButton1: TRadioButton
    Left = 600
    Top = 39
    Width = 49
    Height = 17
    Caption = 'CPF'
    TabOrder = 12
  end
  object RadioButton2: TRadioButton
    Left = 646
    Top = 39
    Width = 51
    Height = 17
    Caption = 'CNPJ'
    TabOrder = 13
  end
end
