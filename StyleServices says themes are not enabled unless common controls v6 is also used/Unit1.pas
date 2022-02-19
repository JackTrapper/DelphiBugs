unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Themes;

type
  TForm1 = class(TForm)
    lblStyleServicesAvailable: TLabel;
    Label1: TLabel;
    lblIsAppThemed: TLabel;
    Label3: TLabel;
    lblCommonControlsVersion: TLabel;
    Label4: TLabel;
    lblStyleServicesEnabled: TLabel;
    Label5: TLabel;
    lblResult: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure lblIsAppThemedClick(Sender: TObject);
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
	StrUtils,
	Winapi.UxTheme,
	Winapi.ShellAPI;

procedure TForm1.FormCreate(Sender: TObject);
var
	version: Cardinal;
begin
	lblStyleServicesAvailable.Caption := 'StyleServices.Available: '+IfThen(StyleServices.Available, 'True', 'False');

	lblIsAppThemed.Caption := 'WinAPI.IsAppThemed: '+IfThen(IsAppThemed, 'True', 'False');

	version := GetFileVersion('comctl32.dll');
	lblCommonControlsVersion.Caption := 'Common Controls Version: '+IntToHex(version);

	lblStyleServicesEnabled.Caption := 'StyleServices.Enabled: '+IfThen(STyleServices.Enabled, 'True', 'False');
	if not StyleServices.Enabled then
		lblStyleServicesEnabled.Font.Color := clMaroon;

	if version < $00060000 then
	begin
		if StyleServices.Enabled then
		begin
			lblResult.Caption := 'Test passed: StyleServices.Enabled returns False if the Common Controls version is less than 6.0';
			lblResult.Font.Color := clGreen;
		end
		else
		begin
			lblResult.Caption := 'Test failed: StyleServices.Enabled returns False if the Common Controls version is less than 6.0';
			lblResult.Font.Color := clRed;
		end;
	end
	else
	begin
		lblResult.Caption := 'Could not test case. This test requires the use of common controls version 5 or earlier';
		lblResult.Font.Color := $00007CF7;
	end;



	StyleServices.ThemesAvailable

end;

procedure TForm1.lblIsAppThemedClick(Sender: TObject);
begin
	//https://docs.microsoft.com/en-us/windows/win32/api/uxtheme/nf-uxtheme-isappthemed
	ShellExecute(Self.Handle, 'open', 'https://docs.microsoft.com/en-us/windows/win32/api/uxtheme/nf-uxtheme-isappthemed', nil, nil, SW_SHOWNORMAL);
end;

end.
