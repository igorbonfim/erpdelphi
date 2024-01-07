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
  inherited pnlRodape: TPanel
    ExplicitLeft = 0
    ExplicitTop = 510
    inherited btnCancelar: TSpeedButton
      Left = 611
      ExplicitLeft = 821
    end
    inherited btnEditar: TSpeedButton
      Left = 508
      ExplicitLeft = 718
    end
    inherited btnNovo: TSpeedButton
      Left = 405
      ExplicitLeft = 615
    end
    inherited btnSalvar: TSpeedButton
      Left = 714
      ExplicitLeft = 924
    end
    inherited btnExcluir: TSpeedButton
      Left = -5000
      Align = alNone
      ExplicitLeft = -5000
    end
    inherited pnlBotaoSelecionar: TPanel
      AlignWithMargins = True
      Margins.Left = 50
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
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
              FieldName = 'TIPOESTOQUE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORDESCONTO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORTOTAL'
              Width = 64
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        inherited pnlTituloCadastro: TPanel
          Height = 153
          BorderStyle = bsSingle
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
            Left = 888
            Width = 130
            Height = 149
            TabOrder = 1
            ExplicitLeft = 888
            ExplicitWidth = 130
            ExplicitHeight = 149
            inherited btnVoltarPesquisa: TSpeedButton
              Width = 124
              Height = 61
              Align = alTop
              ExplicitLeft = 3
              ExplicitWidth = 179
              ExplicitHeight = 61
            end
          end
          object edtCodigoVendedor: TSearchBox
            Left = 10
            Top = 39
            Width = 114
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            NumbersOnly = True
            TabOrder = 0
            OnExit = edtCodigoVendedorExit
          end
          object edtProduto: TSearchBox
            Left = 10
            Top = 108
            Width = 400
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 2
            OnInvokeSearch = edtProdutoInvokeSearch
          end
          object edtQuantidade: TEdit
            Left = 416
            Top = 108
            Width = 80
            Height = 21
            NumbersOnly = True
            TabOrder = 3
            OnExit = edtQuantidadeExit
          end
          object edtVlrUnitario: TEdit
            Left = 502
            Top = 108
            Width = 121
            Height = 21
            NumbersOnly = True
            TabOrder = 4
            OnExit = edtQuantidadeExit
          end
          object edtSubtotal: TEdit
            Left = 629
            Top = 108
            Width = 121
            Height = 21
            NumbersOnly = True
            ReadOnly = True
            TabOrder = 5
          end
        end
        object dbgItensVendas: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 158
          Width = 1012
          Height = 220
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = dgbDadosDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO_ITEM'
              Width = 127
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_UNITARIO'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_DESCONTO'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Width = 411
              Visible = True
            end>
        end
        object pnlTotais: TPanel
          AlignWithMargins = True
          Left = 0
          Top = 383
          Width = 1022
          Height = 85
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 1
          Align = alBottom
          BevelOuter = bvNone
          Color = 7500402
          ParentBackground = False
          TabOrder = 2
          object Label2: TLabel
            AlignWithMargins = True
            Left = 923
            Top = 7
            Width = 82
            Height = 31
            Margins.Top = 10
            Margins.Bottom = 0
            Caption = 'Subtotal'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -23
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object edtTotalVenda: TEdit
            Left = 872
            Top = 35
            Width = 133
            Height = 37
            Alignment = taRightJustify
            BorderStyle = bsNone
            Color = 7500402
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -23
            Font.Name = 'Segoe UI Semilight'
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
    DataSet = ServiceCadastro.QRY_movestoque
    Left = 521
    Top = 49
  end
  object dsItens: TDataSource
    DataSet = ServiceCadastro.QRY_movestoque_item
    Left = 609
    Top = 49
  end
end
