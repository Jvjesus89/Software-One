﻿object DbVendas1: TDbVendas1
  Left = 0
  Top = 0
  Caption = 'DbVendas'
  ClientHeight = 692
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DbVendas: TFDConnection
    Params.Strings = (
      'Database=Software One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 96
    Top = 8
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 16
    Top = 8
  end
  object TabelaVenda: TFDTable
    Active = True
    IndexFieldNames = 'idvenda'
    Connection = DbVendas
    SchemaName = 'public'
    TableName = 'vendas'
    Left = 24
    Top = 144
    object TabelaVendaidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TabelaVendaidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object TabelaVendaidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object TabelaVendadtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object TabelaVendanmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object TabelaVendanmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object TabelaVendanrdocumento: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
    object TabelaVendadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object TabelaVendavlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
  end
  object DsVendas: TDataSource
    DataSet = Mvendas
    Left = 24
    Top = 200
  end
  object Mvendas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Pvendas'
    AfterPost = MvendasAfterPost
    AfterCancel = MvendasAfterCancel
    AfterDelete = MvendasAfterDelete
    Left = 112
    Top = 200
    object Mvendasidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Mvendasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object Mvendasidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object Mvendasdtcadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Mvendasdtvenda: TDateField
      DisplayLabel = 'Data Venda'
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
      EditMask = '!99/99/0000;1;_'
    end
    object Mvendasnmformapagamento: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object Mvendasnmcliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object Mvendasnrdocumento: TIntegerField
      DisplayLabel = 'Nr Documento'
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
    object Mvendasvlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
  end
  object Pvendas: TDataSetProvider
    DataSet = TabelaVenda
    Left = 112
    Top = 144
  end
  object TabelaVendaItem: TFDTable
    Active = True
    IndexFieldNames = 'idvenda'
    Connection = DbVendas
    SchemaName = 'public'
    TableName = 'vendasitem'
    Left = 16
    Top = 280
    object TabelaVendaItemidvendasitem: TIntegerField
      FieldName = 'idvendasitem'
      Origin = 'idvendasitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TabelaVendaItemidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object TabelaVendaItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object TabelaVendaItemnmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 50
    end
    object TabelaVendaItemqtvendido: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
    end
    object TabelaVendaItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
    object TabelaVendaItemvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
  end
  object DsVendasItem: TDataSource
    DataSet = MvendasItem
    Left = 16
    Top = 336
  end
  object MvendasItem: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Pvendasitem'
    Left = 104
    Top = 336
    object MvendasItemidvendasitem: TIntegerField
      FieldName = 'idvendasitem'
      Origin = 'idvendasitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MvendasItemidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object MvendasItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object MvendasItemnmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 50
    end
    object MvendasItemqtvendido: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
    end
    object MvendasItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
    object MvendasItemvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
  end
  object Pvendasitem: TDataSetProvider
    DataSet = TabelaVendaItem
    Left = 104
    Top = 280
  end
  object Qvendas: TFDQuery
    Active = True
    AfterPost = QvendasAfterPost
    AfterCancel = QvendasAfterCancel
    AfterDelete = QvendasAfterDelete
    Connection = DbVendas
    SQL.Strings = (
      'Select * From vendas')
    Left = 176
    Top = 144
    object Qvendasidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Qvendasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object Qvendasidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object Qvendasdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object Qvendasdtvenda: TDateField
      DisplayLabel = 'Data Venda'
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object Qvendasnmformapagamento: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object Qvendasnmcliente: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object Qvendasnrdocumento: TIntegerField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
    object Qvendasvlvenda: TSingleField
      FieldName = 'vlvenda'
    end
  end
  object QvendasItem: TFDQuery
    Active = True
    Connection = DbVendas
    SQL.Strings = (
      'Select * From vendasitem')
    Left = 176
    Top = 280
    object QvendasItemidvendasitem: TIntegerField
      FieldName = 'idvendasitem'
      Origin = 'idvendasitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QvendasItemidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object QvendasItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object QvendasItemnmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 50
    end
    object QvendasItemqtvendido: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
    end
    object QvendasItemvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object QvendasItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
  end
  object DsQVendasItem: TDataSource
    DataSet = QvendasItem
    Left = 176
    Top = 344
  end
  object DsQVendas: TDataSource
    DataSet = Qvendas
    Left = 176
    Top = 200
  end
  object Qcliente: TFDQuery
    Active = True
    Connection = DbVendas
    SQL.Strings = (
      'Select * From clientes')
    Left = 552
    Top = 152
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
    Left = 552
    Top = 200
  end
  object QProduto: TFDQuery
    Active = True
    Connection = DbVendas
    SQL.Strings = (
      'Select * From produto')
    Left = 504
    Top = 152
    object QProdutoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QProdutonmproduto: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 100
    end
    object QProdutocdproduto: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Size = 10
    end
    object QProdutoidfamiliaproduto: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object QProdutonmfamiliaproduto: TWideStringField
      DisplayLabel = 'Familia Produto'
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      Size = 50
    end
    object QProdutostproduto: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object QProdutodtcadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QProdutovlproduto: TSingleField
      FieldName = 'vlproduto'
    end
  end
  object DsQproduto: TDataSource
    DataSet = QProduto
    Left = 504
    Top = 200
  end
  object Qitemvenda: TFDQuery
    AfterPost = QitemvendaAfterPost
    AfterCancel = QitemvendaAfterCancel
    AfterDelete = QitemvendaAfterDelete
    Connection = DbVendas
    SQL.Strings = (
      'Select SUM(vlitem) from temp.vendaitem')
    Left = 488
    Top = 384
    object Qitemvendasum: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'sum'
      Origin = 'sum'
      ReadOnly = True
    end
  end
  object DsQitemvenda: TDataSource
    DataSet = Qitemvenda
    Left = 544
    Top = 384
  end
  object TempItem: TFDTable
    Active = True
    IndexFieldNames = 'iditemvenda'
    Connection = DbVendas
    SchemaName = 'temp'
    TableName = 'itemvenda'
    Left = 496
    Top = 256
    object TempItemiditemvenda: TIntegerField
      FieldName = 'iditemvenda'
      Origin = 'iditemvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TempItemnmitemvenda: TWideStringField
      FieldName = 'nmitemvenda'
      Origin = 'nmitemvenda'
      Size = 50
    end
    object TempItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object TempItemqtitem: TIntegerField
      FieldName = 'qtitem'
      Origin = 'qtitem'
    end
    object TempItemvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object TempItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
  end
  object MTempItem: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PTempItem'
    AfterPost = MTempItemAfterPost
    AfterCancel = MTempItemAfterCancel
    AfterDelete = MTempItemAfterDelete
    Left = 552
    Top = 320
    object MTempItemiditemvenda: TIntegerField
      FieldName = 'iditemvenda'
      Origin = 'iditemvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MTempItemnmitemvenda: TWideStringField
      FieldName = 'nmitemvenda'
      Origin = 'nmitemvenda'
      Size = 50
    end
    object MTempItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object MTempItemqtitem: TIntegerField
      FieldName = 'qtitem'
      Origin = 'qtitem'
    end
    object MTempItemvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object MTempItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
  end
  object PTempItem: TDataSetProvider
    DataSet = TempItem
    Left = 552
    Top = 256
  end
  object DsTempItem: TDataSource
    DataSet = MTempItem
    Left = 488
    Top = 320
  end
  object QEntradaVenda: TFDQuery
    Active = True
    Connection = DbVendas
    SQL.Strings = (
      'Select * From vendas')
    Left = 224
    Top = 144
    object IntegerField1: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object IntegerField3: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object DateField1: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField2: TDateField
      DisplayLabel = 'Data Venda'
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object WideStringField1: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object WideStringField2: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
    object QEntradaVendavlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
  end
  object QEntradaVendaItem: TFDQuery
    Active = True
    Connection = DbVendas
    SQL.Strings = (
      'Select * From vendasitem')
    Left = 232
    Top = 280
    object QEntradaVendaItemidvendasitem: TIntegerField
      FieldName = 'idvendasitem'
      Origin = 'idvendasitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QEntradaVendaItemidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object QEntradaVendaItemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object QEntradaVendaItemnmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 50
    end
    object QEntradaVendaItemqtvendido: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
    end
    object QEntradaVendaItemvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object QEntradaVendaItemvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
  end
  object QIdVenda: TFDQuery
    Connection = DbVendas
    SQL.Strings = (
      
        'SELECT idvenda FROM vendas WHERE idvenda =(SELECT max(idvenda) F' +
        'ROM vendas)')
    Left = 272
    Top = 144
    object QIdVendaidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object QEntradaTitulo: TFDQuery
    Connection = DbVendas
    Left = 16
    Top = 408
  end
  object DsIdVenda: TDataSource
    DataSet = QIdVenda
    Left = 272
    Top = 200
  end
  object DsEntradaItens: TDataSource
    DataSet = QEntradaVendaItem
    Left = 240
    Top = 344
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = DbVendas
    InsertSQL.Strings = (
      'INSERT INTO vendas'
      '(idvenda, idcliente, idformapagamento, vlvenda, '
      '  dtcadastro, dtvenda, nmformapagamento, nmcliente, '
      '  nrdocumento)'
      
        'VALUES (:new_idvenda, :new_idcliente, :new_idformapagamento, :ne' +
        'w_vlvenda, '
      
        '  :new_dtcadastro, :new_dtvenda, :new_nmformapagamento, :new_nmc' +
        'liente, '
      '  :new_nrdocumento)'
      'RETURNING idvenda')
    ModifySQL.Strings = (
      'UPDATE vendas'
      
        'SET idvenda = :new_idvenda, idcliente = :new_idcliente, idformap' +
        'agamento = :new_idformapagamento, '
      
        '  vlvenda = :new_vlvenda, dtcadastro = :new_dtcadastro, dtvenda ' +
        '= :new_dtvenda, '
      
        '  nmformapagamento = :new_nmformapagamento, nmcliente = :new_nmc' +
        'liente, '
      '  nrdocumento = :new_nrdocumento'
      'WHERE idvenda = :old_idvenda'
      'RETURNING idvenda')
    DeleteSQL.Strings = (
      'DELETE FROM vendas'
      'WHERE idvenda = :old_idvenda')
    FetchRowSQL.Strings = (
      
        'SELECT idvenda, idcliente, idformapagamento, vlvenda, dtcadastro' +
        ', dtvenda, '
      '  nmformapagamento, nmcliente, nrdocumento'
      'FROM ('
      'select * from vendas'
      ') '
      'WHERE idvenda = :old_idvenda')
    Left = 8
    Top = 464
  end
  object DataSource1: TDataSource
    Left = 8
    Top = 520
  end
  object FDUpdateSQL2: TFDUpdateSQL
    Connection = DbVendas
    InsertSQL.Strings = (
      'INSERT INTO vendasitem'
      '(idvendasitem, idvenda, idproduto, nmproduto, '
      '  vlunitario, qtvendido, vlitem)'
      
        'VALUES (:new_idvendasitem, :new_idvenda, :new_idproduto, :new_nm' +
        'produto, '
      '  :new_vlunitario, :new_qtvendido, :new_vlitem)'
      'RETURNING idvendasitem')
    ModifySQL.Strings = (
      'UPDATE vendasitem'
      
        'SET idvendasitem = :new_idvendasitem, idvenda = :new_idvenda, id' +
        'produto = :new_idproduto, '
      '  nmproduto = :new_nmproduto, vlunitario = :new_vlunitario, '
      '  qtvendido = :new_qtvendido, vlitem = :new_vlitem'
      'WHERE idvendasitem = :old_idvendasitem'
      'RETURNING idvendasitem')
    DeleteSQL.Strings = (
      'DELETE FROM vendasitem'
      'WHERE idvendasitem = :old_idvendasitem')
    FetchRowSQL.Strings = (
      
        'SELECT idvendasitem, idvenda, idproduto, nmproduto, vlunitario, ' +
        'qtvendido, '
      '  vlitem'
      'FROM ('
      'select * from vendasitem'
      ') '
      'WHERE idvendasitem = :old_idvendasitem')
    Left = 72
    Top = 464
  end
  object DataSource2: TDataSource
    Left = 72
    Top = 520
  end
  object Qxml: TFDQuery
    Active = True
    Connection = DbVendas
    SQL.Strings = (
      'Select * From xml')
    Left = 144
    Top = 464
  end
  object DsQxml: TDataSource
    DataSet = Qxml
    Left = 136
    Top = 520
  end
  object Qxmlitem: TFDQuery
    Active = True
    Connection = DbVendas
    SQL.Strings = (
      'Select * From xmlitem')
    Left = 192
    Top = 464
  end
  object DsQxmlitem: TDataSource
    DataSet = Qxmlitem
    Left = 184
    Top = 520
  end
  object TempItemExclusao: TFDQuery
    Active = True
    Connection = DbVendas
    SQL.Strings = (
      'Select * From clientes')
    Left = 608
    Top = 256
    object IntegerField5: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object WideStringField3: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object WideStringField4: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object WideStringField5: TWideStringField
      DisplayLabel = 'Endereco'
      FieldName = 'nmendereco'
      Origin = 'nmendereco'
      Size = 50
    end
    object WideStringField6: TWideStringField
      DisplayLabel = 'Numero'
      FieldName = 'nrendere'#231'o'
      Origin = '"nrendere'#231'o"'
      Size = 8
    end
    object WideStringField7: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 50
    end
    object DateField3: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object WideStringField8: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'nmbairro'
      Origin = 'nmbairro'
      Size = 50
    end
    object WideStringField9: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'nmcidade'
      Origin = 'nmcidade'
      Size = 50
    end
    object WideStringField10: TWideStringField
      DisplayLabel = 'UF'
      FieldName = 'nmestado'
      Origin = 'nmestado'
      Size = 2
    end
    object WideStringField11: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdcliente'
      Origin = 'cdcliente'
      Size = 6
    end
  end
  object Qestoque: TFDQuery
    Active = True
    Connection = DbVendas
    SQL.Strings = (
      'Select * From movimentoestoque')
    Left = 608
    Top = 152
    object Qestoqueqtdisponivel: TIntegerField
      FieldName = 'qtdisponivel'
      Origin = 'qtdisponivel'
    end
    object Qestoqueidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
  end
  object DsQestoque: TDataSource
    DataSet = Qestoque
    Left = 601
    Top = 200
  end
end