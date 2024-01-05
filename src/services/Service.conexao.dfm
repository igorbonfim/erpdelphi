object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 398
  Width = 474
  PixelsPerInch = 120
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
    Left = 50
    Top = 20
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 150
    Top = 20
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 264
    Top = 20
  end
  object QRY_filial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT * FROM FILIAL WHERE CODIGO = :CODIGO')
    Left = 50
    Top = 120
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
