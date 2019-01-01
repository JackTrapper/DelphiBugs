unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    ActionList1: TActionList;
    actFormat: TAction;
    Button1: TButton;
    procedure actFormatExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

type
	TTaskDialogStandardIcon = (
			tdiNone = 0,
			tdiWarning = 1,
			tdiError = 2,
			tdiInformation = 3,
			tdiShield = 4);

function TaskDlgEx(const Parent: TWinControl; const MainInstruction, Msg: string; MainIcon: TTaskDialogStandardIcon; const Buttons: array of TTaskDialogCommonButton; const ButtonCaptions: array of string): TModalResult;

implementation

{$R *.dfm}

uses
	TaskDialog, Vcl.Consts, Unit1;

procedure TForm2.Button1Click(Sender: TObject);
var
	f: TForm;
begin
	f := TForm1.Create(SElf);
   f.Show;
end;

procedure TForm2.actFormatExecute(Sender: TObject);
begin
	TaskDlgEx(Self, 'Are you sure you wish for format drive C:?',
   		'All data currently on C: will be lost.', tdiWarning, [tcbYes, tcbCancel], ['Format Hard Drive']);

end;

function CommonButtonCaption(const commonButton: TTaskDialogCommonButton): string;
begin
//	CommonButtonCaptions: array[TTaskDialogCommonButton] of Pointer = (@SMsgDlgOK, @SMsgDlgYes, @SMsgDlgNo, @SMsgDlgCancel, @SMsgDlgRetry, @SCloseButton);

	case commonButton of
	tcbOk: Result := LoadResString(@SMsgDlgOK);
	tcbYes: Result := LoadResString(@SMsgDlgYes);
	tcbNo: Result := LoadResString(@SMsgDlgNo);
	tcbCancel: Result := LoadResString(@SMsgDlgCancel);
	tcbRetry: Result := LoadResString(@SMsgDlgRetry);
	tcbClose: Result := LoadResString(@SCloseButton);
	else
		Result := '';
	end;
end;

function TaskDlgEx(const Parent: TWinControl; const MainInstruction, Msg: string; MainIcon: TTaskDialogStandardIcon; const Buttons: array of TTaskDialogCommonButton; const ButtonCaptions: array of string): TModalResult;
var
	td: TTaskDialog;
	i: Integer;
	btn: TTaskDialogBaseButtonItem;
	s: string;
const
	ModalResults: array[TTaskDialogCommonButton] of Integer = (
			mrOk, mrYes, mrNo, mrCancel, mrRetry, mrClose);

	function GetButtonText(ButtonIndex: Integer): string;
	begin
		Result := CommonButtonCaption(Buttons[ButtonIndex]);

		if ButtonIndex > High(ButtonCaptions) then
			Exit;
		if ButtonCaptions[ButtonIndex] = '' then
			Exit;

		Result := ButtonCaptions[ButtonIndex];
	end;
begin
	td := TTaskDialog.Create(Parent);
	try
		if Application.Title <> '' then
			td.Caption := Application.Title
		else
		begin
			s := ExtractFileName(ParamStr(0));
			td.Caption := ChangeFileExt(s, '');
		end;

		td.MainIcon := TTaskDialogIcon(MainIcon);
		td.Title := MainInstruction;
		td.Text := Msg;


		td.CommonButtons := [];

		for i := Low(Buttons) to High(Buttons) do
		begin
			btn := td.Buttons.Add;
			btn.Caption := GetButtonText(i);
			btn.ModalResult := ModalResults[Buttons[i]];
		end;

//		td.VerificationText := 'Don''t show this warning again because this is very long text';

		if not td.Execute then
		begin
			Result := mrNone;
			Exit;
		end;

		Result := td.ModalResult
	finally
		td.Free;
	end;
end;

end.
