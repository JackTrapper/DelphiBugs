unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    ListView1: TListView;
    procedure FormCreate(Sender: TObject);
    procedure ListView1CustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses
	Winapi.CommCtrl, Math;

procedure TForm2.FormCreate(Sender: TObject);
var
	item: TListItem;
   i: Integer;
   	t1: Int64;
  j: Integer;
begin
	ListView1.Align := alClient;
	for i := 1 to 10 do
   begin
		item := ListView1.Items.Add;
      item.Caption := IntToStr(i);
      for j := 1 to 3 do
      begin
      	QueryPerformanceCounter({var}t1);
			item.SubItems.Add(IntToStr(t1));
         end;
	end;
end;

procedure TForm2.ListView1CustomDrawSubItem(Sender: TCustomListView;
  Item: TListItem; SubItem: Integer; State: TCustomDrawState;
  var DefaultDraw: Boolean);
var
	rc: TRect;
	oldColor: TColor;
   s: string;
   sz: TSize;
   pt: TPoint;
   pseudo: TFormatSettings;
begin
	if (SubItem = 1) then
   begin
   	ListView_GetSubItemRect(ListView1.Handle, Item.Index, SubItem, LVIR_BOUNDS, @rc);

      pseudo := TFormatSettings.Create('qps-ploc');

		oldColor := Sender.Canvas.Brush.Color;
		Sender.Canvas.Brush.Color := clBtnFace;
		Sender.Canvas.FillRect(rc);
		Sender.Canvas.Brush.Color := oldColor;

		s := DateToStr(Now, pseudo);
		sz := Sender.Canvas.TextExtent(s);
		Sender.Canvas.Font := ListView1.Font;
		Sender.Canvas.TextOut(rc.Left, Round((rc.Top+rc.Bottom-sz.cy)/2), s);
		DefaultDraw := False;
   end;
end;

end.
