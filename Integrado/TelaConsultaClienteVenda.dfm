object TelaConsultaCliente: TTelaConsultaCliente
  Left = 0
  Top = 0
  Caption = 'Consulta Cliente'
  ClientHeight = 330
  ClientWidth = 663
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -41
    ExplicitWidth = 681
    object Busca: TDBEdit
      Left = 216
      Top = 15
      Width = 145
      Height = 21
      DataField = 'nmcliente'
      DataSource = DbClient.DsQcliente
      TabOrder = 0
    end
    object BotaoBusca: TButton
      Left = 367
      Top = 15
      Width = 37
      Height = 21
      Caption = 'Busca'
      TabOrder = 1
      OnClick = BotaoBuscaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 663
    Height = 281
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = -41
    ExplicitWidth = 681
    ExplicitHeight = 257
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 661
      Height = 279
      Align = alClient
      DataSource = DbVendas1.DsQcliente
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
