object TelaPdv: TTelaPdv
  Left = 219
  Top = 185
  Caption = 'PDV'
  ClientHeight = 734
  ClientWidth = 1438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1438
    Height = 734
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 24
    object Label1: TLabel
      Left = 16
      Top = 120
      Width = 99
      Height = 42
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 802
      Top = 393
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
      Left = 804
      Top = 219
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
      Left = 804
      Top = 305
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
      Left = 802
      Top = 129
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
      Left = 802
      Top = 488
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
      Left = 802
      Top = 573
      Width = 143
      Height = 33
      Caption = 'Valor Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 360
      Top = 683
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
    object DBEdit2: TDBEdit
      Left = 802
      Top = 432
      Width = 167
      Height = 41
      DataField = 'qtitem'
      DataSource = BancoPdv.DsQvendasPdvItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 804
      Top = 258
      Width = 165
      Height = 41
      DataField = 'vldesconto'
      DataSource = BancoPdv.DsQvendasPdvItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 804
      Top = 344
      Width = 165
      Height = 41
      DataField = 'vlacrescimo'
      DataSource = BancoPdv.DsQvendasPdvItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button3: TButton
      Left = 1066
      Top = 168
      Width = 33
      Height = 41
      Caption = '...'
      TabOrder = 3
      OnClick = Button3Click
    end
    object DBEdit5: TDBEdit
      Left = 802
      Top = 168
      Width = 270
      Height = 41
      DataField = 'iditemvenda'
      DataSource = BancoPdv.DsQvendasPdvItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object cxGrid1: TcxGrid
      Left = 16
      Top = 168
      Width = 721
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
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object DBEdit1: TDBEdit
      Left = 804
      Top = 526
      Width = 165
      Height = 41
      DataField = 'vlunitario'
      DataSource = BancoPdv.DsQvendasPdvItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 802
      Top = 612
      Width = 270
      Height = 41
      BiDiMode = bdLeftToRight
      DataField = 'vlitem'
      DataSource = BancoPdv.DsQvendasPdvItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      OnExit = DBEdit7Exit
    end
    object Button1: TButton
      Left = 802
      Top = 672
      Width = 270
      Height = 49
      Caption = 'Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button1Click
    end
    object Panel2: TPanel
      Left = 1268
      Top = 73
      Width = 169
      Height = 660
      Align = alRight
      TabOrder = 9
      object Button4: TButton
        Left = 1
        Top = 129
        Width = 167
        Height = 64
        Align = alTop
        Caption = 'Cancelar Venda'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button5: TButton
        Left = 1
        Top = 1
        Width = 167
        Height = 64
        Align = alTop
        Caption = 'Selecionar Venda'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button6: TButton
        Left = 1
        Top = 65
        Width = 167
        Height = 64
        Align = alTop
        Caption = 'Relat'#243'rio Venda'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button7: TButton
        Left = 1
        Top = 595
        Width = 167
        Height = 64
        Align = alBottom
        Caption = 'Fechar Caixa'
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button8: TButton
        Left = 1
        Top = 193
        Width = 167
        Height = 64
        Align = alTop
        Caption = 'Excluir Venda'
        TabOrder = 4
        OnClick = Button1Click
      end
    end
    object DBEdit8: TDBEdit
      Left = 471
      Top = 680
      Width = 266
      Height = 41
      BiDiMode = bdLeftToRight
      DataField = 'vlitem'
      DataSource = BancoPdv.DsQvendasPdvItem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 10
    end
    object Button2: TButton
      Left = 16
      Top = 690
      Width = 73
      Height = 31
      Caption = 'Excluir Item'
      TabOrder = 11
      OnClick = Button1Click
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1436
      Height = 72
      Align = alTop
      TabOrder = 12
      object Label2: TLabel
        Left = 16
        Top = 8
        Width = 388
        Height = 55
        Caption = 'PDV Software One'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Hora: TLabel
        Left = 1267
        Top = 12
        Width = 176
        Height = 55
        Caption = '00:00:00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -48
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Data: TLabel
        Left = 996
        Top = 12
        Width = 266
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
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 945
    Top = 17
  end
end
