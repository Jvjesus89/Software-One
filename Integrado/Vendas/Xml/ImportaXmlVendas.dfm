object XML: TXML
  Left = 0
  Top = 0
  Caption = 'XML'
  ClientHeight = 465
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGrid
    Left = 0
    Top = 218
    Width = 653
    Height = 151
    Align = alTop
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel: TPanel
    Left = 0
    Top = 177
    Width = 653
    Height = 41
    Align = alTop
    TabOrder = 1
    object Vazio: TBitBtn
      Left = 1
      Top = 1
      Width = 240
      Height = 39
      Align = alLeft
      TabOrder = 0
      Visible = False
    end
    object Excluir: TBitBtn
      Left = 316
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 1
    end
    object Gravar: TBitBtn
      Left = 241
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Gravar'
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 391
      Top = 1
      Width = 75
      Height = 39
      Align = alLeft
      Caption = 'Cancelar'
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 653
    Height = 57
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 15
      Top = 18
      Width = 159
      Height = 19
      Caption = 'Informe o diretorio do xml'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object EditXml: TEdit
      Left = 180
      Top = 19
      Width = 417
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 596
      Top = 13
      Width = 41
      Height = 27
      Caption = 'Busca'
      TabOrder = 1
      OnClick = Button1Click
      OnExit = Button1Exit
    end
  end
  object MemoXml: TMemo
    Left = 0
    Top = 382
    Width = 185
    Height = 89
    Lines.Strings = (
      'MemoXml')
    TabOrder = 3
  end
  object MemoJson: TMemo
    Left = 216
    Top = 382
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 456
    Top = 382
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 653
    Height = 120
    Align = alTop
    DataSource = DbImportacaoXml.DsQconsultaTempVendas
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nrdocumento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmcliente'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlvenda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtvenda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmformapagamento'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmformapagamento'
        Width = 64
        Visible = True
      end>
  end
  object OpenDialog1: TOpenDialog
    Left = 40
  end
end
