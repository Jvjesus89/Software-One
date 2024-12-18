﻿object TelaConsultaProduto: TTelaConsultaProduto
  Left = 0
  Top = 0
  Caption = 'Consulta Produto'
  ClientHeight = 308
  ClientWidth = 649
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 649
    Height = 251
    Align = alClient
    DataSource = DsQproduto
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'cdproduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmproduto'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmfamiliaproduto'
        Width = 272
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlproduto'
        Title.Caption = 'Vl. Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idproduto'
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 57
    Align = alTop
    BevelOuter = bvLowered
    Padding.Left = 5
    Padding.Top = 15
    Padding.Right = 50
    Padding.Bottom = 15
    TabOrder = 1
    object Busca: TEdit
      AlignWithMargins = True
      Left = 206
      Top = 17
      Width = 185
      Height = 23
      Margins.Left = 200
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 21
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 391
      Top = 19
      Width = 62
      Height = 22
      Margins.Left = 0
      Margins.Right = 100
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Busca'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object QProduto: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produto')
    Left = 584
    Top = 152
    object QProdutoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QProdutonmproduto: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object QProdutocdproduto: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object QProdutoidfamiliaproduto: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object QProdutonmfamiliaproduto: TWideStringField
      DisplayLabel = 'Familia Produto'
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object QProdutostproduto: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object QProdutodtcadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QProdutovlproduto: TSingleField
      FieldName = 'vlproduto'
    end
  end
  object DsQproduto: TDataSource
    DataSet = QProduto
    Left = 584
    Top = 200
  end
end
