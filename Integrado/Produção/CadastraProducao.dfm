﻿object CadastroProducao: TCadastroProducao
  Left = 0
  Top = 62
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro Producao'
  ClientHeight = 495
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 495
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 702
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object pnlProducao: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 132
        Height = 44
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Produ'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        VerticalAlignment = taAlignTop
        object edtProducao: TDBEdit
          Left = 0
          Top = 20
          Width = 132
          Height = 24
          Align = alBottom
          TabOrder = 0
        end
      end
      object pnlData: TPanel
        AlignWithMargins = True
        Left = 142
        Top = 5
        Width = 107
        Height = 44
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        VerticalAlignment = taAlignTop
        object dtcadastro: TDateTimePicker
          Left = 0
          Top = 20
          Width = 107
          Height = 24
          Align = alBottom
          Date = 45514.000000000000000000
          Time = 0.813977476849686400
          DoubleBuffered = False
          ParentDoubleBuffered = False
          TabOrder = 0
        end
      end
      object pnlPrevisao: TPanel
        AlignWithMargins = True
        Left = 254
        Top = 5
        Width = 107
        Height = 44
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Previs'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        VerticalAlignment = taAlignTop
        object dtprevisao: TDateTimePicker
          Left = 0
          Top = 20
          Width = 107
          Height = 24
          Align = alBottom
          Date = 45514.000000000000000000
          Time = 0.813977476849686400
          TabOrder = 0
        end
      end
      object pnlCliente: TPanel
        AlignWithMargins = True
        Left = 366
        Top = 5
        Width = 208
        Height = 44
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        VerticalAlignment = taAlignTop
        object edtCliente: TDBEdit
          Left = 0
          Top = 20
          Width = 208
          Height = 24
          Align = alBottom
          TabOrder = 0
        end
      end
    end
    object pnlPA: TPanel
      Left = 0
      Top = 49
      Width = 702
      Height = 220
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object ProdutoAcabado: TPageControl
        Left = 0
        Top = 0
        Width = 702
        Height = 220
        ActivePage = ProdutoPA
        Align = alClient
        TabOrder = 0
        object ProdutoPA: TTabSheet
          Caption = 'Produto Acabado'
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 694
            Height = 49
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object pnlcodigo: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 132
              Height = 44
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              VerticalAlignment = taAlignTop
              object edtCodigo: TDBEdit
                Left = 0
                Top = 20
                Width = 132
                Height = 24
                Align = alBottom
                DataField = 'cdproduto'
                DataSource = DsMProducoesitensCampo
                TabOrder = 0
                OnKeyDown = edtCodigoKeyDown
              end
            end
            object pnlProduto: TPanel
              AlignWithMargins = True
              Left = 142
              Top = 5
              Width = 291
              Height = 44
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 'Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              VerticalAlignment = taAlignTop
              object edtProduto: TDBEdit
                Left = 0
                Top = 20
                Width = 291
                Height = 24
                Align = alBottom
                DataField = 'nmproduto'
                DataSource = DsMProducoesitensCampo
                TabOrder = 0
                OnKeyDown = edtProdutoKeyDown
              end
            end
            object pnlqtde: TPanel
              AlignWithMargins = True
              Left = 438
              Top = 5
              Width = 132
              Height = 44
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              VerticalAlignment = taAlignTop
              object edtQtde: TDBEdit
                Left = 0
                Top = 20
                Width = 132
                Height = 24
                Align = alBottom
                DataField = 'qtdeproducao'
                DataSource = DsMProducoesitensCampo
                TabOrder = 0
              end
            end
            object pnlbotoesPA: TPanel
              Left = 570
              Top = 0
              Width = 94
              Height = 49
              Align = alLeft
              BevelOuter = bvNone
              Padding.Left = 15
              Padding.Top = 22
              Padding.Right = 15
              TabOrder = 3
              object btnIIncluirPa: TBitBtn
                Left = 15
                Top = 22
                Width = 25
                Height = 27
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
                TabOrder = 0
                OnClick = btnIIncluirPaClick
              end
              object btnexcluirpa: TBitBtn
                Left = 40
                Top = 22
                Width = 25
                Height = 27
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
                TabOrder = 1
                OnClick = btnexcluirpaClick
              end
            end
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 49
            Width = 694
            Height = 143
            Align = alClient
            TabOrder = 1
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
              DataController.DataSource = DsProducoesitens
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1cdproduto: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'cdproduto'
              end
              object cxGrid1DBTableView1nmproduto: TcxGridDBColumn
                Caption = 'Produto'
                DataBinding.FieldName = 'nmproduto'
                Width = 300
              end
              object cxGrid1DBTableView1qtdeproducao: TcxGridDBColumn
                Caption = 'Qtde'
                DataBinding.FieldName = 'qtdeproducao'
              end
              object cxGrid1DBTableView1datafinalizacao: TcxGridDBColumn
                Caption = 'Data Finalizacao'
                DataBinding.FieldName = 'datafinalizacao'
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 269
      Width = 702
      Height = 226
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object Materiaprima: TPageControl
        Left = 0
        Top = 0
        Width = 702
        Height = 226
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Materia Prima'
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 694
            Height = 49
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel5: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 5
              Width = 132
              Height = 44
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 'C'#243'digo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              VerticalAlignment = taAlignTop
              object edtCodigoMP: TDBEdit
                Left = 0
                Top = 20
                Width = 132
                Height = 24
                Align = alBottom
                TabOrder = 0
              end
            end
            object Panel6: TPanel
              AlignWithMargins = True
              Left = 142
              Top = 5
              Width = 291
              Height = 44
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = 'Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              VerticalAlignment = taAlignTop
              object edtProdutoMP: TDBEdit
                Left = 0
                Top = 20
                Width = 291
                Height = 24
                Align = alBottom
                TabOrder = 0
              end
            end
            object Panel7: TPanel
              AlignWithMargins = True
              Left = 438
              Top = 5
              Width = 132
              Height = 44
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              VerticalAlignment = taAlignTop
              object edtQtdeMP: TDBEdit
                Left = 0
                Top = 20
                Width = 132
                Height = 24
                Align = alBottom
                TabOrder = 0
              end
            end
            object Panel8: TPanel
              Left = 570
              Top = 0
              Width = 94
              Height = 49
              Align = alLeft
              BevelOuter = bvNone
              Padding.Left = 15
              Padding.Top = 22
              Padding.Right = 15
              TabOrder = 3
              object btnIncluirMp: TBitBtn
                Left = 15
                Top = 22
                Width = 25
                Height = 27
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
                TabOrder = 0
              end
              object btnexcluiMP: TBitBtn
                Left = 40
                Top = 22
                Width = 25
                Height = 27
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
                TabOrder = 1
                OnClick = btnexcluiMPClick
              end
            end
          end
          object cxGrid2: TcxGrid
            Left = 0
            Top = 49
            Width = 694
            Height = 149
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView1: TcxGridDBTableView
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
              DataController.DataSource = DsProducoesitensmp
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  Column = cxGridDBTableView1qtde
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView1cdproduto: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'cdproduto'
              end
              object cxGridDBTableView1nmproduto: TcxGridDBColumn
                Caption = 'Produto'
                DataBinding.FieldName = 'nmproduto'
                Width = 300
              end
              object cxGridDBTableView1qtde: TcxGridDBColumn
                Caption = 'Qtde'
                DataBinding.FieldName = 'qtde'
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
    end
  end
  object Producao: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'select * from producoes where 1=2')
    Left = 344
    object ProducaoDTVENDA: TDateField
      FieldName = 'DTVENDA'
      Origin = 'DTVENDA'
    end
    object ProducaoCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
    end
    object ProducaoCODCLI_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODCLI_1'
      Origin = 'CODCLI'
      ProviderFlags = []
    end
    object ProducaoCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
    end
    object ProducaoRAZAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      Size = 100
    end
    object ProducaoFISICA_JURIDICA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FISICA_JURIDICA'
      Origin = 'FISICA_JURIDICA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object ProducaoCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 14
    end
    object ProducaoCODEND: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODEND'
      Origin = 'CODEND'
      ProviderFlags = []
    end
    object ProducaoTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      Size = 15
    end
    object ProducaoTOTALVENDA: TFMTBCDField
      FieldName = 'TOTALVENDA'
      Origin = 'TOTALVENDA'
      Precision = 18
      Size = 2
    end
    object ProducaoNUMVENDA: TIntegerField
      FieldName = 'NUMVENDA'
      Origin = 'NUMVENDA'
    end
    object ProducaoCODVENDA: TIntegerField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object PProducoes: TDataSetProvider
    DataSet = Producao
    Left = 400
  end
  object Mproducoes: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DTVENDA'
        DataType = ftDate
      end
      item
        Name = 'CODCLI'
        DataType = ftInteger
      end
      item
        Name = 'CODCLI_1'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'RAZAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FISICA_JURIDICA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CPF_CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CODEND'
        DataType = ftInteger
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TOTALVENDA'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'NUMVENDA'
        DataType = ftInteger
      end
      item
        Name = 'CODVENDA'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'PVenda'
    StoreDefs = True
    Left = 464
    object MproducoesDTVENDA: TDateField
      FieldName = 'DTVENDA'
      Origin = 'DTVENDA'
    end
    object MproducoesCODCLI: TIntegerField
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
    end
    object MproducoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
    end
    object MproducoesRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      ProviderFlags = []
      Size = 100
    end
    object MproducoesFISICA_JURIDICA: TStringField
      FieldName = 'FISICA_JURIDICA'
      Origin = 'FISICA_JURIDICA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object MproducoesCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 14
    end
    object MproducoesCODEND: TIntegerField
      FieldName = 'CODEND'
      Origin = 'CODEND'
      ProviderFlags = []
    end
    object MproducoesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      ProviderFlags = []
      Size = 15
    end
    object MproducoesTOTALVENDA: TFMTBCDField
      FieldName = 'TOTALVENDA'
      Origin = 'TOTALVENDA'
      Precision = 18
      Size = 2
    end
    object MproducoesNUMVENDA: TIntegerField
      FieldName = 'NUMVENDA'
      Origin = 'NUMVENDA'
    end
  end
  object DsProducoes: TDataSource
    DataSet = Mproducoes
    Left = 520
  end
  object Producoesitens: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'select * from Producoesitens pi'
      'join produto p on pi.idproduto = p.idproduto  where 1=2')
    Left = 440
    Top = 160
    object Producoesitensidproducoesitens: TFDAutoIncField
      FieldName = 'idproducoesitens'
      Origin = 'idproducoesitens'
      ReadOnly = True
    end
    object Producoesitensidproducao: TIntegerField
      FieldName = 'idproducao'
      Origin = 'idproducao'
    end
    object Producoesitensidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object Producoesitensqtdeproducao: TIntegerField
      FieldName = 'qtdeproducao'
      Origin = 'qtdeproducao'
    end
    object Producoesitensdatafinalizacao: TDateField
      FieldName = 'datafinalizacao'
      Origin = 'datafinalizacao'
    end
    object Producoesitensnmproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      ProviderFlags = []
      Size = 100
    end
    object Producoesitenscdproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      ProviderFlags = []
      Size = 10
    end
  end
  object PProducoesitens: TDataSetProvider
    DataSet = Producoesitens
    Left = 496
    Top = 160
  end
  object MProducoesitens: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idproducoesitens'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'idproducao'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'idproduto'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'qtdeproducao'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'datafinalizacao'
        DataType = ftDate
      end
      item
        Name = 'nmproduto'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'cdproduto'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'PProducoesitens'
    StoreDefs = True
    Left = 560
    Top = 160
    object MProducoesitensidproducao: TIntegerField
      FieldName = 'idproducao'
    end
    object MProducoesitensidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object MProducoesitensqtdeproducao: TIntegerField
      FieldName = 'qtdeproducao'
    end
    object MProducoesitensdatafinalizacao: TDateField
      FieldName = 'datafinalizacao'
    end
    object MProducoesitensnmproduto: TWideStringField
      FieldName = 'nmproduto'
      Size = 100
    end
    object MProducoesitenscdproduto: TWideStringField
      FieldName = 'cdproduto'
      Size = 10
    end
  end
  object DsProducoesitens: TDataSource
    DataSet = MProducoesitens
    Left = 616
    Top = 160
  end
  object producoesitensmp: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'select * from Producoesitensmp pimp'
      'join produto p on pimp.idproduto = p.idproduto  where 1=2')
    Left = 440
    Top = 352
    object producoesitensmpidproducoesitensmp: TFDAutoIncField
      FieldName = 'idproducoesitensmp'
      Origin = 'idproducoesitensmp'
      ReadOnly = True
    end
    object producoesitensmpidproducao: TIntegerField
      FieldName = 'idproducao'
      Origin = 'idproducao'
      ProviderFlags = [pfInWhere]
    end
    object producoesitensmpidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere]
    end
    object producoesitensmpqtde: TIntegerField
      FieldName = 'qtde'
      Origin = 'qtde'
      ProviderFlags = [pfInWhere]
    end
    object producoesitensmpnmproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      ProviderFlags = [pfInWhere]
      Size = 100
    end
    object producoesitensmpcdproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      ProviderFlags = [pfInWhere]
      Size = 10
    end
  end
  object Pproducoesitensmp: TDataSetProvider
    DataSet = producoesitensmp
    Left = 496
    Top = 352
  end
  object Mproducoesitensmp: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idproducoesitensmp'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'idproducao'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'idproduto'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'qtde'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'nmproduto'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'cdproduto'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'Pproducoesitensmp'
    StoreDefs = True
    Left = 560
    Top = 352
    object Mproducoesitensmpidproducao: TIntegerField
      FieldName = 'idproducao'
    end
    object Mproducoesitensmpidproduto: TIntegerField
      FieldName = 'idproduto'
    end
    object Mproducoesitensmpqtde: TIntegerField
      FieldName = 'qtde'
    end
    object Mproducoesitensmpnmproduto: TWideStringField
      FieldName = 'nmproduto'
      Size = 100
    end
    object Mproducoesitensmpcdproduto: TWideStringField
      FieldName = 'cdproduto'
      Size = 10
    end
  end
  object DsProducoesitensmp: TDataSource
    DataSet = Mproducoesitensmp
    Left = 616
    Top = 352
  end
  object DsMProducoesitensCampo: TDataSource
    DataSet = MProducoesitensCampo
    Left = 344
    Top = 80
  end
  object MProducoesitensCampo: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idproducoesitens'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'idproducao'
        DataType = ftInteger
      end
      item
        Name = 'idproduto'
        DataType = ftInteger
      end
      item
        Name = 'qtdeproducao'
        DataType = ftInteger
      end
      item
        Name = 'datafinalizacao'
        DataType = ftDate
      end
      item
        Name = 'nmproduto'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'cdproduto'
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'PProducoesitens'
    StoreDefs = True
    Left = 280
    Top = 80
    object MProducoesitensCampoidproducao: TIntegerField
      FieldName = 'idproducao'
      Origin = 'idproducao'
    end
    object MProducoesitensCampoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object MProducoesitensCampoqtdeproducao: TIntegerField
      FieldName = 'qtdeproducao'
      Origin = 'qtdeproducao'
    end
    object MProducoesitensCampodatafinalizacao: TDateField
      FieldName = 'datafinalizacao'
      Origin = 'datafinalizacao'
    end
    object MProducoesitensCamponmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      ProviderFlags = []
      Size = 100
    end
    object MProducoesitensCampocdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      ProviderFlags = []
      Size = 10
    end
  end
  object ProdutoComposicao: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'select * from produtoscomp pc '
      'join produto p on p.idproduto = pc.idproduto'
      '')
    Left = 80
    Top = 368
    object ProdutoComposicaoidprodutocomp: TFDAutoIncField
      FieldName = 'idprodutocomp'
      Origin = 'idprodutocomp'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ProdutoComposicaoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      Required = True
    end
    object ProdutoComposicaoidprodutomp: TIntegerField
      FieldName = 'idprodutomp'
      Origin = 'idprodutomp'
    end
    object ProdutoComposicaoqtdemp: TSingleField
      FieldName = 'qtdemp'
      Origin = 'qtdemp'
    end
    object ProdutoComposicaoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object ProdutoComposicaodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object ProdutoComposicaonmproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object ProdutoComposicaocdproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
  end
end
