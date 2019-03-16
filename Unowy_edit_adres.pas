unit Unowy_edit_adres;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, System.Rtti;

type
  Tnowy_edit_adres = class(TForm)
    btnzapisz: TButton;
    btnanuluj: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    dbedt4: TDBEdit;
    dbcbb1: TDBComboBox;
    dbchk1: TDBCheckBox;
    lbl7: TLabel;
    procedure btnanulujClick(Sender: TObject);
    procedure btnzapiszClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  nowy_edit_adres: Tnowy_edit_adres;

implementation

{$R *.dfm}

uses
  Umain;

procedure Tnowy_edit_adres.btnanulujClick(Sender: TObject);
begin
  Close;
end;

procedure Tnowy_edit_adres.btnzapiszClick(Sender: TObject);
begin
  // dla historii operacji - Panel = 1
  Close;
end;

procedure Tnowy_edit_adres.FormShow(Sender: TObject);
begin
  dbedt1.SetFocus;
end;

end.

