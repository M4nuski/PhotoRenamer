unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtDlgs, jpeg;

type
  TForm1 = class(TForm)
    Button1: TButton;
    o1: TOpenPictureDialog;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Exif;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var ex : TExif;
begin
  if not o1.Execute then exit;
  ex:=TExif.Create;
  try
    ex.ReadFromFile(o1.FileName);
    Memo1.Lines.BeginUpdate;
    memo1.Clear;
    if ex.Valid then begin
      memo1.Lines.Add('Make: '+ex.Make);
      memo1.Lines.Add('Model: '+ex.Model);
      memo1.Lines.Add('Image Desk: '+ex.ImageDesc);
      memo1.Lines.Add('Copyright: '+ex.Copyright);
      memo1.Lines.Add('DateTime: '+ex.DateTime);
      memo1.Lines.Add('Original DateTime: '+ex.DateTimeOriginal);
      memo1.Lines.Add('Created DateTime: '+ex.DateTimeDigitized);
      memo1.Lines.Add('UserComments: '+ex.UserComments);
      memo1.Lines.Add('Software: '+ex.Software);
      memo1.Lines.Add('Artist: '+ex.Artist);
      memo1.Lines.Add(Format('Orientation: %d (%s)',[Byte(ex.Orientation), ex.OrientationDesc]));
      memo1.Lines.Add('Exposure: '+ex.Exposure);
      memo1.Lines.Add(Format('Exposure Program: %d (%s)',[ex.ExposureProgram, ex.ExposureProgramDesc]));
      memo1.Lines.Add('Fstops: '+ex.FStops);
      memo1.Lines.Add('ShutterSpeed: '+ex.ShutterSpeed);
      memo1.Lines.Add('Aperture: '+ex.Aperture);
      memo1.Lines.Add('MaxAperture: '+ex.MaxAperture);
      memo1.Lines.Add('Compressed BPP: '+ex.CompressedBPP);
      memo1.Lines.Add('ISO speed: '+IntToStr(ex.ISO));

      memo1.Lines.Add('PixelXDimension: '+IntToStr(ex.PixelXDimension));
      memo1.Lines.Add('PixelYDimension: '+IntToStr(ex.PixelYDimension));
      memo1.Lines.Add('XResolution: '+IntToStr(ex.XResolution));
      memo1.Lines.Add('YResolution: '+IntToStr(ex.YResolution));
      memo1.Lines.Add('MeteringMode: '+IntToStr(ex.MeteringMode));
      memo1.Lines.Add('MeteringMethod: '+ex.MeteringMethod);
      memo1.Lines.Add(Format('LightSource: %d (%s)',[ex.LightSource, ex.LightSourceDesc]));
      memo1.Lines.Add(Format('Flash: %d (%s)',[ex.Flash, ex.FlashDesc]));
    end else
      memo1.Lines.Add('Exif Header is not valid');
    Memo1.Lines.EndUpdate;
  finally
    ex.Free;
  end;
end;

end.
