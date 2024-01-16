object ServiceCadastro: TServiceCadastro
  Height = 294
  Width = 594
  object QRY_pessoas: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM PESSOAS WHERE CODIGO = :CODIGO')
    Left = 32
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRY_pessoasCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_pessoasRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 100
    end
    object QRY_pessoasFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 100
    end
    object QRY_pessoasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
    object QRY_pessoasCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Origin = 'CNPJCPF'
      Size = 50
    end
    object QRY_pessoasIERG: TStringField
      FieldName = 'IERG'
      Origin = 'IERG'
      Size = 50
    end
    object QRY_pessoasTIPOPESSOA: TIntegerField
      FieldName = 'TIPOPESSOA'
      Origin = 'TIPOPESSOA'
    end
    object QRY_pessoasOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
  end
  object QRY_enderecos: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM ENDERECO WHERE CODIGO = :CODIGO')
    Left = 152
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_enderecosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_enderecosPESSOA: TIntegerField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
    end
    object QRY_enderecosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object QRY_enderecosCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object QRY_enderecosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object QRY_enderecosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object QRY_enderecosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 100
    end
    object QRY_enderecosNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
  end
  object QRY_produto1: TFDQuery
    AfterScroll = QRY_produto1AfterScroll
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM PRODUTO WHERE CODIGO = :CODIGO')
    Left = 32
    Top = 109
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto1CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_produto1NOMECOMPLETO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOMECOMPLETO'
      Origin = 'NOMECOMPLETO'
      Size = 100
    end
    object QRY_produto1NOMEPOPULAR: TStringField
      DisplayLabel = 'Nome reduzido'
      FieldName = 'NOMEPOPULAR'
      Origin = 'NOMEPOPULAR'
      Size = 100
    end
    object QRY_produto1CODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QRY_produto1REFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object QRY_produto1GRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
    end
    object QRY_produto1SUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
    end
    object QRY_produto1NCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 10
    end
  end
  object QRY_produto2: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM PRODUTO_DETALHE WHERE CODIGO = :CODIGO')
    Left = 147
    Top = 109
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto2CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_produto2CODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object QRY_produto2FILIAL: TIntegerField
      FieldName = 'FILIAL'
      Origin = 'FILIAL'
    end
    object QRY_produto2CUSTOINICIAL: TFMTBCDField
      FieldName = 'CUSTOINICIAL'
      Origin = 'CUSTOINICIAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2VENDAVISTA: TFMTBCDField
      FieldName = 'VENDAVISTA'
      Origin = 'VENDAVISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2VENDAPRAZO: TFMTBCDField
      FieldName = 'VENDAPRAZO'
      Origin = 'VENDAPRAZO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2SIT_TRIBUTARIA: TIntegerField
      FieldName = 'SIT_TRIBUTARIA'
      Origin = 'SIT_TRIBUTARIA'
    end
    object QRY_produto2ESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Precision = 18
      Size = 2
    end
  end
  object QRY_movestoque: TFDQuery
    AfterScroll = QRY_movestoqueAfterScroll
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from movestoque where codigo = :codigo')
    Left = 276
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRY_movestoqueCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_movestoqueTIPOESTOQUE: TIntegerField
      FieldName = 'TIPOESTOQUE'
      Origin = 'TIPOESTOQUE'
    end
    object QRY_movestoqueDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object QRY_movestoqueHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object QRY_movestoqueVALORDESCONTO: TFMTBCDField
      FieldName = 'VALORDESCONTO'
      Origin = 'VALORDESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoqueVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
    end
  end
  object QRY_movestoque_item: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM MOVESTOQUE_ITEM WHERE CODIGO_MOVIMENTO = :CODIGO')
    Left = 275
    Top = 109
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_movestoque_itemCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_movestoque_itemCODIGO_MOVIMENTO: TIntegerField
      FieldName = 'CODIGO_MOVIMENTO'
      Origin = 'CODIGO_MOVIMENTO'
    end
    object QRY_movestoque_itemCODIGO_ITEM: TIntegerField
      FieldName = 'CODIGO_ITEM'
      Origin = 'CODIGO_ITEM'
    end
    object QRY_movestoque_itemQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object QRY_movestoque_itemVALOR_UNITARIO: TFMTBCDField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoque_itemVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_movestoque_itemVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object QRY_cadcaixa: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM CAIXA WHERE CODIGO = :CODIGO')
    Left = 403
    Top = 13
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRY_cadcaixaCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_cadcaixaDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object QRY_cadcaixaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object QRY_cadcaixaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_cadcaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
  end
end
