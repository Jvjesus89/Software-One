object PagePagamentos: TPagePagamentos
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'PagePagamentos'
  ClientHeight = 596
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConteiner: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 596
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlInformacoes: TPanel
      Left = 0
      Top = 0
      Width = 273
      Height = 596
      Align = alLeft
      BevelOuter = bvNone
      Color = 5589317
      Padding.Left = 20
      Padding.Top = 35
      Padding.Right = 20
      Padding.Bottom = 50
      ParentBackground = False
      TabOrder = 0
      object pnlResumoVenda: TPanel
        Left = 20
        Top = 35
        Width = 233
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Resumo da venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object pnlInfoVenda: TPanel
        AlignWithMargins = True
        Left = 20
        Top = 126
        Width = 233
        Height = 379
        Margins.Left = 0
        Margins.Top = 50
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Shape1: TShape
          Left = 0
          Top = 153
          Width = 233
          Height = 5
          Align = alTop
          Brush.Color = 1357025
          Pen.Style = psClear
          ExplicitLeft = 72
          ExplicitTop = 192
          ExplicitWidth = 65
        end
        object pnlInfoValores: TPanel
          Left = 0
          Top = 0
          Width = 233
          Height = 153
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object pnlImagem: TPanel
            Left = 0
            Top = 0
            Width = 233
            Height = 20
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Image1: TImage
              Left = 0
              Top = 0
              Width = 17
              Height = 20
              Align = alLeft
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
                001008060000001FF3FF610000000473424954080808087C0864880000000970
                48597300000EC400000EC401952B0E1B0000001974455874536F667477617265
                007777772E696E6B73636170652E6F72679BEE3C1A000001194944415478DA63
                642011FC7EC960C5F08FA1968585218C5194E13323299AFFFF6760FAF382E13C
                90A907C4475898193C8936E0F753066B46660619E67F0CC7FF32321CF8CFC0A0
                0814DE4E94015067EF0032B918FF332430FF6738F88789610B909F4FD00090CD
                0C4C0CDB814C5EA8D05F46468668667186D540FA1F239136F322097F05621F56
                498603200E23259A711A40AC66AC0690A219C3005235A318408E668401FFFB38
                7FBF28BA0B644922C97D061AE8C92ACD70145F4C810DF8FF9441F60F23830290
                B70DC8E5215633C480B7BDB2BF7F155F04264D77C67F0C6CC044B306281E89CF
                D92806FC7ECE500EA43B80F82DCB7F062386BF0CAF196519BE13A3196CC0AF17
                0C4B80E9FB3250F37246298647C46A8401005F736CC04BE9E928000000004945
                4E44AE426082}
              Stretch = True
            end
            object Label1: TLabel
              AlignWithMargins = True
              Left = 20
              Top = 0
              Width = 213
              Height = 20
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Caption = 'Editar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 1357025
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 41
              ExplicitHeight = 19
            end
          end
          object pnlTotalVenda: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 40
            Width = 227
            Height = 20
            Margins.Top = 20
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object lblTotalVenda: TLabel
              Left = 0
              Top = 0
              Width = 113
              Height = 20
              Align = alLeft
              Caption = 'Total da Venda:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitHeight = 19
            end
            object lblValorVenda: TLabel
              Left = 113
              Top = 0
              Width = 114
              Height = 20
              Align = alClient
              Alignment = taRightJustify
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = 195
              ExplicitWidth = 32
              ExplicitHeight = 19
            end
          end
          object pnlDesconto: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 68
            Width = 227
            Height = 20
            Margins.Top = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object lblDesconto: TLabel
              Left = 0
              Top = 0
              Width = 71
              Height = 20
              Align = alLeft
              Caption = 'Desconto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitHeight = 19
            end
            object editDesconto: TEdit
              AlignWithMargins = True
              Left = 71
              Top = 0
              Width = 156
              Height = 20
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 5589317
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '0.00'
            end
          end
          object pnlAcrescimo: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 96
            Width = 227
            Height = 20
            Margins.Top = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            object lblAcrescimo: TLabel
              Left = 0
              Top = 0
              Width = 79
              Height = 20
              Align = alLeft
              Caption = 'Acr'#233'scimo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitHeight = 19
            end
            object editAcrescimo: TEdit
              AlignWithMargins = True
              Left = 79
              Top = 0
              Width = 148
              Height = 20
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 5589317
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '0.00'
            end
          end
          object pnlTotalAreceber: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 124
            Width = 227
            Height = 20
            Margins.Top = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            object lblTotalAreceber: TLabel
              Left = 0
              Top = 0
              Width = 116
              Height = 20
              Align = alLeft
              Caption = 'Total a Receber:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitHeight = 19
            end
            object lblValorAreceber: TLabel
              Left = 116
              Top = 0
              Width = 111
              Height = 20
              Align = alClient
              Alignment = taRightJustify
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = 195
              ExplicitWidth = 32
              ExplicitHeight = 19
            end
          end
        end
        object pnlRecebimentos: TPanel
          Left = 0
          Top = 158
          Width = 233
          Height = 221
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnlTotalRecebido: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 227
            Height = 20
            Margins.Top = 20
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object lblTotalRecebido: TLabel
              Left = 0
              Top = 0
              Width = 111
              Height = 20
              Align = alLeft
              Caption = 'Total Recebido:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitHeight = 19
            end
            object editTotalRecebido: TEdit
              AlignWithMargins = True
              Left = 111
              Top = 0
              Width = 116
              Height = 20
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 5589317
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '0.00'
            end
          end
          object pnlSaldoRestante: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 48
            Width = 227
            Height = 20
            Margins.Top = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object lblSaldoRestante: TLabel
              Left = 0
              Top = 0
              Width = 110
              Height = 20
              Align = alLeft
              Caption = 'Saldo Restante:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitHeight = 19
            end
            object lblValorSaldoRestante: TLabel
              Left = 110
              Top = 0
              Width = 117
              Height = 20
              Align = alClient
              Alignment = taRightJustify
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = 195
              ExplicitWidth = 32
              ExplicitHeight = 19
            end
          end
          object pnlTroco: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 76
            Width = 227
            Height = 20
            Margins.Top = 5
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object lblTroco: TLabel
              Left = 0
              Top = 0
              Width = 47
              Height = 20
              Align = alLeft
              Caption = 'Troco:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitHeight = 19
            end
            object lblValorTroco: TLabel
              Left = 47
              Top = 0
              Width = 180
              Height = 20
              Align = alClient
              Alignment = taRightJustify
              Caption = '0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = 195
              ExplicitWidth = 32
              ExplicitHeight = 19
            end
          end
        end
      end
      object pnlCancelar: TPanel
        Left = 20
        Top = 505
        Width = 233
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Cancelar / Retornar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 1357025
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object pnlFormasPagamentos: TPanel
      Left = 273
      Top = 0
      Width = 567
      Height = 596
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnlTitulo: TPanel
        Left = 0
        Top = 0
        Width = 567
        Height = 100
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 30
        Padding.Top = 20
        Padding.Right = 30
        TabOrder = 0
        object pnlOnTop: TPanel
          Left = 30
          Top = 95
          Width = 507
          Height = 5
          Align = alBottom
          BevelOuter = bvNone
          Color = clMedGray
          Padding.Left = 10
          Padding.Right = 10
          ParentBackground = False
          TabOrder = 0
          object Shape2: TShape
            Left = 10
            Top = 0
            Width = 487
            Height = 5
            Align = alClient
            Brush.Color = 1357025
            Pen.Style = psClear
            ExplicitLeft = 24
            ExplicitWidth = 65
            ExplicitHeight = 65
          end
        end
        object pnlFormaPG: TPanel
          Left = 30
          Top = 20
          Width = 507
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Forma de Pagamentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6708056
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object pnlEscolherFormaPG: TPanel
        Left = 0
        Top = 100
        Width = 567
        Height = 496
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 30
        Padding.Top = 5
        Padding.Right = 30
        TabOrder = 1
        object pnlEscolherForma: TPanel
          Left = 30
          Top = 5
          Width = 507
          Height = 41
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'Escolha uma forma de pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6708056
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object pnlFormasPG: TPanel
          Left = 30
          Top = 46
          Width = 507
          Height = 90
          Margins.Top = 10
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object pnlFormaPgCartao: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 0
            Width = 150
            Height = 90
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 28
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object ShapeCartao: TShape
              Left = 0
              Top = 0
              Width = 150
              Height = 90
              Align = alClient
              Pen.Color = 1357025
              Pen.Style = psClear
              Shape = stRoundRect
              ExplicitLeft = 48
              ExplicitTop = 40
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object pnlFormaCartao: TPanel
              Left = 0
              Top = 0
              Width = 150
              Height = 90
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object pnlImageBanco: TPanel
                Left = 0
                Top = 0
                Width = 150
                Height = 57
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                OnClick = pnlImageBancoClick
                object ImageBanco: TImage
                  AlignWithMargins = True
                  Left = 50
                  Top = 5
                  Width = 50
                  Height = 52
                  Margins.Left = 50
                  Margins.Top = 5
                  Margins.Right = 50
                  Margins.Bottom = 0
                  Align = alClient
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
                    003208060000001E3F88B1000000097048597300000B1300000B1301009A9C18
                    0000018F4944415478DAED99BD4EC330144671D2C2C0DF4ACB7BC00C6C8913A9
                    3B3C04489481C2001D40209E02E64889E9461F80E74094B9ED52558DF922010A
                    69A82A21E49B708F645D5B59BE633B196EC4424910A603B0088B108745A8C122
                    D49812F13C4F6AAD0F8510DB582E9B0E9806B98628CF9665DD8561F8F8A30824
                    DA28A7A603CF493B8AA2B32991E42450228C11CC5BD56AF52108829EE9B4691A
                    8D466D3C1EEFE3B65C62B9842A3F4FE64B444AD9C5831D481C2BA56E4D879E05
                    36BD89728DAC5D64DDCB8A0C20B232994C6A9D4EE7CD74D859388EB361DB760F
                    220388AC7D1381A54E2AEE5D21BE64D9BCE515291A2C420D16A146F9BF5A2C52
                    0491DFBE3F7FB139FF5B84222C420D16A1068B508345A8517E1129655F08B15A
                    A954EAD41A73595CD7DDB42CEB05D33E44D6B3224F10D9D55A37955237A6C3CE
                    02A771827295DBA0F37DDFC50385E908E31C52F76118BE9A0E9D0619EBC87880
                    71817C8BB92DD30FD3A4A7DA321D784EF29BD8296B378EE3234CB79216AAE9B4
                    69E6FEAD506458841A2C420D16A1068B50E31DE0CB2942F587178B0000000049
                    454E44AE426082}
                  Stretch = True
                  ExplicitLeft = 40
                  ExplicitTop = 24
                  ExplicitWidth = 105
                  ExplicitHeight = 105
                end
              end
              object pnlCartao: TPanel
                Left = 0
                Top = 57
                Width = 150
                Height = 33
                Align = alClient
                BevelOuter = bvNone
                Caption = 'Cart'#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6708056
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
          end
          object pnlFormaPgPix: TPanel
            AlignWithMargins = True
            Left = 178
            Top = 0
            Width = 150
            Height = 90
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 28
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object ShapePix: TShape
              Left = 0
              Top = 0
              Width = 150
              Height = 90
              Align = alClient
              Pen.Color = 1357025
              Pen.Style = psClear
              Shape = stRoundRect
              ExplicitLeft = 48
              ExplicitTop = 40
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object pnlFormaPix: TPanel
              Left = 0
              Top = 0
              Width = 150
              Height = 90
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object pnlImagepIx: TPanel
                Left = 0
                Top = 0
                Width = 150
                Height = 57
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                OnClick = pnlImagepIxClick
                object imagePix: TImage
                  AlignWithMargins = True
                  Left = 50
                  Top = 5
                  Width = 50
                  Height = 52
                  Margins.Left = 50
                  Margins.Top = 5
                  Margins.Right = 50
                  Margins.Bottom = 0
                  Align = alClient
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
                    003008060000005702F987000000097048597300000B1300000B1301009A9C18
                    000004394944415478DAD5995B6F1B4514C7CF19C709112AA55CC4453CB7E522
                    DA22782F0D29CDAEEDB4D85EE8036A3F40F9004083042DE503C007A84008E1B5
                    9BD8DE7582DA1478A6411577FA5C2A4124D20B12C289E7F46C6AA77662C79E9D
                    D9B09D07CB9E5DCFFC7F733973CE19847BBCE0FF2D207600B6F7F90E14236F21
                    D12437BF8B0008117E07A2B2A80F7D5C3E72E47A6C01EC5977BF2074F9EB235D
                    5F205894821C7F22FF4DEC0052BE3BC18D4D03E2C866EFF18CD45192534DE5CB
                    B10118547C1410DA00AAE24D4368018415DF0EC11FAF7B766E66CB0174C59B82
                    0805604ABC09086500D3E275219400A212AF03A13C039999996D30B4B24F221C
                    E37F1FE306127AAA6985003F25416713FF252F570E1FBEA5F2772D2BB47AF24A
                    2C712B0F85130F7F13CAD73CCBF936AC86BE0099D9524612B9FCE270B36A897B
                    F69641BC336765AF5A5E616F4288F3D0CB7DE8A99DAE0B82F18A9DBF74A8567A
                    6A88E823F6996C7EB4E3CE73A80BC47C65225B090DD045FC5D0144D7208163DE
                    A1DC6FF65C698F9074410162899DBD8381F8D45C713734E822223EB111B23F44
                    4F8041362C43FC85020E5427F23F2B402C4929C7FD94B390992DEC921203F14F
                    F69EA9CD4FECAE002AD626802029C6FC74F6A774CD7D9E9B9CDF044249FC2010
                    1B00C298CA7608CB3BF77442C88B5CFDF83A158B80F44AD5CAFFD014FF75B765
                    A30AD10110581524FCAADB9AEFDF01FD29800E542CE7970D102C5E801C2BDBCE
                    8F995AE119093CF2808FA9F70175427AB53D9E58030822292146AE80A235590F
                    C196646C754F544BCF8984FC22A8970D71747589CDBACF12C17C18F16D9D2C8A
                    7A62672BB25B0348D58AEFF18FF74337DC05A2BDDE88F8561F12A6BC54EE7427
                    805FFC9E3BDEA7DB7813E216879653342457CD1FAE888C443AC5E2B799689FCB
                    42D5CABDD80190F68BFFF0AFFB0D7510690906C8B3F20F7400A46AEE4D832314
                    35C1CDAA9DDBDE0190F6DD05369D2F981A2104F1AE405195621949629A2B4F9B
                    1A20B646973C2BF7D27A802906F8C080F8E83731C04906F8B00360727AFA4139
                    DCB8C2358F9A101F985114F46550CD33F08629331A1C9AA3C3B4D31D776E7400
                    0425CA836CED14D63CC8F85439D8EE7EF77025F01C3FB94F65545A4EDD26FE50
                    283FA85D7C5F57220C84A2471ABD33D709D1C79D6E5FF30AEE742B1688CC9D6E
                    9541039A1051D9FA8066BE1B845640D31382E358DE90BE6CD0DB7EDAF92310CF
                    9D5C60010F0F28BED90CB13326784366BF0B42CA24C8334068B7E26B2321655F
                    38AFF832211475827A2928AB936E5706C89F2F6CFF7719F6F2681DE7FDF1A66E
                    5A8547BAC1EBF1339ED5B3A349B8DCB2EF91006C45624B35631DABD46298747B
                    6C92BB61EF0A62915ED7B9E83070C1A1E6769814AF0DA003118B2BA6B010B1BA
                    E4538588E5356BAB34D3ED855E4151E0B9F281E5E8A4D32305084A10D935928D
                    13206092877BF79D4EE857422C8F26E527AA27ED96036C75B9E7016E035C91DE
                    4F30D02AE70000000049454E44AE426082}
                  Stretch = True
                  ExplicitLeft = 40
                  ExplicitTop = 24
                  ExplicitWidth = 105
                  ExplicitHeight = 105
                end
              end
              object pnlPix: TPanel
                Left = 0
                Top = 57
                Width = 150
                Height = 33
                Align = alClient
                BevelOuter = bvNone
                Caption = 'Pix'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6708056
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
          end
          object pnlFormaPgDinheiro: TPanel
            AlignWithMargins = True
            Left = 356
            Top = 0
            Width = 150
            Height = 90
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 28
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object ShapeDinheiro: TShape
              Left = 0
              Top = 0
              Width = 150
              Height = 90
              Align = alClient
              Pen.Color = 1357025
              Pen.Style = psClear
              Shape = stRoundRect
              ExplicitLeft = 48
              ExplicitTop = 40
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object pnlFormaDinheiro: TPanel
              Left = 0
              Top = 0
              Width = 150
              Height = 90
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object pnlImageDinheiro: TPanel
                Left = 0
                Top = 0
                Width = 150
                Height = 57
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                OnClick = pnlImageDinheiroClick
                object imageDinheiro: TImage
                  AlignWithMargins = True
                  Left = 50
                  Top = 5
                  Width = 50
                  Height = 52
                  Margins.Left = 50
                  Margins.Top = 5
                  Margins.Right = 50
                  Margins.Bottom = 0
                  Align = alClient
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
                    00400806000000AA6971DE000000097048597300000B1300000B1301009A9C18
                    00000C574944415478DAED5A09585357163EEFB1A8A076C62AB8A0D6AED6B5FB
                    D42A43415C80B0097157DC5170C105B56EA8AD6815AA15B5222855A988014121
                    914A10D15ADB5AA75305B5B5ADB5D556B4DF37D3111421C99B732EBC3481002F
                    61899DF1FFBE24E7BDBC7BDFBDFFBDF76CF772F07F0ECEDA0DB0361E1160ED06
                    581B8F0868CE9779F88E76E6056D4F00E149103847009D63E53F7C2970422936
                    E7071D6773E544D6C1E2FF0902860D0BECA4B5E3FD0581F3C04EBFC901D7414A
                    3901E036FE9C140438A105EE48814A71EB4F4340545414FFE99797FC0510A60B
                    823094E3389B0656A941228E0BBC2EC1F5E5BE47D7AC59A37B5809E006FB048F
                    E5405886622F530F383A3A40D72E9DC1C5A533383A3840CB962DD9FDB2B23228
                    29BD07376FFE023FE3A714659310A008BFD6A955E907D9D5C34280876F503F4E
                    C7EDC0CA061A55CE71D0BF5F6F18F8FA6BF042FF3ED0BDAB0BBB571770D6C0F5
                    9F7E86AFBE2E843367BF800B8597D83D631EE0140FDAF05C6546A1B509E03CBD
                    8316622DD128DA893769A4FD7C8683CC6B08387568DFA01714DFBE03CA63B970
                    449903F7EEDD37A4A142E0F8A579D98ACDD080D96031016FF8F9B571D0DA1F40
                    5126DEB3B3B303F9085F1839C29F91D09828292D85D4B44C48CBC8068D4663F8
                    D7910A076E7C814251D26C040C1F2EEF506123A8B0F02BE2BDDECF3F070BE785
                    41575CDF4D899F6FDC84982D3BE0D2956FFFB829C0395B1DE79393A3B8D3E404
                    B0CEF3C2295CCA3D5905288C0CF287C91346838D4D4315BE3468345AD8BDF723
                    48CFCCD6EB07B43A97EDB4BC9BB9249845004DFB565ABB7CB4E72FD335CFF310
                    113E03BC860D6E968E57C7F1BC93F0DED69DA0D56AAB48802F350E9CBB39CBC1
                    1C02384F9FE0A350B5E669B4572E5D000307BC6695CE8B387DE63378E7DDCDA0
                    D355B9070264AA55692340A262944CC0606F7924C7091B59219CF6F3E7CC04AF
                    A11E56EDBC08F58953B071F3364373395FAD4CDBD26804787AC9FB02AF3B2F9A
                    BA51C101306DD2386BF7DB08F1897B210D7502018928D7D9C04BF959E9458D41
                    00D9FA5338EC83E8A277AF9E10BB7E75B3293CA920C5387FC94AB8F2CD559184
                    823C55BA3BD4B314EA2500DDDB71F85032C964E7E3E3629ADCD4598AEB3FDD80
                    997317313218091C371A1DA5548B09A0C0E6CC97851745DF7EECA81168EEC658
                    BB9F752231291952D38F54122040619E2AAD1FD4310BEA2460888F3C10EDEB61
                    925B3B3A42F29E1D8DEEE19942F6B1E390B027195E79A93FAC404B535FFC6088
                    92925218376596DE6DC6A510804BE1884504A0D953E18F17C963468E8029139B
                    67F4A7872F841FAFFFC4E4E4DD3BC0D959521A410F72920E2A32ABAE04A55A99
                    2EABEDD95A0960D91B9DE6068AB63402FB13B74B6A088DDECEC47DF0E0C103FD
                    3D5298CE4EEDC175E00018855E639B36AD4D96BDFADD0F9099750C4E9E3E03E5
                    E515ECDEB3CF3C056FBABE01FE322FB0B7B7ABF7FD040AA0264C0D17CDA206A3
                    A6AEB525556A25C053163413B5C807245328BB695D94A4971B8E9E29383B7580
                    77DF59095D3A77AA465C2E6C8FDFAD5760D5F1648F276023967BECB1B692DAB1
                    6069145CC450BA12C20C9C0509661180DAFF10FE2927393C740A04F87A497AF1
                    E4D0B970E3E6AF753ED3E3896EB073EB26E64A133E3FF70F58B976438DB8BF3A
                    28AFB07A45A4A476509CB0137D83CAFE0B07D5AA7493EBB70E02826E8B39BC84
                    EDB1F044F76E66137070DF2E78BCDD5FA1ACEC019CFEF433E6B78BA1ECEAE591
                    7A377ACEC2657AFBDDB74F2F983165023CD6B60D736FCF7E711E76EDDEA72767
                    6F421C74EED4B1DE76FC70ED47089D132912508C04982C649200376F79473B4E
                    60BD20AD9F71F043C99AD8140122E276EE86A3D9394C0EF4F386B0199399AEF0
                    0D9EC03A48EF502427D698E6CBA2D6C1B9F3FFAC9423E781BBDBA07ADB41F505
                    8C0AD15B03AE5CEB9C9B9B715B12019E32B91BD67092E49ECF3D0371B1D1923A
                    5F1F01649FC94E138679BAC3A28830B877FF3E048C0C610D7668D50A320FEDAD
                    41362542123FFC88C9A48B48274941F8FCA5F0EDD5EFAB7ACAB9AAB3159F4822
                    00A77F084EFF0F99ECFE7758BA704E8309A8A8A880B98B96C377DF5F63D75342
                    C6C218792093C74D9E05B7EFFCC6E4D933A7A2C61F6E54272D9BDCBC02688BCB
                    C29CE8737DCCFB70E264559F056EA25AA5D82F8D00EFE03938085B4916A7AA25
                    048C1F1D0C2D5BB660E9AC3367CFB16C0EA1458B169014FF3E7468FF38BB4E39
                    7418F6EC4BD1D7F1F4533DE0857E7DA01FEA83BEBD9F87D6AD1D25BFDF10864B
                    8ED309B3738FA56F974480A74F10A5B6D7916CAE0324C50A844E0B81E0803F7C
                    9307E5E5B064C5DB5074E94A8D676D6D6DC16DD000988C6D20136A0EF6EC3D00
                    298A0C26A30A5D96A74C5B6F55026836844E0D61D9E2EA20659880FA212737DF
                    C88912D1FEF176B011D7BF398198C504182E01B2FFE4075842002933D17C3DF7
                    CCD310BD7619B46DD3A6CEF277EF96C057170A991373A1F0323367225EECDF17
                    495825B92D162F012325F8A62B2C5D34D7220248C98923406490ED7FE3F5576B
                    94292EBE034597BF81BFBDFA528D60EBEB8B45F0D6AA754C8912E2E33631AF50
                    0AA237BD0FF9051628412333F8ECD310F7DE7A900A430292E2B742728A02F24E
                    9E66D71403503E41547E04727DC74E0A857FFDFB778CFE5E80F56B97D7A8734D
                    740C7CF2E9E74C268B4496490AC22296B0F8A26A04A49BC1AA4088050F0D7184
                    888076EDFE02B3E62E865F7EAD8C4548AB6F8A8ED26794C842048E9AC464B20E
                    99A97B51F119679B16BDB59ACD04C28A25F3C10D83A3FAC01C21F42FC8CF20D8
                    6A39275329F3BA628162FCD389E45DDB6299FF6E09012E5D3AB151201F407483
                    C93C868C1FA52F337E4A188BE00832AFA130157D04327DD478DA16DBB5677FD5
                    2072F051D2074633A83618B9C220DCC260A893A9E7EA222015FF1C4932F901E4
                    0F584A00C13038A1202876C31AE8D38BEDAD405A4616C4A3BF5F1F8678B8C1E2
                    05B325B58312A4F155EF43359C821660AC590478780787F21CEC24999C129AB6
                    52505B3283A624457C14F9117C867B42C4EC502653D0B3363A16CE7CF645ADF5
                    F6EAF92C44AF592E3923B560C92AB85874B9F24207D3D5C7D212CD2260C89040
                    27C1DE865C379610D997B80D3A3A3BD5FB628AEB1392F6C3AB2FBF08CB174718
                    E98EDFFF7317562109B770BABF85968588154104A93ECEC38F9AB9CBE2460769
                    FCA183DD5842A4BA6EA80DD513223ADED6A5B66337756A36F40794D87E36F7C9
                    A491FFDE1C9816369F657809447CA78ECE6695374C8CD298A89569BEB53D5B27
                    011EB21101BCC033434E538F92A2941C6D6A1C483D0C49FB5398C58859BF5A9F
                    38910272A448A98ADA1FBBE8AF562A8E5A44004B8B9F2BBA804FF5A6EBD1F200
                    D4D0CDB32374BFAC0C5A551DA13107A44C49A95642B888DABF3F589A1627787A
                    078DC1854C07215860B26B1B6D8C74691612CC0529DF59F316EBF38A64C57295
                    698ABACA48DC1A0B2EC0275DE982B471EC86B592155273817C8C88C895F0CDD5
                    EFC45BF9B8F669DFBE615B6384213E817D74027F1E35BA3D5D0707FA625437D1
                    DA7D36C28E5D49907154C564DA1C1574FC8B27721497EA2B2779CBC5D3277821
                    FEC4B042B43D8E36DC5A0723AA4399A3862DDBE2F5D748C0BC3C55FA562965CD
                    3D204116C19F2E4833935FEE3AF075AB76FED4276761DDC62D7ABF01E7FB61F4
                    FA82A1B10F48106432994399AE851AA7C000918439B3A6994C7034073E56E7C3
                    E6B878FD11193A2C55E1C87934D5111986CA1362BA020EB8E75905B81C82FC7D
                    60EAA4F1CDA61849E1518024AEF9CABE0B97359CFDDF0BB2537E33A72E8B8FC9
                    69784189A5F5D90D4A9F2F9A1706DDBBB93469E7C9D4C56CF9C050DBD35CFF5C
                    C3D9C9CCEDBCC50410DCE4F2D676A5C27EAC2140BC473320C85F860E53A0C599
                    DCDA401EDE81438721334B65B47F486B9E2F6F39313737B9D4927A1B7C5476B0
                    775004FE6E104D24C1C1A115F8F90C03D9F0A1666F6D57C7ADE2DB90AD3A0E59
                    F8F9C3BDAD3475F81389DA3E0EAC7154D610EEBE41BD792D6C4712DC8C2A47FD
                    D007FDF941032A0F4BF7E8DE4DD261E96B3F5ED71F962EBC74C5D4A6693E0836
                    E16A55EAE586B6BD718FCBCBE4234127ACA07E9B7A8066864B97CEECC8BC232E
                    11D1D727BFBFB4A4941D95BF71E317A391AE46CF4554BE6FA37B9B060FD371F9
                    1A447807F92109D3511C86D7B60DAB4EA8C07A3EC64F024675598DD5F1A62440
                    8FCAE46A851F36994E54BAE3FC9718D80BB704E0F2391D9CE034DAA3A67675FF
                    1404540799CF721B5D4F7CE993BC0E5A0B3CB0B332D8D1121DCFDD455B7ECD5E
                    CB5FB1E4D4F79F828087118F08B07603AC8D470458BB01D6C67F01B2FC3F8CB1
                    726C420000000049454E44AE426082}
                  Stretch = True
                  ExplicitWidth = 63
                end
              end
              object pnlDinheiro: TPanel
                Left = 0
                Top = 57
                Width = 150
                Height = 33
                Align = alClient
                BevelOuter = bvNone
                Caption = 'Dinheiro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 6708056
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
          end
        end
        object pnlConteinerPg: TPanel
          Left = 30
          Top = 136
          Width = 507
          Height = 360
          Margins.Bottom = 20
          Align = alClient
          BevelOuter = bvNone
          Padding.Top = 20
          TabOrder = 2
          object Panel2: TPanel
            AlignWithMargins = True
            Left = 0
            Top = 20
            Width = 507
            Height = 5
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 20
            Align = alTop
            BevelOuter = bvNone
            Color = clMedGray
            ParentBackground = False
            TabOrder = 0
            object Shape6: TShape
              Left = 0
              Top = 0
              Width = 507
              Height = 5
              Align = alClient
              Brush.Color = 1357025
              Pen.Style = psClear
              ExplicitLeft = 24
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
          end
        end
      end
    end
  end
end
