object TelaConsultaClienteAreceber1: TTelaConsultaClienteAreceber1
  Left = 0
  Top = 0
  Caption = 'Consultar Cliente'
  ClientHeight = 231
  ClientWidth = 376
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 376
    Height = 49
    Align = alTop
    TabOrder = 0
    object BotaoBusca: TButton
      Left = 231
      Top = 15
      Width = 37
      Height = 21
      Caption = 'Busca'
      TabOrder = 0
      OnClick = BotaoBuscaClick
    end
    object Busca: TEdit
      Left = 104
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 376
    Height = 182
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 374
      Height = 180
      Align = alClient
      DataSource = DbFinAreceber1.DsQcliente
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
          FieldName = 'cdcliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmcliente'
          Width = 526
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpf_cnpj'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idcliente'
          Visible = False
        end>
    end
  end
end
