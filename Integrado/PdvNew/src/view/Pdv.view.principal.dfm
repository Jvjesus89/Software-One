object pageprincipal: Tpageprincipal
  Left = 0
  Top = 0
  Caption = 'Pdv Software One'
  ClientHeight = 730
  ClientWidth = 1524
  Color = clWhite
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  PrintScale = poNone
  Visible = True
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
    Width = 1524
    Height = 730
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlConteiner: TPanel
      Left = 0
      Top = 0
      Width = 1524
      Height = 730
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        1524
        730)
      object pnlButton: TPanel
        Left = 0
        Top = 656
        Width = 1524
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
        Width = 1524
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Caixa Fechado'
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
        Width = 1524
        Height = 596
        Align = alClient
        TabOrder = 2
        object pnlOperacao: TPanel
          Left = 1123
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
                OnKeyPress = editProdutoKeyPress
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
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D494844520000007F0000
                005008060000003047AAF0000000017352474200AECE1CE90000274449444154
                78DAED5D077C1555F6FEA6BC960E09208492D07B5701B122022E2AA2D8EBAAEC
                DA7657505111C5BA6245D4D515152B02A228AE080282AE5D4029D25B80107AFA
                6BD3FEE79C9997040DA2EEFA5F9F70F93D92BC376FE6CEFDCEF9CE77CEBD33A3
                343822CBC1E1764836E530F8876E3B0CFE21DC0E837F08B7C3E01FC2ED7705BE
                02A7EAB7C44BF1DEB215BBC667DCE803C582437F9A2A90160DC0D023B0D4007C
                4E1A40EF194A057DD1824D2F4DD5E1D84AD5B781E41FB6DF37F84E022C07B66A
                D20F42149AB70D834FEFC126C300824608715F1431454366665BA0790A8CA2DD
                B076EC826918D0754D0CC1FD9E2DFB460D5348C6F63B033FD11C7CDF331DF17C
                02DFD16A6C6943751CE8B6834A9F0A8DBE12D554E41CD70FA9839A213A6303CA
                3F5B42041187A21103C010B670F7AD7A0690BCED7706BEE2E222746EBB181340
                8EA212FD3BF4A70AC771B74C1800BD23A057EA16428E0F564A031857F5446A8B
                FA083FF925F4556B691B93F641A0530CA9FE7EF2B7DF17F842EB105A7614D363
                669D62B64E6F3902B42B02C442E4E5281C122818500450E9FBA95DFA2236B60D
                425FC55032690EB0671B54F90EED9337240391973080FD4BBBFA9B68BF2BF055
                0F7C17789B499D600ED28B441CFDEFD884B042D40D0B0925C8F099B47D86990E
                33908592335A20E7A24E08DFBF1458FA1D2C334ADE1E874660738850D8901CDD
                0B2387C1FF1FF4DA7175D7F7249E6A6B2E1C2AC56702CB56FDE4F8990835AA8F
                9CD474ECDAB819F1CA1202D290CF1DD903070352F3462A9CA61D50796F13D48B
                3540F9035F40A16DD39B34C5DEA2EDB0F6EE80CF0C9301248EEAB8C75238A350
                3C2E7124BC384A728485A404DF21E5AE12050B6CDE40BBC24D174117A7CFF957
                A4D481DE391F29835A213F9C85F56FCC477CED7A4AE50C1276ACF235E8962661
                42513350D9AB03EA8DEF89D287D6C299B51CFEE6696872F9A928D8BA03E6FBDF
                C0BFA108A615A1CD2DA49806C23E05314D87CF52E5F862448E457D52C5B07EEB
                2D29C15714D7C36CFA69A98AC47AD556848AD92F0D2708BD4E5368C7E4C33FB4
                112204B07FF616843FFE0669FBCA08BC182AC940C85C103088C209C4D49C3C84
                AF3E0A997D1BA26CE402C457AE85BF7E3DE827774460684B44D7EF4674FA0A18
                AB3622581C83DF3411F35914325CCFD7B83FAA4DFDB1A1B16126C1A82625F81A
                D33B29345BE237791CC560D80198E4CD91808D94BAEDA09FD80129E73484B5A1
                1491E96B50B16C2D0215954821AFB554F67C5723044C620AFA69B569853A134E
                47F9DCB5489DF41922E57B60921139D97580DEF9080E6B2B5E1D7F752DCCC5EB
                601697206492A2300DA917847D0EE25C0B2043F059DCA7FFF5281DBC2521F81C
                593529DAA8889307DAD009A488E2A7342D0DA166F9C0694DA10EAC83F0BF8BA1
                4DD98C94B59B1033CB295727902967372867B7340E1A9A50B62FAD01C2433B23
                F5822E30C77E0A7CF9251996C9091E387E382959C091AD90765667041AA5A068
                E67204166C82B26D27811C23D049105A3682B64F52413319904752820F11544C
                F95C9C09127811FA3BDC20035A97B6C81ED405BE7C1F4A3ED80CEBFD75C0F6AD
                506395A4F65549EB2CC50D17B6E28A3D87F3C186F908DC7E02B41819D2B8C528
                DE45F19E506461A85894FB5BA4F0D3C8005AD176A7B583DAA31EF62CDA849459
                2BA1AD2D42B1C98C0264446CC4749BC0FFEDC77B6E4909BE02A67C9DBCCD4FE0
                9137E7D585796C1E324EEE0427EE20F2DE66389F6F82B6B790847F9804A225DF
                B31537B757BD4C4192B560086AAFAE085EDD09F119AB604C5F8FA8B21BE97103
                96CE9E4F89221998419983E30FC1A95F1FEAE076F09D48A1604B05A2EF2D87F1
                CD5628A515B46998C211198C88D1DFBE01241DF88A64EF26117E1A54351D7AD3
                0630CFCC45C651ADA1AC8EA264F662586B0BA0EF2B25EFD5083493283E462CC1
                00424286CF52A053BC760206E2A9CD10BCBC37D4AE99709EF916E145A4F489CA
                8396814AD20F3ED387F498838A802DC612A07F486F8050DF56880D6C03258376
                3A6335D44FB6A274DF06F8E97832657018FCFF7EE324CAB14C54A6D647A0451B
                84CE6D8294E37251FA4E01CC77D6C02C249AB7F6C14F3158B782A2C663BE2809
                33620899A9A3004028FA0820BFAF1295CD8E85F2B70ED08BCAE1BCB00CD8BD06
                3ECA1C0CC2CEF632099FCDE51C452A81A2EC5970FAD360F76C8DD069ED91D636
                1B85EF2D41F0A3AD94156C865FD0FFED0F6BD281CF74AA2B2198DD1BC37FC591
                F0B5CF41D93F562075FE4E84F76EA334BF8C627BD82DDF982904964FD4B8A545
                09704EFE4991535C8E933AD74BC98BCF3D01E9977543E8B525289BF50DF6C54A
                107422621C5C074894742CD591D93F6E6C3C5C1F507DA9305A92F79FD712E983
                B2119FB50BDA73AB11295C437D88FFAF87EAE063996CE07353F51404BBB58479
                430F94139EDAEB05082DD808ECDD47CC502E41C1F6FB28DF278048ADEB3651B6
                5E498C10120FD6292EC7FC0E424A67548C6C0D7F6E0EB4FBDE87B179230C7F1D
                0A276400A69B5530F286E6885894428EE356F71CD21C3A5260356D89C8A08648
                39BD0932562B883EF53579FF4AAE36FCAF87E9A02D09C1E7628A0535AD21B4EE
                47C2199687407D03E6AC8D88CD5B0FAD700FB4A80585C45A9452309E8DF39168
                F35B16225A0831C233DD642620DAEF700AB431ED10FBAC10C6A48F80D242F88D
                BA307CE5EE8420DCD940065F27BA0F786C1ED348D5A706E06BD10AA983DA41EB
                D408C68A0A18B316C1DCB00E6A3876B8C8F36B342E9B1AAA4669984392AF0EB4
                E62D113DA70942DD2857FF7A1B4A67AF80B6A604A10A52F93E52DF6A5C4AC121
                4343695011FA4E8FEAB00241949FDF1B2DCEEA816DF7CE86F9ED1A02BE0C21D2
                099C4A1ACCED8A9B2598AA4AC6A3C82BA2AB0867A7426FDD02F5CEEE0A338744
                E387A5B0E7516AB97B059428093E45C3E198FFEB7499A8DB0F1FC571C5AA80A2
                A523DAA8257C03DB21FD943C54EC2C4164DA72F8166F86122916CF576D3F79A2
                86CA6029190109B6781AFCEDC9E3271C85BAEB15943DB010B1C2F5B43F03E194
                38D2C35942DB0E65099C4A1A9AEACD01E8081F91055FAF76C8B9A82BECB08992
                37D6C2FCF25BF84AB6428F512AA8706889201966FC92107C99B4A3FF58BD9B52
                D2B59D200299F5E03BA62DB2CEE94131DFC2AEC95F23F0D53A287BF6C0B603B0
                1402C467885833F51C187D9B23F3F1935036FA2BA47DB8124EE55EC1AB226820
                259642B19DEBF604BE4ECADE617D9005BB611360604B649E467A63FD4EEC7A73
                05EC95BBE1AB2C823F5E491E9F0183F6A1A987D5FEAFD8D4EADFC8086C9BBD4C
                812FB32EAC362D103ABF07A24D2DC43F5807FFDC2D8817EC8466ED85420C6090
                CAF7D56B09FFDFBA22B36B3BECB8E11D60F50A01DB9B184E0C0DF18B823079B1
                939A83503EA9FA212DA177C946ECEB02D86FAF83B165179458197C4E4CBEC11A
                813304D5B17118FC5FAFDB3FF89D8B772CCE104843B8595304867581AF532694
                552588BEBB1AC6BA4D089446293D23783B7444E0DE5E88FFAB08CE9B9FC1DCB7
                DD1368FB832FAF8C2310EFD11C69C39A92520C203ABF0881B994CE15EDA4CF0D
                CAF9E394139870D709114B28EA61F0FFBF9AC3E91709408706DCE1993E9E5327
                8AD6725A403FB12D42FD1BC08858289BBE0AA1AF56C22496702EEC83E0599DA1
                8F5D80D2458B648AF7FBE02B3C279F7D04B4537A423FA339CC3D3B60CFA430B2
                6827F4DDFB282444DC75058EBBA2C726E05DCF4F80FFDB6F490A7EEDA553AEC6
                491D9F62B5EA04A0869A42EFD90ECEC5B9E868B642C1C3AF62673482F8E83EF0
                EF4943CA84190897EC261D60C15DD6EFADF55754F9A9776C8D16A38660E3A602
                F8DE2A44D9EAC588D9C5480DA74A5CB76B14721C2906A99229284E720C699282
                AFD6FA2E2FA2E09741F97D5C8FC2B17DB053B2291F6F8294B47A88AD5E07AB6B
                2EF4EBBB419FB40DD1B76751BE6F52CC76A46CEB02AFD18B52422E0F376F8040
                E326881652E858B505411D2849AB4088427CC0D26576B0CA1065699952FD3309
                5A92825FFB05138E3BA322B37D6C2086C6C51C0B01339D8C81E45B660632871F
                0DB44987F2D862942D5E03DB57065D967CBBDECEE0B388340CC3351E5F0AA593
                064226A979CBA1E84EDBE8B45F479399456F7DB824A052084EA2A5DDBF00FC5F
                7262BFC4BE7EEC383FBC2843DE55DC8B33782127AFEE914BB41C77355DC4E743
                4AABF6D0467643706D04E5CFCD82BA5B27F55F24DB2A8E56755CF67CCE2034FA
                A768B40DE5FF2A8B3B766C5B97E55AAEA4536BF4B6E692F0E4683F1FFCDACEED
                7B1742FCB0FD1201A4FEC867366AAD9FFE88D7198110D2069D0CFD827C589396
                A2E4A34F108C6442B78B6091073B5597711D3AED6782EFE080456B8F360FF8BD
                9FDFB51FEFC7CF6C5A2013FE8B0623D03115E58FCD43F98E8D4889A723689720
                2E2B83D49FBDCF646F07059F2990D3297EB90B619CAAF7241DA2B446FEE6396F
                9BFC47D3E4B3FF66738FE55231C763F7B84ED5FB899F3F661444FA308EE9067F
                8894FD67EB5119DB85F45800311287B67759D7A1D60E0ABE9B47AB5503CC031F
                4A4941301090CF591885C36152C796070857DD94EF19C07FCFF379B7FB1B9FBB
                6F77F97EED5A801B2FED8E84D2E033C9404D025C0D2323A6635F882FD0B4A5EC
                7BA8B59F0CBEDFEF47F7EE3DD0B973573469D214E9E96932F8D148047BF6EEC5
                F6EDDBB07AF56AAC5CB9129595959E2726DA7F1EF3B3B2B2D0B56B57346CD810
                6969E9C230B267CAD1274E7C2ED15BEAAF55EBDE78A9B766F91030828804280D
                440C29868A4A3D24CBC2922537FF6FB6DAC1AF91AB32C0E9E919B8E5965B70DC
                7127A051C3C6080482E269AE6128024079450576146DC7F2152B3069D2F358B2
                6409AABC50F919E0EF47BFAAE4DBBD7BF7C295575E85F6ED3B20273B073E3244
                4D738D83AF9D6FD5BA95185B301844BD7AF58995FCB0C908CACA4AB163C70EE9
                ABA11BF05116E0330288FAE2325DAB33DFDB41F70ADC046B2807EB13F0AB4DD6
                3B3F2C5BD7CE64356F30E11CE0FB076F0700DF9D286111A7537E3CE9851709F8
                E3E5F744E3F82B372CE0D2A6ED487ECCC6B067CF2EDC75F79D78EBADE9DE7E7E
                CE40295527C0E0F131DAB46E873163C6A2FFC903A48C1B8DC60864BF17FF81B8
                11439B36ADE9FD28F5F144DC3EFA4E346E9C4B4663E0AD196FE08E3B6E1736E0
                35FBCA418E794041EBD46021E5C0A1E53F6B4A2DE07B3A4652D69AEFED7F7791
                5AFBF9538E7830F0870C198AC7C73F011FE5C9EC899595E558B3760D366DDA48
                BF57A04183FA68DDBA35B232B391919181C58B17E1BCF3CF213022353AF6132D
                B2C6C9AB04966D391834E8543C37F105025A9735F68585DBF0DCF3FF44E1B66D
                047C5C9867D6AC596288C71E7B021E7AF031E4E636021BE5D469AFE3A69B4622
                168B42F7693FE9B8B57ABFA354BFFF6BA5F23FB8D3474D80ED1A7DAC6900F6FE
                ACFADFF6FC279E7812670E395BBCBA82A87DFCE38FE295575E46797939349D55
                BE8DD4D414F4ECD90BC3CE3E175F7EF5055E7BED15C902AABCA4EA6E1835AFA9
                057EE8414E55386143E39073CEB073F1E8A38FD1EFBA6C71E5955762D6FBEF22
                41D3CC0072ED1E7DEFF8E3FAE1E187C7932669229E3F65CAEB1831F206F7889E
                2074590A9E2651F07D91E8661589EDE10958662253FAA378F58044B6E18ADB44
                DF951A376FA88D1D7E8C31D45ABEE7ECF7D315BB35671DE11A40C210F6FBDEC1
                0DE1A0E04F9E3C05C79147B1E8DBB871236E1E75233EF9E463F7A491A075AEA2
                E912167C3E1D9148C47D4F758D03F419C7E356AD5AA17DBBF6C8CEC9114F0D87
                23D8461EBC74E9B7282A2AF24EC0162F6DD9A21D02FE10FAF7EF8F112346569D
                CCB06167A3A4A4588EED1A8A8D82824D68D6AC198E3CB217FEF6D79138E28886
                F2FEECD9B3C9701E1190388C48EC374CD10B9AAAC92E3953D9B4699DEC5F6684
                49CFB468D1D2035A2424D6AC5905CB8ECBE73E3D80E6F92DA5FF8C43717189F4
                9DB39D7AF572909FDF9CC24E1311A801CA886CD22C656565D8B4799388E18A8A
                F22A8012623A3D3D1D75EAE490A80EC87E5D3DE310CB6DA5732DF19CC1ED5F8F
                1E3D8569EBD6CD91EDC224AE376CDC80E5CB9761EFDEDD728E72AE3FA1687550
                F09F9BF83C51EF6051D77C12139E188F175E784E06CDB576D7FB7824941AEEC2
                83E77AA58AC6B94D71D5557F22E1D65B28994F56A1938EC7E2D8B7AF18DBE824
                DF7BEF5D62949710898649CDA7E0F989AFD06036446666067D27B76ADFAB56AD
                92814EC4E618C57A36C8F1E3C753D8C922419A4B06E86A82D2D2521AC0426FA2
                C69041DCBA75AB80D2A851436181F5EBD7E1DAEB867BA9A386534E198811378C
                144F74535C1B03079D223775E0E3B66DD301F7DCFD00819B218CF0E65B6FD178
                3C4FA12586175F7C09F979F9C8AA5317A9940E6BBA2EC61F894409983D58F1DD
                0A3CF0C0DFA54F7CBC534F1D24612D273B9BD833439C47D35C2FE6D37D60DCFD
                983B779E8C216739378EBC11DDBAF510E34E4B4B93F38AC7E3D8B56B2709EDA5
                78FEF989F87AD157EEF476D52CE57F00FEB5D75E8F5B46DD26319F07ABA2A2CC
                A3F657317FFE7C3969EE70350BB86BEBDD458C208BAE83C9AF4D43DBB6ED651F
                FBD70D54D752295B08472A30FD8D69B873EC18B1E88F3FFA8A4E38D7DD5F154D
                A306B5BA8DB5C5B9E79E83B7DF7E5BDEAF4E016BD2A02203C2C779F7DD99E2DD
                03060CA0C1D6B16CD9520C3CF524971D2C0553A74EC3B17D8F7705AC0C83834E
                9DDB62D7EEEDC4447EFCF18F7FC2A89B6FA7C10F89D87CEAA9A7F0E0830F9291
                6692F72D1751AA72B9B8C679266A116C80DBB66D25631A286173CCED63307CF8
                7062158B1825289A4651DC74950DEBEA6BFE84193366202FAF391E7AE8611C7D
                F4D1D0355F55887043141FC78161C6B179D306FCE5AFD761C9378BC5F315E597
                808F84D5284261D3A64D138BB62CA76ACA93F7BB7BF76EBCFDCEDB78E79D77C8
                83D6D0099512FC961BEFA98329A1344C797D2AE981DEEE20503E1D21C6E03A80
                611A08854248A79C5DD77DB2CF48244C1A630209BA6731F7837924261BC967EC
                C9890A633C1EDBEFA6486CF90CFE8C196F893131F8FCE2FD99A6492FA38A62D9
                205E7AE965F2B2345C7CF1A512BA366CD880CBFF7821D69288E53E17146C85DF
                17F0B21737ACDC30E23A118F2ABD376EDCC3A4432E107A2E2EDE2BC63A7DFA34
                0A4D2370F5D5D79033C4691C2A646C7CB49F7A39F588A2EB4AD84BF4E9A187C7
                E1C9279FC05D77DD852BFE7805F5D72F20BA8532D333549B80FC0B162E5888DB
                C9482EBCF022710ADE6EC7CE222C5BBA0C953496DDBA75456EA35C61333ECF25
                4B1663E8D9671023C67EA1E7D728B0F0A0B1C5DD7ACBADE8D8B1B3D0D3FE56CD
                71B3129F7EFA09B1C1CBF8E2CBCF294EEDA38EEA04CAF978ECD109C2201C87BE
                5BB90C13273E833973E60815366F9E4FDB9C2B27969A9225A07D47D438EA961B
                E958EDC83032D1B56B770C1E7C86D71B1B8F3EF630194FB8BA7F3448EFCC9C49
                5A6018C5E2E6183870908415F6588E8373E77EE0F6930797B6FDE69B6FD1EBE8
                3EB8E69AEB68C0FC14CACA098CFB88329F17E3D9B6B550BCB7A4A44CFAC3F4FA
                D9679F60D83943653F8F3FFE24CE3EEB1C01F29B6F9710E0579166D880CB2EBB
                4CCE69F1E225644005021E03C5C6CD358A3FFFF96AEA57A68CDBB7F4BDD34E3F
                15778CB9833EFBB31C8FB5C09C39B351B4A390F6532963F6FEFB738839B3F1C8
                238FA069D3A6C20A6BD6ACC1ED636EC3E79F7F2ED5553ED7DB47DF81F3CE3B5F
                0C80B7B9E2CACB2903FA170ED60E00FEFE16C39DE3583DF80FA753DCEE8B2E5D
                BA483125611C0960C2E10A3C4BE03EF7DC4402284262F175F4E97DAC1813C7A5
                3BC78EA6D83E534457426D874241DC7DF7BDB8E8C2CB645F4CE3D75D7F0D9DF8
                4CF18873CF399F28EF51778A95C24BFB0E6D4927ECADEEA9026FFEDD44BF7EFD
                F1E0B88788AD1A0B034D9D32153752AAE76A0FB85A81FAD2F798E33061C293C4
                2C0D659F2F4C7A16A3478F960AE2ECD973A45F9FFCFB13EA5B2AB1564F329062
                742063644398F0F85338F9E453A4F8F4E9671FE3F2CB2F11B098D7F81E8D6CF4
                ECA12929A9623CECE9F9792D8831C6A153A72E72DE85855B70E249C7E3E69B47
                E12A0FFC8282CD38FFFC7349186EF04221CF93F870F14597D2F8DC23218A3DFB
                E9A7FF81975F7951CE85F7CFE970CB96AD71FFFD0F88E8E510F0C1DCD9B8E492
                8B70B07AC44F98D553AA4066FA6DD8B0319A5028E8DAB50B8E3FFE78199C6030
                047746DB460951E1BDF7DD83850B3FC2B4A9D3A563EC51F3E7CFC34D378F2065
                BCD503CD630EFABD4BE76E98FDFEBCAAC99BFBEFBF1B139F7B4662E0304AF51E
                1CF7887CC671B063A776D8BB6FF77E2796987738E9C4FE24A81E92FE59B641C7
                273A1E3942C0E0782B266A2BC432A914AADE2576E92203FDD24B2FE0965B4709
                0D0FBF6AB8E8182E19E7E636C199670E9570D6F3C86EB47D478C7BE011CA065A
                897E78F32D32AE1B4778A18595F8911838E054E437CF2343491543B04C4B406C
                D3A60DB2B3EBC976DBB615E0E4FE27612409B804F85BB61490F70E13F025E6D3
                77396C8E1C7113B1C6355EDF2DAC5BB7462A97EE18BA0E140884441708E31106
                5C68EBD1B3AB84C8FFC8F313718A6BFB09CFE1C6E28DADBB5DBBB612EF8EE973
                9C1B0A28AE4F9D3A4506EFF9E75EA0D4A7A5688569D35EC3ADB7DD8C68ACB2FA
                1892C1A8388262FB374B967B2CE248CC7FE0817BC9A362342017B8A14340B648
                7C75A093DB516B258EC16743619D62DB265EE73C7FC40DD257D38C7B656B4DBC
                F6FD5973C8708F1263E34CE3965B6FC12B2FBF842E64D49C7EDE7CF34D38FDB4
                33C91B2F24568911955E4686DF0863EFBC473403B3DC9FFE7C253EF860B69CF7
                1D77DC492C75817CE6F3A942491C6A126B021340F1296EDDBA19FD4FE927EA3D
                41FB5BB61650083C4BC087779FB0F4F42C32C87B71DEB9177815CD44F26979D7
                FF3B5EDE9FA811B8A5F6CACA32F4EA7D946418BF00FC1A2B54C4E3543180EF4F
                9B2628BF65CB967871D264C9E341E02F58B8008F3D361E8F3C3C9E3E6B25D638
                67CE2C4AC94612FD2780F36E9440CA98F3EA850B3E758F4C2778FFDFEFC53F9F
                7D0A46DC3A00F83B0F00FEC955E0F3B653A64C11DA778DD6AB86399A88394EE7
                6EBCF1660F8C2DB8E9A69B3066CC68A2E68EA40B96E0CCA167E28A2B86D37637
                9267E978F3CD37B072D54ADAE62E68AA0FC525BB71CC31BD45F45D72C925B8F3
                8EBB284CA489AEE0C15FB7769DA495ACE41B1383B46DDB4E52511EC32D04FE29
                3F0ABE9BAA6566D62176B859D8C14D57C9A05F9F2CDE6F3B6E79DBB501D70058
                FFB02DC4E351EAEF74C928FE23F0535353C5E2376DDA2456E5D4B22CB9458B16
                04FE6B0222777CC182F914DFC712F88FE1A8A38E1623D9B1B390BC6334DE9FFD
                2FA16097F615A1B651A36E25BABD5ACE84A98A63FEBFDE7B5B4EAA76F0F7A7FD
                443BF1849328ED7A44661D79DB196FCF20DA1C4169645884900BBE7BDC06F51B
                60E9D2E5724C93A879C284C73174E850E4E537C1D75F7F852143CEA09CBE235E
                7D7532E5D5F5B174D93758BC68B118048F4F61E1661CD3B7B750FE840913A40A
                CA0C575A4A02F2A1BFE3554A853913E1589D9BDB180F3FF40885C913C4D85CF0
                4F26F047D60EBE5BCAA3B4CE8F4B2FB90C63C7DE23590F8F3D4F9ADD77FFBD5E
                9DC5F6584073A7DA297B8AC5223079D9192F67B77F41CC4FE4D2FCFAC3A98329
                B7BD121F93005A41796C41C146A293BD5257E71893979787D34F3F03670D1D26
                53AD3CE853A7BE4E8A740CA55317E1CE3BEF12EF66EFFBFC8B4F48553F4B3F3F
                95B42EB751530C1A3818D75F7F3DB2B2EA08A1AD5EBD8AACFD0651C4ECA10706
                FF874678F4517DF0286DCB553606BBA0608B78FF9A35AB89BAE3120AB8A0B46E
                DD7AA1D1C26D451297D9003847CFCB6B26F9FBCC77DFA1383B9C063F485A6521
                315A4B2918EDD9B3C76332D2092F3F8F5B4927F0183DFDF433142286487F77EE
                DC29463EF3DD996E7593C692C7E8C1710FCAC4133706BA1AFC3F79E06F26F0CF
                F69CCC169DC280F6E9D3970CE73152FBCD047C8EE7FF7CF619CC9CF90E8AB66F
                8745EFB91AACABB0D68B2FBE40FBDA029FEE3BE8A29A0380EFAA4DA6A9F1E39F
                C0805306D2E059D8B9630789AD3DA8A8AC900E72D1233B3B47D435E7B1DC392E
                BD8EBD6BACD04E76765DBCF0C22474EB7A54D5D46FE1F66D528E8DC7A292C6B0
                78E22963A63056FA4F3FF30FCA819F1405CD277FDE791712F88FC38D9709F077
                D5EAF90DEA37A2E3BD4CB96F77A14856C35C53E0748EFF66C679FBED3731EEC1
                71A20326BF36550697C31A7BA9CFA789815C35FC4A3755229698356B2EBA77EF
                5E552770553785987EC762D5AAEF04F047A97F670D3DDB633350BABA1CF3E6CD
                93C92FDE37ABF02143CEA4D4B6450DF013B49F007F13813F4CC0AF7640479C62
                F46D6348F89E23BA8BC7902BAD5C99DCB973979C078F736EE35CD4AD5B8752D1
                F1DE5CC8C1671F6B053FA19EFBF63D8ED4ED43E449F932D9E156CFAAC5200F46
                F50A1F578D4E22CBBBE79EBB65268DB76FDAB40909A9C904726B540B94EAE330
                E889EA1B7BDCA851A3C4803865713DFF220F7C57E874EAD4C98DF9B534A6C9A7
                9F9E88534F3D5506B4E684881BB22CBC36F915DC76DB2D62CC3D7B1E8959EFCD
                A93278DE9E19A26DBBD6D27FCE0CEEB9FB7E62BE3FEE0708FF6CD92A4FAA9D3C
                DBD8BB571F3CFBEC44022ADB0B8B6ED935313E3C0E0C9CAAAA1EF89B08FCFE9E
                E70FA7F77DF4DE462956B1C1F0F6AE31FA641FECF53CC1D6AD6B77AF20A67AE1
                CA1463743DDC1DC3CA70254E3AE944595CE31CE4CAA11F4DF5B84275E2892749
                09B29D9467FDF21E1FD0CD028CAA13DDBD7B27A9F48912936A0E2677AC59B37C
                DC76EB681248C712AD66C849299E328D1951549497610A65080F3FFCA0A459BA
                5C196BCAC09E35F41CC9615DA969A357AFA36502A3B6C6B19C45D23344C39DBB
                749641D435DDF35A3234B28737DE982A4512B9752BE9C0756B37C80494DB579B
                523353BECBA2898FDFB3C751983C79B2985EE20E5B9B2927EFDFBF9FF71DB70E
                3278F01FA41297955957522F1E23069BC35DE267A2E2B89942E759670DC1B5D7
                5E272195312A2ADA864B2FBB189B371754D52EF83B89126D4A4A9AE4FB03070C
                92DFD908F8FC781B2EA0F11CC71E52F79CB14C7A7112B1681807A9EEFE58AAB7
                FF3759D177ECD849E2699D3A6EB9920FB8AFB818DFADF84E2A7B6EFEE9D478C1
                BD473D9D1C174C988EFBF43E068D499005034194969460F5DA95F8E8A3855266
                4DA432F0EADB7C824D1AE7491D406E704CEF73158CF5C2014E4762783C6E9057
                7747A346B9D520988E18141758B83227A56A124A4CD7D5A7EA1AEBF4E96F8149
                8E079EBF3F78F06935168B4256077DF1C5E7DEE02A02003B4646463AFAF5EB47
                42B11D7272EA4B018BB7E770C6B373BB76ED960C60C3C6B5143256A243870E12
                F6D8F32BCA4B450BB1904B4C3B576381AA1A08AF66EAD3A70F9AE7B790F513BC
                8865C78E22993462A1CA1870E52F3129F50BC057AB06A3DAABDCC50C891B14A9
                DEA442A2633527119CC455AA4A62BAD75BD1AB247CC7AD5157AD8DF0A66613AB
                83136BF1647288AF8CB11511406E7830ABE8F30727E38514C7B1BD4BB7AB2755
                98B138EE279E94611A0C5850727E65BFB4D1118F7729DB96296AF6D88407BB1E
                697B61C5DDDE350ABB6A2C1262B9E65CBF68166F410E9F1B5716DD3173279014
                2FFC55AF44AE1EF7C479B9A1D5AEFABD6ADE5E716702DDF3F616CFFE84C7C0FC
                84F26E75676C6F71A4FCED4DAE24629C3BD889ED81DAD7962556C32855349A98
                A471637FF5322A0684075D557CA8AA09D089312DEB044E5CA3584AC7F35B8EDC
                62CD56E03D6C4195DB65595E2144958524AA878653C3B8DC7EF08D17987034CF
                180D7E5003199A7B4F6FEC67E089A5E389F9F56AA3AB59E6766ABEE9AD69F030
                42628C6C6FF6CEF1663FDDE57089C52935F54A7585151E3326E6EB9D2A8159E5
                64554EE42D48C18F2FEBFA8D5FABF7C315298C9F6E6B280B38027C7A9C9F8F03
                3100BE91B22A77C0B610D52DB9F8D24F1F987C0F1F5E13E8DD7D936D918D45B7
                DDEF99F43BDFB4893F3354D798F8D6AE9AE35E81F77B6DBF71F06BE9305CD0A2
                BA229ECF465FE1A7F778150E178F6010603E025097E5D83AC5795B6561EA971B
                32A6C68138656B617AA5C721FCC0375CE24BAB5DC3725FDC2C3192A41A9E9F37
                96C906BEDB6BCB7DE2053F5841E33B6C2A0819368206DFF8D841989840E3D8CB
                3449F139146796D050E227A63014F76E5B1A3F4B8FB60D286434408C1940E5DB
                A54396741B5C97501DEF762DBFCF9674E0CBDD3075137E53952B662D8ECFBC80
                93BCDE2423305BD485DE2B174E962BDCE2DBC2B0BE2E426843252AC9DBFD2A3F
                60C1418059833280D2540A0DA67B0B7683F6A3597C699722855354DD9EF9F7D9
                92127C9B10D22D55AE8FE76BE60344ED258118EC939B2378692F68ADEAA06E38
                26B1BB84E2BDB1AE18E17B16207D4BC4AD4C72C08F5B88073561069DAF4F60D5
                4FDE6E045854C6912A37D45211D3D424B8BBCE2F6B49073E37551EB1A251DC57
                45F4F1DDB0F6754843E8A693106AD710C5FFFC10E6E70550427E04FBB581EFA2
                9E68BAC18735C327C08910430408D023EAC2722248D91A472812402A85834AC4
                519C43981F9106BDB402A17D6428519F77D78EDF5F4B4AF0F979361C9FE3BC58
                D2B4E177C2889ED706756F1988E2273E843A69037C6A0A4CCAEBCD1403D98F0D
                C0BE139B2276CFBBA8D7AB0D327BB497FBF296057DF02F5F46C6B208D6B7BB61
                0F6981DCAB06C8428AB85982E2198BA0BDBE1ABE3D8E5CE767527A192795C977
                E2E4967403F7BD9694E0331133735B7CEB33FACBA7475171710B645DD70FC57F
                998EAC4F2AA0F90CF26C07515B45E4823C846E3F1975DFDD8A82B61426D2EB20
                F0C1664A1143C8B8380FB129CB607DBE17C15B8F8752540A63DE0638DDEA21AD
                471BEC1BFD16D216EE843FE697277259AA8590A9FEC8F5C0C9D39214FCC45271
                0D315EE4108CC3BEA835B2AEE98FBD374E45C6C27D70853EE5F67E8ADB97B645
                FC86E3D1F4B50DD8D935007D9F05E3DEB9304A1DD4FBF0726CFF78091A5466A3
                F4EC3C64CE59055F8189CAFC00D45EED91F9C1166CBDE75FC83442306C43D604
                70ED20E906AD969694E04B2D94B37912650CBE11B4E00CCA47DD5B07A064C617
                883FFD0D02959952E58B3588A3EE030310393A0F911BDE8476450F28FB4CF8EE
                5D00FF564A01BF22F0177D8D8C482662435BC2FFCABFA1ED60E56FC88A9DBA9B
                6C14CE5F8BEC589044628C74862D57FBBAB38CC9DD92127C8B57A950AE9F1AB7
                E5D97836A578A5B994B2DD782C4227E423367F25620B0BC8EB75640E6889689F
                3CD499B719058F7C88C084C1F0ED8E2370E77CF8B66BD0975E856D9F7F0E7D75
                04DA25DD507F93892D13E622440696D1BA298AE72C43CA6603A96A10A61D93B2
                325F7E268F564DBA91DBBF2521F88A001ED70910C312D5CF4BA61DBF898ACE75
                50FFDABED8D33D083D98212B697CD1281C8AD991FB6643CFA807755C7FA46FAB
                807DFF878884539033E712147DBC18958F7F88A67F3D1EB1C1DDBC47B15422B3
                CC8FBDD7BF89EC95619492D7DB7EBE8307DF894B97D0A324C99D360F3892C906
                BE5C0A66EB88FA0D8ABD26E27CBB53906AB74D18E4E991B438825D1AC0E08B1C
                78166FE316D8CB8BE12FB7A1A566C2EE914121C180B1BA18B17808E9C7D7456C
                4705CCB565C428A5D0F9018AADF2118F9722B26E3B5297140315A42B7C7C7B37
                53A64AF8712DEE64D261F0FFFF3B2DCFD0759F916D7B8F42E6E7DBCA3C213F0E
                9D3C3226CFC721A064424726E7E556ED263F7C41AE82A57061F13AB928FDED83
                65F2C4B3217A826708E42B96254FE1823FE04EE97A515EE32B9094C331FF704B
                E27618FC43B81D06FF106E87C13F84DB61F00FE17618FC43B81D06FF106EFF07
                C86E7ECE484A9DFD0000000049454E44AE426082}
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
          Width = 1122
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
            Width = 1112
            Height = 543
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -15
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
                Width = 560
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
          object pnlIdentificaCliente: TPanel
            Left = 5
            Top = 548
            Width = 1112
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            Color = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
        end
      end
      object SplitViewFuncoes: TSplitView
        Left = 1524
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
          object PnlInformaCliente: TPanel
            Left = 0
            Top = 246
            Width = 0
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Importar Cliente(F1)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            object Shape18: TShape
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
        Left = 1684
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
