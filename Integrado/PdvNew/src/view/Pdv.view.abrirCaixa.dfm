object PageAbrirCaixa: TPageAbrirCaixa
  AlignWithMargins = True
  Left = 0
  Top = 0
  Align = alClient
  AlphaBlend = True
  AlphaBlendValue = 240
  BorderStyle = bsNone
  ClientHeight = 656
  ClientWidth = 1189
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConteiner: TPanel
    AlignWithMargins = True
    Left = 304
    Top = 120
    Width = 593
    Height = 409
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 593
      Height = 53
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Abertura de Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -53
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 0
      Top = 53
      Width = 593
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Informe os Valores Disponiveis para Iniciar a Abertura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6708056
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 0
      Top = 77
      Width = 593
      Height = 332
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 150
      Padding.Top = 100
      Padding.Right = 150
      Padding.Bottom = 100
      TabOrder = 2
      object Panel5: TPanel
        Left = 150
        Top = 100
        Width = 293
        Height = 132
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 293
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 293
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Disponivel no Caixa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6708056
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Panel9: TPanel
            Left = 0
            Top = 24
            Width = 293
            Height = 42
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Shape1: TShape
              Left = 0
              Top = 0
              Width = 293
              Height = 42
              Align = alClient
              Pen.Style = psClear
              Shape = stRoundRect
              ExplicitLeft = 128
              ExplicitTop = 32
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object EditValorSuprimento: TEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 287
              Height = 36
              Align = alClient
              Alignment = taCenter
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6708056
              Font.Height = -33
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Text = 'R$ 0,00'
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 66
          Width = 293
          Height = 66
          Align = alClient
          BevelOuter = bvNone
          Padding.Top = 5
          Padding.Bottom = 5
          TabOrder = 1
          object Shape2: TShape
            Left = 0
            Top = 5
            Width = 293
            Height = 56
            Align = alClient
            Brush.Color = clNavy
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 128
            ExplicitTop = 32
            ExplicitWidth = 65
            ExplicitHeight = 65
          end
          object btnAbrircaixa: TSpeedButton
            Left = 0
            Top = 5
            Width = 293
            Height = 56
            Align = alClient
            Caption = 'Abrir Caixa'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -33
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = btnAbrircaixaClick
            ExplicitTop = 3
          end
        end
      end
    end
  end
end
