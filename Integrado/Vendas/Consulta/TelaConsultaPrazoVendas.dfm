object ConsultaPrazo: TConsultaPrazo
  Left = 0
  Top = 0
  Caption = 'Consulta Prazo'
  ClientHeight = 308
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 649
    Height = 251
    Align = alClient
    DataSource = DsQFormaPagamento
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cdprazo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmprazo'
        Width = 496
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nrparcelas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idprazo'
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 15
    Padding.Right = 50
    Padding.Bottom = 15
    TabOrder = 1
    object Busca: TEdit
      AlignWithMargins = True
      Left = 205
      Top = 16
      Width = 185
      Height = 25
      Margins.Left = 200
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 21
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 390
      Top = 18
      Width = 62
      Height = 24
      Margins.Left = 0
      Margins.Right = 100
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Busca'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object QFormaPagamento: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From prazopagamento')
    Left = 504
    Top = 87
    object QFormaPagamentoidprazo: TFDAutoIncField
      FieldName = 'idprazo'
      Origin = 'idprazo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object QFormaPagamentonmprazo: TWideStringField
      FieldName = 'nmprazo'
      Origin = 'nmprazo'
      Required = True
      Size = 50
    end
    object QFormaPagamentonrparcelas: TIntegerField
      FieldName = 'nrparcelas'
      Origin = 'nrparcelas'
      Required = True
    end
    object QFormaPagamentoidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
      Required = True
    end
    object QFormaPagamentocdprazo: TFDAutoIncField
      FieldName = 'cdprazo'
      Origin = 'cdprazo'
    end
  end
  object DsQFormaPagamento: TDataSource
    DataSet = QFormaPagamento
    Left = 504
    Top = 135
  end
end
