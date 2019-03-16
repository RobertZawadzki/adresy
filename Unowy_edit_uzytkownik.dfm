object nowy_edit_uzytkownik: Tnowy_edit_uzytkownik
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Nowy u'#380'ytkownik'
  ClientHeight = 162
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object lbl1: TLabel
    Left = 8
    Top = 11
    Width = 95
    Height = 17
    Caption = 'Imi'#281' i nazwisko*:'
  end
  object lbl7: TLabel
    Left = 8
    Top = 88
    Width = 110
    Height = 17
    Caption = '* pole obowi'#261'zkowe'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object btnzapisz: TButton
    Left = 8
    Top = 120
    Width = 110
    Height = 35
    Caption = 'Zapisz'
    TabOrder = 0
    OnClick = btnzapiszClick
  end
  object btnanuluj: TButton
    Left = 262
    Top = 120
    Width = 110
    Height = 35
    Caption = 'Anuluj'
    TabOrder = 1
    OnClick = btnanulujClick
  end
  object dbedt1: TDBEdit
    Left = 112
    Top = 8
    Width = 260
    Height = 25
    TabOrder = 2
  end
end
