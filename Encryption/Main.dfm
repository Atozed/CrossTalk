object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 286
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Source'
  end
  object Label2: TLabel
    Left = 24
    Top = 40
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object editSource: TEdit
    Left = 88
    Top = 8
    Width = 185
    Height = 21
    TabOrder = 0
    Text = 'The quick brown fox jumped over the lazy dog.'
  end
  object memoOutput: TMemo
    Left = 24
    Top = 90
    Width = 249
    Height = 192
    ReadOnly = True
    TabOrder = 1
  end
  object editPassword: TEdit
    Left = 88
    Top = 32
    Width = 185
    Height = 21
    TabOrder = 2
    Text = 'Password'
  end
  object butnEncrypt: TButton
    Left = 198
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Encrypt'
    Default = True
    TabOrder = 3
    OnClick = butnEncryptClick
  end
end
