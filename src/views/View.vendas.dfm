inherited ViewVendas: TViewVendas
  Caption = 'Vendas'
  TextHeight = 13
  inherited pnlTopo: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Vendas'
      ExplicitWidth = 75
    end
  end
  inherited pnlBackground: TPanel
    inherited cpLista: TCardPanel
      inherited card_cadastro: TCard
        inherited pnlTituloCadastro: TPanel
          Height = 153
          ExplicitTop = -3
          ExplicitHeight = 153
          inherited lblTituloCadastro: TLabel
            Left = 10
            Top = 4
            Width = 97
            Height = 31
            Align = alNone
            Caption = 'Vendedor'
            Font.Height = -23
            ExplicitLeft = 10
            ExplicitTop = 4
            ExplicitWidth = 97
            ExplicitHeight = 31
          end
          object lblNomeVendedor: TLabel [1]
            AlignWithMargins = True
            Left = 130
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
          object lblProdutos: TLabel [2]
            AlignWithMargins = True
            Left = 10
            Top = 74
            Width = 198
            Height = 31
            Margins.Top = 10
            Margins.Bottom = 0
            Caption = 'Escolha um produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -23
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object lblQuantidade: TLabel [3]
            AlignWithMargins = True
            Left = 416
            Top = 74
            Width = 37
            Height = 31
            Margins.Top = 10
            Margins.Bottom = 0
            Caption = 'Qtd'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -23
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel [4]
            AlignWithMargins = True
            Left = 502
            Top = 74
            Width = 111
            Height = 31
            Margins.Top = 10
            Margins.Bottom = 0
            Caption = 'Vlr Unitario'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -23
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object lblSubtotal: TLabel [5]
            AlignWithMargins = True
            Left = 629
            Top = 74
            Width = 82
            Height = 31
            Margins.Top = 10
            Margins.Bottom = 0
            Caption = 'Subtotal'
            Font.Charset = ANSI_CHARSET
            Font.Color = 8816262
            Font.Height = -23
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object btnSalvarProduto: TSpeedButton [6]
            Left = 755
            Top = 108
            Width = 81
            Height = 25
            Caption = 'Salvar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -17
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          inherited pnlVoltar: TPanel
            Left = 892
            Width = 130
            Height = 153
            TabOrder = 1
            ExplicitLeft = 892
            ExplicitTop = 0
            ExplicitWidth = 130
            ExplicitHeight = 227
            inherited btnVoltarPesquisa: TSpeedButton
              Width = 124
              Height = 61
              Align = alTop
              ExplicitLeft = 3
              ExplicitWidth = 179
              ExplicitHeight = 61
            end
          end
          object SearchBox1: TSearchBox
            Left = 10
            Top = 39
            Width = 114
            Height = 25
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            NumbersOnly = True
            TabOrder = 0
          end
          object edtProduto: TSearchBox
            Left = 10
            Top = 108
            Width = 400
            Height = 25
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 2
          end
          object edtQuantidade: TEdit
            Left = 416
            Top = 108
            Width = 80
            Height = 25
            TabOrder = 3
          end
          object edtVlrUnitario: TEdit
            Left = 502
            Top = 108
            Width = 121
            Height = 25
            TabOrder = 4
          end
          object edtSubtotal: TEdit
            Left = 629
            Top = 108
            Width = 121
            Height = 25
            TabOrder = 5
          end
        end
        object dbgItensVendas: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 158
          Width = 1012
          Height = 221
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = dgbDadosDblClick
        end
        object pnlTotais: TPanel
          Left = 0
          Top = 384
          Width = 1022
          Height = 85
          Align = alBottom
          BevelOuter = bvNone
          Color = 7500402
          ParentBackground = False
          TabOrder = 2
          ExplicitLeft = -1
          ExplicitTop = 381
          object Label2: TLabel
            AlignWithMargins = True
            Left = 923
            Top = 7
            Width = 88
            Height = 31
            Margins.Top = 10
            Margins.Bottom = 0
            Caption = 'Subtotal'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -23
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object edtSubtotalPanelTotais: TEdit
            Left = 832
            Top = 41
            Width = 181
            Height = 38
            Alignment = taRightJustify
            BorderStyle = bsNone
            Color = 7500402
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -33
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = 'R$ 150,00'
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    Left = 521
    Top = 49
  end
end
