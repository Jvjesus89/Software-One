object TelaCadastroProdutoVenda: TTelaCadastroProdutoVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro Produto'
  ClientHeight = 144
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 8
    Top = 10
    Width = 38
    Height = 13
    Caption = 'Produto'
    FocusControl = nmproduto
  end
  object Label5: TLabel
    Left = 8
    Top = 56
    Width = 64
    Height = 13
    Caption = 'Valor Unitario'
    FocusControl = vlunitario
  end
  object Label6: TLabel
    Left = 148
    Top = 53
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = quantidade
  end
  object Label1: TLabel
    Left = 296
    Top = 56
    Width = 47
    Height = 13
    Caption = 'Valor item'
    FocusControl = vlitem
  end
  object nmproduto: TDBEdit
    Left = 8
    Top = 26
    Width = 457
    Height = 21
    DataField = 'nmproduto'
    DataSource = DsVendasItem
    TabOrder = 0
    OnExit = nmprodutoExit
    OnKeyDown = nmprodutoKeyDown
  end
  object vlunitario: TDBEdit
    Left = 8
    Top = 69
    Width = 134
    Height = 21
    DataField = 'vlunitario'
    DataSource = DsVendasItem
    TabOrder = 6
    OnExit = vlunitarioExit
  end
  object quantidade: TDBEdit
    Left = 148
    Top = 69
    Width = 134
    Height = 21
    DataField = 'qtvendido'
    DataSource = DsVendasItem
    TabOrder = 1
    OnExit = quantidadeExit
  end
  object Button1: TButton
    Left = 452
    Top = 26
    Width = 29
    Height = 21
    Caption = '...'
    TabOrder = 4
    OnClick = Button1Click
    OnExit = Button1Exit
  end
  object vlitem: TDBEdit
    Left = 296
    Top = 69
    Width = 153
    Height = 21
    DataField = 'vlitem'
    DataSource = DsVendasItem
    TabOrder = 5
  end
  object Button2: TButton
    Left = 240
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 159
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 497
    Top = 7
    Width = 96
    Height = 138
    DataSource = DsQQtdeDisponivel
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idestoque'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idproduto'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'qtdeestoque'
        Title.Caption = 'Qtde Disponivel'
        Visible = True
      end>
  end
  object MVendasItem: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idvenda'
        DataType = ftInteger
      end
      item
        Name = 'idproduto'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'vlunitario'
        Attributes = [faRequired]
        DataType = ftSingle
      end
      item
        Name = 'qtvendido'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'vlitem'
        Attributes = [faRequired]
        DataType = ftSingle
      end
      item
        Name = 'idproduto_1'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'nmproduto'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'cdproduto'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'idfamiliaproduto'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'vlproduto'
        Attributes = [faReadonly]
        DataType = ftSingle
      end
      item
        Name = 'nmfamiliaproduto'
        Attributes = [faReadonly]
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'stproduto'
        Attributes = [faReadonly]
        DataType = ftBoolean
      end
      item
        Name = 'dtcadastro'
        Attributes = [faReadonly]
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'PVendasItem'
    StoreDefs = True
    Left = 272
    object MVendasItemidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MVendasItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      Required = True
    end
    object MVendasItemvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
      Required = True
    end
    object MVendasItemqtvendido: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
      Required = True
    end
    object MVendasItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
      Required = True
    end
    object MVendasItemnmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      ProviderFlags = []
      Size = 100
    end
    object MVendasItemvlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object PVendasItem: TDataSetProvider
    DataSet = VendasItem
    Left = 200
  end
  object DsVendasItem: TDataSource
    DataSet = MVendasItem
    Left = 344
  end
  object VendasItem: TFDQuery
    Active = True
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendasitem vi'
      'join produto p on p.idproduto = vi.idproduto'
      'where 1=2')
    Left = 120
    object VendasItemidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object VendasItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      Required = True
    end
    object VendasItemvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
      Required = True
    end
    object VendasItemqtvendido: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
      Required = True
    end
    object VendasItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
      Required = True
    end
    object VendasItemidproduto_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idproduto_1'
      Origin = 'idproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object VendasItemnmproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object VendasItemcdproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object VendasItemidfamiliaproduto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object VendasItemvlproduto: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object VendasItemnmfamiliaproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object VendasItemstproduto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'stproduto'
      Origin = 'stproduto'
      ProviderFlags = []
      ReadOnly = True
    end
    object VendasItemdtcadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QQtdeDisponivel: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'select * From estoque')
    Left = 528
    Top = 40
    object QQtdeDisponivelidestoque: TFDAutoIncField
      FieldName = 'idestoque'
      Origin = 'idestoque'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QQtdeDisponivelidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      Required = True
    end
    object QQtdeDisponivelqtdeestoque: TIntegerField
      FieldName = 'qtdeestoque'
      Origin = 'qtdeestoque'
      Required = True
    end
  end
  object DsQQtdeDisponivel: TDataSource
    DataSet = QQtdeDisponivel
    Left = 528
    Top = 88
  end
end
