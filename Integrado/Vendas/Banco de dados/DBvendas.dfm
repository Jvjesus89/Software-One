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
  object Label1: TLabel
    Left = 512
    Top = 0
    Width = 61
    Height = 19
    Caption = 'Exclus'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 264
    Top = 0
    Width = 184
    Height = 19
    Caption = 'Prazo / Forma Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 8
    Width = 124
    Height = 19
    Caption = 'Temp.FinArecebe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 168
    Top = 512
    Width = 35
    Height = 19
    Caption = 'Itens'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Vendas: TLabel
    Left = 64
    Top = 120
    Width = 51
    Height = 19
    Caption = 'Vendas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 520
    Top = 288
    Width = 119
    Height = 19
    Caption = 'Temp.vendaitem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 128
    Top = 264
    Width = 143
    Height = 19
    Caption = 'Tabelas temporarias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TabelaVendaItem: TFDTable
    IndexFieldNames = 'idvenda'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'vendasitem'
    Left = 80
    Top = 536
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
    Left = 80
    Top = 592
  end
  object MvendasItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pvendasitem'
    Left = 168
    Top = 592
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
    Left = 168
    Top = 536
  end
  object Qvendas: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'Select * From vendas V join clientes C on C.idcliente = V.idclie' +
        'nte')
    Left = 32
    Top = 152
    object Qvendasidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Qvendasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
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
    object Qvendasnrdocumento: TIntegerField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
    object Qvendasvlvenda: TSingleField
      DisplayLabel = 'Vl. venda'
      FieldName = 'vlvenda'
      currency = True
    end
    object Qvendasnmcliente: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object QvendasItem: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendasitem')
    Left = 240
    Top = 536
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
    Left = 240
    Top = 600
  end
  object DsQVendas: TDataSource
    DataSet = Qvendas
    Left = 32
    Top = 208
  end
  object Qcliente: TFDQuery
    Connection = DbMaster.ConexãoDb
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
    Connection = DbMaster.ConexãoDb
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
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select SUM(vlitem) from temp.vendaitem')
    Left = 512
    Top = 320
    object Qitemvendasum: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'sum'
      Origin = 'sum'
      ReadOnly = True
    end
  end
  object DsQitemvenda: TDataSource
    DataSet = Qitemvenda
    Left = 584
    Top = 320
  end
  object DsTempItemCampos: TDataSource
    DataSet = QvendasitemCampos
    Left = 248
    Top = 408
  end
  object QEntradaVenda: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendas')
    Left = 80
    Top = 152
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
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendasitem')
    Left = 296
    Top = 536
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
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'SELECT idvenda FROM vendas WHERE idvenda =(SELECT max(idvenda) F' +
        'ROM vendas)')
    Left = 128
    Top = 152
    object QIdVendaidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object QEntradaTitulo: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 488
    Top = 560
  end
  object DsIdVenda: TDataSource
    DataSet = QIdVenda
    Left = 128
    Top = 208
  end
  object DsEntradaItens: TDataSource
    DataSet = QEntradaVendaItem
    Left = 304
    Top = 600
  end
  object DsQxmlitem: TDataSource
    Left = 496
    Top = 608
  end
  object TempItemExclusao: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 672
    Top = 320
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
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'Select * From temp.movimentoestoque where  idmovimento=(SELECT m' +
        'ax(idmovimento ) FROM temp.movimentoestoque Where idproduto = 25' +
        ')')
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
    object Qestoqueidmovimento: TIntegerField
      FieldName = 'idmovimento'
      Origin = 'idmovimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Qestoqueqtmovimentada: TIntegerField
      FieldName = 'qtmovimentada'
      Origin = 'qtmovimentada'
    end
    object Qestoquedtmovimento: TDateField
      FieldName = 'dtmovimento'
      Origin = 'dtmovimento'
    end
    object Qestoquetpmovimento: TWideStringField
      FieldName = 'tpmovimento'
      Origin = 'tpmovimento'
      Size = 8
    end
    object Qestoquedtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QestoqueIdorigem: TIntegerField
      FieldName = 'Idorigem'
      Origin = '"Idorigem"'
    end
  end
  object DsQestoque: TDataSource
    DataSet = Qestoque
    Left = 601
    Top = 200
  end
  object QExclusãoVenda: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendas')
    Left = 504
    Top = 24
    object IntegerField11: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField12: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object IntegerField13: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object DateField6: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField7: TDateField
      DisplayLabel = 'Data Venda'
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object WideStringField13: TWideStringField
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
    end
    object WideStringField14: TWideStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 50
    end
    object IntegerField14: TIntegerField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
    end
    object SingleField1: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
    end
  end
  object QExclusãoVendaItem: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendasitem')
    Left = 600
    Top = 24
    object IntegerField15: TIntegerField
      FieldName = 'idvendasitem'
      Origin = 'idvendasitem'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField16: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object IntegerField17: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object WideStringField15: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Size = 50
    end
    object IntegerField18: TIntegerField
      FieldName = 'qtvendido'
      Origin = 'qtvendido'
    end
    object SingleField2: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object SingleField3: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
  end
  object QExclusãoEstoque: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From movimentoestoque ')
    Left = 504
    Top = 72
    object IntegerField19: TIntegerField
      FieldName = 'qtdisponivel'
      Origin = 'qtdisponivel'
    end
    object IntegerField20: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object IntegerField21: TIntegerField
      FieldName = 'idmovimento'
      Origin = 'idmovimento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField22: TIntegerField
      FieldName = 'qtmovimentada'
      Origin = 'qtmovimentada'
    end
    object DateField8: TDateField
      FieldName = 'dtmovimento'
      Origin = 'dtmovimento'
    end
    object WideStringField16: TWideStringField
      FieldName = 'tpmovimento'
      Origin = 'tpmovimento'
      Size = 8
    end
    object DateField9: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object IntegerField23: TIntegerField
      FieldName = 'Idorigem'
      Origin = '"Idorigem"'
    end
  end
  object QExclusãoAreceber: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From areceber')
    Left = 600
    Top = 72
  end
  object QExclusãoTempItemVenda: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From Temp.itemvenda')
    Left = 696
    Top = 24
  end
  object QPrazo: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From prazopagamento')
    Left = 264
    Top = 23
    object QPrazoidprazo: TIntegerField
      FieldName = 'idprazo'
      Origin = 'idprazo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QPrazonmprazo: TWideStringField
      DisplayLabel = 'Prazo'
      FieldName = 'nmprazo'
      Origin = 'nmprazo'
      Size = 50
    end
    object QPrazonrparcelas: TIntegerField
      DisplayLabel = 'Nr. Parcelas'
      FieldName = 'nrparcelas'
      Origin = 'nrparcelas'
    end
    object QPrazoidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object QPrazocdprazo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cdprazo'
      Origin = 'cdprazo'
    end
  end
  object DsQprazo: TDataSource
    DataSet = QPrazo
    Left = 264
    Top = 71
  end
  object QFormaPagamento: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From formapagamento')
    Left = 336
    Top = 23
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
    Left = 336
    Top = 71
  end
  object QarecebrTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From temp.areceber')
    Left = 24
    Top = 31
    object QarecebrTempidareceber: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QarecebrTempidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object QarecebrTempnmcliente: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object QarecebrTempidformapagamento: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object QarecebrTempnmformapagamento: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object QarecebrTempvltitulo: TSingleField
      DisplayLabel = 'Valor'
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object QarecebrTempnrtitulo: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object QarecebrTempdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object QarecebrTempdtvencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object QarecebrTempidorigem: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
  end
  object DsQAreceberTemp: TDataSource
    DataSet = QarecebrTemp
    Left = 88
    Top = 31
  end
  object QarecebrTempInserir: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From temp.areceber')
    Left = 152
    Top = 31
    object IntegerField24: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField25: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object WideStringField17: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object IntegerField26: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object WideStringField18: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      Size = 50
    end
    object SingleField4: TSingleField
      DisplayLabel = 'Valor'
      FieldName = 'vltitulo'
      Origin = 'vltitulo'
    end
    object IntegerField27: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object DateField10: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField11: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object IntegerField28: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
  end
  object Qrtm: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'select * From vendas V join vendasitem VI on (V.idvenda = VI.idv' +
        'enda)')
    Left = 16
    Top = 536
  end
  object DsQrtm: TDataSource
    DataSet = Qrtm
    Left = 16
    Top = 592
  end
  object QvendasitemCampos: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'Select * From temp."#vendasItensCampos" VI join produto P on P.i' +
        'dproduto = VI.idproduto')
    Left = 248
    Top = 352
    object QvendasitemCamposidvendaitem: TIntegerField
      FieldName = 'idvendaitem'
      Origin = 'idvendaitem'
    end
    object QvendasitemCamposvlunitario: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object QvendasitemCamposvlitem: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
    object QvendasitemCamposidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object QvendasitemCamposqtitem: TIntegerField
      FieldName = 'qtitem'
      Origin = 'qtitem'
    end
    object QvendasitemCamposidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object QvendasitemCamposnmproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QvendasitemCamposvlproduto: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QCriaTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 32
    Top = 296
  end
  object QExcluiTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 32
    Top = 352
  end
  object QTempCamposVenda: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'Select * From temp."#vendas" V join clientes C on C.idcliente = ' +
        'V.idcliente')
    Left = 136
    Top = 352
    object QTempCamposVendaidvenda: TFDAutoIncField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QTempCamposVendaidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
    end
    object QTempCamposVendavlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
      Required = True
    end
    object QTempCamposVendadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      Required = True
    end
    object QTempCamposVendadtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object QTempCamposVendanrdocumento: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
      Required = True
    end
    object QTempCamposVendanmcliente: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object QInseriTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 136
    Top = 296
  end
  object DsQtempCamposVendas: TDataSource
    DataSet = QTempCamposVenda
    Left = 136
    Top = 408
  end
  object QConsultaTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 32
    Top = 408
  end
  object QTempVendasItem: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'Select * From temp."#vendasitem" VI join produto P on P.idprodut' +
        'o = VI.idproduto')
    Left = 336
    Top = 352
    object IntegerField6: TIntegerField
      FieldName = 'idvendaitem'
      Origin = 'idvendaitem'
    end
    object SingleField5: TSingleField
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
    end
    object SingleField6: TSingleField
      FieldName = 'vlitem'
      Origin = 'vlitem'
    end
    object IntegerField7: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object IntegerField8: TIntegerField
      FieldName = 'qtitem'
      Origin = 'qtitem'
    end
    object IntegerField9: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object WideStringField12: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SingleField7: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DsQTempVendasItem: TDataSource
    DataSet = QTempVendasItem
    Left = 336
    Top = 408
  end
end