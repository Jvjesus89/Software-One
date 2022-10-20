object ConsultaContaCorrente: TConsultaContaCorrente
  Left = 0
  Top = 0
  Caption = 'Conta Corrente'
  ClientHeight = 231
  ClientWidth = 385
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
    Width = 385
    Height = 175
    Align = alBottom
    DataSource = DbConfigFin.DsQContaCorrente
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cdcontabancaria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmcontabancaria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nrcontacorrente'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 385
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
