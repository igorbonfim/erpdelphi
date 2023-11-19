inherited ViewProdutos: TViewProdutos
  Caption = 'Produtos'
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Produtos'
      ExplicitWidth = 95
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMECOMPLETO'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMEPOPULAR'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGOBARRA'
              Title.Caption = 'C'#243'digo de barras'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REFERENCIA'
              Title.Caption = 'Refer'#234'ncia'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRUPO'
              Title.Caption = 'Grupo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBGRUPO'
              Title.Caption = 'Subgrupo'
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_produto1
  end
  object dsProdutoDetalhe: TDataSource
    DataSet = ServiceCadastro.QRY_produto2
    Left = 433
    Top = 233
  end
end
