object ConsultaAgencia: TConsultaAgencia
  Left = 0
  Top = 0
  Caption = 'Consultar Agencia'
  ClientHeight = 231
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 56
    Width = 390
    Height = 175
    Align = alBottom
    DataSource = DbConfigFin.DsQAgencia
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cdagencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmagencia'
        Width = 234
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nragencia'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 390
    Height = 57
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 55
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 76
      Top = 1
      Width = 75
      Height = 55
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
