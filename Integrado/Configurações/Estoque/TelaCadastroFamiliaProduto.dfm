﻿object CaadastroFamilia: TCaadastroFamilia
  Left = 0
  Top = 0
  Caption = 'Cadastro Familia'
  ClientHeight = 253
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 253
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 280
    ExplicitTop = 144
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlCampos: TPanel
      Left = 0
      Top = 0
      Width = 526
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 240
      ExplicitTop = 80
      ExplicitWidth = 185
      object btnCadastraFamilia: TSpeedButton
        AlignWithMargins = True
        Left = 233
        Top = 20
        Width = 23
        Height = 21
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000074120000741200000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8D7D8DAD7D8DAF8F8F8FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE53555D16
          192416192453555DFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFE2E303A191B26191B262E303AFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE31333B1D
          1F291D1F2931333BFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFE35373F21232C21232C35373FFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFDFD393A4225
          272F25272F393A42FDFDFDFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFF0F0F1909095
          84858984858984848982838830323A292B33292B3330323A8283888484898485
          89848589909095F0F0F199999D2E30372D2F362D2F362D2F362D2F362D2F362D
          2F362D2F362D2F362D2F362D2F362D2F362D2F362E303799999D97989B313339
          3031383031383031383031383031383031383031383031383031383031383031
          3830313831333997989BABABAE35363D35363D35363D35363D34353C34363C35
          363C35363C34363C34353C35363D35363D35363D35363DABABAEFDFDFDD2D2D4
          CDCDCFCDCDCFCDCDCFCCCDCE44454B393A40393A4044454BCDCDCECDCDCFCDCD
          CFCDCDCFD2D2D4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD4D4E533D
          3E433D3E434D4E53FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFE515256414246414246515256FEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE55565945
          4649454649555659FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFE58595C49494C49494C58595CFEFEFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEA1A1A25C
          5C5E5C5C5EA1A1A2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = btnCadastraFamiliaClick
      end
      object pnlCodigo: TPanel
        Left = 0
        Top = 0
        Width = 81
        Height = 41
        Align = alLeft
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'Codigo Familia'
        TabOrder = 0
        VerticalAlignment = taAlignTop
        object Edtcodigo: TDBEdit
          Left = 0
          Top = 20
          Width = 81
          Height = 21
          Align = alBottom
          DataField = 'cdfamiliaproduto'
          DataSource = DsFamiliaProdutoCampo
          TabOrder = 0
          ExplicitLeft = 16
          ExplicitTop = 24
          ExplicitWidth = 121
        end
      end
      object pnlFamiliaProduto: TPanel
        Left = 81
        Top = 0
        Width = 152
        Height = 41
        Align = alLeft
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'Familia Produto'
        TabOrder = 1
        VerticalAlignment = taAlignTop
        object edtFamiliaProduto: TDBEdit
          Left = 0
          Top = 20
          Width = 152
          Height = 21
          Align = alBottom
          DataField = 'nmfamiliaproduto'
          DataSource = DsFamiliaProdutoCampo
          TabOrder = 0
          ExplicitLeft = 48
          ExplicitTop = 24
          ExplicitWidth = 121
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 41
      Width = 526
      Height = 212
      Align = alClient
      DataSource = DsFamiliaProduto
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'cdfamiliaproduto'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmfamiliaproduto'
          Title.Caption = 'Familia Produto'
          Visible = True
        end>
    end
  end
  object FamiliaProduto: TFDQuery
    CachedUpdates = True
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produtosfamilia')
    Left = 334
    Top = 128
    object FamiliaProdutoidprodutosfamilia: TFDAutoIncField
      FieldName = 'idprodutosfamilia'
      Origin = 'idprodutosfamilia'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FamiliaProdutonmfamiliaproduto: TWideStringField
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object FamiliaProdutocdfamiliaproduto: TIntegerField
      FieldName = 'cdfamiliaproduto'
      Origin = 'cdfamiliaproduto'
    end
  end
  object DsFamiliaProduto: TDataSource
    DataSet = FamiliaProduto
    Left = 400
    Top = 128
  end
  object FamiliaProdutoCampo: TFDQuery
    CachedUpdates = True
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produtosfamilia')
    Left = 302
    Top = 8
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'idprodutosfamilia'
      Origin = 'idprodutosfamilia'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'cdfamiliaproduto'
      Origin = 'cdfamiliaproduto'
    end
  end
  object DsFamiliaProdutoCampo: TDataSource
    DataSet = FamiliaProdutoCampo
    Left = 368
    Top = 8
  end
end
