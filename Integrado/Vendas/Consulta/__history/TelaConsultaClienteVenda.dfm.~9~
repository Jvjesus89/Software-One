object TelaConsultaCliente: TTelaConsultaCliente
  Left = 0
  Top = 0
  Caption = 'Consulta Cliente'
  ClientHeight = 308
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 649
    Height = 251
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    ExplicitTop = 49
    ExplicitWidth = 376
    ExplicitHeight = 182
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 647
      Height = 249
      Align = alClient
      DataSource = DsQcliente
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
          Width = 64
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 57
    Align = alTop
    BevelOuter = bvLowered
    Padding.Left = 5
    Padding.Top = 15
    Padding.Right = 50
    Padding.Bottom = 15
    TabOrder = 1
    ExplicitTop = 8
    object Busca: TEdit
      AlignWithMargins = True
      Left = 206
      Top = 17
      Width = 185
      Height = 23
      Margins.Left = 200
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 21
    end
    object btnBusca: TButton
      AlignWithMargins = True
      Left = 391
      Top = 19
      Width = 62
      Height = 22
      Margins.Left = 0
      Margins.Right = 100
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Busca'
      TabOrder = 1
      OnClick = btnBuscaClick
    end
  end
  object Qcliente: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From clientes')
    Left = 524
    Top = 115
    object Qclienteidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Qclientenmcliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object Qclientecpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object Qclientenmendereco: TWideStringField
      DisplayLabel = 'Endereco'
      FieldName = 'nmendereco'
      Origin = 'nmendereco'
      Size = 50
    end
    object Qclientenrendereço: TWideStringField
      DisplayLabel = 'Numero'
      FieldName = 'nrendere'#231'o'
      Origin = '"nrendere'#231'o"'
      Size = 8
    end
    object Qclientecomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object Qclientedtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Qclientenmbairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'nmbairro'
      Origin = 'nmbairro'
      Size = 50
    end
    object Qclientenmcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'nmcidade'
      Origin = 'nmcidade'
      Size = 50
    end
    object Qclientenmestado: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'nmestado'
      Origin = 'nmestado'
      Size = 2
    end
    object Qclientecdcliente: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdcliente'
      Origin = 'cdcliente'
      Size = 6
    end
  end
  object DsQcliente: TDataSource
    DataSet = Qcliente
    Left = 524
    Top = 171
  end
end
