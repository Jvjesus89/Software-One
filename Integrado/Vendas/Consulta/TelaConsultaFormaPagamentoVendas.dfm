﻿object ConsultaFormaPagamento: TConsultaFormaPagamento
  Left = 0
  Top = 0
  Caption = 'Consulta Forma Pagamento'
  ClientHeight = 308
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 649
    Height = 251
    Align = alClient
    DataSource = DsQFormaPagamento
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'cdformapagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nmformapagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idformapagamento'
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 15
    Padding.Right = 50
    Padding.Bottom = 15
    TabOrder = 1
    object Busca: TEdit
      AlignWithMargins = True
      Left = 205
      Top = 16
      Width = 185
      Height = 25
      Margins.Left = 200
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 21
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 390
      Top = 18
      Width = 62
      Height = 24
      Margins.Left = 0
      Margins.Right = 100
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Busca'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object QFormaPagamento: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From formapagamento')
    Left = 416
    Top = 71
    object QFormaPagamentoidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
    end
    object QFormaPagamentonmformapagamento: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Size = 50
    end
    object QFormaPagamentodtcadastro: TDateField
      FieldName = 'dtcadastro'
    end
    object QFormaPagamentocdformapagamento: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdformapagamento'
    end
  end
  object DsQFormaPagamento: TDataSource
    DataSet = QFormaPagamento
    Left = 416
    Top = 119
  end
end
