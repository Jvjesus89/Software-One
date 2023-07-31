object ConsultaProdutos: TConsultaProdutos
  Left = 0
  Top = 0
  Caption = 'Consulta Produtos'
  ClientHeight = 254
  ClientWidth = 480
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 49
    Align = alTop
    TabOrder = 0
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
    Width = 480
    Height = 205
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 478
      Height = 203
      Align = alClient
      DataSource = BancoPdv.DsQprodutos
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
          FieldName = 'cdproduto'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmproduto'
          ReadOnly = False
          Width = 294
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlproduto'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idproduto'
          Visible = False
        end>
    end
  end
end
