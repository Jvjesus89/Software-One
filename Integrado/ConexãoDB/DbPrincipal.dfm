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
    Connected = True
    Left = 64
    Top = 40
  end
  object Dll32bit: TFDPhysPgDriverLink
    Left = 152
    Top = 40
  end
end
