﻿object dbConsultas: TdbConsultas
  OldCreateOrder = False
  Height = 170
  Width = 241
  object ConsultaProdutoPadrão: TFDQuery
    Connection = DbMaster.ConexãoDb
    SQL.Strings = (
      'Select * From produto p'
      
        'left join produtosfamilia f on f.idprodutosfamilia = p.idfamilia' +
        'produto')
    Left = 49
    Top = 16
    object ConsultaProdutoPadrãoidproduto: TFDAutoIncField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ConsultaProdutoPadrãonmproduto: TWideStringField
      FieldName = 'nmproduto'
      Origin = 'nmproduto'
      Required = True
      Size = 100
    end
    object ConsultaProdutoPadrãocdproduto: TWideStringField
      FieldName = 'cdproduto'
      Origin = 'cdproduto'
      Required = True
      Size = 10
    end
    object ConsultaProdutoPadrãoidfamiliaproduto: TIntegerField
      FieldName = 'idfamiliaproduto'
      Origin = 'idfamiliaproduto'
    end
    object ConsultaProdutoPadrãovlproduto: TSingleField
      FieldName = 'vlproduto'
      Origin = 'vlproduto'
    end
    object ConsultaProdutoPadrãostproduto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'stproduto'
      Origin = 'stproduto'
    end
    object ConsultaProdutoPadrãodtcadastro: TDateField
      FieldName = 'dtcadastro'
      Origin = 'dtcadastro'
      Required = True
    end
    object ConsultaProdutoPadrãoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object ConsultaProdutoPadrãovlcusto: TSingleField
      FieldName = 'vlcusto'
      Origin = 'vlcusto'
    end
    object ConsultaProdutoPadrãodtultalter: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtultalter'
      Origin = 'dtultalter'
      ProviderFlags = []
      ReadOnly = True
    end
    object ConsultaProdutoPadrãoidusuarioultalter: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idusuarioultalter'
      Origin = 'idusuarioultalter'
      ProviderFlags = []
      ReadOnly = True
    end
    object ConsultaProdutoPadrãonmfamiliaproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nmfamiliaproduto'
      Origin = 'nmfamiliaproduto'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
end
