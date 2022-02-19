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

	WriteLn('Bytes requeste to read: '+IntToStr(1));
	WriteLn('Bytes actually read: '+IntToStr(bytesRead));
	WriteLn(Format('HRESULT: %.8x', [hr]));

	if bytesRead < 1 then
	begin
		if hr <> S_FALSE then
		begin
			if hr = S_OK then
				raise Exception.Create('TStreamAdapter test failed. When read fewer bytes than requested, the correct HRESULT is S_FALSE, but instead was S_OK.')
			else
				raise Exception.CreateFmt('TStreamAdapter test failed. When read fewer bytes than requested, the correct HRESULT is S_FALSE, but instead was %.8x.', [hr]);
      end;
	end;
end;

begin
  try
		Main;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
	WriteLn('Press enter to close...');
   ReadLn;
end.
