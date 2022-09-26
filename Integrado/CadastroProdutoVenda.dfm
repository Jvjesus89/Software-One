object TelaCadastroProdutoVenda: TTelaCadastroProdutoVenda
  Left = 0
  Top = 0
  Caption = 'Cadastro Produto'
  ClientHeight = 139
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 46
    Height = 13
    Caption = 'idproduto'
    FocusControl = idproduto
    Visible = False
  end
  object Label4: TLabel
    Left = 8
    Top = 10
    Width = 38
    Height = 13
    Caption = 'Produto'
    FocusControl = nmproduto
  end
  object Label5: TLabel
    Left = 8
    Top = 56
    Width = 64
    Height = 13
    Caption = 'Valor Unitario'
    FocusControl = vlunitario
  end
  object Label6: TLabel
    Left = 148
    Top = 53
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = quantidade
  end
  object Label1: TLabel
    Left = 296
    Top = 56
    Width = 47
    Height = 13
    Caption = 'Valor item'
    FocusControl = vlitem
  end
  object idproduto: TDBEdit
    Left = 8
    Top = 115
    Width = 134
    Height = 21
    DataField = 'idproduto'
    DataSource = DbVendas1.DsTempItem
    TabOrder = 9
    Visible = False
  end
  object nmproduto: TDBEdit
    Left = 8
    Top = 26
    Width = 457
    Height = 21
    DataField = 'nmitemvenda'
    DataSource = DbVendas1.DsTempItem
    TabOrder = 10
  end
  object vlunitario: TDBEdit
    Left = 8
    Top = 69
    Width = 134
    Height = 21
    DataField = 'vlunitario'
    DataSource = DbVendas1.DsTempItem
    TabOrder = 4
    OnExit = vlunitarioExit
  end
  object quantidade: TDBEdit
    Left = 148
    Top = 69
    Width = 134
    Height = 21
    DataField = 'qtitem'
    DataSource = DbVendas1.DsTempItem
    TabOrder = 1
    OnExit = quantidadeExit
  end
  object Button1: TButton
    Left = 452
    Top = 26
    Width = 29
    Height = 21
    Caption = '...'
    TabOrder = 0
    OnClick = Button1Click
    OnExit = Button1Exit
  end
  object vlitem: TDBEdit
    Left = 296
    Top = 69
    Width = 153
    Height = 21
    DataField = 'vlitem'
    DataSource = DbVendas1.DsTempItem
    TabOrder = 3
  end
  object Button2: TButton
    Left = 232
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 151
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object QtDisponivel: TDBEdit
    Left = 8
    Top = 142
    Width = 134
    Height = 21
    DataField = 'qtdisponivel'
    DataSource = DbVendas1.DsQestoque
    TabOrder = 6
    Visible = False
  end
  object Edit1: TEdit
    Left = 161
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit1'
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 497
    Top = 7
    Width = 88
    Height = 138
    DataSource = DbVendas1.DsQestoque
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'qtdisponivel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtmovimento'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idproduto'
        Visible = False
      end>
  end
end
