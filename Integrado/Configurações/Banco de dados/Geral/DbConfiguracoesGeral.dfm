object DbGeral: TDbGeral
  Left = 0
  Top = 0
  Caption = 'DbGeral'
  ClientHeight = 318
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
  object Label2: TLabel
    Left = 24
    Top = 24
    Width = 81
    Height = 19
    Caption = 'Diretorios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Diretorios: TFDTable
    Active = True
    IndexFieldNames = 'idconfiguracao'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'configuracoes'
    Left = 24
    Top = 56
    object Diretoriosidconfiguracao: TIntegerField
      FieldName = 'idconfiguracao'
      Origin = 'idconfiguracao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Diretoriosnmconfiguracao: TWideStringField
      FieldName = 'nmconfiguracao'
      Origin = 'nmconfiguracao'
      Size = 30
    end
    object Diretoriosdsvalorantigo: TWideStringField
      FieldName = 'dsvalorantigo'
      Origin = 'dsvalorantigo'
      Size = 30
    end
    object Diretoriosdsvalornovo: TWideStringField
      FieldName = 'dsvalornovo'
      Origin = 'dsvalornovo'
      Size = 30
    end
    object Diretoriosdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
  end
  object DsDiretorios: TDataSource
    DataSet = Mdiretorios
    Left = 24
    Top = 104
  end
  object PDiretorios: TDataSetProvider
    DataSet = Diretorios
    Left = 88
    Top = 56
  end
  object Mdiretorios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PDiretorios'
    Left = 88
    Top = 104
    object Mdiretoriosidconfiguracao: TIntegerField
      FieldName = 'idconfiguracao'
      Origin = 'idconfiguracao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Mdiretoriosnmconfiguracao: TWideStringField
      FieldName = 'nmconfiguracao'
      Origin = 'nmconfiguracao'
      Size = 30
    end
    object Mdiretoriosdsvalorantigo: TWideStringField
      FieldName = 'dsvalorantigo'
      Origin = 'dsvalorantigo'
      Size = 30
    end
    object Mdiretoriosdsvalornovo: TWideStringField
      FieldName = 'dsvalornovo'
      Origin = 'dsvalornovo'
      Size = 30
    end
    object Mdiretoriosdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
  end
  object InsrerirDireotiros: TFDQuery
    Active = True
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From configuracoes')
    Left = 152
    Top = 56
    object InsrerirDireotirosidconfiguracao: TIntegerField
      FieldName = 'idconfiguracao'
      Origin = 'idconfiguracao'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object InsrerirDireotirosnmconfiguracao: TWideStringField
      FieldName = 'nmconfiguracao'
      Origin = 'nmconfiguracao'
      Size = 30
    end
    object InsrerirDireotirosdsvalorantigo: TWideStringField
      FieldName = 'dsvalorantigo'
      Origin = 'dsvalorantigo'
      Size = 30
    end
    object InsrerirDireotirosdsvalornovo: TWideStringField
      FieldName = 'dsvalornovo'
      Origin = 'dsvalornovo'
      Size = 30
    end
    object InsrerirDireotirosdtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
    end
  end
  object FDUpdateSQL2: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO configuracoes'
      '(idconfiguracao, nmconfiguracao, dsvalorantigo, '
      '  dsvalornovo, dtcadastro)'
      
        'VALUES (:new_idconfiguracao, :new_nmconfiguracao, :new_dsvaloran' +
        'tigo, '
      '  :new_dsvalornovo, :new_dtcadastro)'
      'RETURNING idconfiguracao')
    ModifySQL.Strings = (
      'UPDATE configuracoes'
      
        'SET idconfiguracao = :new_idconfiguracao, nmconfiguracao = :new_' +
        'nmconfiguracao, '
      
        '  dsvalorantigo = :new_dsvalorantigo, dsvalornovo = :new_dsvalor' +
        'novo, '
      '  dtcadastro = :new_dtcadastro'
      'WHERE idconfiguracao = :old_idconfiguracao'
      'RETURNING idconfiguracao')
    DeleteSQL.Strings = (
      'DELETE FROM configuracoes'
      'WHERE idconfiguracao = :old_idconfiguracao')
    FetchRowSQL.Strings = (
      
        'SELECT idconfiguracao, nmconfiguracao, dsvalorantigo, dsvalornov' +
        'o, '
      '  dtcadastro'
      'FROM ('
      'select * from configuracoes'
      ') '
      'WHERE idconfiguracao = :old_idconfiguracao')
    Left = 16
    Top = 161
  end
end
