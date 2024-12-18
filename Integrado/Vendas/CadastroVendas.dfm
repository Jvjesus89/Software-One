﻿object CadastroDeVendas: TCadastroDeVendas
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 636
  ClientWidth = 1540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1540
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = clMedGray
    ParentBackground = False
    TabOrder = 0
    object BotaoNovo: TButton
      Left = 0
      Top = 0
      Width = 75
      Height = 73
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
      OnClick = BotaoNovoClick
    end
    object BotaoExcluir: TButton
      Left = 152
      Top = 0
      Width = 75
      Height = 73
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = BotaoExcluirClick
    end
    object BotaoEditar: TButton
      Left = 75
      Top = 0
      Width = 77
      Height = 73
      Align = alLeft
      Caption = 'Editar'
      TabOrder = 2
      OnClick = BotaoEditarClick
    end
    object ExportarDados: TButton
      Left = 1457
      Top = 0
      Width = 83
      Height = 73
      Align = alRight
      Caption = 'Exportar'
      TabOrder = 3
    end
    object Button1: TButton
      Left = 1376
      Top = 0
      Width = 81
      Height = 73
      Align = alRight
      Caption = 'Importar xml'
      TabOrder = 4
      Visible = False
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 1295
      Top = 0
      Width = 81
      Height = 73
      Align = alRight
      Caption = 'Exportar xml'
      TabOrder = 5
      Visible = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 227
      Top = 0
      Width = 75
      Height = 73
      Align = alLeft
      Caption = 'Imprimir'
      TabOrder = 6
      OnClick = Button4Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1540
    Height = 563
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1538
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      Color = clMedGray
      Padding.Top = 12
      Padding.Right = 10
      Padding.Bottom = 15
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        AlignWithMargins = True
        Left = 1318
        Top = 15
        Width = 64
        Height = 15
        Align = alRight
        BiDiMode = bdLeftToRight
        Caption = 'N'#176' Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ExplicitHeight = 19
      end
      object Label1: TLabel
        AlignWithMargins = True
        Left = 994
        Top = 15
        Width = 62
        Height = 15
        Align = alRight
        BiDiMode = bdLeftToRight
        Caption = 'Dt Inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ExplicitHeight = 19
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 1160
        Top = 15
        Width = 54
        Height = 15
        Align = alRight
        BiDiMode = bdLeftToRight
        Caption = 'Dt Final'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        ExplicitHeight = 19
      end
      object SpeedButton1: TSpeedButton
        Left = 1496
        Top = 12
        Width = 32
        Height = 21
        Align = alRight
        Caption = 'OK'
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 0
        Top = 12
        Width = 65
        Height = 21
        Align = alLeft
        Caption = 'Edit Layout'
        OnClick = SpeedButton2Click
        ExplicitTop = 5
      end
      object Busca: TEdit
        Left = 1385
        Top = 12
        Width = 111
        Height = 21
        Align = alRight
        BevelInner = bvNone
        BevelOuter = bvNone
        NumbersOnly = True
        TabOrder = 0
        OnExit = BuscaExit
        OnKeyDown = BuscaKeyDown
      end
      object DtFinal: TDateTimePicker
        Left = 1217
        Top = 12
        Width = 98
        Height = 21
        Align = alRight
        Date = 45462.000000000000000000
        Time = 0.952586157407495200
        TabOrder = 1
      end
      object DtInicial: TDateTimePicker
        Left = 1059
        Top = 12
        Width = 98
        Height = 21
        Align = alRight
        Date = 45462.000000000000000000
        Time = 0.952586157407495200
        TabOrder = 2
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 49
      Width = 1538
      Height = 513
      Align = alClient
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DsQGridVendas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        object cxGrid1DBTableView1nrdocumento: TcxGridDBColumn
          Caption = 'Nr Documento'
          DataBinding.FieldName = 'nrdocumento'
        end
        object cxGrid1DBTableView1dtvenda: TcxGridDBColumn
          Caption = 'Dt Venda'
          DataBinding.FieldName = 'dtvenda'
        end
        object cxGrid1DBTableView1nmcliente: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'nmcliente'
        end
        object cxGrid1DBTableView1vlvenda: TcxGridDBColumn
          Caption = 'Vl. Venda'
          DataBinding.FieldName = 'vlvenda'
        end
        object cxGrid1DBTableView1nmformapagamento: TcxGridDBColumn
          Caption = 'Forma Pagamento'
          DataBinding.FieldName = 'nmformapagamento'
        end
        object cxGrid1DBTableView1dtcadastro: TcxGridDBColumn
          DataBinding.FieldName = 'dtcadastro'
        end
        object cxGrid1DBTableView1idvenda: TcxGridDBColumn
          DataBinding.FieldName = 'idvenda'
          Visible = False
        end
        object cxGrid1DBTableView1idcliente: TcxGridDBColumn
          DataBinding.FieldName = 'idcliente'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object QGridVendas: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select v.*,C.nmcliente, '
      '(Select F.nmformapagamento from formapagamento F '
      
        'join  areceber A on V.idvenda = A.idorigem Where F.idformapagame' +
        'nto = A.idformapagamento limit 1) '
      'From vendas V  '
      'join clientes C on C.idcliente = V.idcliente')
    Left = 1072
    Top = 209
    object QGridVendasidvenda: TFDAutoIncField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QGridVendasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
    end
    object QGridVendasvlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
      Required = True
      currency = True
    end
    object QGridVendasdtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object QGridVendasnrdocumento: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
      Required = True
    end
    object QGridVendasnmcliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QGridVendasnmformapagamento: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QGridVendasdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      Required = True
    end
  end
  object DsQGridVendas: TDataSource
    DataSet = QGridVendas
    Left = 1072
    Top = 273
  end
  object QExclusão: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendasitem')
    Left = 176
    Top = 8
    object IntegerField15: TIntegerField
      FieldName = 'idvendasitem'
      Origin = 'idvendasitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField16: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object IntegerField17: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object WideStringField15: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 50
    end
    object IntegerField18: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
    end
    object SingleField2: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object SingleField3: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
  end
  object ImpriveVendaDialog: TfrxDialogControls
    Left = 232
    Top = 1
  end
  object ExportPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 272
    Top = 41
  end
  object ImprimeVenda: TfrxReport
    Version = '2024.1.5'
    DataSet = frxDbVendas
    DataSetName = 'frxDBVendas'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 45345.395602002300000000
    ReportOptions.LastChange = 45470.702162951390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 272
    Top = 1
    Datasets = <
      item
        DataSet = frxDbVendas
        DataSetName = 'frxDBVendas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Visible = False
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 65.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxDBVendasnmcliente: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.574830000000000000
          Top = 30.236240000000000000
          Width = 75.590599999999990000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
        end
        object frxDBVendasnrdocumento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.574830000000000000
          Top = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            'Nr. Documento')
        end
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 130.944960000000000000
          Top = 30.236240000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'nmcliente'
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBVendas."nmcliente"]')
        end
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 130.944960000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'nrdocumento'
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBVendas."nrdocumento"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 20.000000000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBVendas."nrdocumento"'
        object Memo2: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.574830000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            'Produtos')
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.354670000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtde')
        end
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 431.205010000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            'Vl. Unitario')
        end
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 597.504330000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            'Vl. Item')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = frxDbVendas
        DataSetName = 'frxDBVendas'
        RowCount = 0
        object frxDBVendasnmproduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.574830000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'nmproduto'
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBVendas."nmproduto"]')
        end
        object frxDBVendasqtvendido: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 514.354670000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'qtvendido'
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBVendas."qtvendido"]')
        end
        object frxDBVendasvlunitario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 431.205010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'vlunitario'
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBVendas."vlunitario"]')
        end
        object frxDBVendasvlitem: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 597.504330000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'vlitem'
          DataSet = frxDbVendas
          DataSetName = 'frxDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBVendas."vlitem"]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = frxDbVendas
        DataSetName = 'frxDBVendas'
        RowCount = 0
      end
    end
  end
  object frxDbVendas: TfrxDBDataset
    UserName = 'frxDBVendas'
    CloseDataSource = False
    DataSource = DsQfrxDbVendas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 232
    Top = 41
    FieldDefs = <
      item
        FieldName = 'idproduto'
      end
      item
        FieldName = 'nmproduto'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'cdproduto'
        FieldType = fftString
      end
      item
        FieldName = 'idfamiliaproduto'
      end
      item
        FieldName = 'nmfamiliaproduto'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'stproduto'
        FieldType = fftBoolean
      end
      item
        FieldName = 'dtcadastro'
        FieldType = fftDateTime
      end
      item
        FieldName = 'vlproduto'
      end
      item
        FieldName = 'vlunitario'
      end
      item
        FieldName = 'qtvendido'
      end
      item
        FieldName = 'vlitem'
      end
      item
        FieldName = 'vlvenda'
      end
      item
        FieldName = 'dtvenda'
        FieldType = fftDateTime
      end
      item
        FieldName = 'nrdocumento'
      end
      item
        FieldName = 'nmcliente'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'cpf_cnpj'
        FieldType = fftString
        Size = 15
      end
      item
        FieldName = 'nmendereco'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'nrendere'#231'o'
        FieldType = fftString
      end
      item
        FieldName = 'complemento'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'nmbairro'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'nmcidade'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'nmestado'
        FieldType = fftString
      end
      item
        FieldName = 'cdcliente'
        FieldType = fftString
      end
      item
        FieldName = 'nmformapagamento'
        FieldType = fftString
        Size = 50
      end>
  end
  object QfrxDbVendas: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select vi.*,v.*,C.*,p.*, '
      '(Select F.nmformapagamento from formapagamento F '
      'join  areceber A on V.idvenda = A.idorigem '
      'Where F.idformapagamento = A.idformapagamento limit 1) '
      'From vendas V  '
      'join clientes C on C.idcliente = V.idcliente'
      'join vendasitem vi on vi.idvenda = v.idvenda'
      'join produto p on p.idproduto = vi.idproduto')
    Left = 344
    Top = 1
    object QfrxDbVendasvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
      Required = True
    end
    object QfrxDbVendasqtvendido: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
      Required = True
    end
    object QfrxDbVendasvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
      Required = True
    end
    object QfrxDbVendasvlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
    object QfrxDbVendasdtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object QfrxDbVendasnrdocumento: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
    object QfrxDbVendasnmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object QfrxDbVendascpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object QfrxDbVendasnmendereco: TWideStringField
      FieldName = 'nmendereco'
      Origin = 'nmendereco'
      Size = 50
    end
    object QfrxDbVendasnrendereço: TWideStringField
      FieldName = 'nrendere'#231'o'
      Origin = '"nrendere'#231'o"'
      Size = 8
    end
    object QfrxDbVendascomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object QfrxDbVendasnmbairro: TWideStringField
      FieldName = 'nmbairro'
      Origin = 'nmbairro'
      Size = 50
    end
    object QfrxDbVendasnmcidade: TWideStringField
      FieldName = 'nmcidade'
      Origin = 'nmcidade'
      Size = 50
    end
    object QfrxDbVendasnmestado: TWideStringField
      FieldName = 'nmestado'
      Origin = 'nmestado'
      Size = 2
    end
    object QfrxDbVendascdcliente: TWideStringField
      FieldName = 'cdcliente'
      Origin = 'cdcliente'
      Size = 6
    end
    object QfrxDbVendasnmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object QfrxDbVendascdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object QfrxDbVendasvlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object QfrxDbVendasnmfamiliaproduto: TWideStringField
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object QfrxDbVendasnmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
  end
  object DsQfrxDbVendas: TDataSource
    DataSet = QfrxDbVendas
    Left = 344
    Top = 40
  end
end
