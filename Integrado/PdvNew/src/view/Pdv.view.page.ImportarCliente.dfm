object PageImportarCliente: TPageImportarCliente
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 650
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlConteiner: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 650
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1000
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clNavy
      ParentBackground = False
      TabOrder = 0
      object Panel1: TPanel
        Left = 950
        Top = 0
        Width = 50
        Height = 57
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Image1: TImage
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 40
          Height = 47
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Center = True
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
            003008060000005702F987000000097048597300000B1300000B1301009A9C18
            000002224944415478DAED99BB4A0341148667B1112D142C04058B28B1132D2C
            BD62610251898DBE80A6133B1FC0DAC24EDF420B15B588365A88DA889844ECB4
            126F584958FFC3CECAB8D9EC2D9BDD5998033F934C66CE9C2F3B3B7B96A3B184
            9B167700A103E8BA9E4293875A2258BF0ADD43479AA655C3027840938E2078D1
            2EA10C20DEC300D0230EDEB45D00ACC601F0069D404F0182EE800AFCF333007A
            C306E88766A10C340DB539F8A2AD7700ED219033AF0188EB619EEF43C5114074
            88EE5634E31C8634E8E0F714CA63FA97340036E3E8B4A2AB9385A658EDD5D9C6
            F43569012C73CCABB308ADF0EE174CEF49044023F315800250000A207680329A
            01A88CE169DE4719C03C339EEA8FB20350F03968DF0C56807A8566D07F2B2D40
            1D1F260073839015609819F954971B44A4007CBB2C306F6F7B04B1247CB78588
            1AA0C28C143DA8FDDDE87101887B3B8895E0F25F1A1FC7165A86DA3DB81A62C6
            7B8769F16F211F3EE4BC897DF848CE31CAB7D51C331E64150B80FC0F32E164B2
            A6122694F4A944E2933905A00014800250000AA03900B04EF8FC080A00DB7019
            DE0DADF3CF4D297050E1ED06A28245113AC7229F3E00FCD80E7C17FC4EB203A0
            E4295567BC0954E450354001012EA06C58453E4A63A9D836098D30E717701188
            4475B23BFEDB0FB4E5B2FE3774CDC22CB35A60A80837C661263C00897685A046
            8304151A400340F46FE600702815800B109598FAA012B489E08F9B1D7CC30032
            980288DB7E0123660D4F72A1A09F0000000049454E44AE426082}
          ExplicitLeft = 16
          ExplicitTop = 24
          ExplicitWidth = 105
          ExplicitHeight = 105
        end
        object btnSair: TSpeedButton
          Left = 0
          Top = 0
          Width = 50
          Height = 57
          Align = alClient
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btnSairClick
          ExplicitLeft = 24
          ExplicitTop = 24
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pnlTitulo: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 57
        Align = alLeft
        Alignment = taRightJustify
        BevelOuter = bvNone
        Caption = 'Lista de Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object ImageCliente: TImage
          AlignWithMargins = True
          Left = 5
          Top = 5
          Width = 40
          Height = 47
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
            00400806000000AA6971DE000000097048597300000B1300000B1301009A9C18
            0000056B4944415478DAED9B7F88545514C7EF58A6B99945B559686968456B4A
            254959E9A26596560665AD81B424992D4925526DA151493F50B0DAFC01B915A5
            A624DA2FCCC2967ED82FA53F96366A535822CBA4A41FA6A5B47D4EF74CF39A66
            B699D97BF7DDA773E0CBD97BE7BD73BEF73B6FDEBBF7DCB72973905B2A6E0271
            5B5980B809C46D6501E248DADEDE3E0057050646D00F1C050E017D40376D9F99
            4AA53E4BB4000CB807EE32703518034E28E2F4FB11606E220560E0BD70B7833A
            D0B7C4302D085095380118FC68DCB3E02407E186F8FA19781180C1D7E2968043
            1D85F4F633702E0083BF02B7C6D89B992BF3F633702A0083AFC4C9A57AAC07AE
            5F1B7B253C1DB200F3717778187CD42620C26BC109C0E07BE27680233D0BD062
            EC4DB13D3401E419FF92E7C1A7ED5C04F82434011618FBCCEF0ABB0F011E0C4D
            808DB8EA485723B80B0C559C024E56F43676BA7B849C0A76835DE047B00D6C05
            9BC147E036303B2BDD5A0498149A005B759062FB417F487EE720AEAC09368111
            91EE66620F0D4D809F8DFD66C59A2058DD997859B12FC1BD11E9FA86F8FD4213
            E00F5C776DD643709EC3D8C2B30DF4D7AE3DC4EF159A00D1C7D255105CE72AB6
            C65F8A9BF60F712C6401AAE0D7E2588019B886A4085009BF9D8E05B800F76E52
            04E80EBFFD8E059065755B220470452E2B7E05EED78356005F399C0481D7F9B8
            F7BB52006C2469368522C08BB86BB5B91262D77B126005EE3A6DAE22CFE45004
            D86E32955E6FF53BF20CC1356BF35BF29C188A007B713DB45901B1DF3C0920B3
            BFDDDAFC9D3C3D4311A01537489B2320F6B127016441F4A1365BC9736A28023C
            839BAACDD7C144C8FDE978F0B22A9452D8A5DAD5488EDA5004381B27159A6EDA
            B50472D31D0BB01877B33645DCE1E4F834080194E0232653B81082A743B0D551
            6CB9D43F3719811F26F6DD2E62BB1440C8BD653255A145909CE12876F4DB7F1B
            8C75F513735D161F8B7B539BFBC039106DEE44488939CCD8F2587A97690C3137
            BAE2EC63CEBE0177B136A5A6772184F79518EB30636798C3B56B03B1C6B9E4EB
            4380D3705B4085763540BAAEC4588B70E99BA92C84E48AFA32680194F814DCF3
            91AE99107FBCC81852625F10E99A428CE5AEB9FADC1E8F7E7BB28899CE009616
            78AE9CF754849FB31B6A570A703C2E5A1617116433634EBE6D2D2D7E3E00EAB3
            3EEACB393B9226804C8D73CD035E003731A0BD59C7CBBC7E19C8B5921CCCF15F
            254D80E8BC3DDBA4603A95416DD6636593E339302CCFF1DED6173E05186FECBA
            404C9EDB32559E5D604EB957C8D36494B6C723C0FAA4095063ECE52EF6779184
            BE2B8DDD333C3ACF69B2BB348D635771EC4AFE4E173C6AE85B9134016EC53DA9
            CDC50CE016ED1F60ECCD50B6D30FD7CFF718BBB57E2FC7B5E971D1A7481DFD0D
            05A68E5F007D5546DE16B941BBE63180FA22633C84BB479B32A7B89318DF072B
            0084656778229800469B7FBF21360BF2F38B8C370BF758A44B163FB2FC7D15BC
            42BC2DB10AA0ABBFB374D0D780333A38BC16C28D45C6976247472F446D4B8B61
            EC6E74491B3145090029F9CD8E8C0CBAD0575E2741706D91B9E4058835051EFE
            83B14F1C11633DB97E712600448EC15D6EECA52DE5A8DEFF774E0E1B05A9778A
            14401E814D25E49209D67BC65E1DABC9BBBD68017445278F2C79E9F13C93A9C4
            946A73C0A3D9B3BF0E062F579ACC19E67632AFDC373E002F8375E4FFA25001E4
            6E7B5C279367DB4F4202C895203730C9B14B3F9379813C3964DD7F91B1C2F771
            9C7F270254162A4093C9CCC20E14CBF9DA4E3E01161AFB76D681644F20C07FC6
            944F0051CA59DD2D10AB4680A64205907E997DD5C4CDDA91AD069373D521F23E
            06B5203913DC08061B77EFFE7795C9C448EA1152635898AF305BFEAFB1B809C4
            6D6501E22610B79505889B40DCF617ACFFEE5090A20E4B0000000049454E44AE
            426082}
          Stretch = True
        end
      end
    end
    object pnlInfor: TPanel
      Left = 0
      Top = 57
      Width = 1000
      Height = 593
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6708056
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object Panel4: TPanel
          Left = 5
          Top = 5
          Width = 990
          Height = 40
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 5
          Padding.Right = 5
          TabOrder = 0
          object Shape1: TShape
            AlignWithMargins = True
            Left = 5
            Top = 0
            Width = 862
            Height = 40
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 0
            ExplicitTop = -1
            ExplicitWidth = 867
          end
          object Button1: TButton
            Left = 872
            Top = 0
            Width = 113
            Height = 40
            Align = alRight
            Caption = 'Pesquisar(F2)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6708056
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object editPesquisar: TSearchBox
            AlignWithMargins = True
            Left = 10
            Top = 12
            Width = 857
            Height = 18
            Margins.Left = 5
            Margins.Top = 12
            Margins.Right = 5
            Margins.Bottom = 10
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6708056
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TextHint = 'Pesquisar Cliente'
          end
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 50
        Width = 1000
        Height = 543
        Align = alClient
        BorderStyle = bsNone
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = 6708056
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end