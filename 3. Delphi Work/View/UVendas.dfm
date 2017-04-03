object FrmVendas: TFrmVendas
  Left = 254
  Top = 162
  Width = 1161
  Height = 603
  Caption = 'FrmVendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ListaVendas: TListView
    Left = 8
    Top = 96
    Width = 1129
    Height = 433
    Columns = <
      item
        Caption = 'Data.Venda'
        Width = 120
      end
      item
        Caption = 'Cod.Cliente'
        Width = 120
      end
      item
        Caption = 'Cliente'
        Width = 250
      end
      item
        Caption = 'Cod.Cliente'
        Width = 100
      end
      item
        Caption = 'Produto'
        Width = 250
      end
      item
        Caption = 'Qtd.Produto'
        Width = 100
      end
      item
        Caption = 'Valor.Item'
        Width = 95
      end>
    FlatScrollBars = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object MainMenu1: TMainMenu
    Left = 136
    object VendasF21: TMenuItem
      Caption = 'Vendas (F2)'
      ShortCut = 113
      object Listar1: TMenuItem
        Caption = 'Listar'
        ShortCut = 116
      end
      object Relatrio1: TMenuItem
        Caption = 'Relat'#243'rio'
        ShortCut = 16466
      end
    end
  end
end
