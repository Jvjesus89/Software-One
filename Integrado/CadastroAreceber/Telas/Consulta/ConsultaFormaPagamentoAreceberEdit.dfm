object FormaPagemento: TFormaPagemento
  Left = 0
  Top = 0
  Caption = 'FormaPagemento'
  ClientHeight = 223
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 395
    Height = 49
    Align = alTop
    TabOrder = 0
    object Busca: TDBEdit
      Left = 112
      Top = 15
      Width = 145
      Height = 21
      DataField = 'nmcliente'
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
    Width = 395
    Height = 174
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 393
      Height = 172
      Align = alClient
      DataSource = DbFinAreceber1.DsQFormapagamento
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
          FieldName = 'cdformapagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmformapagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idformapagamento'
          Visible = False
        end>
    end
  end
end
