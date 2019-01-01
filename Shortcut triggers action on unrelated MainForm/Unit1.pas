unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    ActionList1: TActionList;
    actSave: TAction;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    SaveandClose1: TMenuItem;
    procedure actSaveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
	Unit2;

procedure TForm1.actSaveExecute(Sender: TObject);
var
	mr: TModalResult;
begin
	mr := TaskDlgEx(Self, 'Are you sure you wish to pretent to save', 'This is only a demo app, and this text nobody will ever see.',
   		tdiNone, [tcbYes, tcbCancel], ['Save']);

	if mr <> mrYes then
   	Exit;

	//...here i am saving on my imaginary floppy...
	Close;
end;

end.
