unit Uuzytkownicy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Menus;

type
  Tuzytkownicy = class(TForm)
    btnnowy: TButton;
    btnedit: TButton;
    btnwyjdz: TButton;
    dbgrduzytkownicy: TDBGrid;
    pmgrid: TPopupMenu;
    pmUsunuzytkownika: TMenuItem;
    N1: TMenuItem;
    pmHistoria: TMenuItem;
    procedure btnwyjdzClick(Sender: TObject);
    procedure btnnowyClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure pmUsunuzytkownikaClick(Sender: TObject);
    procedure pmHistoriaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uzytkownicy: Tuzytkownicy;

implementation

{$R *.dfm}

uses
  Unowy_edit_uzytkownik, UDataModule, Uhistoria;

procedure Tuzytkownicy.btneditClick(Sender: TObject);
begin
  nowy_edit_uzytkownik.Caption := 'Edycja u퓓tkownika';
  nowy_edit_uzytkownik.btnzapisz.Caption := 'Zapisz';
  nowy_edit_uzytkownik.btnzapisz.Enabled := True;
  nowy_edit_uzytkownik.Top := uzytkownicy.Top + 20;
  nowy_edit_uzytkownik.Left := uzytkownicy.Left + 20;
  nowy_edit_uzytkownik.Show;
end;

procedure Tuzytkownicy.btnnowyClick(Sender: TObject);
begin
  nowy_edit_uzytkownik.Caption := 'Nowy u퓓tkownik';
  nowy_edit_uzytkownik.btnzapisz.Caption := 'Dodaj';
  nowy_edit_uzytkownik.btnzapisz.Enabled := False;
  nowy_edit_uzytkownik.Top := uzytkownicy.Top + 20;
  nowy_edit_uzytkownik.Left := uzytkownicy.Left + 20;
  nowy_edit_uzytkownik.Show;
end;

procedure Tuzytkownicy.btnwyjdzClick(Sender: TObject);
begin
  Close;
end;

procedure Tuzytkownicy.pmHistoriaClick(Sender: TObject);
begin
  with DM.qryhistoria, SQL do
  begin
    Close;
    Clear;
    Add('SELECT panel, rekord, operacja, uzytkownik, komputer, data_utworzenia FROM historia');
    Add('WHERE panel=:panel and rekord=:rekord ORDER by data_utworzenia DESC');
    ParamByName('panel').AsInteger := 2;
    ParamByName('rekord').AsInteger := DM.qryuzytkownicy.FieldByName('id').AsInteger;
    Open;
  end;
  historia.Top := Mouse.CursorPos.Y;
  historia.Left := Mouse.CursorPos.X;
  historia.ShowModal;
end;

procedure Tuzytkownicy.pmUsunuzytkownikaClick(Sender: TObject);
begin
  if Application.MessageBox('Czy na pewno usun방 u퓓tkownika?', 'Uwaga!', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 +
    MB_TOPMOST) = IDYES then
  begin
    // sprawdzenie czy u퓓tkownik nie utworzy� 풹dnego adresu
  end;
end;

end.

