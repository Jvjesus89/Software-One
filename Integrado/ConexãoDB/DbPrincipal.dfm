object DbMaster: TDbMaster
  OldCreateOrder = False
  Height = 136
  Width = 225
  object ConexãoDb: TFDConnection
    Params.Strings = (
      'Database=Software-One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'ExtendedMetadata=True'
      'OidAsBlob=Yes'
      'DriverID=PG')
    Left = 64
    Top = 40
  end
  object Dll32bit: TFDPhysPgDriverLink
    VendorLib = 
      'D:\Sistema\Software-One\Integrado\Projetos\Win32\Debug\DLL\32 bi' +
      't\libpq.dll'
    Left = 152
    Top = 40
  end
end
