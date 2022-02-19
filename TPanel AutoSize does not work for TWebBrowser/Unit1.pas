unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
	 Panel1: TPanel;
	 Panel2: TPanel;
	 ListView1: TListView;
	 WebBrowser1: TWebBrowser;
	 Button1: TButton;
	 procedure Button1Click(Sender: TObject);
  private
	 { Private declarations }
  public
	 { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
	Panel1.AutoSize := True;
	Panel2.AutoSize := True;
end;

end.
