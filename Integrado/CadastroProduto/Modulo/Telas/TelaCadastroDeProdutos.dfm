﻿object TelaCadastroProduto: TTelaCadastroProduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 
    '                                                          Cadast' +
    'ro produto'
  ClientHeight = 212
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Cod: TLabel
    Left = 9
    Top = 9
    Width = 47
    Height = 19
    Caption = 'C'#243'digo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Valor: TLabel
    Left = 369
    Top = 61
    Width = 94
    Height = 19
    Caption = 'Valor Unitario'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Nome: TLabel
    Left = 9
    Top = 61
    Width = 40
    Height = 19
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Familia: TLabel
    Left = 9
    Top = 122
    Width = 105
    Height = 19
    Caption = 'Familia Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 405
    Top = 8
    Width = 89
    Height = 57
  end
  object lblCusto: TLabel
    Left = 369
    Top = 122
    Width = 97
    Height = 19
    Caption = 'Custo Unit'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnComposicao: TSpeedButton
    Left = 304
    Top = 6
    Width = 71
    Height = 22
    Caption = 'Composi'#231#227'o'
    OnClick = btnComposicaoClick
  end
  object btnLote: TSpeedButton
    Left = 227
    Top = 6
    Width = 71
    Height = 22
    Caption = 'Lote'
    OnClick = btnLoteClick
  end
  object CdProduto: TDBEdit
    Left = 8
    Top = 34
    Width = 134
    Height = 21
    AutoSelect = False
    AutoSize = False
    Color = clBtnFace
    Ctl3D = True
    DataField = 'cdproduto'
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 5
  end
  object NmProduto: TDBEdit
    Left = 8
    Top = 86
    Width = 318
    Height = 21
    AutoSelect = False
    AutoSize = False
    DataField = 'nmproduto'
    DataSource = DsProduto
    TabOrder = 0
    OnExit = NmProdutoExit
  end
  object VlUnitario: TDBEdit
    Left = 352
    Top = 86
    Width = 130
    Height = 21
    AutoSelect = False
    AutoSize = False
    DataField = 'vlproduto'
    DataSource = DsProduto
    TabOrder = 1
  end
  object Button1: TButton
    Left = 267
    Top = 175
    Width = 71
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Bativo: TDBCheckBox
    Left = 160
    Top = 34
    Width = 89
    Height = 21
    Caption = 'Ativo'
    DataField = 'stproduto'
    DataSource = DsProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 168
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object edtCusto: TDBEdit
    Left = 352
    Top = 147
    Width = 130
    Height = 21
    AutoSelect = False
    AutoSize = False
    DataField = 'vlcusto'
    DataSource = DsProduto
    TabOrder = 6
  end
  object BLote: TDBCheckBox
    Left = 274
    Top = 34
    Width = 89
    Height = 21
    Caption = 'Lote'
    DataField = 'TrabLote'
    DataSource = DsProduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object CbFamiliaProduto: TDBLookupComboBox
    Left = 8
    Top = 147
    Width = 318
    Height = 21
    DataField = 'nmfamiliaproduto'
    KeyField = 'idprodutosfamilia'
    ListField = 'nmfamiliaproduto'
    ListSource = DsFamiliaProduto
    TabOrder = 8
  end
  object DsProduto: TDataSource
    DataSet = Mproduto
    Left = 456
    Top = 16
  end
  object Pproduto: TDataSetProvider
    DataSet = Produto
    Left = 320
    Top = 16
  end
  object Mproduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pproduto'
    Left = 392
    Top = 16
    object Mprodutonmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object Mprodutocdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object Mprodutoidfamiliaproduto: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object Mprodutovlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object Mprodutostproduto: TBooleanField
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object Mprodutodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Mprodutoidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object Mprodutovlcusto: TSingleField
      FieldName = 'vlcusto'
    end
    object Mprodutodtultalter: TDateField
      FieldName = 'dtultalter'
    end
    object Mprodutoidusuarioultalter: TIntegerField
      FieldName = 'idusuarioultalter'
    end
    object Mprodutotrablote: TBooleanField
      FieldName = 'trablote'
    end
  end
  object Produto: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produto p'
      
        'left join produtosfamilia f on f.idprodutosfamilia = p.idfamilia' +
        'produto')
    Left = 254
    Top = 16
    object IntegerField7: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object WideStringField10: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object WideStringField11: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object IntegerField8: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object BooleanField4: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object DateField4: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object SingleField1: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object Produtoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object Produtovlcusto: TSingleField
      FieldName = 'vlcusto'
      Origin = 'vlcusto'
    end
    object Produtodtultalter: TDateField
      FieldName = 'dtultalter'
      Origin = 'dtultalter'
    end
    object Produtoidusuarioultalter: TIntegerField
      FieldName = 'idusuarioultalter'
      Origin = 'idusuarioultalter'
    end
    object Produtotrablote: TBooleanField
      FieldName = 'trablote'
      Origin = '"TrabLote"'
    end
  end
  object DsConsultaCodigo: TDataSource
    DataSet = QConsultaCodigo
    Left = 120
    Top = 6
  end
  object QConsultaCodigo: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'select cdproduto from produto order by idproduto desc limit 1')
    Left = 80
    object QConsultaCodigocdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Required = True
      Size = 10
    end
  end
  object ConsultaUltimoIdProduto: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select idproduto From produto order by idproduto desc limit 1')
    Left = 382
    Top = 176
    object ConsultaUltimoIdProdutoidproduto: TFDAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object DsFamiliaProduto: TDataSource
    DataSet = FamiliaProduto
    Left = 248
    Top = 112
  end
  object FamiliaProduto: TFDQuery
    Active = True
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produtosfamilia')
    Left = 184
    Top = 112
    object FamiliaProdutoidprodutosfamilia: TFDAutoIncField
      FieldName = 'idprodutosfamilia'
      Origin = 'idprodutosfamilia'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FamiliaProdutonmfamiliaproduto: TWideStringField
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object FamiliaProdutocdfamiliaproduto: TIntegerField
      FieldName = 'cdfamiliaproduto'
      Origin = 'cdfamiliaproduto'
    end
  end
end
