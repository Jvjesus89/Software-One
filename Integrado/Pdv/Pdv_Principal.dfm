object TelaPdv: TTelaPdv
  Left = 110
  Top = 62
  Caption = 'PDV'
  ClientHeight = 734
  ClientWidth = 1421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1421
    Height = 734
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1421
      734)
    object NmProduto: TLabel
      Left = 1022
      Top = 168
      Width = 117
      Height = 42
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 1022
      Top = 417
      Width = 136
      Height = 33
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 1024
      Top = 323
      Width = 110
      Height = 33
      Caption = 'Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 1215
      Top = 326
      Width = 120
      Height = 33
      Caption = 'Acr'#233'scimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 1024
      Top = 233
      Width = 82
      Height = 33
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 1213
      Top = 418
      Width = 159
      Height = 33
      Caption = 'Valor unitario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 1024
      Top = 517
      Width = 125
      Height = 33
      Caption = 'Valor Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 589
      Top = 681
      Width = 105
      Height = 33
      Caption = 'SubTotal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 1065
      Top = 654
      Width = 119
      Height = 33
      Caption = 'IdProduto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 1193
      Top = 654
      Width = 135
      Height = 33
      Caption = 'NmProduto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object CampoQuantidade: TDBEdit
      Left = 1022
      Top = 456
      Width = 167
      Height = 41
      DataField = 'qtitem'
      DataSource = BancoPdv.DsQVendasPdvItensCampo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = CampoQuantidadeExit
    end
    object CampoDesconto: TDBEdit
      Left = 1024
      Top = 362
      Width = 165
      Height = 41
      DataField = 'vldesconto'
      DataSource = BancoPdv.DsQVendasPdvItensCampo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = CampoDescontoExit
    end
    object CampoAcrescimo: TDBEdit
      Left = 1215
      Top = 362
      Width = 165
      Height = 41
      DataField = 'vlacrescimo'
      DataSource = BancoPdv.DsQVendasPdvItensCampo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = CampoAcrescimoExit
    end
    object Button3: TButton
      Left = 1347
      Top = 272
      Width = 33
      Height = 43
      Caption = '...'
      TabOrder = 4
      OnClick = Button3Click
    end
    object CampoCodigo: TDBEdit
      Left = 1022
      Top = 272
      Width = 327
      Height = 41
      BiDiMode = bdLeftToRight
      Ctl3D = True
      DataField = 'cdproduto'
      DataSource = BancoPdv.DsQVendasPdvItensCampo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object cxGrid1: TcxGrid
      Left = 16
      Top = 168
      Width = 950
      Height = 485
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
        DataController.DataSource = BancoPdv.DsQvendasPdvItem
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1nmitemvenda: TcxGridDBColumn
          DataBinding.FieldName = 'nmitemvenda'
          Width = 288
        end
        object cxGrid1DBTableView1vlunitario: TcxGridDBColumn
          DataBinding.FieldName = 'vlunitario'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1qtitem: TcxGridDBColumn
          Caption = 'Qtd. Item'
          DataBinding.FieldName = 'qtitem'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 111
        end
        object cxGrid1DBTableView1vldesconto: TcxGridDBColumn
          DataBinding.FieldName = 'vldesconto'
          HeaderAlignmentHorz = taCenter
          Width = 133
        end
        object cxGrid1DBTableView1vlacrescimo: TcxGridDBColumn
          DataBinding.FieldName = 'vlacrescimo'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1vlitem: TcxGridDBColumn
          DataBinding.FieldName = 'vlitem'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object CampoValorUnitario: TDBEdit
      Left = 1215
      Top = 456
      Width = 165
      Height = 41
      DataField = 'vlunitario'
      DataSource = BancoPdv.DsQVendasPdvItensCampo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object CampoValorItem: TDBEdit
      Left = 1022
      Top = 556
      Width = 358
      Height = 41
      BiDiMode = bdLeftToRight
      DataField = 'vlitem'
      DataSource = BancoPdv.DsQVendasPdvItensCampo
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      OnExit = CampoValorItemExit
    end
    object Button1: TButton
      Left = 1058
      Top = 603
      Width = 270
      Height = 49
      Caption = 'Venda (F1)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button1Click
    end
    object DBEdit8: TDBEdit
      Left = 700
      Top = 678
      Width = 266
      Height = 41
      BiDiMode = bdLeftToRight
      DataField = 'sum'
      DataSource = BancoPdv.DsQSomatorioValor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 9
    end
    object Button2: TButton
      Left = 16
      Top = 690
      Width = 73
      Height = 31
      Caption = 'Excluir Item'
      TabOrder = 10
      OnClick = Button1Click
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1419
      Height = 66
      Align = alTop
      TabOrder = 11
      object Label2: TLabel
        Left = 1
        Top = 1
        Width = 388
        Height = 64
        Align = alLeft
        Caption = 'PDV Software One'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 55
      end
      object Hora: TLabel
        Left = 1242
        Top = 1
        Width = 176
        Height = 64
        Align = alRight
        Caption = '00:00:00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 55
      end
      object Data: TLabel
        Left = 1080
        Top = 1
        Width = 99
        Height = 55
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object CampoIdProduto: TDBEdit
      Left = 1065
      Top = 693
      Width = 79
      Height = 41
      DataField = 'idproduto'
      DataSource = BancoPdv.DsQVendasPdvItensCampo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      Visible = False
    end
    object CampoNomeProduto: TDBEdit
      Left = 1193
      Top = 693
      Width = 79
      Height = 41
      DataField = 'nmitemvenda'
      DataSource = BancoPdv.DsQVendasPdvItensCampo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      Visible = False
    end
    object Menu: TSplitView
      Left = 1400
      Top = 55
      Width = 0
      Height = 666
      Color = clMenu
      DisplayMode = svmOverlay
      Opened = False
      OpenedWidth = 200
      Placement = svpRight
      TabOrder = 14
      object Button10: TButton
        Left = 0
        Top = 192
        Width = 0
        Height = 64
        Align = alTop
        Caption = 'Menu (F12)'
        TabOrder = 0
        OnClick = Button10Click
      end
      object Button4: TButton
        Left = 0
        Top = 128
        Width = 0
        Height = 64
        Align = alTop
        Caption = 'Cancelar Venda'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button5: TButton
        Left = 0
        Top = 0
        Width = 0
        Height = 64
        Align = alTop
        Caption = 'Selecionar Venda'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button6: TButton
        Left = 0
        Top = 256
        Width = 0
        Height = 64
        Align = alTop
        Caption = 'Relat'#243'rio Venda'
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button7: TButton
        Left = 0
        Top = 602
        Width = 0
        Height = 64
        Align = alBottom
        Caption = 'Fechar Caixa'
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button8: TButton
        Left = 0
        Top = 64
        Width = 0
        Height = 64
        Align = alTop
        Caption = 'Excluir Venda'
        TabOrder = 5
        OnClick = Button1Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 945
    Top = 17
  end
end
