inherited ViewFuncionarios: TViewFuncionarios
  Caption = 'Funcion'#225'rios'
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 881
      Height = 35
      Caption = 'Funcion'#225'rio'
      ExplicitWidth = 123
    end
  end
  inherited pnlBackground: TPanel
    inherited cpLista: TCardPanel
      ActiveCard = card_cadastro
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
              Width = 411
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Title.Caption = 'Telefone'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNPJCPF'
              Title.Caption = 'CPF'
              Width = 350
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
        object Label2: TLabel [1]
          Left = 253
          Top = 124
          Width = 198
          Height = 28
          Caption = 'Nome do Funcion'#225'rio'
          FocusControl = edtRazaoSocial
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel [2]
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
        object Label4: TLabel [3]
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
        object Label5: TLabel [4]
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
        object Label6: TLabel [5]
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
            Width = 284
            Height = 50
            Caption = 'Cadastro de Funcion'#225'rio'
            ExplicitWidth = 284
          end
        end
        object edtCodigo: TDBEdit
          Left = 16
          Top = 154
          Width = 76
          Height = 21
          DataField = 'CODIGO'
          DataSource = dsDados
          Enabled = False
          ReadOnly = True
          TabOrder = 0
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
          TabOrder = 4
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
    Left = 465
    Top = 57
  end
end
