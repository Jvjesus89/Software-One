﻿object CadastroLote: TCadastroLote
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro Lote'
  ClientHeight = 232
  ClientWidth = 532
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 41
    Width = 532
    Height = 163
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 532
      Height = 163
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DsProdutosLote
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1cdlote: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'cdlote'
        end
        object cxGrid1DBTableView1qtdelote: TcxGridDBColumn
          Caption = 'Quantidade'
          DataBinding.FieldName = 'qtdelote'
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Validade'
          DataBinding.FieldName = 'dtvalidade'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object pnltop: TPanel
    Left = 0
    Top = 0
    Width = 532
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object pnlCodigoLote: TPanel
      Left = 0
      Top = 0
      Width = 81
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Lote'
      TabOrder = 0
      VerticalAlignment = taAlignTop
      object edtcodigoLote: TDBEdit
        Left = 0
        Top = 20
        Width = 81
        Height = 21
        Align = alBottom
        DataField = 'cdlote'
        DataSource = DsProdutosLoteCampo
        TabOrder = 0
      end
    end
    object pnlQtde: TPanel
      Left = 81
      Top = 0
      Width = 88
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Quantidade'
      TabOrder = 1
      VerticalAlignment = taAlignTop
      object edtquantidade: TDBEdit
        Left = 0
        Top = 20
        Width = 88
        Height = 21
        Align = alBottom
        DataField = 'qtdelote'
        DataSource = DsProdutosLoteCampo
        TabOrder = 0
      end
    end
    object ExxcluirAreceber: TBitBtn
      AlignWithMargins = True
      Left = 282
      Top = 19
      Width = 25
      Height = 22
      Margins.Left = 0
      Margins.Top = 19
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000074120000741200000000000000000000FFFFFFFEFEFE
        C4C5C8808187D8D8DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA999A
        9F8F9095F5F5F6FFFFFFFFFFFFB7B8BB1D202A181B25282B34D2D2D4FFFFFFFF
        FFFFFFFFFFFFFFFFFAFAFA60626A181B25181B2552555DF5F5F6DFDFE122252E
        1B1E271B1E271B1E272C2F38D2D3D5FFFFFFFFFFFFFAFAFA63656C1C1F291B1E
        271B1E271C1F29828489DBDBDC20232C1F212B1E212A1F222B1F222B30323BD3
        D4D5F9F9F966686E20232C1F222B1E212A1F222B20222B797B80FEFEFE9A9A9F
        24262F23252E22252D23262E24262E33353E5F616724262E23262E22252D2326
        2E23252E45464DEAEAEBFFFFFFFEFEFE9B9B9F282A32272931272931282A3228
        2A32282A32282A32272931282A32272931484A50E8E8E9FFFFFFFFFFFFFFFFFF
        FEFEFE9D9EA12C2E352C2D352B2D342B2D342B2D342B2D342C2E352B2D354B4D
        53E8E8E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE9D9EA13031382F31372F
        31372F31372F31373032384D4E54E9E9EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFAFAFA74747934353C33353B33353B33353B33353B34363C424349D7D7
        D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA77787B393B40383A3F38393E38
        393E38393E38393E393A3F383A3F47494DD8D8D9FFFFFFFFFFFFFFFFFFFAFAFB
        7B7B7E3E3F433D3E433C3D423D3E433C3D423C3D423C3D423C3D423D3E433D3E
        434B4C51D9D9DAFFFFFFFEFEFE7F7F824142464142464041454141464041455C
        5D619B9C9E4141454141464041454142464142464F5054DCDCDDD7D7D8454549
        45464944454845464945454969696DEDEDEDFEFEFEA8A8AA4545494545494445
        48454649454649898A8BF0F0F156565949494C49494C49494C6D6D6FF2F2F2FF
        FFFFFFFFFFFEFEFEAAAAAB49494C49494C49494C49494CADADAFFFFFFFDCDCDC
        5A5A5C4D4D4F707071F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEACACAD4D4D
        4F4D4D4F9E9E9FFEFEFEFFFFFFFFFFFFE9E9E9C4C4C5F4F4F4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFEFED5D5D5CECECFFEFEFEFFFFFF}
      TabOrder = 2
      Visible = False
      OnClick = ExxcluirAreceberClick
      ExplicitLeft = 194
    end
    object AdicionarTitutlo: TBitBtn
      AlignWithMargins = True
      Left = 257
      Top = 19
      Width = 25
      Height = 22
      Margins.Left = 0
      Margins.Top = 19
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
      TabOrder = 3
      OnClick = AdicionarTitutloClick
      ExplicitLeft = 169
    end
    object Panel1: TPanel
      Left = 169
      Top = 0
      Width = 88
      Height = 41
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Validade'
      TabOrder = 4
      VerticalAlignment = taAlignTop
      ExplicitLeft = 166
      object dtValidadeCampo: TDateTimePicker
        Left = 0
        Top = 20
        Width = 88
        Height = 21
        Align = alBottom
        Date = 45636.000000000000000000
        Time = 45636.000000000000000000
        TabOrder = 0
      end
    end
  end
  object pnlBotton: TPanel
    Left = 0
    Top = 204
    Width = 532
    Height = 28
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Button1: TButton
      Left = 267
      Top = 3
      Width = 71
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 168
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
    end
  end
  object ProdutosLote: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'select *'
      'from produtoslote '
      'where idproduto = :Idproduto')
    Left = 262
    Top = 104
    ParamData = <
      item
        Name = 'IDPRODUTO'
        ParamType = ptInput
      end>
    object ProdutosLoteidprodutolote: TFDAutoIncField
      FieldName = 'idprodutolote'
      Origin = 'idprodutolote'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ProdutosLotecdlote: TWideStringField
      FieldName = 'cdlote'
      Origin = 'cdlote'
      Size = 50
    end
    object ProdutosLoteqtdelote: TSingleField
      FieldName = 'qtdelote'
      Origin = 'qtdelote'
    end
    object ProdutosLoteidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object ProdutosLotedtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object ProdutosLoteidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object ProdutosLotedtvalidade: TDateField
      FieldName = 'dtvalidade'
      Origin = 'dtvalidade'
    end
  end
  object PProdutosLote: TDataSetProvider
    DataSet = ProdutosLote
    UpdateMode = upWhereKeyOnly
    Left = 328
    Top = 104
  end
  object MProdutosLote: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PProdutosLote'
    Left = 400
    Top = 104
    object MProdutosLotecdlote: TWideStringField
      FieldName = 'cdlote'
      Size = 50
    end
    object MProdutosLoteqtdelote: TSingleField
      FieldName = 'qtdelote'
    end
    object MProdutosLoteidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object MProdutosLotedtcadastro: TDateField
      FieldName = 'dtcadastro'
    end
    object MProdutosLoteidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object MProdutosLotedtvalidade: TDateField
      FieldName = 'dtvalidade'
    end
  end
  object DsProdutosLote: TDataSource
    DataSet = MProdutosLote
    Left = 464
    Top = 104
  end
  object MProdutosLoteCampo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PProdutosLote'
    Left = 392
    Top = 8
    object WideStringField1: TWideStringField
      FieldName = 'cdlote'
      Size = 50
    end
    object SingleField1: TSingleField
      FieldName = 'qtdelote'
    end
    object IntegerField1: TIntegerField
      FieldName = 'idproduto'
    end
    object DateField1: TDateField
      FieldName = 'dtcadastro'
    end
    object IntegerField2: TIntegerField
      FieldName = 'idusuario'
    end
    object MProdutosLoteCampodtvalidade: TDateField
      FieldName = 'dtvalidade'
    end
  end
  object DsProdutosLoteCampo: TDataSource
    DataSet = MProdutosLoteCampo
    Left = 456
    Top = 8
  end
end
