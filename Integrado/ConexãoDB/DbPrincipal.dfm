﻿object DbMaster: TDbMaster
  OldCreateOrder = False
  Height = 326
  Width = 493
  object ConexãoDb: TFDConnection
    Params.Strings = (
      'Database=Software-One'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'Port=5433'
      'DriverID=PG')
    Connected = True
    Left = 176
    Top = 56
  end
  object Dll32bit: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 264
    Top = 56
  end
end
