inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Clientes'
      ExplicitWidth = 81
    end
    inherited pnlIcone: TPanel
      inherited imgIcon: TImage
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000970
          48597300000EC400000EC401952B0E1B000005114944415478DAED967950D347
          14C7DF2F040889D5421D3B9D691194221551391A498C86205A2410A416CF469B
          525B6D2B0D5A5BB548EC08F69081A154A875E808620FD191209880184851020A
          CA8D8ADCB6B5D372140573FFBAFB9B62C571949074FA8F6F2633BF7DFB76F793
          B7BBDFB704FCCF463C0178023091415C81480404B112809C8E9A46344D0F90E6
          2B069AB1F8D239C5F5FF1480132CCAA011C49687F591C8D0840A9D81D85C5321
          EFB539006789C89720A19640F6A838C4D13BA2D7FBD79D57FE611300363B7432
          9DE5900004194C1034DFF18C319390AA51C9B7D90400ED792A4123A4743A9DA4
          DBD9115A9DEEB16350169A2B5505736C03102C52A0AC87BA383F0D69C9FB20E5
          AB4370A5BEE97100B710C0733602882844A917CE9FEB0D5FA72451BEEB6DED50
          5E51054D2D57E1975F7F83DBB787293F8BC50483D1681E18186C41003E3601E0
          0844876934E22DD9EE6DB03478F163E3F34E1592A9E987B335650512DB002C11
          C546AF084F8B142E83B6F64E30188CE0FD9227B8BBB952FDED1D5DD072B50DEC
          EDEDE1C5996E2823B760A72C294AA32ACCB71A40F8AA3884CB7939238817E831
          75EA3384A7C70CBCBFA0D7EBC1D1D1918AD1E9F4E0E0600FF876B6DDE880BB5A
          AD5979B6BC59A5AE8C2D961F2BB70A20392D3373B6D7AC779E9D3695F49BEF43
          539E2D03741B2044B0684CDCF9CA8BF0675F3FAC880885CB758DE6FE8141A2E6
          72FDC15D1F6EDD6A15C027B2CFF60A8278094E0C86991B186047926674C4D140
          1A6D4C1CCE0AFED190BFB2BAC684B68956A42C4D3890B427D12A0051B4242A33
          6DFF896BD7DB49017FA1DDDD91216A21266BCABD7FCEE3B241A71D0693D1000C
          E664F8F94295196D1511B36547A4529E7BDA2A003E9F4F8F5CB9EE94D72C8FB0
          E5CB826978716A20DA6F7C0E8E9F3C0DAFAF5D09F7FB4BCEA9CD0D4DAD053BA4
          AAD7D09D305905306A59393FD4BE295EE3F760DA4717BDDF72BECF6BD8B87ED5
          BCF1CC3B6E807592F7B76765241F60301C099C762C3833DDA7538B7776F540DF
          C020081673B108915B3ED82543B1FB6C0A309BCF9FB4E7BDB8D635D191CFE3F6
          E0E05F80D24C65C1C7DB0B5C5C9CA93879A1B2EFF3A454CFAAAA927E9B02600B
          095FCBFB347E7B097781BF136E77F5DCA4FC6EAE1413D43534196589C92B0AF2
          B28BC63BA7C50F120C11B361756E8470E974169349F9B45A1D14159FFBFDC8D1
          9F248527731496CC37A127596060A053D42A71D79CD9B3A6E136129EC652453E
          57AD56DFB174AE710160398E122D8F73737DC1976E4F67609F4EA79BB26C099F
          52234589CAC06432A9C58D06A3B6BBF7E6E513F945298A53B92AAB01DE95EE96
          6D8B7D5B864EFC98D883DF1E81CD316230994C907D2C0F3649D68F19D7DED94D
          A6A41F4EC8484D9AB8120AA33788D2BFDC978FAA1E1557DFD8429D782CB765EA
          0B507BA501180C06E0770256C3E19111AA12E28285ADB3BB878CFB48162E3F7E
          E4CC8400BECBF9F19244BC3A60B48D2A1C842E0DA2BE0F651D85565482510500
          DFB973E00DF16ACA5F5C5A0EAF8404DD9B0389521512258EC5003E3CA1F33707
          F6F6A102742FA6BC42031CB63F2AC30E58EF4151AC022C86E16121C0E3B0A1BF
          7F003A902805F8FD2B829AEA5AB33436DEF9E245E59045000B0511DED959E94D
          58ED464DAF3780D16404A69313545CA886C42FD20097C6F88FA5B068E10218BA
          7D079E9AC41A23CD37D00366E326A9576559C1358B00D88B22DCC3C3827632FF
          B9EB0F5A47470FD4353653DFF37CBC61E60CD787C60DDD1986B3A5AAFD9AB233
          DD0FEBFF1BE714143FB9445A210000000049454E44AE426082}
      end
    end
  end
  inherited pnlRodape: TPanel
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
    inherited btnEditar: TSpeedButton
      OnClick = btnEditarClick
    end
    inherited btnNovo: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TSpeedButton
      OnClick = btnExcluirClick
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
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RAZAO'
              Title.Caption = 'Raz'#227'o Social'
              Width = 242
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FANTASIA'
              Title.Caption = 'Nome fantasia'
              Width = 206
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Title.Caption = 'Telefone'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Width = 179
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        ExplicitWidth = 1022
        ExplicitHeight = 469
        object Label1: TLabel
          Left = 17
          Top = 121
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
        object Label2: TLabel
          Left = 254
          Top = 121
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
        object Label3: TLabel
          Left = 662
          Top = 121
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
        object Label4: TLabel
          Left = 99
          Top = 121
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
        object Label5: TLabel
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
        object Label6: TLabel
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
        object Label7: TLabel
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
        object pnlTituloCadCliente: TPanel
          Left = 0
          Top = 0
          Width = 1022
          Height = 113
          Align = alTop
          BevelOuter = bvNone
          Color = 15461355
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8816262
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object lblTituloCadastro: TLabel
            Left = 17
            Top = 16
            Width = 241
            Height = 37
            Caption = 'Cadastro de Clientes'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -27
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtCodigo: TDBEdit
          Left = 17
          Top = 151
          Width = 76
          Height = 21
          DataField = 'CODIGO'
          DataSource = dsDados
          ReadOnly = True
          TabOrder = 1
        end
        object edtRazaoSocial: TDBEdit
          Left = 254
          Top = 151
          Width = 400
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RAZAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtFantasia: TDBEdit
          Left = 662
          Top = 151
          Width = 350
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FANTASIA'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtCnpjCpf: TDBEdit
          Left = 99
          Top = 151
          Width = 146
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJCPF'
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
        object edtIERG: TDBEdit
          Left = 17
          Top = 207
          Width = 200
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IERG'
          DataSource = dsDados
          TabOrder = 6
        end
        object edtObservacao: TDBEdit
          Left = 17
          Top = 264
          Width = 995
          Height = 21
          CharCase = ecUpperCase
          DataField = 'OBSERVACAO'
          DataSource = dsDados
          TabOrder = 7
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 873
    Top = 65
  end
end
