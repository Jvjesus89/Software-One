object pageprincipal: Tpageprincipal
  Left = 80
  Top = 0
  Caption = 'Pdv Software One'
  ClientHeight = 730
  ClientWidth = 1532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMaster: TPanel
    Left = 0
    Top = 0
    Width = 1532
    Height = 730
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlConteiner: TPanel
      Left = 0
      Top = 0
      Width = 1532
      Height = 730
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        1532
        730)
      object pnlButton: TPanel
        Left = 0
        Top = 656
        Width = 1532
        Height = 74
        Align = alBottom
        BevelOuter = bvNone
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object PnlCancelarOp: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 253
          Height = 74
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 10
          Padding.Right = 5
          Padding.Bottom = 10
          TabOrder = 0
          object Shape1: TShape
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Brush.Color = clMedGray
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 10
            ExplicitTop = 6
            ExplicitWidth = 175
            ExplicitHeight = 40
          end
          object btnCancelarOP: TSpeedButton
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Caption = 'Cancelar Opera'#231#227'o'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 48
            ExplicitTop = 24
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object pnlConsultaPreco: TPanel
          AlignWithMargins = True
          Left = 256
          Top = 0
          Width = 253
          Height = 74
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 10
          Padding.Right = 5
          Padding.Bottom = 10
          TabOrder = 1
          object Shape2: TShape
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Brush.Color = clMedGray
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 10
            ExplicitTop = 6
            ExplicitWidth = 175
            ExplicitHeight = 40
          end
          object btnConsultarPreco: TSpeedButton
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Caption = 'Consulta Pre'#231'o'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 48
            ExplicitTop = 24
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object pnlAbrirCaixa: TPanel
          AlignWithMargins = True
          Left = 512
          Top = 0
          Width = 253
          Height = 74
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 10
          Padding.Right = 5
          Padding.Bottom = 10
          TabOrder = 2
          object Shape3: TShape
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Brush.Color = clMedGray
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 10
            ExplicitTop = 6
            ExplicitWidth = 175
            ExplicitHeight = 40
          end
          object btnabrircaixa: TSpeedButton
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Caption = 'Abrir Caixa'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 48
            ExplicitTop = 24
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object pnlCancelarVenda: TPanel
          AlignWithMargins = True
          Left = 768
          Top = 0
          Width = 253
          Height = 74
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 10
          Padding.Right = 5
          Padding.Bottom = 10
          TabOrder = 3
          object Shape4: TShape
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Brush.Color = clMedGray
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 10
            ExplicitTop = 6
            ExplicitWidth = 175
            ExplicitHeight = 40
          end
          object btnCancelarVenda: TSpeedButton
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Caption = 'Cancelar Venda'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 3
            ExplicitTop = 6
            ExplicitWidth = 175
          end
        end
        object pnlCancelarItem: TPanel
          AlignWithMargins = True
          Left = 1024
          Top = 0
          Width = 253
          Height = 74
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 10
          Padding.Right = 5
          Padding.Bottom = 10
          TabOrder = 4
          object Shape5: TShape
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Brush.Color = clMedGray
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 10
            ExplicitTop = 6
            ExplicitWidth = 175
            ExplicitHeight = 40
          end
          object btnCancelarItem: TSpeedButton
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Caption = 'Cancelar Item'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 48
            ExplicitTop = 24
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object pnlMaisFuncoes: TPanel
          AlignWithMargins = True
          Left = 1280
          Top = 0
          Width = 253
          Height = 74
          Margins.Left = 0
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 10
          Padding.Right = 5
          Padding.Bottom = 10
          TabOrder = 5
          object Shape6: TShape
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Brush.Color = clMedGray
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 10
            ExplicitTop = 6
            ExplicitWidth = 175
            ExplicitHeight = 40
          end
          object btnMaisFuncoes: TSpeedButton
            Left = 5
            Top = 10
            Width = 243
            Height = 54
            Align = alClient
            Caption = 'Abrir Menu'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btnMaisFuncoesClick
            ExplicitLeft = 3
            ExplicitTop = 6
            ExplicitWidth = 175
          end
        end
      end
      object pnlTitle: TPanel
        Left = 0
        Top = 0
        Width = 1532
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Caixa Aberto'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -40
        Font.Name = 'OpenSymbol'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
      object pnlMain: TPanel
        Left = 0
        Top = 60
        Width = 1532
        Height = 596
        Align = alClient
        TabOrder = 2
        object pnlOperacao: TPanel
          Left = 1131
          Top = 1
          Width = 400
          Height = 594
          Align = alRight
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Padding.Top = 5
          Padding.Bottom = 20
          ParentFont = False
          TabOrder = 0
          object pnlTotalCompra: TPanel
            Left = 0
            Top = 504
            Width = 400
            Height = 70
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object lblTotalCompra: TLabel
              Left = 0
              Top = 0
              Width = 400
              Height = 19
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Total da Compra'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 119
            end
            object pnlEditTotalCompra: TPanel
              Left = 0
              Top = 19
              Width = 400
              Height = 51
              Align = alClient
              BevelOuter = bvNone
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              TabOrder = 0
              object Shape7: TShape
                Left = 3
                Top = 3
                Width = 394
                Height = 45
                Align = alClient
                Brush.Color = clNavy
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 1
                ExplicitTop = 25
              end
              object lblEditTotalcompra: TLabel
                AlignWithMargins = True
                Left = 6
                Top = 6
                Width = 388
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'R$ 31,06'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -25
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 102
                ExplicitHeight = 30
              end
            end
          end
          object pnlSubTotal: TPanel
            Left = 0
            Top = 434
            Width = 400
            Height = 70
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object lblSubTotal: TLabel
              Left = 0
              Top = 0
              Width = 400
              Height = 19
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Sub Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 68
            end
            object pnlEditSubTotal: TPanel
              Left = 0
              Top = 19
              Width = 400
              Height = 51
              Align = alClient
              BevelOuter = bvNone
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              TabOrder = 0
              object Shape8: TShape
                Left = 3
                Top = 3
                Width = 394
                Height = 45
                Align = alClient
                Brush.Color = clNavy
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 1
                ExplicitTop = 25
              end
              object lblEditSubTotal: TLabel
                AlignWithMargins = True
                Left = 6
                Top = 6
                Width = 388
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'R$ 6,46'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -25
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 88
                ExplicitHeight = 30
              end
            end
          end
          object pnlQuantidade: TPanel
            Left = 0
            Top = 364
            Width = 400
            Height = 70
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object lblQuantidade: TLabel
              Left = 0
              Top = 0
              Width = 400
              Height = 19
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Quantidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 81
            end
            object pnlEditQuantidade: TPanel
              Left = 0
              Top = 19
              Width = 400
              Height = 51
              Align = alClient
              BevelOuter = bvNone
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              ParentBackground = False
              TabOrder = 0
              object Shape9: TShape
                Left = 3
                Top = 3
                Width = 394
                Height = 45
                Align = alClient
                Brush.Color = clNavy
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 1
                ExplicitTop = 25
              end
              object editQuantidade: TEdit
                AlignWithMargins = True
                Left = 6
                Top = 6
                Width = 388
                Height = 39
                Align = alClient
                Alignment = taCenter
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = clNavy
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -25
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Text = '0,726'
              end
            end
          end
          object pnlPreco: TPanel
            Left = 0
            Top = 294
            Width = 400
            Height = 70
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 3
            object lblpreco: TLabel
              Left = 0
              Top = 0
              Width = 400
              Height = 19
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Pre'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 39
            end
            object pnlEditPreco: TPanel
              Left = 0
              Top = 19
              Width = 400
              Height = 51
              Align = alClient
              BevelOuter = bvNone
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              TabOrder = 0
              object Shape10: TShape
                Left = 3
                Top = 3
                Width = 394
                Height = 45
                Align = alClient
                Brush.Color = clNavy
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 1
                ExplicitTop = 25
              end
              object lblEditPreco: TLabel
                AlignWithMargins = True
                Left = 6
                Top = 6
                Width = 388
                Height = 39
                Align = alClient
                Alignment = taCenter
                Caption = 'R$ 8,90'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -25
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 88
                ExplicitHeight = 30
              end
            end
          end
          object pnlProduto: TPanel
            Left = 0
            Top = 224
            Width = 400
            Height = 70
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 4
            object lblProduto: TLabel
              Left = 0
              Top = 0
              Width = 400
              Height = 19
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alTop
              Caption = 'Produto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 56
            end
            object pnlEditProduto: TPanel
              Left = 0
              Top = 19
              Width = 400
              Height = 51
              Align = alClient
              BevelOuter = bvNone
              Padding.Left = 3
              Padding.Top = 3
              Padding.Right = 3
              Padding.Bottom = 3
              ParentBackground = False
              TabOrder = 0
              object Shape11: TShape
                Left = 3
                Top = 3
                Width = 394
                Height = 45
                Align = alClient
                Brush.Color = clNavy
                Pen.Style = psClear
                Shape = stRoundRect
                ExplicitLeft = 1
                ExplicitTop = 25
              end
              object editProduto: TEdit
                AlignWithMargins = True
                Left = 6
                Top = 6
                Width = 388
                Height = 39
                Align = alClient
                Alignment = taCenter
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = clNavy
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -25
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                Text = '00025'
              end
            end
          end
          object pnlImgProduto: TPanel
            Left = 0
            Top = 5
            Width = 400
            Height = 219
            Align = alClient
            BevelOuter = bvNone
            Caption = 'pnlImgProduto'
            Padding.Left = 120
            Padding.Top = 10
            Padding.Right = 120
            Padding.Bottom = 10
            TabOrder = 5
            object imagemProduto: TImage
              Left = 120
              Top = 10
              Width = 160
              Height = 199
              Align = alClient
              Picture.Data = {
                0A544A504547496D616765530F0000FFD8FFE000104A46494600010100000100
                010000FFDB008400090607121312131212121515151617161515181518161518
                17171615161715161715181D2820181A251D181721312225292B2E2E2E1B1F33
                38332D37282D2E2B010A0A0A0E0D0E1A10101B372620262B2D30352D2F352F2D
                302F2D2F2B2D2D2D2F2D2F2D2D2D2D2F2D2D2D2D2D2D2D2D2D2D2D2D2B2D2B2D
                2D2D2D2D2D2D2D2D2DFFC000110800C1010603012200021101031101FFC4001B
                00010002030101000000000000000000000003040102050607FFC40037100002
                01020403060503030403000000000001020311042131511241610522718191A1
                0632B1C1F013D1E11442F12352627233B2D2FFC4001A01010003010101000000
                0000000000000000020304050106FFC400311100020201030203060505010000
                000000000102031104213112410513512232617191A1144281C1D12462B1E1F0
                15FFDA000C03010002110311003F00FB88000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000015B118FA50F9EA45746D5FD353C724B767A937C1641C6
                ADF12E1E3A394BC23FFD58825F12B7FF008E84DFFD9A8FEE512D5D31E645AB4F
                6BEC7A007023F114BFBB0EFCA49997F14D25F353A91F25FB915ADA1FE63DFC35
                BE87781C6C37C4B8793B39385FFDCACBD55D23B2997576C2C5983C95CEB943DE
                580002C2000000000000000000000000000000000000000000000001A55A918A
                7293492D5B764BCCF31DAFF14AB38D0F39B5FF00AA7F56517EA6BA5666FF004E
                E5B5533B5E228F4589C752A7F3D48C7A36AFE9A9C4C77C57059528B93DE5DD5E
                9ABF63CBD3A5293E29C9ABEADE7297AFD597214D2F9636FF0093CFD3AF858E2D
                BE2B649623B7DD9D18E8AB8FBDB9B6231B89AB7739B8C76BF02B782D7CC83821
                157F9FD978D96A4EF0551A4DDDF134B4D23BEC8BF4FB3E095ACAF7CCC98BAD79
                7F565CEC841617D8E7D373B77616F6FB1B2A15E4AFA3BF86BAD8EC251BE5CB2F
                026FD5CD776EBCB92C8BE3A2CFBD233CB53E88E238D4F96F656CF277BFA666C9
                C96528EBA36BEBB17A0A5FA926D59656CF55BF42F351B66791D2B6DE241DF85B
                A3832C35392775C0F9E592BF864757B2F152A31E0E3FD48AF96F934B64F6D933
                5C66162F5D37F1E451A3839A93B7CBCB3CADD094636516662B7F55FBAE03946C
                861B3D2E1FB5E949F0DDC5ED256F72F9E371B06AD2B69F4FDCEC7606338970F1
                36AD95F5F03A7A7D6B959E5CF932594623D513B4003A26600000000000000000
                0000000000000000054C7F6952A2AF52496CB56FC1119CE305D527847AA2E4F0
                8B6717B63E21A747BB1EFCF9A4F28FFD9EFD0F3DDAFF00154EA5E34FFD38EFFD
                CFCF9797A9C6A545BCDE51DF9BF05CCE2EABC57F2D1F5FE3FD9D2A341F9ADFA1
                6F1DDA357112EF372DA2B28AF2FBB142828B4BE69F25C97E6E494AD15DC8BB73
                6F26F2D6EC9E9DD5ED1DB37E1A65AFF2CE4E2539664F7F536B928AC45611BD2A
                2D372A8B2B793F6F130A56CDED959376CF54AD7B9BBA537673795AD6592375C2
                9679EDCEFB1728A8BF4F994B79258F6924B2BDBA27B6846F16BAAEA97DFC0CBA
                9D2CFAFAEBB92C6949ABD95F5FCC8B7CD94B64FEC57D315D8D6124F3E3F73755
                12D5D8D9517B7F836FD18B4970F2C89E59178334E49E69DD7A9BA6F7314F04B6
                4BD899502C8C64D7057271F52355257B64F73474EED3BB59E6932CBA597414A1
                BFEE5914F38641B5C914A17C9E69FE58E3A52C3D54E3F2DEEBF63BEE0418DC22
                9AB3FF000F74517D2E4BAA3CAE0B2BB12D9F0CEEE0F12AA414973F664E79CF86
                B10E3295293F0F15FBA3D19DAD25FE754A5DFBFCCC56C3A24D0001A4AC000000
                000000000000000000153B4F1D1A34DCE5E096EF92232928A729708F63172784
                53EDDEDD861D70FCD51ABA8F25B393D8F0388C44EACDB6DCA4F37F9C91A63319
                3A93726DB949FF003E48B785A1C11FF93FBE88F93D56AE7A99FF006AE17FDDCE
                F5344688FC4D21868C6CE5DE93D172FCF12D53C2B93EF276EB97AF42CD1C270A
                E27ABE97D34B7E6A4D4E0ED6B357F7F4211AF1C9E4ACCF06AE8C239B5E4BAECB
                919FEA24FE5873D77B68FA13D1C377B3BFD7CEC5B8E1BA97C616496DB1439C57
                3B9CE85093CE5E9FCDAFB9D0A51492CBC8B2E8E9B232EC69AF4EE1B94CADEA20
                8D25A932B3D5686B1A883974D7F3CCB128C78641B6CDA2F2BB378ABEBA1A536F
                DC95227120CD1C5AE575D3F636E246B3958A788C4D867A4F545C8B756AA45296
                2AD2C9FE5CE5E23B41BCA3E04156AD9A49B6EEE2DAD53B3BF85BA99ACD52EC68
                869DF73A988ED3E18CA5AD969BBE488F17DBCA308CE31BF15AF1964D369EBFC1
                C4ADC5C528DF24F9F5B277B7810E29F13495ACADA192CD5CF7C334C34D0DB274
                3B37B65D5A8F8928D48F7A36D1C572FF00B475F067D070D594E3192E6BFCA3E5
                55A9B8B8D48E528BCBCB7E8F347BFF0086316A74ED1D32947C25AAF2791BBC2A
                F7E638BEFF00E4CDAFA924A513B6003E80E58000000000000000000000061BB6
                6CF9D7C47DAAEB4F27DC57515D37F167A3F8CBB45C20A9472735DE7B476F3FB3
                3C561E839C92DD9F3DE2FAB6DF931FD7F83ADA0A125E6CBF42E76560EFDF7CF2
                5D33D4BCE36B5F756F5DBD3D0E9C30B68A8E565F4239E1EEEDA2FB997F0EE11C
                1377294B24B463DD576EFCEFFB1B7E9ABDAC6EA31845393D725732A6BC76362A
                BD95932B9EEF04B1A7D7A7812AA6B52384D7215245E94522B79662A4F2FCE4C8
                9AF7368C6E6CE9953CCB726B0885A76F726A2B2CCD212CEC4C9A56CF26462972
                7B26164FF3A988D45E66B527639B8AC63BA4B9FD12CC94A718727918391363F1
                96DEF739355CE5AE4BAE5EDA969775393776FDBA15E5533C9F277E9E3D598ADB
                5C99AAB86115A151453CAD269357DB9ACB4DCCAA4A57717D5F79ABEDE6BDFCC9
                385DAF2B5B3BBE4EFCDAF0E5FC11D4A9C5945597D4CD278D8D2BE047377765A7
                4F41FA16B752C53812CA29C5FA9538651EF56382A5585D1D6F82AA5A7386CAFE
                4DAFBA7EA7253C8BDF0C4ED5DADE0D7BA7F666AD03FEA21F329D4ACD523DDA66
                48E93243EB8E1800000000000000000030CC9890079CED8A57A93BE774B5F059
                781C3C3E1D53AAA51D35B3E574ECFC32338CED37FD454E2BDB8A4BC12765E45D
                AD454ACD3F35CD2D3C566CF9BB650BA6DAE53FDCEB4632AA293E1A2CC711BE46
                275126B3CB57E1E253952946ED2BE577E59E7EE4B5D714256C9D9DAFF9E425E6
                63721ECE7626A588537C4B4597DFEE4B16B6D325EAD95F0742D14B65EE5A8C56
                D7EA5EA536BD0ADC628C4619E4F3D9E9FC12496EADF41124E2BACB7D3A7326BE
                2459AD2EB6379BE688A4D2FCDB910D4ABD75BFE588F574AC0C649273F720AB5A
                C9F4BFF82AE2B176BF42B4AA6ADBC9AF4C8CD3B522E8D7925C4621CB25E6F95B
                7E855AF8950B3D7FB52BFBFB95E789BC6F06E2B76B5EF5B27B3CFD191C20E52B
                BBA4F3BBF1B64FA98AC9B9F06B8578E4DEBD49C9F46B2B3CD5BE8F3F6F127515
                18F7B37C97B6799A71462AD1F5CEFE641C6F62AEBF42CC12CBBEEEFD168494E9
                F9107EA3375E23283C934EA25D4C7F52F92FBFD481991D4C8E11BC0BDD814FFD
                6BEC9FBE457842FF0053B3D8987B67CE5F4E4747C3E973BE2FB2DCCDA9B146B7
                F1D8F474342523A2B2243E98E400000000000000000003599B1A4C03E71DB346
                4AA4EFFEF95FA5DBD09FB131374E9CB97CBE1B7DCF43DB1828C9DF7C9F8F27F9
                B1E4EA5274A7B34EF973FE0F94D4D32D3DBD5DB27729B63757D3DCF550918A90
                5C925A7E7D4AF42AA92535A7BF8326E256EA6E8BC98A51C3334F409DB991CEA1
                56A5796B67E97EA78E4A27AA2D976A3CB53119A56B3EBE3738B53B41E76D34BE
                6BA3F3284F1D55CBBAD70DDF13D724AD649E4B2CFCF4333D42CEC5F1A1B3D256
                AD7D1E9FBFE7A9466EDDE94B3D35CBC73E671A78BAF7B41659E7249B7A59E5F7
                D9114F0D51BE29CD679B576EFCB3E9F9D4A6CB9C96C5D0A31CB3A72C4C55FBDB
                FF009E9A32956A929FCBF2DAFCEDA736F522A4A9C167DF77BAD9791BFEB49E4B
                25B231F52F997A8609F862B393E3972D96BA7A989556F2D17D08E9437258C46F
                21B188449230B9BA8AE6EDE3A8FEA20B764E31445B0A99BB564DFA78988E2E2D
                649FE7989D5E2CAC4DA58D88E5914224F4E8DD92D1A4F6474B0B85BF2B7DFF00
                62ED3E92774B08A6DBE305B91E17097D74FAFF00077F0542C6986C39D1A50B1F
                4F4511A63D31393658EC7966F146402E2B00000000000000000006B246C18073
                7190BA679AED1C3F16BAAFB1EB713038989A7691875B479903451674BC9C4ECF
                C470DE1BE9E3CCB6AA3BB2AE329704EFE68B3077717C9FD6C71286D660F94742
                CC3F69773C8E2717375669B77E5D16C8CAC5D6C92A97D94B3F737EDAC1BA788E
                2FED9AD7D9A6494E28C73CC3666D4D349A34862AAE49F2F3B1BFF5137F727513
                68C13287367B94569D591B508B6F3B961C0C7E95991EE3A8C2A489214F3B73D6
                DFC187576468D49F3F5D0B1448E4B31A796ABCFF006D7D8D5D4DBD4CC696C4F4
                F0AF917A8E0ADC97729B8B661D3F13AD0C25D75245835CF2FCD8F557296C9107
                72451A3876D2C8BB470B62DD3A4DE8ACBDFF0082F61703B9D4D3F864DE1CF646
                3B756BB1061B0B7E4756861EC4D46858B1081DC842308F4C5611CF949C9E598A
                702508123C00000000000000000000000000023A913978EA173AEC82BD3B9192
                C9EA6792C7ABAEAB5DEC4382AFDD6B6DFA9D8ED1C1DF35A9E76AC5C257F54717
                53A695767991E3B9BEAB14A3D0CD3B569A942EF93BAFBE9A9CDA12E876D2E24F
                6CD3F338918B8B69F276F439BAB86E9A36512D9A65A493330B279B358A6CDFF4
                CC8A28B5B3793DBD48F83D49A95964DFA16A1417226A0DF045CB053A74372CD3
                C237993702458A33CAC967D0D15D59784533B31B9AD1C3A4B3258357B2378506
                CB94305D0E953E1F649FB5B2FB98ECD447E65554EFC8B5470972FD1C21729D1B
                1D8AA9854B1146494DCB92A50C258B90A448A26C5844D544D800000000000000
                00000000000000000000061A32002B56A373918DECF4F91DF688E74AE7983DC9
                E36A60A507789CFC6E0E527C4A39BD52DF73DC55C2A6549E07A19EED2576C70C
                B6BBE50794788A71B64D32CC2173D356ECB8CBE68A7ECFD50A7D9708E915F5FA
                9CCFFC89757BCB06AFC7471C6E79FA545DF24D9729D19B56B7A9DB58426A782E
                86A8785D71F79E7EC532D5C9F08E352C06F997F0F82D958EA53C224588D348DF
                5D55D6B105833CA72972CA547085A85144B6324C898513200000000000000000
                0000000000000000000000000000000000018B187136001A7E998FD244800345
                4D1B246400000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000007
                FFD9}
              Stretch = True
              Transparent = True
              ExplicitLeft = 128
              ExplicitTop = 72
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
          end
        end
        object pnlGrid: TPanel
          Left = 1
          Top = 1
          Width = 1130
          Height = 594
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 1
          object gridProdutos: TDBGrid
            Left = 5
            Top = 5
            Width = 1120
            Height = 584
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'C'#243'digo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Item'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descri'#231#227'o do Produto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Width = 568
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'Valor Unitario'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Title.Alignment = taRightJustify
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 140
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'Quantidade'
                Title.Alignment = taRightJustify
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 120
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'Valor Total'
                Title.Alignment = taRightJustify
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 150
                Visible = True
              end>
          end
        end
      end
      object SplitViewFuncoes: TSplitView
        Left = 1532
        Top = 60
        Width = 0
        Height = 596
        AnimationDelay = 0
        DisplayMode = svmOverlay
        Opened = False
        OpenedWidth = 200
        Placement = svpRight
        TabOrder = 3
        UseAnimation = False
        object pnlSplitView: TPanel
          Left = 0
          Top = 0
          Width = 0
          Height = 596
          Align = alClient
          BevelOuter = bvNone
          Color = clMedGray
          ParentBackground = False
          TabOrder = 0
          object pnlDescontoItem: TPanel
            Left = 0
            Top = 164
            Width = 0
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Desconto Item (F11)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Shape12: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              Brush.Color = clMedGray
              ExplicitTop = 0
              ExplicitWidth = 200
            end
          end
          object pnlMultplicaItem: TPanel
            Left = 0
            Top = 123
            Width = 0
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Multiplicar (*)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Shape13: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              Brush.Color = clMedGray
              ExplicitTop = 0
              ExplicitWidth = 200
            end
          end
          object pnlFechaVenda: TPanel
            Left = 0
            Top = 82
            Width = 0
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Fechar Venda (F7)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object Shape14: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              Brush.Color = clMedGray
              ExplicitTop = 0
              ExplicitWidth = 200
            end
          end
          object pnlNovaVenda: TPanel
            Left = 0
            Top = 41
            Width = 0
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Nova Venda (F3)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object Shape15: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              Brush.Color = clMedGray
              ExplicitTop = 0
              ExplicitWidth = 200
            end
          end
          object pnlBtnCpf: TPanel
            Left = 0
            Top = 0
            Width = 0
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Informar CPF (F9)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object Shape16: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              Brush.Color = clMedGray
              ExplicitTop = 0
              ExplicitWidth = 200
            end
          end
          object pnlSupriSangria: TPanel
            Left = 0
            Top = 205
            Width = 0
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Suprimento/Sangria (Ctrl + F4)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object Shape17: TShape
              Left = 0
              Top = 40
              Width = 0
              Height = 1
              Align = alBottom
              Brush.Color = clMedGray
              ExplicitTop = 0
              ExplicitWidth = 200
            end
          end
        end
      end
      object SplitViewPagamentos: TSplitView
        Left = 1692
        Top = 60
        Width = 0
        Height = 596
        AnimationDelay = 0
        DisplayMode = svmOverlay
        Opened = False
        OpenedWidth = 1000
        Placement = svpRight
        TabOrder = 5
        UseAnimation = False
        object pnlPg: TPanel
          Left = 0
          Top = 0
          Width = 0
          Height = 596
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
        end
      end
    end
  end
end
