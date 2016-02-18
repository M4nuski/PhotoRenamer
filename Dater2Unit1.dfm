object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Automatic Photo Renamer v2.0 (Delphi XE2 - Windows 7) - Feb 2016'
  ClientHeight = 503
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 12
  object Bevel1: TBevel
    Left = 6
    Top = 6
    Width = 469
    Height = 97
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
  end
  object Label2: TLabel
    Left = 7
    Top = 107
    Width = 299
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Exemple : "Photo.jpg" will become "YYYY-MM-DD HH-MM-SS.jpg"'
  end
  object Memo1: TMemo
    Left = 5
    Top = 123
    Width = 469
    Height = 358
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    DoubleBuffered = True
    ParentDoubleBuffered = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 9
    WordWrap = False
  end
  object RadioButton1: TRadioButton
    Left = 42
    Top = 24
    Width = 175
    Height = 13
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Rename with Date + Time of capture'
    TabOrder = 0
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 42
    Top = 41
    Width = 175
    Height = 13
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Rename with Date of capture'
    TabOrder = 1
    OnClick = RadioButton1Click
  end
  object RadioButton3: TRadioButton
    Left = 42
    Top = 59
    Width = 175
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Prefix with Date + Time of capture'
    TabOrder = 2
    OnClick = RadioButton1Click
  end
  object RadioButton4: TRadioButton
    Left = 42
    Top = 76
    Width = 175
    Height = 13
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Prefix with Date of capture'
    TabOrder = 3
    OnClick = RadioButton1Click
  end
  object Button1: TButton
    Left = 240
    Top = 65
    Width = 205
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Select and rename file(s)'
    TabOrder = 4
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 240
    Top = 24
    Width = 175
    Height = 13
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Rename .NEF if found'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object CheckBox2: TCheckBox
    Left = 240
    Top = 41
    Width = 115
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Add Suffix :'
    TabOrder = 6
    OnClick = RadioButton1Click
  end
  object Edit1: TEdit
    Left = 306
    Top = 41
    Width = 139
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 7
    OnChange = RadioButton1Click
  end
  object ProgressBar1: TProgressBar
    Left = 6
    Top = 485
    Width = 469
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Step = 1
    TabOrder = 8
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'jpg'
    FileName = '*.jpg'
    Filter = 'JPEG Images|*.jpg'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 384
    Top = 104
  end
end
