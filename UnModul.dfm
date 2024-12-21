object DmModul: TDmModul
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 261
  Width = 469
  object con1: TMyConnection
    AfterConnect = con1AfterConnect
    AfterDisconnect = con1AfterDisconnect
    BeforeDisconnect = con1BeforeDisconnect
    LoginPrompt = False
    Left = 16
    Top = 8
  end
  object QData: TMyQuery
    Connection = con1
    Left = 80
    Top = 8
  end
  object MyStoredProc1: TMyStoredProc
    Left = 144
    Top = 8
  end
  object MyDataSource1: TMyDataSource
    Left = 136
    Top = 72
  end
  object addscari: TMyQuery
    Connection = con1
    Left = 16
    Top = 64
  end
  object MyCommand1: TMyCommand
    Connection = con1
    Left = 80
    Top = 64
  end
  object Q: TMyQuery
    Connection = con1
    Left = 16
    Top = 120
  end
end
