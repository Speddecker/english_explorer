object Form2: TForm2
  Left = 231
  Top = 196
  Width = 433
  Height = 376
  Caption = 'Path to folder'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 288
    Width = 409
    Height = 13
    Caption = 'C:\Documents and Settings\'#1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088'\'#1056#1072#1073#1086#1095#1080#1081' '#1089#1090#1086#1083'\tree'
  end
  object DriveComboBox1: TDriveComboBox
    Left = 8
    Top = 8
    Width = 409
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 8
    Top = 32
    Width = 409
    Height = 249
    DirLabel = Label1
    ItemHeight = 16
    TabOrder = 1
  end
  object Button1: TButton
    Left = 88
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 312
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button2Click
  end
end
