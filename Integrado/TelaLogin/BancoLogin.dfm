object BancoUsuario: TBancoUsuario
  OldCreateOrder = False
  Height = 137
  Width = 226
  object DsLogin: TDataSource
    DataSet = TabelaUsuario
    Left = 72
    Top = 64
  end
  object TabelaUsuario: TFDTable
    Active = True
    IndexFieldNames = 'idusuario'
    Connection = DbMaster.ConexãoDb
    SchemaName = 'public'
    TableName = 'usuario'
    Left = 72
    Top = 8
    object TabelaUsuarionmusuario: TWideStringField
      FieldName = 'nmusuario'
      Origin = 'nmusuario'
      Size = 50
    end
    object TabelaUsuariosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 50
    end
  end
end
