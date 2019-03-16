unit Unowy_edit_uzytkownik;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tnowy_edit_uzytkownik = class(TForm)
    btnzapisz: TButton;
    btnanuluj: TButton;
    lbl1: TLabel;
    dbedt1: TDBEdit;
    lbl7: TLabel;
    procedure btnanulujClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnzapiszClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  nowy_edit_uzytkownik: Tnowy_edit_uzytkownik;

implementation

{$R *.dfm}

procedure Tnowy_edit_uzytkownik.btnanulujClick(Sender: TObject);
begin
  Close;
end;

procedure Tnowy_edit_uzytkownik.btnzapiszClick(Sender: TObject);
begin
  // dla historii operacji - Panel = 2
end;

procedure Tnowy_edit_uzytkownik.FormShow(Sender: TObject);
begin
  dbedt1.SetFocus;
end;

end.

