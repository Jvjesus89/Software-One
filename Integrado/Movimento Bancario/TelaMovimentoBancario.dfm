object ConsultaMovimentoBancario: TConsultaMovimentoBancario
  Left = 0
  Top = 0
  Caption = 'Movimento Bancario'
  ClientHeight = 845
  ClientWidth = 1524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 65
    Width = 742
    Height = 780
    Align = alLeft
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
      DataController.DataSource = Form1.DsQMovBancario
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1nrtitulo: TcxGridDBColumn
        DataBinding.FieldName = 'nrtitulo'
      end
      object cxGrid1DBTableView1nmcliente: TcxGridDBColumn
        DataBinding.FieldName = 'nmcliente'
        Width = 335
      end
      object cxGrid1DBTableView1vltitulo: TcxGridDBColumn
        DataBinding.FieldName = 'vltitulo'
        Width = 84
      end
      object cxGrid1DBTableView1dtbaixa: TcxGridDBColumn
        DataBinding.FieldName = 'dtbaixa'
        Width = 129
      end
      object cxGrid1DBTableView1dtvencimento: TcxGridDBColumn
        DataBinding.FieldName = 'dtvencimento'
        Width = 80
      end
      object cxGrid1DBTableView1idmovimentobancario: TcxGridDBColumn
        DataBinding.FieldName = 'idmovimentobancario'
        Visible = False
      end
      object cxGrid1DBTableView1idareceber: TcxGridDBColumn
        DataBinding.FieldName = 'idareceber'
        Visible = False
      end
      object cxGrid1DBTableView1idextratobancario: TcxGridDBColumn
        DataBinding.FieldName = 'idextratobancario'
        Visible = False
      end
      object cxGrid1DBTableView1dtconciliacao: TcxGridDBColumn
        DataBinding.FieldName = 'dtconciliacao'
        Visible = False
      end
      object cxGrid1DBTableView1idcontabancaria: TcxGridDBColumn
        DataBinding.FieldName = 'idcontabancaria'
        Visible = False
      end
      object cxGrid1DBTableView1idareceber_1: TcxGridDBColumn
        DataBinding.FieldName = 'idareceber_1'
        Visible = False
      end
      object cxGrid1DBTableView1idcliente: TcxGridDBColumn
        DataBinding.FieldName = 'idcliente'
        Visible = False
      end
      object cxGrid1DBTableView1idformapagamento: TcxGridDBColumn
        DataBinding.FieldName = 'idformapagamento'
        Visible = False
      end
      object cxGrid1DBTableView1nmformapagamento: TcxGridDBColumn
        DataBinding.FieldName = 'nmformapagamento'
        Visible = False
      end
      object cxGrid1DBTableView1dtcadastro: TcxGridDBColumn
        DataBinding.FieldName = 'dtcadastro'
        Visible = False
      end
      object cxGrid1DBTableView1idorigem: TcxGridDBColumn
        DataBinding.FieldName = 'idorigem'
        Visible = False
      end
      object cxGrid1DBTableView1idcontabancaria_1: TcxGridDBColumn
        DataBinding.FieldName = 'idcontabancaria_1'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1524
    Height = 65
    Align = alTop
    TabOrder = 1
  end
  object cxGrid2: TcxGrid
    Left = 778
    Top = 65
    Width = 746
    Height = 780
    Align = alRight
    TabOrder = 2
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
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel2: TPanel
    Left = 742
    Top = 65
    Width = 48
    Height = 780
    Align = alLeft
    TabOrder = 3
  end
end
