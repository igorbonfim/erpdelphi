inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Clientes'
      ExplicitWidth = 81
    end
  end
  inherited pnlRodape: TPanel
    inherited btnEditar: TSpeedButton
      OnClick = btnEditarClick
    end
    inherited btnNovo: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
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
        ExplicitLeft = -2
        ExplicitTop = -3
        ExplicitWidth = 1022
        ExplicitHeight = 469
        object Label1: TLabel
          Left = 17
          Top = 120
          Width = 41
          Height = 13
          Caption = 'CODIGO'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 223
          Top = 120
          Width = 35
          Height = 13
          Caption = 'RAZAO'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 629
          Top = 120
          Width = 50
          Height = 13
          Caption = 'FANTASIA'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 71
          Top = 120
          Width = 44
          Height = 13
          Caption = 'CNPJCPF'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 223
          Top = 168
          Width = 50
          Height = 13
          Caption = 'TELEFONE'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 17
          Top = 168
          Width = 24
          Height = 13
          Caption = 'IERG'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 17
          Top = 224
          Width = 68
          Height = 13
          Caption = 'OBSERVACAO'
          FocusControl = DBEdit7
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
          ExplicitTop = 8
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
        object DBEdit1: TDBEdit
          Left = 17
          Top = 136
          Width = 48
          Height = 21
          DataField = 'CODIGO'
          DataSource = dsDados
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 223
          Top = 136
          Width = 400
          Height = 21
          DataField = 'RAZAO'
          DataSource = dsDados
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 629
          Top = 136
          Width = 350
          Height = 21
          DataField = 'FANTASIA'
          DataSource = dsDados
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 71
          Top = 136
          Width = 146
          Height = 21
          DataField = 'CNPJCPF'
          DataSource = dsDados
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 223
          Top = 184
          Width = 120
          Height = 21
          DataField = 'TELEFONE'
          DataSource = dsDados
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 17
          Top = 184
          Width = 200
          Height = 21
          DataField = 'IERG'
          DataSource = dsDados
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 17
          Top = 240
          Width = 962
          Height = 21
          DataField = 'OBSERVACAO'
          DataSource = dsDados
          TabOrder = 7
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 761
    Top = 65
  end
end
