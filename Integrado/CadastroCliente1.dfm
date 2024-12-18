object ConsultaCliente: TConsultaCliente
  Left = 0
  Top = 0
  Caption = 'Consulta Cliente'
  ClientHeight = 530
  ClientWidth = 1540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1540
    Height = 73
    Align = alTop
    TabOrder = 0
    object BotaoEditar: TButton
      Left = 76
      Top = 1
      Width = 75
      Height = 71
      Align = alLeft
      Caption = 'Editar'
      TabOrder = 0
      OnClick = BotaoEditarClick
    end
    object BotaoExcluir: TButton
      Left = 151
      Top = 1
      Width = 75
      Height = 71
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = BotaoExcluirClick
    end
    object BotaoNovo: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 71
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 2
      OnClick = BotaoNovoClick
    end
    object ExportarDados: TButton
      Left = 1456
      Top = 1
      Width = 83
      Height = 71
      Align = alRight
      Caption = 'Exportar'
      TabOrder = 3
      OnClick = ExportarDadosClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 1540
    Height = 457
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 49
      Width = 1538
      Height = 407
      Align = alClient
      DataSource = DbClient.DsQcliente
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cdcliente'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmcliente'
          Width = 549
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf_cnpj'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmendereco'
          Width = 360
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nrendere'#231'o'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmbairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmestado'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idcliente'
          Visible = False
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1538
      Height = 48
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 1271
        Top = 13
        Width = 93
        Height = 19
        Caption = 'Busca Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BotaoBusca: TButton
        Left = 1499
        Top = 13
        Width = 37
        Height = 21
        Caption = 'Busca'
        TabOrder = 0
        OnClick = BotaoBuscaClick
      end
      object Busca: TEdit
        Left = 1374
        Top = 13
        Width = 121
        Height = 21
        TabOrder = 1
      end
    end
  end
end
