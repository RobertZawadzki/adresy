object DM: TDM
  OldCreateOrder = False
  Height = 370
  Width = 555
  object conEtykietyConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=etykiety')
    Connected = True
    LoginPrompt = False
    Left = 61
    Top = 28
  end
  object qryadresy: TFDQuery
    Active = True
    Connection = conEtykietyConnection
    SQL.Strings = (
      
        'select a.id, a.nazwa, a.ulica, a.kod_poczt, a.miejscowosc, a.id_' +
        'uzytkownik, a.wspolny, u.uzytkownik from adresy a inner join uzy' +
        'tkownicy u on a.id_uzytkownik = u.id order by a.nazwa')
    Left = 56
    Top = 128
  end
  object dsadresy: TDataSource
    DataSet = qryadresy
    Left = 144
    Top = 128
  end
  object qryHistoria: TFDQuery
    Active = True
    Connection = conEtykietyConnection
    SQL.Strings = (
      
        'SELECT panel, rekord, operacja, uzytkownik, komputer, data_utwor' +
        'zenia FROM historia WHERE panel=1 and rekord=1 ORDER by data_utw' +
        'orzenia DESC')
    Left = 59
    Top = 252
  end
  object dshistoria: TDataSource
    DataSet = qryHistoria
    Left = 139
    Top = 256
  end
  object qryUzytkownicy: TFDQuery
    Active = True
    Connection = conEtykietyConnection
    SQL.Strings = (
      'SELECT * FROM etykiety.dbo.uzytkownicy')
    Left = 56
    Top = 190
  end
  object dsuzytkownicy: TDataSource
    DataSet = qryUzytkownicy
    Left = 144
    Top = 192
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 368
    Top = 24
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 216
    Top = 24
  end
end
