object Prazos: TPrazos
  Left = 0
  Top = 0
  Caption = 'Prazos'
  ClientHeight = 231
  ClientWidth = 457
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
    Top = 64
    Width = 457
    Height = 167
    Align = alBottom
    DataSource = DbConfigFin.DsQprazo
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nrparcelas'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 65
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 76
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
