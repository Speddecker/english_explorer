object Form1: TForm1
  Left = 370
  Top = 73
  BorderStyle = bsSingle
  Caption = 'Tree creator'
  ClientHeight = 565
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000009F444444444444F99F444444444444F9F99F
    4444444444F99F4444444444FF9F4FF9F444444444F99F444444444F99F4444F
    99F4444444F99F4444444FF9F4444444FF9F444444F99F444444F99F44444444
    44F99F4444F99F4444FF9F4444444444444FF9F444F99F444F99F44444444444
    44444F99F4F99F4FF9F4444444444444444444FF9FF99FF9944444444444FFFF
    FFFFFFFFF9999F9FFFFFFFFFFFFF99999999999999999999999999999999FFFF
    FFFFFFFFFFF99FFFFFFFFFFFFFFF444444444444F999999F4444444444444444
    444444FF9FF99FF9FF4444444444444444444F9944F99F4F99F4444444444444
    444FF9F444F99F444F9FF4444444444444F9944444F99F4444F99F4444444444
    FF9F444444F99F444444F9FF4444444F9944444444F99F4444444F99F4444FF9
    F444444444F99F444444444F9FF4F99F4444444444F99F4444444444F99F9F44
    4444444444F99F444444444444F9000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TreeView1: TTreeView
    Left = 0
    Top = 0
    Width = 832
    Height = 384
    Align = alClient
    Images = ImageList1
    Indent = 19
    ReadOnly = True
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 832
    Height = 181
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 80
      Width = 50
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object Label2: TLabel
      Left = 8
      Top = 104
      Width = 66
      Height = 13
      Caption = #1055#1091#1090#1100' '#1082' '#1087#1072#1087#1082#1077
    end
    object Button1: TButton
      Left = 9
      Top = 12
      Width = 145
      Height = 41
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1090#1088#1072#1085#1080#1094#1091
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 672
      Top = 12
      Width = 145
      Height = 41
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 168
      Top = 12
      Width = 145
      Height = 41
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1085#1086#1087#1082#1091
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 800
      Top = 100
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 328
      Top = 12
      Width = 145
      Height = 41
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 488
      Top = 12
      Width = 145
      Height = 41
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 5
      OnClick = Button6Click
    end
    object Edit1: TEdit
      Left = 80
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object Edit2: TEdit
      Left = 80
      Top = 104
      Width = 713
      Height = 21
      TabOrder = 7
    end
  end
  object ImageList1: TImageList
    Left = 240
    Top = 448
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF00000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000FF00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000FF00000000000000FF000000
      FF000000FF00000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000FF00000000000000FF000000
      FF000000FF000000FF00000000000000FF000000FF00000000000000FF000000
      FF000000FF00000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000FF00000000000000FF000000
      FF000000FF00000000000000FF000000FF000000FF00000000000000FF000000
      FF000000FF00000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000FF00000000000000FF000000
      FF000000FF00000000000000FF000000FF000000FF0000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF000000FF00000000000000FF000000
      FF00000000000000FF000000FF000000FF000000FF00000000000000FF000000
      FF000000FF00000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000FFFF0000FFFF000000FF0000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF00000000000000FF000000
      FF000000FF00000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF00000000000000FF000000
      FF00000000000000FF000000FF000000FF000000FF00000000000000FF000000
      FF000000FF00000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF00000000000000FF000000
      FF000000FF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF00000000000000FF000000
      FF000000FF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF00000000000000FF000000
      FF000000FF000000FF0000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0080008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object XMLDocument1: TXMLDocument
    Left = 208
    Top = 448
    DOMVendorDesc = 'MSXML'
  end
end