﻿object TelaCadastroVendas: TTelaCadastroVendas
  Left = 0
  Top = 0
  Caption = 'Cadastro Vendas'
  ClientHeight = 278
  ClientWidth = 899
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 760
    Top = 16
    Width = 71
    Height = 19
    Caption = 'Data Venda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 148
    Top = 15
    Width = 42
    Height = 19
    Caption = 'Cliente'
    FocusControl = DBEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 15
    Width = 91
    Height = 19
    Caption = 'Nr Documento'
    FocusControl = DBEdit10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 672
    Top = 243
    Width = 66
    Height = 19
    Caption = 'Valor Total'
    FocusControl = Valor
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit8: TDBEdit
    Left = 148
    Top = 32
    Width = 533
    Height = 27
    DataField = 'nmcliente'
    DataSource = DsVenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyDown = DBEdit8KeyDown
  end
  object DBEdit10: TDBEdit
    Left = 8
    Top = 32
    Width = 134
    Height = 27
    DataField = 'nrdocumento'
    DataSource = DsVenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 434
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object BuscaCliente: TBitBtn
    Left = 663
    Top = 32
    Width = 39
    Height = 27
    Caption = '...'
    Layout = blGlyphBottom
    TabOrder = 0
    OnClick = BuscaClienteClick
  end
  object Dtvenda: TDateTimePicker
    Left = 760
    Top = 32
    Width = 134
    Height = 27
    Date = 44794.000000000000000000
    Time = 0.808297800926084200
    TabOrder = 4
  end
  object Button2: TButton
    Left = 353
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 65
    Width = 886
    Height = 173
    ActivePage = TabSheet1
    TabOrder = 6
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Itens'
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 878
        Height = 18
        ButtonHeight = 19
        ButtonWidth = 49
        Caption = 'ToolBar1'
        TabOrder = 0
        object Adicionar: TBitBtn
          Left = 0
          Top = 0
          Width = 25
          Height = 19
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
          TabOrder = 1
          OnClick = AdicionarClick
          OnExit = AdicionarExit
        end
        object Excluirproduto: TBitBtn
          Left = 25
          Top = 0
          Width = 25
          Height = 19
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
          TabOrder = 0
          OnClick = ExcluirprodutoClick
        end
      end
      object GridVendasItem: TcxGrid
        Left = 0
        Top = 18
        Width = 878
        Height = 127
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        object GridVendasItemDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = TelaCadastroProdutoVenda.DsVendasItem
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          RowLayout.CellBorders = False
          object GridVendasItemDBTableView1nmproduto: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'nmproduto'
          end
          object GridVendasItemDBTableView1vlunitario: TcxGridDBColumn
            Caption = 'Vl. Unitario'
            DataBinding.FieldName = 'vlunitario'
          end
          object GridVendasItemDBTableView1qtvendido: TcxGridDBColumn
            Caption = 'Qtde'
            DataBinding.FieldName = 'qtvendido'
          end
          object GridVendasItemDBTableView1vlitem: TcxGridDBColumn
            Caption = 'Vl. Item'
            DataBinding.FieldName = 'vlitem'
          end
          object GridVendasItemDBTableView1idvenda: TcxGridDBColumn
            DataBinding.FieldName = 'idvenda'
            Visible = False
          end
          object GridVendasItemDBTableView1idproduto: TcxGridDBColumn
            DataBinding.FieldName = 'idproduto'
            Visible = False
          end
          object GridVendasItemDBTableView1vlproduto: TcxGridDBColumn
            DataBinding.FieldName = 'vlproduto'
            Visible = False
          end
        end
        object GridVendasItemLevel1: TcxGridLevel
          GridView = GridVendasItemDBTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pagamento'
      ImageIndex = 1
      object Button3: TButton
        Left = 422
        Top = 0
        Width = 23
        Height = 19
        Caption = '...'
        TabOrder = 0
        Visible = False
      end
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 878
        Height = 19
        ButtonHeight = 19
        ButtonWidth = 49
        Caption = 'ToolBar1'
        TabOrder = 1
        object AdicionarTitutlo: TBitBtn
          Left = 0
          Top = 0
          Width = 25
          Height = 19
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
          TabOrder = 1
          OnClick = AdicionarTitutloClick
        end
        object ExxcluirAreceber: TBitBtn
          Left = 25
          Top = 0
          Width = 25
          Height = 19
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
          TabOrder = 0
          OnClick = ExxcluirAreceberClick
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 19
        Width = 878
        Height = 126
        Align = alClient
        TabOrder = 2
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = CadastroAreceber.DsAreceber
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          RowLayout.CellBorders = False
          object cxGridDBTableView1nrtitulo: TcxGridDBColumn
            Caption = 'Nr. Titulo'
            DataBinding.FieldName = 'nrtitulo'
          end
          object cxGridDBTableView1nmformapagamento: TcxGridDBColumn
            Caption = 'Forma Pagamento'
            DataBinding.FieldName = 'nmformapagamento'
          end
          object cxGridDBTableView1vltitulo: TcxGridDBColumn
            Caption = 'Vl. Titulo'
            DataBinding.FieldName = 'vltitulo'
          end
          object cxGridDBTableView1dtvencimento: TcxGridDBColumn
            Caption = 'Dt. Vencimento'
            DataBinding.FieldName = 'dtvencimento'
            Width = 96
          end
          object cxGridDBTableView1idareceber: TcxGridDBColumn
            DataBinding.FieldName = 'idareceber'
            Visible = False
          end
          object cxGridDBTableView1idcliente: TcxGridDBColumn
            DataBinding.FieldName = 'idcliente'
            Visible = False
          end
          object cxGridDBTableView1nmcliente: TcxGridDBColumn
            DataBinding.FieldName = 'nmcliente'
            Visible = False
          end
          object cxGridDBTableView1idformapagamento: TcxGridDBColumn
            DataBinding.FieldName = 'idformapagamento'
            Visible = False
          end
          object cxGridDBTableView1dtcadastro: TcxGridDBColumn
            DataBinding.FieldName = 'dtcadastro'
            Visible = False
          end
          object cxGridDBTableView1idorigem: TcxGridDBColumn
            DataBinding.FieldName = 'idorigem'
            Visible = False
          end
          object cxGridDBTableView1dtbaixa: TcxGridDBColumn
            DataBinding.FieldName = 'dtbaixa'
            Visible = False
          end
          object cxGridDBTableView1idcontabancaria: TcxGridDBColumn
            DataBinding.FieldName = 'idcontabancaria'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object Valor: TDBEdit
    Left = 744
    Top = 240
    Width = 134
    Height = 27
    DataField = 'valorvenda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Venda: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'select * from vendas v join clientes c on c.idcliente = v.idclie' +
        'nte where 1=2')
    Left = 328
    object Vendaidvenda: TFDAutoIncField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Vendaidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object Vendavlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
    object Vendadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Vendadtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object Vendanrdocumento: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
    object Vendanmcliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object PVenda: TDataSetProvider
    DataSet = Venda
    Left = 384
  end
  object MVenda: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idvenda'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'idcliente'
        DataType = ftInteger
      end
      item
        Name = 'vlvenda'
        DataType = ftSingle
      end
      item
        Name = 'dtcadastro'
        DataType = ftDate
      end
      item
        Name = 'dtvenda'
        DataType = ftDate
      end
      item
        Name = 'nrdocumento'
        DataType = ftInteger
      end
      item
        Name = 'nmcliente'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'PVenda'
    StoreDefs = True
    Left = 448
    object MVendaidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object MVendavlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
    object MVendadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object MVendadtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object MVendanmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      ProviderFlags = []
      Size = 100
    end
    object MVendanrdocumento: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
  end
  object DsVenda: TDataSource
    DataSet = MVenda
    Left = 504
  end
end
