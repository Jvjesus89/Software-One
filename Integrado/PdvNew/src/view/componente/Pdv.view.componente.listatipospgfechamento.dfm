object ComponenteListaFechamentoCaixa: TComponenteListaFechamentoCaixa
  Left = 0
  Top = 0
  Width = 421
  Height = 44
  TabOrder = 0
  object Shape1: TShape
    AlignWithMargins = True
    Left = 0
    Top = 41
    Width = 421
    Height = 1
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 2
    Align = alBottom
    ExplicitTop = 175
    ExplicitWidth = 320
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 421
    Height = 41
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    ExplicitTop = 1
    object Panel2: TPanel
      Left = 385
      Top = 5
      Width = 31
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 301
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 31
        Height = 31
        Align = alClient
        Caption = '-'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clScrollBar
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitLeft = 6
        ExplicitTop = 2
      end
    end
    object pnlTipoPg: TPanel
      Left = 5
      Top = 5
      Width = 204
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Dinheiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clScrollBar
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 7
    end
    object pnlValor: TPanel
      Left = 181
      Top = 5
      Width = 204
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      Caption = 'R$15.000,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clScrollBar
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = 0
      ExplicitTop = 7
    end
  end
end
