object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 318
  Width = 379
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\erpdelphi\dados\DADOS.FDB'
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
  object QRY_filial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT * FROM FILIAL WHERE CODIGO = :CODIGO')
    Left = 40
    Top = 96
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_filialCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_filialRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object QRY_filialFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 100
    end
    object QRY_filialCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object QRY_filialTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
  end
end
