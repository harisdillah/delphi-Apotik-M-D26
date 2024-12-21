object Form1: TForm1
  Left = 345
  Top = 258
  Width = 556
  Height = 193
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    548
    162)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 340
    Top = 4
    Width = 101
    Height = 25
    Caption = 'Cetak Excel'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 329
    Height = 145
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
  object edt1: TEdit
    Left = 344
    Top = 32
    Width = 97
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 344
    Top = 56
    Width = 129
    Height = 25
    Caption = 'buat data excel'
    TabOrder = 3
    OnClick = btn1Click
  end
  object dlgOpen1: TOpenDialog
    Left = 368
    Top = 112
  end
end
