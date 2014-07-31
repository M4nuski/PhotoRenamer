unit test5Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CCR.Exif, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   ExifData :tExifData;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if opendialog1.Execute then begin
    ExifData := TExifData.Create;
    ExifData.EnsureEnumsInRange := False; //as we use case statements rather than array constants, no need to keep this property set to True
    ExifData.LoadFromJPEG('C:\Users\Emmanuel\Documents\Mes images\Photo\DSC_0001.JPG');
    if ExifData.Empty then form1.Caption := 'Empty' else form1.Caption := datetimetostr((exifdata.DateTimeOriginal));
 end;
end;

end.
