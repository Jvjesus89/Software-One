object TelaConfig: TTelaConfig
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Configura'#231#245'es'
  ClientHeight = 243
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 496
    Height = 89
    ActivePage = TabSheet4
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 505
    object TabSheet1: TTabSheet
      Caption = 'Estoque'
      object BitBtn4: TBitBtn
        Left = 0
        Top = 0
        Width = 73
        Height = 61
        Align = alLeft
        Caption = 'Op'#231#245'es'
        Layout = blGlyphTop
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 1
      object BitBtn1: TBitBtn
        Left = 73
        Top = 0
        Width = 118
        Height = 61
        Align = alLeft
        Caption = 'Forma de Pagamento'
        Layout = blGlyphTop
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 191
        Top = 0
        Width = 75
        Height = 61
        Align = alLeft
        Caption = 'Prazo'
        Layout = blGlyphTop
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 0
        Top = 0
        Width = 73
        Height = 61
        Align = alLeft
        Caption = 'Op'#231#245'es'
        Layout = blGlyphTop
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Vendas'
      ImageIndex = 2
      object BitBtn5: TBitBtn
        Left = 0
        Top = 0
        Width = 73
        Height = 61
        Align = alLeft
        Caption = 'Op'#231#245'es'
        Layout = blGlyphTop
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Geral'
      ImageIndex = 3
      object BitBtn6: TBitBtn
        Left = 0
        Top = 0
        Width = 73
        Height = 61
        Align = alLeft
        Caption = 'Op'#231#245'es'
        Layout = blGlyphTop
        TabOrder = 0
      end
    end
  end
end
