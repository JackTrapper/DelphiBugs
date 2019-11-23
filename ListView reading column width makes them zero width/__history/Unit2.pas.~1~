unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    ListView1: TListView;
    procedure ListView1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ListView1Resize(Sender: TObject);
begin
    {
       Any column you attempt to read the width of
       will **cause** the width to become zero
    }
	ListView1.Columns[0].Width;
//	ListView1.Columns[1].Width;
	ListView1.Columns[2].Width;
end;

end.
