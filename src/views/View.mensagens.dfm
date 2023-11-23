inherited ViewMensagens: TViewMensagens
  BorderStyle = bsNone
  Caption = 'Mensagens'
  ClientHeight = 150
  ClientWidth = 782
  ExplicitWidth = 782
  ExplicitHeight = 150
  TextHeight = 13
  object pnlImagens: TPanel
    Left = 0
    Top = 0
    Width = 150
    Height = 150
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
  end
  object pnlConteudo: TPanel
    Left = 150
    Top = 0
    Width = 632
    Height = 150
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 368
    ExplicitTop = 32
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlTitulo: TPanel
      Left = 0
      Top = 0
      Width = 632
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 136
      ExplicitTop = 24
      ExplicitWidth = 185
      object lblTitulo: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 626
        Height = 35
        Align = alClient
        Caption = 'Titulo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 60
        ExplicitHeight = 31
      end
    end
    object pnlBotoes: TPanel
      Left = 0
      Top = 115
      Width = 632
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 170
      ExplicitWidth = 573
      object btnOk: TSpeedButton
        Left = 555
        Top = 0
        Width = 77
        Height = 35
        Cursor = crHandPoint
        Align = alRight
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 496
        ExplicitHeight = 41
      end
      object btnSim: TSpeedButton
        Left = 401
        Top = 0
        Width = 77
        Height = 35
        Cursor = crHandPoint
        Align = alRight
        Caption = 'SIM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 267
        ExplicitTop = 3
        ExplicitHeight = 41
      end
      object btnNao: TSpeedButton
        Left = 478
        Top = 0
        Width = 77
        Height = 35
        Cursor = crHandPoint
        Align = alRight
        Caption = 'N'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 496
        ExplicitHeight = 41
      end
    end
    object mmoTexto: TMemo
      AlignWithMargins = True
      Left = 3
      Top = 44
      Width = 626
      Height = 68
      Align = alClient
      BevelInner = bvNone
      BorderStyle = bsNone
      Lines.Strings = (
        '')
      TabOrder = 2
      ExplicitLeft = 0
      ExplicitTop = 41
      ExplicitWidth = 573
      ExplicitHeight = 123
    end
  end
end
