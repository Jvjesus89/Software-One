object ConsultaAgenciaConta: TConsultaAgenciaConta
  Left = 0
  Top = 0
  Caption = 'Consulta Agencia'
  ClientHeight = 231
  ClientWidth = 402
  Color = clBtnFace
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
    Width = 402
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitTop = -5
    ExplicitWidth = 414
    object Busca: TDBEdit
      Left = 112
      Top = 15
      Width = 145
      Height = 21
      DataField = 'nmcliente'
      DataSource = DbClient.DsQcliente
      TabOrder = 0
    end
    object BotaoBusca: TButton
      Left = 263
      Top = 15
      Width = 37
      Height = 21
      Caption = 'Busca'
      TabOrder = 1
      OnClick = BotaoBuscaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 402
    Height = 182
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = -176
    ExplicitTop = -26
    ExplicitWidth = 681
    ExplicitHeight = 257
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 400
      Height = 180
      Align = alClient
      DataSource = DbConfigFin.DsQAgenciaConta
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
          FieldName = 'cdagencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmagencia'
          Width = 249
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nragencia'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idagencia'
          Visible = False
        end>
    end
  end
end
