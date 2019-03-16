program Project1;

uses
  Vcl.Forms,
  Umain in 'Umain.pas' {main},
  Unowy_edit_adres in 'Unowy_edit_adres.pas' {nowy_edit_adres},
  Uhistoria in 'Uhistoria.pas' {historia},
  UDataModule in 'UDataModule.pas' {DM: TDataModule},
  Uuzytkownicy in 'Uuzytkownicy.pas' {uzytkownicy},
  Unowy_edit_uzytkownik in 'Unowy_edit_uzytkownik.pas' {nowy_edit_uzytkownik};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tnowy_edit_adres, nowy_edit_adres);
  Application.CreateForm(Thistoria, historia);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tuzytkownicy, uzytkownicy);
  Application.CreateForm(Tnowy_edit_uzytkownik, nowy_edit_uzytkownik);
  Application.Run;
end.
