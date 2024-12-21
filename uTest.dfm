object FrmTest: TFrmTest
  Left = 199
  Top = 301
  Width = 928
  Height = 480
  Caption = 'FrmTest'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 352
    Width = 255
    Height = 13
    Caption = 'F5 BARU, F6 EDIT QTY , F2 SAVE , F3 BROWSE,F8'
  end
  object ECari: TEdit
    Left = 16
    Top = 8
    Width = 209
    Height = 21
    TabOrder = 0
    OnChange = ECariChange
    OnKeyDown = ECariKeyDown
  end
  object crGrid: TCRDBGrid
    Left = 16
    Top = 32
    Width = 785
    Height = 305
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 232
    Top = 8
    Width = 209
    Height = 21
    TabOrder = 2
    OnChange = ECariChange
    OnKeyDown = ECariKeyDown
  end
  object Edit2: TEdit
    Left = 448
    Top = 8
    Width = 33
    Height = 21
    TabOrder = 3
    OnChange = ECariChange
    OnKeyDown = ECariKeyDown
  end
  object Button1: TButton
    Left = 32
    Top = 352
    Width = 105
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object qcari: TMyQuery
    Left = 232
    Top = 8
  end
  object Qbrowse: TMyQuery
    Left = 528
    Top = 8
  end
  object ds1: TDataSource
    Left = 488
    Top = 8
  end
end
