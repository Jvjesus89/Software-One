object ExportarXML: TExportarXML
  Left = 0
  Top = 0
  Caption = 'Exportar XML'
  ClientHeight = 68
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
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
    Left = 173
    Top = 8
    Width = 417
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 549
    Top = 8
    Width = 41
    Height = 21
    Caption = 'Busca'
    TabOrder = 1
    OnClick = Button1Click
    OnExit = Button1Exit
  end
  object Button2: TButton
    Left = 512
    Top = 35
    Width = 78
    Height = 25
    Caption = 'Salvar arquivo'
    TabOrder = 2
    OnClick = Button2Click
  end
  object MemoOriginal: TMemo
    Left = 0
    Top = 80
    Width = 185
    Height = 89
    TabOrder = 3
    Visible = False
  end
  object MemoResultado: TMemo
    Left = 184
    Top = 80
    Width = 185
    Height = 89
    TabOrder = 4
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 375
    Top = 80
    Width = 247
    Height = 89
    DataSource = DbVendas1.DsItensGeradoXML
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'nmproduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtvendido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlunitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlitem'
        Visible = True
      end>
  end
  object OpenDialog1: TOpenDialog
    Left = 8
    Top = 24
  end
end
