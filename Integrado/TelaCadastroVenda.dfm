object TelaCadastroVendas: TTelaCadastroVendas
  Left = 0
  Top = 0
  Caption = 'Cadastro Vendas'
  ClientHeight = 353
  ClientWidth = 899
  Color = clBtnFace
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
  object Label2: TLabel
    Left = 8
    Top = 304
    Width = 49
    Height = 19
    Caption = 'idcliente'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 104
    Top = 304
    Width = 112
    Height = 19
    Caption = 'idformapagamento'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label5: TLabel
    Left = 244
    Top = 304
    Width = 89
    Height = 19
    Caption = 'Data Cadastro'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
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
  object Label7: TLabel
    Left = 8
    Top = 246
    Width = 111
    Height = 19
    Caption = 'Forma Pagamento'
    FocusControl = DBEdit7
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
    Left = 292
    Top = 246
    Width = 32
    Height = 19
    Caption = 'Valor'
    FocusControl = Valor
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 320
    Width = 76
    Height = 27
    DataField = 'idcliente'
    DataSource = DbVendas1.DsVendas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 104
    Top = 320
    Width = 134
    Height = 27
    DataField = 'idformapagamento'
    DataSource = DbVendas1.DsVendas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 244
    Top = 320
    Width = 134
    Height = 27
    DataField = 'dtcadastro'
    DataSource = DbVendas1.DsVendas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 264
    Width = 264
    Height = 27
    DataField = 'nmformapagamento'
    DataSource = DbVendas1.DsVendas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit8: TDBEdit
    Left = 148
    Top = 32
    Width = 533
    Height = 27
    DataField = 'nmcliente'
    DataSource = DbVendas1.DsVendas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit10: TDBEdit
    Left = 8
    Top = 32
    Width = 134
    Height = 27
    DataField = 'nrdocumento'
    DataSource = DbVendas1.DsVendas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 87
    Width = 886
    Height = 155
    DataSource = DbVendas1.DsTempItem
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = DBGrid1ColEnter
    OnExit = DBGrid1Exit
    Columns = <
      item
        Expanded = False
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmitemvenda'
        Width = 516
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtitem'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlunitario'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlitem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idproduto'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'iditemvenda'
        Visible = False
      end>
  end
  object ToolBar1: TToolBar
    Left = 8
    Top = 73
    Width = 886
    Height = 18
    Align = alNone
    ButtonHeight = 19
    ButtonWidth = 49
    Caption = 'ToolBar1'
    TabOrder = 7
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
  object Button1: TButton
    Left = 426
    Top = 322
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 8
    OnClick = Button1Click
  end
  object BuscaCliente: TBitBtn
    Left = 663
    Top = 32
    Width = 39
    Height = 27
    Caption = '...'
    Layout = blGlyphBottom
    TabOrder = 9
    OnClick = BuscaClienteClick
  end
  object Valor: TDBEdit
    Left = 292
    Top = 264
    Width = 134
    Height = 27
    DataField = 'sum'
    DataSource = DbVendas1.DsQitemvenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DateTimePicker1: TDateTimePicker
    Left = 760
    Top = 32
    Width = 134
    Height = 27
    Date = 44794.000000000000000000
    Time = 0.808297800926084200
    TabOrder = 11
  end
  object DBEdit1: TDBEdit
    Left = 515
    Top = 320
    Width = 134
    Height = 27
    DataField = 'idvenda'
    DataSource = DbVendas1.DsIdVenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object Edit1: TEdit
    Left = 663
    Top = 320
    Width = 121
    Height = 21
    TabOrder = 13
    Text = 'Edit1'
  end
end
