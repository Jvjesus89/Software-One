object CadastroFormaPagamento: TCadastroFormaPagamento
  Left = 0
  Top = 0
  Caption = 'Cadastro Forma Pagamento'
  ClientHeight = 84
  ClientWidth = 505
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
    Left = 8
    Top = 8
    Width = 87
    Height = 13
    Caption = 'Forma Pagamento'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 328
    Top = 11
    Width = 44
    Height = 13
    Caption = 'dtcriacao'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 27
    Width = 302
    Height = 21
    DataField = 'nmformapagamento'
    DataSource = DbConfigFin.DsForma
    TabOrder = 0
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit
    Left = 328
    Top = 27
    Width = 134
    Height = 21
    DataField = 'dtcadastro'
    DataSource = DbConfigFin.DsForma
    ReadOnly = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 248
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button2Click
  end
end
