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
    Left = 544
    Top = 256
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
    Left = 152
    Top = 424
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
    Left = 56
    Top = 0
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
  object Label6: TLabel
    Left = 112
    Top = 152
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
    Left = 64
    Top = 448
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
    Left = 64
    Top = 504
  end
  object MvendasItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Pvendasitem'
    Left = 152
    Top = 504
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
    Left = 152
    Top = 448
  end
  object Qvendas: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendas V '
      'join areceber A on V.idvenda = A.idorigem'
      'join clientes C on C.idcliente = V.idcliente'
      'join formapagamento F on F.idformapagamento = A.idformapagamento')
    Left = 24
    Top = 32
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
    object Qvendasnmformapagamento: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'nmformapagamento'
      Origin = 'nmformapagamento'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object QvendasItem: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendasitem')
    Left = 224
    Top = 448
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
    Left = 224
    Top = 512
  end
  object DsQVendas: TDataSource
    DataSet = Qvendas
    Left = 24
    Top = 88
  end
  object Qcliente: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From clientes')
    Left = 656
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
    Left = 656
    Top = 200
  end
  object QProduto: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produto')
    Left = 600
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
    Left = 600
    Top = 200
  end
  object DsTempItemCampos: TDataSource
    DataSet = QvendasitemCampos
    Left = 232
    Top = 296
  end
  object QEntradaVenda: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendas')
    Left = 72
    Top = 32
    object QEntradaVendaidvenda: TFDAutoIncField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QEntradaVendaidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
      Required = True
    end
    object QEntradaVendavlvenda: TSingleField
      FieldName = 'vlvenda'
      Origin = 'vlvenda'
      Required = True
    end
    object QEntradaVendadtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      Required = True
    end
    object QEntradaVendadtvenda: TDateField
      FieldName = 'dtvenda'
      Origin = 'dtvenda'
    end
    object QEntradaVendanrdocumento: TIntegerField
      FieldName = 'nrdocumento'
      Origin = 'nrdocumento'
      Required = True
    end
  end
  object QEntradaVendaItem: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From vendasitem')
    Left = 280
    Top = 448
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
    Left = 120
    Top = 32
    object QIdVendaidvenda: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object QEntradaTitulo: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 576
    Top = 456
  end
  object DsIdVenda: TDataSource
    DataSet = QIdVenda
    Left = 120
    Top = 88
  end
  object DsEntradaItens: TDataSource
    DataSet = QEntradaVendaItem
    Left = 288
    Top = 512
  end
  object DsQxmlitem: TDataSource
    Left = 576
    Top = 512
  end
  object Qestoque: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'Select * From temp."#movimentoestoque" where  idmovimento=(SELEC' +
        'T max(idmovimento ) FROM movimentoestoque Where idproduto = 25)')
    Left = 712
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
    Left = 713
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
      'Select * From temp."#areceber"')
    Left = 560
    Top = 287
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
    Left = 560
    Top = 343
  end
  object Qrtm: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'select * From vendas V join vendasitem VI on (V.idvenda = VI.idv' +
        'enda)')
    Top = 448
  end
  object DsQrtm: TDataSource
    DataSet = Qrtm
    Top = 504
  end
  object QvendasitemCampos: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'Select * From temp."#vendasItensCampos" VI join produto P on P.i' +
        'dproduto = VI.idproduto')
    Left = 232
    Top = 240
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
    Left = 16
    Top = 184
  end
  object QExcluiTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 16
    Top = 240
  end
  object QTempCamposVenda: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'Select * From temp."#vendas" V join clientes C on C.idcliente = ' +
        'V.idcliente')
    Left = 120
    Top = 240
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
    Left = 120
    Top = 184
  end
  object DsQtempCamposVendas: TDataSource
    DataSet = QTempCamposVenda
    Left = 120
    Top = 296
  end
  object QConsultaTabelaTemp: TFDQuery
    Connection = DbMaster.ConexãoDb
    Left = 16
    Top = 296
  end
  object QTempVendasItem: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      
        'Select * From temp."#vendasitem" VI join produto P on P.idprodut' +
        'o = VI.idproduto')
    Left = 320
    Top = 240
    object IntegerField6: TIntegerField
      FieldName = 'idvendaitem'
      Origin = 'idvendaitem'
    end
    object SingleField5: TSingleField
      DisplayLabel = 'Vl. Unitario'
      FieldName = 'vlunitario'
      Origin = 'vlunitario'
      currency = True
    end
    object SingleField6: TSingleField
      DisplayLabel = 'Vl. Item'
      FieldName = 'vlitem'
      Origin = 'vlitem'
      currency = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object IntegerField8: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtitem'
      Origin = 'qtitem'
    end
    object IntegerField9: TIntegerField
      FieldName = 'idvenda'
      Origin = 'idvenda'
    end
    object WideStringField12: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
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
    Left = 320
    Top = 296
  end
  object QareceberTempCampo: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From temp."#areceberCampo"')
    Left = 664
    Top = 287
    object IntegerField5: TIntegerField
      FieldName = 'idareceber'
      Origin = 'idareceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField10: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idcliente'
    end
    object WideStringField3: TWideStringField
      FieldName = 'nmcliente'
      Origin = 'nmcliente'
      Size = 100
    end
    object IntegerField24: TIntegerField
      FieldName = 'idformapagamento'
      Origin = 'idformapagamento'
    end
    object WideStringField4: TWideStringField
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
    object IntegerField25: TIntegerField
      FieldName = 'nrtitulo'
      Origin = 'nrtitulo'
    end
    object DateField3: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
    object DateField4: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'dtvencimento'
      Origin = 'dtvencimento'
    end
    object IntegerField26: TIntegerField
      FieldName = 'idorigem'
      Origin = 'idorigem'
    end
  end
  object DsQareceberTempCampo: TDataSource
    DataSet = QareceberTempCampo
    Left = 664
    Top = 343
  end
  object QTotalVenda: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select SUM(vlitem)as ValorVenda from temp."#vendasitem"')
    Left = 664
    Top = 456
    object QTotalVendavalorvenda: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorvenda'
      Origin = 'valorvenda'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DsQtotalvenda: TDataSource
    DataSet = QTotalVenda
    Left = 664
    Top = 512
  end
end
