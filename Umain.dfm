object main: Tmain
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Adresy'
  ClientHeight = 321
  ClientWidth = 724
  Color = clBtnFace
  Constraints.MinHeight = 350
  Constraints.MinWidth = 730
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmglowne
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    724
    321)
  PixelsPerInch = 96
  TextHeight = 17
  object btnnowy: TButton
    Left = 8
    Top = 281
    Width = 110
    Height = 35
    Anchors = [akLeft, akBottom]
    Caption = 'Nowy adres'
    TabOrder = 0
    OnClick = btnnowyClick
    ExplicitTop = 247
  end
  object btnedit: TButton
    Left = 124
    Top = 281
    Width = 110
    Height = 35
    Anchors = [akLeft, akBottom]
    Caption = 'Edycja adresu'
    TabOrder = 1
    OnClick = btneditClick
    ExplicitTop = 247
  end
  object dbgrdadresy: TDBGrid
    Left = 8
    Top = 8
    Width = 709
    Height = 266
    Anchors = [akLeft, akTop, akRight, akBottom]
    PopupMenu = pmgrid
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = EASTEUROPE_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nazwa'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ulica'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kod_poczt'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'miejscowosc'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_uzytkownik'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wspolny'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uzytkownik'
        Width = 95
        Visible = True
      end>
  end
  object pmgrid: TPopupMenu
    Left = 232
    Top = 72
    object pmUsunadres: TMenuItem
      Caption = 'Usu'#324' adres'
      OnClick = pmUsunadresClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object pmHistoria: TMenuItem
      Caption = 'Historia operacji'
      OnClick = pmHistoriaClick
    end
  end
  object mmglowne: TMainMenu
    Left = 432
    Top = 200
    object pmProgram: TMenuItem
      Caption = 'Program'
      object pmZakoncz: TMenuItem
        Caption = 'Zako'#324'cz'
        OnClick = pmZakonczClick
      end
    end
    object pmSlowniki: TMenuItem
      Caption = 'S'#322'owniki'
      object pmUzytkownicy: TMenuItem
        Caption = 'U'#380'ytkownicy'
        OnClick = pmUzytkownicyClick
      end
    end
    object pmPomoc: TMenuItem
      Caption = 'Pomoc'
      object pmOProgramie: TMenuItem
        Caption = 'O Programie'
      end
    end
  end
end
