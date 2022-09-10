object ProdutoMov1: TProdutoMov1
  Left = 0
  Top = 0
  Caption = 'Consulta Produto'
  ClientHeight = 450
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 96
      Height = 19
      Caption = 'Nome Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Busca: TEdit
      Left = 8
      Top = 33
      Width = 257
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 271
      Top = 33
      Width = 40
      Height = 21
      Caption = 'Busca'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 862
    Height = 385
    Align = alClient
    DataSource = DbMov.DsProdutoQ
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cdproduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmproduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmfamiliaproduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idproduto'
        Visible = False
      end>
  end
end
