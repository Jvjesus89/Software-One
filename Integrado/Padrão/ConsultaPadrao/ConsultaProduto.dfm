﻿object TelaConsultaProduto: TTelaConsultaProduto
  Left = 0
  Top = 0
  Caption = 'Consulta Produto'
  ClientHeight = 246
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 53
    Width = 524
    Height = 193
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 524
      Height = 193
      Align = alClient
      DataSource = DsProdutos
      TabOrder = 0
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
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmproduto'
          Title.Caption = 'Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmfamiliaproduto'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 524
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 456
      Top = 22
      Width = 48
      Height = 31
      Margins.Left = 0
      Margins.Top = 22
      Margins.Right = 20
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Buscar'
      OnClick = SpeedButton1Click
      ExplicitTop = 25
      ExplicitHeight = 28
    end
    object pnlCodigo: TPanel
      Left = 0
      Top = 0
      Width = 89
      Height = 53
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'C'#243'digo'
      Padding.Top = 20
      Padding.Bottom = 3
      TabOrder = 0
      VerticalAlignment = taAlignTop
      object edtCodigo: TEdit
        Left = 0
        Top = 29
        Width = 89
        Height = 21
        Align = alBottom
        TabOrder = 0
        OnKeyDown = edtCodigoKeyDown
      end
    end
    object pnlDescricao: TPanel
      AlignWithMargins = True
      Left = 94
      Top = 0
      Width = 184
      Height = 53
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Produto'
      Padding.Top = 20
      Padding.Bottom = 3
      TabOrder = 1
      VerticalAlignment = taAlignTop
      object edtProduto: TEdit
        Left = 0
        Top = 29
        Width = 184
        Height = 21
        Align = alBottom
        TabOrder = 0
        OnKeyDown = edtProdutoKeyDown
      end
    end
  end
  object QProdutos: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'select * from produto p'
      
        'left join produtosfamilia f on f.idprodutosfamilia = p.idfamilia' +
        'produto'
      'where stproduto = true'
      '')
    Left = 408
    Top = 88
    object QProdutosidproduto: TFDAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QProdutosnmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Required = True
      Size = 100
    end
    object QProdutoscdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Required = True
      Size = 10
    end
    object QProdutosvlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object QProdutosvlcusto: TSingleField
      FieldName = 'vlcusto'
      Origin = 'vlcusto'
    end
    object QProdutosnmfamiliaproduto: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Familia Produto'
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DsProdutos: TDataSource
    DataSet = QProdutos
    Left = 408
    Top = 136
  end
end
