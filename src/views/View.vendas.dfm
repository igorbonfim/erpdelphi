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
              FieldName = 'TIPOESTOQUE'
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Title.Caption = 'Data'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HORA'
              Title.Caption = 'Hora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORDESCONTO'
              Title.Caption = 'Vlr Desconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORTOTAL'
              Title.Caption = 'Vlr Total'
              Width = 64
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        inherited pnlTituloCadastro: TPanel
          Height = 153
          BorderStyle = bsSingle
          OnExit = edtQuantidadeExit
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
            Left = 756
            Top = 105
            Width = 81
            Height = 26
            Caption = 'Salvar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -17
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnSalvarProdutoClick
          end
          inherited pnlVoltar: TPanel
            Left = 888
            Width = 130
            Height = 149
            TabOrder = 5
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
            Top = 40
            Width = 114
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            NumbersOnly = True
            TabOrder = 0
            OnExit = edtCodigoVendedorExit
            OnInvokeSearch = edtCodigoVendedorInvokeSearch
          end
          object edtProduto: TSearchBox
            Left = 10
            Top = 108
            Width = 400
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 1
            OnInvokeSearch = edtProdutoInvokeSearch
          end
          object edtQuantidade: TEdit
            Left = 416
            Top = 108
            Width = 80
            Height = 21
            NumbersOnly = True
            TabOrder = 2
            OnExit = edtQuantidadeExit
          end
          object edtVlrUnitario: TEdit
            Left = 502
            Top = 108
            Width = 121
            Height = 21
            NumbersOnly = True
            TabOrder = 3
            OnExit = edtQuantidadeExit
          end
          object edtSubtotal: TEdit
            Left = 629
            Top = 108
            Width = 121
            Height = 21
            NumbersOnly = True
            ReadOnly = True
            TabOrder = 4
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
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_ITEM'
              Title.Caption = 'C'#243'd. Item'
              Width = 127
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Title.Caption = 'Quantidade'
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_UNITARIO'
              Title.Caption = 'Valor'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_DESCONTO'
              Title.Caption = 'Desconto'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_TOTAL'
              Title.Caption = 'Total'
              Width = 210
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
            Left = 792
            Top = 35
            Width = 213
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
            Text = '150,00'
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
  object TBL_ItensMemoria: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode, evDetailCascade]
    FetchOptions.Mode = fmAll
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 729
    Top = 49
    object TBL_ItensMemoriaCOD_MOVESTOQUE: TIntegerField
      FieldName = 'COD_MOVESTOQUE'
    end
    object TBL_ItensMemoriaCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
    end
    object TBL_ItensMemoriaQTD_ITEM: TCurrencyField
      FieldName = 'QTD_ITEM'
    end
    object TBL_ItensMemoriaVLR_UNITARIO: TCurrencyField
      FieldName = 'VLR_UNITARIO'
    end
    object TBL_ItensMemoriaVLR_DESCONTO: TCurrencyField
      FieldName = 'VLR_DESCONTO'
    end
    object TBL_ItensMemoriaVLR_SUBTOTAL: TCurrencyField
      FieldName = 'VLR_SUBTOTAL'
    end
  end
end
