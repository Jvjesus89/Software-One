object Login: TLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 231
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
  object DsLogin: TDataSource
    DataSet = TabelaUsuario
    Left = 112
    Top = 168
  end
  object bancodados: TFDConnection
    Params.Strings = (
      'Database=Software-One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 112
    Top = 64
  end
  object TabelaUsuario: TFDTable
    Active = True
    IndexFieldNames = 'idusuario'
    Connection = bancodados
    SchemaName = 'public'
    TableName = 'usuario'
    Left = 112
    Top = 112
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
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'D:\Sistema\DLL\32 bit\libpq.dll'
    Left = 112
    Top = 16
  end
end
