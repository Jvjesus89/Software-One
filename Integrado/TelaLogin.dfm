object TelaLoginU: TTelaLoginU
  Left = 0
  Top = 0
  Caption = 'Tela de Login'
  ClientHeight = 271
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 415
    Height = 271
    Align = alClient
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object Senha: TLabel
      Left = 115
      Top = 147
      Width = 30
      Height = 13
      Align = alCustom
      Caption = 'Senha'
    end
    object Texto1: TLabel
      Left = 126
      Top = 32
      Width = 163
      Height = 25
      Caption = 'Seja Bem Vindo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Usuario: TLabel
      Left = 115
      Top = 88
      Width = 36
      Height = 13
      Align = alCustom
      Caption = 'Usuario'
    end
    object Button1: TButton
      Left = 115
      Top = 206
      Width = 93
      Height = 25
      Caption = 'Esqueci a senha'
      TabOrder = 2
    end
    object Button2: TButton
      Left = 214
      Top = 206
      Width = 75
      Height = 25
      Caption = 'Login'
      TabOrder = 3
      OnClick = Button2Click
    end
    object SenhaCampo: TEdit
      Left = 115
      Top = 166
      Width = 185
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object NomeUsuario: TEdit
      Left = 115
      Top = 107
      Width = 185
      Height = 21
      TabOrder = 0
    end
    object PrimeiroAcesso: TButton
      Left = 158
      Top = 237
      Width = 94
      Height = 25
      Caption = 'Primeiro Acesso'
      TabOrder = 4
      OnClick = PrimeiroAcessoClick
    end
  end
end
