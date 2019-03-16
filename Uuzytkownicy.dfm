object uzytkownicy: Tuzytkownicy
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'U'#380'ytkownicy - Adresy'
  ClientHeight = 296
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object btnnowy: TButton
    Left = 8
    Top = 251
    Width = 110
    Height = 35
    Caption = 'Nowy'
    TabOrder = 0
    OnClick = btnnowyClick
  end
  object btnedit: TButton
    Left = 124
    Top = 251
    Width = 110
    Height = 35
    Caption = 'Edycja'
    TabOrder = 1
    OnClick = btneditClick
  end
  object btnwyjdz: TButton
    Left = 291
    Top = 251
    Width = 110
    Height = 35
    Caption = 'Wyjd'#378
    TabOrder = 2
    OnClick = btnwyjdzClick
  end
  object dbgrduzytkownicy: TDBGrid
    Left = 8
    Top = 8
    Width = 393
    Height = 237
    DataSource = DM.dsuzytkownicy
    PopupMenu = pmgrid
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = EASTEUROPE_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'uzytkownik'
        Visible = True
      end>
  end
  object pmgrid: TPopupMenu
    Left = 232
    Top = 72
    object pmUsunuzytkownika: TMenuItem
      Caption = 'Usu'#324' u'#380'ytkownika'
      OnClick = pmUsunuzytkownikaClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object pmHistoria: TMenuItem
      Caption = 'Historia operacji'
      OnClick = pmHistoriaClick
    end
  end
end
