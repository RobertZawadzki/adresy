object historia: Thistoria
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Adresy - Historia operacji'
  ClientHeight = 378
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object btnok: TButton
    Left = 215
    Top = 338
    Width = 110
    Height = 35
    Caption = 'OK'
    TabOrder = 2
    OnClick = btnokClick
  end
  object dbgrdhistoria: TDBGrid
    Left = 8
    Top = 8
    Width = 525
    Height = 178
    DataSource = DM.dshistoria
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = EASTEUROPE_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data_utworzenia'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uzytkownik'
        Width = 173
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'komputer'
        Width = 172
        Visible = True
      end>
  end
  object dbmmohistoria: TDBMemo
    Left = 8
    Top = 192
    Width = 525
    Height = 140
    DataField = 'operacja'
    DataSource = DM.dshistoria
    ReadOnly = True
    TabOrder = 1
  end
end
