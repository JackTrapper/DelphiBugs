program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.Classes,
  Winapi.ActiveX,
  System.Win.ComObj;

type
	TMockStream = class(TStream)
	public
	end;

procedure Main;
var
	stream: TStream;
	stm: IStream;
	hr: HRESULT;
	buffer: Byte;
	bytesRead: LongWord;
begin
	stream := TMockStream.Create;
	stm := System.Classes.TStreamAdapter.Create(stream, soOwned);

	hr := stm.Read(@buffer, 1, @bytesRead);
	if bytesRead < 1 then
	begin
		if hr <> S_FALSE then
			raise Exception.CreateFmt('TStreamAdapter test failed. Desired: %d. Read: %d. HRESULT: %.8x', [1, bytesRead, hr]);
	end;
end;

begin
  try
		Main;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
