program Project2;

uses
  Vcl.Forms,
  FMain in 'FMain.pas' {frmMain},
  FChild in 'FChild.pas' {frmChild};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmChild, frmChild);
  Application.Run;
end.
