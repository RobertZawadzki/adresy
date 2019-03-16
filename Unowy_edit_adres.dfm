object nowy_edit_adres: Tnowy_edit_adres
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Nowy adres'
  ClientHeight = 304
  ClientWidth = 450
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
    Width = 47
    Height = 17
    Caption = 'Nazwa*:'
  end
  object lbl2: TLabel
    Left = 8
    Top = 53
    Width = 31
    Height = 17
    Caption = 'Ulica:'
  end
  object lbl3: TLabel
    Left = 8
    Top = 90
    Width = 66
    Height = 17
    Caption = 'Kod poczt.:'
  end
  object lbl4: TLabel
    Left = 8
    Top = 127
    Width = 77
    Height = 17
    Caption = 'Miejscowo'#347#263':'
  end
  object lbl5: TLabel
    Left = 8
    Top = 164
    Width = 72
    Height = 17
    Caption = 'U'#380'ytkownik*:'
  end
  object lbl6: TLabel
    Left = 8
    Top = 201
    Width = 53
    Height = 17
    Caption = 'Wsp'#243'lny:'
  end
  object lbl7: TLabel
    Left = 8
    Top = 232
    Width = 111
    Height = 17
    Caption = '* pola obowi'#261'zkowe'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object btnzapisz: TButton
    Left = 8
    Top = 262
    Width = 110
    Height = 35
    Caption = 'Dodaj'
    TabOrder = 6
    OnClick = btnzapiszClick
  end
  object btnanuluj: TButton
    Left = 332
    Top = 262
    Width = 110
    Height = 35
    Caption = 'Anuluj'
    TabOrder = 7
    OnClick = btnanulujClick
  end
  object dbedt1: TDBEdit
    Left = 104
    Top = 8
    Width = 338
    Height = 25
    TabOrder = 0
  end
  object dbedt2: TDBEdit
    Left = 104
    Top = 50
    Width = 338
    Height = 25
    TabOrder = 1
  end
  object dbedt3: TDBEdit
    Left = 104
    Top = 87
    Width = 89
    Height = 25
    TabOrder = 2
  end
  object dbedt4: TDBEdit
    Left = 104
    Top = 124
    Width = 338
    Height = 25
    TabOrder = 3
  end
  object dbcbb1: TDBComboBox
    Left = 104
    Top = 161
    Width = 338
    Height = 25
    TabOrder = 4
  end
  object dbchk1: TDBCheckBox
    Left = 104
    Top = 202
    Width = 97
    Height = 17
    Caption = 'dbchk1'
    TabOrder = 5
  end
end
