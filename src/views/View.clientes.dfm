inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 644
      Height = 35
    end
  end
  inherited pnlRodape: TPanel
    ExplicitLeft = 0
  end
  inherited pnlBackground: TPanel
    ExplicitLeft = 0
    ExplicitTop = 41
    ExplicitWidth = 787
    ExplicitHeight = 464
    inherited cpLista: TCardPanel
      ExplicitWidth = 785
      inherited card_pesquisa: TCard
        ExplicitWidth = 785
        ExplicitHeight = 464
        inherited pnlTituloPesquisa: TPanel
          ExplicitLeft = 0
          ExplicitTop = 0
        end
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
        ExplicitWidth = 785
        ExplicitHeight = 464
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
  end
end
