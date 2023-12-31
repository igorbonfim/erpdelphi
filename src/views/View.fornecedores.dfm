inherited ViewFornecedores: TViewFornecedores
  Caption = 'Fornecedores'
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 881
      Height = 35
      Caption = 'Fornecedores'
      ExplicitWidth = 142
    end
    inherited pnlIcone: TPanel
      inherited imgIcon: TImage
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B474400FF878FCCBF000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E70B0D0D1600566F4ED2000002844944415478DAED94594854
          6114C77F736D5A2C4B34DBB422540CB28DA888823451693108A96873927A288A
          8816AAF722B2E5297A107B30833623226857878CCA1C8AC2A9C81C538A681DC9
          50A732FBDFEBC8A83553D48B0F9E61B8DF77BFFFF99F73FEE77CD7C67F9AAD97
          A08711F4E1FB5F7A7542060846B2151757F8F207E781A4339DA3BCE94EB09936
          7E10CB652A680DE21C26D7F9BC537CBB28BA104C6239FB6862020E1D9FA08131
          4C2689467C22F6F2098FDE67D38F22DC84B387621E0508ECECA68CDBD67A2333
          89A492AF4490C829AA54712CE354E25495779F63166A3699EC15C64F90C1340E
          A80094C16AC5F3709E616C219FBA4E052C229941A2746B6DB053195C6D278854
          FCE3545BEAEE501951226B26572917315EBBBB2AC2B40172F232983CBE6997C8
          7AF6D36012AC92B2F916641E73C47D4D2E33C8E29044DBA5B37BCAA7D93A9FA5
          B73EEE70C3DA39F42FB49120A6837CD42642F13FD0972372CC53436BC851639D
          AC61348F256714D75921DC5065D8A867B4322AB0A931390297D2C24A4995CC45
          49E36188446A9573A9D2375820D59F7041FBE1AC9394AF38497F525968660071
          2C93380F592A0D3CC4F352B12A28112C300F0912F7A928C2A57D9C9A7C56819B
          38437D7B170CA60850267DBD6CD2283978CF080E53EB774F92D0CFF4769444AF
          E5166349E3340FCCBE052631CC9A44B3235502BE10619D26A35C738734D8A012
          8AD9CE5BF5CB0C6874DC86EEB7D160897ED59A382773A544BDE44C17B8926DC4
          A817E7B40A7A1B3B2C46BAA7A817692A2643F9F8349BAFA5798B04AEF1CF4448
          02D3B259ACF9774B69A7FAF15CEE97B8298A5F2C1881211DD6EA8EB89828B55D
          9A83CFBF0786FA22D945E313A22D04A6877D137B09FED17E021089B57A76042B
          150000002574455874646174653A63726561746500323032332D31312D313354
          31333A32323A30302B30303A30305553EB590000002574455874646174653A6D
          6F6469667900323032332D31312D31335431333A32323A30302B30303A303024
          0E53E50000002074455874736F6674776172650068747470733A2F2F696D6167
          656D616769636B2E6F7267BCCF1D9D00000018744558745468756D623A3A446F
          63756D656E743A3A50616765730031A7FFBB2F00000018744558745468756D62
          3A3A496D6167653A3A486569676874003531328F8D5381000000177445587454
          68756D623A3A496D6167653A3A5769647468003531321C7C03DC000000197445
          58745468756D623A3A4D696D657479706500696D6167652F706E673FB2564E00
          000017744558745468756D623A3A4D54696D650031363939383831373230DB3E
          FB5500000013744558745468756D623A3A53697A650031383431374242B13931
          A600000061744558745468756D623A3A5552490066696C653A2F2F2E2F75706C
          6F6164732F35362F326D6F625850372F343038322F61677265656D656E745F63
          6F6E74726163745F627573696E6573735F68616E647368616B655F69636F6E5F
          3235393234362E706E676980F9FF0000000049454E44AE426082}
        Proportional = True
      end
    end
  end
  inherited pnlBackground: TPanel
    inherited cpLista: TCardPanel
      inherited card_pesquisa: TCard
        inherited dgbDados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZAO'
              Title.Caption = 'Nome'
              Width = 550
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Title.Caption = 'Telefone'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJCPF'
              Title.Caption = 'CNPJ'
              Width = 285
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        object Label1: TLabel [0]
          Left = 16
          Top = 124
          Width = 65
          Height = 28
          Caption = 'C'#243'digo'
          FocusControl = edtCodigo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel [1]
          Left = 98
          Top = 124
          Width = 100
          Height = 28
          Caption = 'CNPJ / CPF'
          FocusControl = edtCnpjCpf
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel [2]
          Left = 253
          Top = 124
          Width = 109
          Height = 28
          Caption = 'Raz'#227'o social'
          FocusControl = edtRazaoSocial
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel [3]
          Left = 661
          Top = 124
          Width = 132
          Height = 28
          Caption = 'Nome fantasia'
          FocusControl = edtFantasia
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel [4]
          Left = 17
          Top = 180
          Width = 62
          Height = 28
          Caption = 'IE / RG'
          FocusControl = edtIERG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel [5]
          Left = 223
          Top = 180
          Width = 78
          Height = 28
          Caption = 'Telefone'
          FocusControl = edtTelefone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel [6]
          Left = 17
          Top = 236
          Width = 106
          Height = 28
          Caption = 'Observa'#231#227'o'
          FocusControl = edtObservacao
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited pnlTituloCadastro: TPanel
          TabOrder = 7
          inherited lblTituloCadastro: TLabel
            Width = 281
            Caption = 'Cadastro de Fornecedor'
            ExplicitWidth = 281
          end
        end
        object edtCodigo: TDBEdit
          Left = 16
          Top = 153
          Width = 76
          Height = 21
          DataField = 'CODIGO'
          DataSource = dsDados
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtCnpjCpf: TDBEdit
          Left = 98
          Top = 154
          Width = 146
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJCPF'
          DataSource = dsDados
          TabOrder = 1
        end
        object edtRazaoSocial: TDBEdit
          Left = 253
          Top = 154
          Width = 400
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RAZAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtFantasia: TDBEdit
          Left = 661
          Top = 154
          Width = 350
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FANTASIA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtIERG: TDBEdit
          Left = 17
          Top = 207
          Width = 200
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IERG'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtTelefone: TDBEdit
          Left = 223
          Top = 207
          Width = 120
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONE'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtObservacao: TDBEdit
          Left = 17
          Top = 264
          Width = 995
          Height = 21
          CharCase = ecUpperCase
          DataField = 'OBSERVACAO'
          DataSource = dsDados
          TabOrder = 6
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 929
    Top = 73
  end
end
