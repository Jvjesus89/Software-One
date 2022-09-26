object ConsultaFormaPagamento: TConsultaFormaPagamento
  Left = 0
  Top = 0
  Caption = 'Consulta Forma Pagamento'
  ClientHeight = 231
  ClientWidth = 505
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
    Left = 168
    Top = 8
    Width = 174
    Height = 19
    Caption = 'Busca Forma Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 64
    Width = 505
    Height = 167
    Align = alBottom
    DataSource = DbConfig.DsQformaPagamento
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cdformapagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmformapagamento'
        Width = 464
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idformapagamento'
        Visible = False
      end>
  end
  object Busca: TEdit
    Left = 168
    Top = 33
    Width = 174
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 348
    Top = 33
    Width = 61
    Height = 21
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
