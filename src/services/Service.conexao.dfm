object ServiceConexao: TServiceConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 372
  Width = 560
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=D:\Projetos\ERPDelphiGov\dados\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 120
    Top = 16
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 192
    Top = 16
  end
end
