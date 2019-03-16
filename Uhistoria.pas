unit Uhistoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Thistoria = class(TForm)
    btnok: TButton;
    dbgrdhistoria: TDBGrid;
    dbmmohistoria: TDBMemo;
    procedure btnokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  historia: Thistoria;

implementation

{$R *.dfm}

procedure Thistoria.btnokClick(Sender: TObject);
begin
  Close;
end;

end.

