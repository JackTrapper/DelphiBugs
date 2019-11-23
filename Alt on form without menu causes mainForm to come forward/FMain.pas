unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Close1: TMenuItem;
    Button1: TButton;
    procedure Close1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
	FChild;

procedure TfrmMain.Button1Click(Sender: TObject);
var
	f: TfrmChild;
begin
	f := TfrmChild.Create(Self);
   f.Show;
end;

procedure TfrmMain.Close1Click(Sender: TObject);
begin
	Close;

end;

end.
