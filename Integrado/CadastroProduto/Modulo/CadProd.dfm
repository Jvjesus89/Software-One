﻿object CadProduto: TCadProduto
  Left = 494
  Top = 0
  Caption = ' Cadastro Produto'
  ClientHeight = 517
  ClientWidth = 1045
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1045
    Height = 81
    Align = alTop
    TabOrder = 0
    object BtExcluir: TBitBtn
      Left = 182
      Top = 1
      Width = 93
      Height = 79
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 0
      Visible = False
      OnClick = BtExcluirClick
    end
    object BtNovo: TBitBtn
      Left = 1
      Top = 1
      Width = 88
      Height = 79
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 1
      OnClick = BtNovoClick
    end
    object BtEditar: TBitBtn
      Left = 89
      Top = 1
      Width = 93
      Height = 79
      Align = alLeft
      Caption = 'Editar'
      TabOrder = 2
      OnClick = BtEditarClick
    end
    object ExportarDados: TButton
      Left = 961
      Top = 1
      Width = 83
      Height = 79
      Align = alRight
      Caption = 'Exportar'
      TabOrder = 3
      OnClick = ExportarDadosClick
    end
    object btnImprimirProdutos: TBitBtn
      Left = 868
      Top = 1
      Width = 93
      Height = 79
      Align = alRight
      Caption = 'Imprimir'
      TabOrder = 4
      OnClick = btnImprimirProdutosClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 1045
    Height = 48
    Align = alTop
    Padding.Top = 12
    Padding.Right = 10
    Padding.Bottom = 12
    TabOrder = 1
    object BuscaProduto: TLabel
      AlignWithMargins = True
      Left = 680
      Top = 13
      Width = 97
      Height = 22
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Busca Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 19
    end
    object Busca: TEdit
      Left = 879
      Top = 13
      Width = 120
      Height = 22
      Align = alRight
      TabOrder = 0
      OnExit = BuscaExit
      ExplicitHeight = 21
    end
    object BuscaBotao: TButton
      Left = 999
      Top = 13
      Width = 35
      Height = 22
      Align = alRight
      Caption = 'Busca'
      TabOrder = 1
      OnClick = BuscaBotaoClick
    end
    object SomenteAtivo: TCheckBox
      Left = 782
      Top = 13
      Width = 97
      Height = 22
      Align = alRight
      Caption = 'Somente Ativo?'
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 129
    Width = 1045
    Height = 388
    Align = alClient
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1043
      Height = 386
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
        OnCellDblClick = cxGrid1DBTableView1CellDblClick
        DataController.DataSource = DsQproduto
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        object cxGrid1DBTableView1cdproduto: TcxGridDBColumn
          DataBinding.FieldName = 'cdproduto'
        end
        object cxGrid1DBTableView1nmproduto: TcxGridDBColumn
          DataBinding.FieldName = 'nmproduto'
          Width = 536
        end
        object cxGrid1DBTableView1nmfamiliaproduto: TcxGridDBColumn
          Caption = 'Familia Produto'
          DataBinding.FieldName = 'nmfamiliaproduto'
        end
        object cxGrid1DBTableView1vlproduto: TcxGridDBColumn
          Caption = 'Vl. Produto'
          DataBinding.FieldName = 'vlproduto'
        end
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Vl. Custo'
          DataBinding.FieldName = 'vlcusto'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object frxRelatorio: TfrxReport
    Version = '2024.1.5'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 45345.395602002300000000
    ReportOptions.LastChange = 45345.438787557870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure BitBtn1OnClick(Sender: TfrxComponent);'
      'begin'
      '  if RadioButton1.checked then'
      '  begin'
      '  page1.visible := true;'
      '  page2.visible := false;      '
      '  end;'
      ''
      '   if RadioButton2.checked then'
      '  begin'
      '  page1.visible := false;'
      '  page2.visible := true;      '
      '  end;        '
      '    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 1400
    Top = 409
    Datasets = <
      item
        DataSet = frxDBClientes
        DataSetName = 'frxDBClientes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      DoubleBuffered = False
      Height = 200.000000000000000000
      ClientHeight = 161.000000000000000000
      Left = 265.000000000000000000
      Top = 150.000000000000000000
      Width = 300.000000000000000000
      Scaled = True
      ClientWidth = 284.000000000000000000
      object RadioButton1: TfrxRadioButtonControl
        Left = 36.000000000000000000
        Top = 60.000000000000000000
        Width = 113.000000000000000000
        Height = 17.000000000000000000
        ShowHint = True
        Caption = 'RadioButton1'
        TabStop = False
        Color = clBtnFace
      end
      object RadioButton2: TfrxRadioButtonControl
        Left = 152.000000000000000000
        Top = 60.000000000000000000
        Width = 113.000000000000000000
        Height = 17.000000000000000000
        ShowHint = True
        Caption = 'RadioButton2'
        TabStop = False
        Color = clBtnFace
      end
      object BitBtn1: TfrxBitBtnControl
        Left = 108.000000000000000000
        Top = 96.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Kind = bkOK
        Caption = 'OK'
        ModalResult = 1
        NumGlyphs = 2
        OnClick = 'BitBtn1OnClick'
      end
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
        Height = 61.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420820000000000
          Top = 11.338590000000000000
          Width = 222.992270730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente 1')
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
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDBClientes
        DataSetName = 'frxDBClientes'
        RowCount = 0
        object frxDBClientesnmproduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'nmproduto'
          DataSet = frxDBClientes
          DataSetName = 'frxDBClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClientes."nmproduto"]')
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
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBClientes."nmfamiliaproduto"'
        object frxDBClientesnmfamiliaproduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.236240000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'nmfamiliaproduto'
          DataSet = frxDBClientes
          DataSetName = 'frxDBClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClientes."nmfamiliaproduto"]')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 30.236240390000000000
          Top = -3.779530170000000000
          Width = 457.323126920000000000
          Height = 26.456704040000000000
          Frame.Typ = []
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = -3.779530000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
      end
    end
    object Page2: TfrxReportPage
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
      object ReportTitle2: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 31.338590000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420820000000000
          Top = 11.338590000000000000
          Width = 222.992270730000000000
          Height = 18.897649770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente 2')
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 20.000000000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
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
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxDBClientes
        DataSetName = 'frxDBClientes'
        RowCount = 0
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'nmproduto'
          DataSet = frxDBClientes
          DataSetName = 'frxDBClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClientes."nmproduto"]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBClientes."nmfamiliaproduto"'
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 30.236240000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'nmfamiliaproduto'
          DataSet = frxDBClientes
          DataSetName = 'frxDBClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBClientes."nmfamiliaproduto"]')
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 22.677180390000000000
          Top = -3.779530170000000000
          Width = 457.323126920000000000
          Height = 26.456704040000000000
          Frame.Typ = []
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
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
    Left = 1456
    Top = 409
  end
  object frxDBClientes: TfrxDBDataset
    UserName = 'frxDBClientes'
    CloseDataSource = False
    DataSource = DsQproduto
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1400
    Top = 465
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
      end>
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 1336
    Top = 409
  end
  object DsQproduto: TDataSource
    DataSet = Qproduto
    Left = 584
    Top = 288
  end
  object Qproduto: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produto p'
      'join estoque e on e.idproduto = p.idproduto'
      
        'left join produtosfamilia f on f.idprodutosfamilia = p.idfamilia' +
        'produto')
    Left = 584
    Top = 232
    object IntegerField1: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object WideStringField1: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object WideStringField2: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object IntegerField2: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object BooleanField1: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object DateField1: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Qprodutovlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
      currency = True
    end
    object Qprodutovlcusto: TSingleField
      FieldName = 'vlcusto'
      Origin = 'vlcusto'
      currency = True
    end
    object Qprodutonmfamiliaproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object Qprodutoidprodutosfamilia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idprodutosfamilia'
      Origin = 'idprodutosfamilia'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
