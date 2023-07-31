object ConsultaProdutos: TConsultaProdutos
  Left = 0
  Top = 0
  Caption = 'Consulta Produtos'
  ClientHeight = 234
  ClientWidth = 512
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 512
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -143
    ExplicitWidth = 648
    object BotaoBusca: TButton
      Left = 287
      Top = 15
      Width = 37
      Height = 21
      Caption = 'Busca'
      TabOrder = 0
      OnClick = BotaoBuscaClick
    end
    object Busca: TEdit
      Left = 168
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 512
    Height = 185
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = -143
    ExplicitTop = -15
    ExplicitWidth = 648
    ExplicitHeight = 246
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 510
      Height = 183
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 6
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
        DataController.DataSource = BancoPdv.DsQprodutos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1cdproduto: TcxGridDBColumn
          DataBinding.FieldName = 'cdproduto'
        end
        object cxGrid1DBTableView1nmproduto: TcxGridDBColumn
          DataBinding.FieldName = 'nmproduto'
          Width = 332
        end
        object cxGrid1DBTableView1vlproduto: TcxGridDBColumn
          DataBinding.FieldName = 'vlproduto'
          Width = 90
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
