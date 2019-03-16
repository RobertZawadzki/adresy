unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, System.Rtti, Vcl.ComCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus;

type
  Tmain = class(TForm)
    btnnowy: TButton;
    btnedit: TButton;
    dbgrdadresy: TDBGrid;
    pmgrid: TPopupMenu;
    pmUsunadres: TMenuItem;
    N1: TMenuItem;
    pmHistoria: TMenuItem;
    mmglowne: TMainMenu;
    pmProgram: TMenuItem;
    pmZakoncz: TMenuItem;
    pmSlowniki: TMenuItem;
    pmUzytkownicy: TMenuItem;
    pmPomoc: TMenuItem;
    pmOProgramie: TMenuItem;
    procedure btneditClick(Sender: TObject);
    procedure btnnowyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pmUsunadresClick(Sender: TObject);
    procedure pmHistoriaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure pmZakonczClick(Sender: TObject);
    procedure pmUzytkownicyClick(Sender: TObject);
  private
    { Private declarations }
  public
    uzytkownik, komputer: string;
    { Public declarations }
  end;

var
  main: Tmain;

implementation

{$R *.dfm}

uses
  Unowy_edit_adres, Uhistoria, UDataModule, Uuzytkownicy;

procedure Tmain.btneditClick(Sender: TObject);
begin
  nowy_edit_adres.Caption := 'Edycja adresu';
  nowy_edit_adres.btnzapisz.Caption := 'Zapisz';
  nowy_edit_adres.btnzapisz.Enabled := True;
  nowy_edit_adres.Top := main.Top + 20;
  nowy_edit_adres.Left := main.Left + 20;
  nowy_edit_adres.Show;
end;

procedure Tmain.btnnowyClick(Sender: TObject);
begin
  nowy_edit_adres.Caption := 'Nowy adres';
  nowy_edit_adres.btnzapisz.Caption := 'Dodaj';
  nowy_edit_adres.btnzapisz.Enabled := False;
  nowy_edit_adres.Top := main.Top + 20;
  nowy_edit_adres.Left := main.Left + 20;
  nowy_edit_adres.Show;
end;

procedure Tmain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Application.MessageBox('Czy na pewno zamkn¹æ program?', 'Uwaga!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDNO then
  begin
    CanClose := False;
  end;

end;

procedure Tmain.FormCreate(Sender: TObject);
begin
  komputer := GetEnvironmentVariable('COMPUTERNAME');
  uzytkownik := GetEnvironmentVariable('USERNAME');
end;

procedure Tmain.FormShow(Sender: TObject);
begin
  with DM.qryadresy, SQL do
  begin
    Clear;
    Close;
    Add('select a.id, a.nazwa, a.ulica, a.kod_poczt, a.miejscowosc, a.id_uzytkownik, a.wspolny, u.uzytkownik');
    Add('from adresy a inner join uzytkownicy u on a.id_uzytkownik = u.id');
    Add('order by a.nazwa');
    Open;
  end;
end;

procedure Tmain.pmHistoriaClick(Sender: TObject);
begin
  with DM.qryhistoria, SQL do
  begin
    Close;
    Clear;
    Add('SELECT panel, rekord, operacja, uzytkownik, komputer, data_utworzenia FROM historia');
    Add('WHERE panel=:panel and rekord=:rekord ORDER by data_utworzenia DESC');
    ParamByName('panel').AsInteger := 1;
    ParamByName('rekord').AsInteger := DM.qryadresy.FieldByName('id').AsInteger;
    Open;
  end;
  historia.Top := Mouse.CursorPos.Y;
  historia.Left := Mouse.CursorPos.X;
  historia.ShowModal;
end;

procedure Tmain.pmUsunadresClick(Sender: TObject);
begin
  if Application.MessageBox('Czy na pewno usun¹æ adres?', 'Uwaga!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDYES then
  begin
  // usuniêcie rekordu
  end;

end;

procedure Tmain.pmUzytkownicyClick(Sender: TObject);
begin
  uzytkownicy.Top := main.Top + 20;
  uzytkownicy.Left := main.Left + 20;
  uzytkownicy.ShowModal;
end;

procedure Tmain.pmZakonczClick(Sender: TObject);
begin
  if Application.MessageBox('Czy na pewno zamkn¹æ program?', 'Uwaga!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDYES then
  begin
    Application.Terminate;
  end;

end;

end.

