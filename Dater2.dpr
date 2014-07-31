program Dater2;

uses
  Vcl.Forms,
  Dater2Unit1 in 'Dater2Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
