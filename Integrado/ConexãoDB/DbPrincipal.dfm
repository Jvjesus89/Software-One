﻿object DbMaster: TDbMaster
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
    VendorLib = 'E:\Sistema\Software-One\DLL\32 bit\libpq1.dll'
    Left = 136
    Top = 40
  end
end
