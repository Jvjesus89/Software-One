object ConsultaBanco: TConsultaBanco
  Left = 0
  Top = 0
  Caption = 'Consulta Banco'
  ClientHeight = 232
  ClientWidth = 392
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
    Top = 57
    Width = 392
    Height = 175
    Align = alBottom
    DataSource = DbConfigFin.DsQBanco
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cdbanco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmbanco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nrbanco'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 392
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
      ExplicitLeft = -5
      ExplicitTop = -4
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
