﻿object ConsultaEstoque1: TConsultaEstoque1
  Left = 0
  Top = 0
  Caption = 
    '                                                                ' +
    '                                    Consulta Estoque'
  ClientHeight = 565
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConteiner: TPanel
    Left = 0
    Top = 0
    Width = 832
    Height = 565
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 832
      Height = 81
      Align = alTop
      TabOrder = 0
      object Entrada: TButton
        Left = 1
        Top = 1
        Width = 80
        Height = 79
        Align = alLeft
        Caption = 'Novo'
        TabOrder = 0
        Visible = False
        OnClick = EntradaClick
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 81
      Width = 641
      Height = 484
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 639
        Height = 482
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -3
        ExplicitTop = 5
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
          DataController.DataSource = DsConsultaQ
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Width = 47
          end
          object cxGrid1DBTableView1qtmovimentada: TcxGridDBColumn
            Caption = 'Qtde Movimentada'
            DataBinding.FieldName = 'qtmovimentada'
            Width = 117
          end
          object cxGrid1DBTableView1dtmovimento: TcxGridDBColumn
            Caption = 'Data Movimento'
            DataBinding.FieldName = 'dtmovimento'
            Width = 105
          end
          object cxGrid1DBTableView1idorigem: TcxGridDBColumn
            Caption = 'Entrada / Venda'
            DataBinding.FieldName = 'idorigem'
            Width = 100
          end
          object cxGrid1DBTableView1nrdocumento: TcxGridDBColumn
            Caption = 'N'#186' Venda'
            DataBinding.FieldName = 'nrdocumento'
            Width = 148
          end
          object cxGrid1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Lote'
            DataBinding.FieldName = 'cdlote'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object Panel3: TPanel
      Left = 641
      Top = 81
      Width = 191
      Height = 484
      Align = alRight
      TabOrder = 2
      object Label1: TLabel
        Left = 16
        Top = 6
        Width = 158
        Height = 19
        Caption = 'Informa'#231#245'es do produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 118
        Width = 40
        Height = 19
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 189
        Width = 104
        Height = 19
        Caption = 'Familia produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 56
        Width = 47
        Height = 19
        Caption = 'C'#243'digo'
        FocusControl = CodigoProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CodigoProduto: TDBEdit
        Left = 16
        Top = 81
        Width = 76
        Height = 21
        DataField = 'cdproduto'
        DataSource = DsConsultaQ
        TabOrder = 0
      end
      object FamiliaProduto: TDBEdit
        Left = 16
        Top = 214
        Width = 158
        Height = 21
        DataField = 'nmfamiliaproduto'
        DataSource = DsConsultaQ
        ReadOnly = True
        TabOrder = 1
      end
      object NomeProduto: TDBEdit
        Left = 16
        Top = 143
        Width = 158
        Height = 21
        DataField = 'nmproduto'
        DataSource = DsConsultaQ
        ReadOnly = True
        TabOrder = 2
      end
      object Localizaproduto: TButton
        Left = 98
        Top = 79
        Width = 23
        Height = 25
        Caption = '...'
        TabOrder = 3
        OnClick = LocalizaprodutoClick
      end
      object Panel4: TPanel
        Left = 1
        Top = 294
        Width = 189
        Height = 189
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Saldo Atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = []
        Padding.Left = 10
        Padding.Top = 80
        Padding.Right = 10
        Padding.Bottom = 80
        ParentFont = False
        TabOrder = 4
        VerticalAlignment = taAlignTop
        object Label4: TLabel
          Left = 10
          Top = 80
          Width = 169
          Height = 29
          Align = alClient
          Alignment = taCenter
          Caption = '0'
          ExplicitWidth = 14
          ExplicitHeight = 31
        end
      end
    end
  end
  object QConsulta: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From movimentoestoque mv'
      'left join vendas v on v.idvenda = mv.idorigem'
      'left join produto p on p.idproduto = mv.idproduto'
      
        'left join produtosfamilia f on f.idprodutosfamilia = p.idfamilia' +
        'produto'
      'left join produtoslote pl on pl.idprodutolote = mv.idprodutolote'
      'where mv.idproduto = :Pidproduto')
    Left = 32
    Top = 184
    ParamData = <
      item
        Name = 'PIDPRODUTO'
        ParamType = ptInput
      end>
    object QConsultaidmovimento: TFDAutoIncField
      FieldName = 'idmovimento'
      Origin = 'idmovimento'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QConsultaidproduto: TFDAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ReadOnly = True
    end
    object QConsultaqtmovimentada: TIntegerField
      FieldName = 'qtmovimentada'
      Origin = 'qtmovimentada'
      Required = True
    end
    object QConsultaqtdisponivel: TIntegerField
      FieldName = 'qtdisponivel'
      Origin = 'qtdisponivel'
    end
    object QConsultadtmovimento: TDateField
      FieldName = 'dtmovimento'
      Origin = 'dtmovimento'
      Required = True
    end
    object QConsultatpmovimento: TWideStringField
      FieldName = 'tpmovimento'
      Origin = 'tpmovimento'
      Required = True
      Size = 8
    end
    object QConsultadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      Required = True
    end
    object QConsultaidorigem: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
    object QConsultaidmoduloorigem: TIntegerField
      FieldName = 'idmoduloorigem'
      Origin = 'idmoduloorigem'
    end
    object QConsultaidvenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultaidcliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultavlvenda: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultadtcadastro_1: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtcadastro_1'
      Origin = 'dtcadastro'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultadtvenda: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultanrdocumento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultaidproduto_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idproduto_1'
      Origin = 'idproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultanmproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QConsultacdproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object QConsultaidfamiliaproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultavlproduto: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultastproduto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'stproduto'
      Origin = 'stproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultadtcadastro_2: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtcadastro_2'
      Origin = 'dtcadastro'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultaidusuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idusuario'
      Origin = 'idusuario'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultavlcusto: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'vlcusto'
      Origin = 'vlcusto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultadtultalter: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtultalter'
      Origin = 'dtultalter'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultaidusuarioultalter: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idusuarioultalter'
      Origin = 'idusuarioultalter'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultatrablote: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'trablote'
      Origin = 'trablote'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultaidprodutosfamilia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idprodutosfamilia'
      Origin = 'idprodutosfamilia'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultanmfamiliaproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QConsultacdfamiliaproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cdfamiliaproduto'
      Origin = 'cdfamiliaproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object QConsultacdlote: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdlote'
      Origin = 'cdlote'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DsConsultaQ: TDataSource
    DataSet = QConsulta
    Left = 32
    Top = 240
  end
  object QSaldoAtual: TFDQuery
    AfterOpen = QSaldoAtualAfterOpen
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From estoque')
    Left = 664
    Top = 416
    object QSaldoAtualidestoque: TFDAutoIncField
      FieldName = 'idestoque'
      Origin = 'idestoque'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QSaldoAtualidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      Required = True
    end
    object QSaldoAtualqtdeestoque: TIntegerField
      FieldName = 'qtdeestoque'
      Origin = 'qtdeestoque'
      Required = True
    end
  end
end
