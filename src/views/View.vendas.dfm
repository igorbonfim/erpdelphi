inherited ViewVendas: TViewVendas
  Caption = 'Vendas'
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Width = 881
      Height = 35
      Caption = 'Vendas'
      ExplicitWidth = 75
    end
  end
  inherited pnlBackground: TPanel
    inherited cpLista: TCardPanel
      ActiveCard = card_cadastro
      inherited card_cadastro: TCard
        inherited pnlTituloCadastro: TPanel
          Height = 80
          ExplicitHeight = 80
          inherited lblTituloCadastro: TLabel
            Left = 39
            Top = 4
            Width = 97
            Height = 31
            Align = alNone
            Caption = 'Vendedor'
            Font.Height = -23
            ExplicitLeft = 39
            ExplicitTop = 4
            ExplicitWidth = 97
            ExplicitHeight = 31
          end
          inherited btnVoltarPesquisa: TSpeedButton
            Height = 74
          end
          object lblNomeVendedor: TLabel
            AlignWithMargins = True
            Left = 159
            Top = 33
            Width = 194
            Height = 31
            Margins.Top = 10
            Margins.Bottom = 0
            Caption = 'Nome do vendedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -23
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object SearchBox1: TSearchBox
            Left = 39
            Top = 39
            Width = 114
            Height = 25
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            NumbersOnly = True
            TabOrder = 0
          end
        end
      end
    end
  end
end
