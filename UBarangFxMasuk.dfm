object FrmBarangfx: TFrmBarangfx
  Left = 448
  Top = 244
  Width = 493
  Height = 429
  Caption = 'FrmBarangfx'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    477
    390)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 42
    Top = 17
    Width = 87
    Height = 16
    Alignment = taRightJustify
    Caption = 'Nama Barang:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 39
    Top = 43
    Width = 90
    Height = 13
    Alignment = taRightJustify
    Caption = 'Spesifikasi Barang:'
    Transparent = True
  end
  object Label19: TLabel
    Left = 17
    Top = 62
    Width = 112
    Height = 16
    Alignment = taRightJustify
    Caption = '(merk, tipe, ukuran)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 200
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 53
    Top = 103
    Width = 76
    Height = 16
    Alignment = taRightJustify
    Caption = '&Jumlah / Qty:'
    FocusControl = Edit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 43
    Top = 129
    Width = 86
    Height = 16
    Alignment = taRightJustify
    Caption = 'Harga Satuan:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 54
    Top = 155
    Width = 75
    Height = 16
    Alignment = taRightJustify
    Caption = 'Total Harga:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 61
    Top = 180
    Width = 68
    Height = 16
    Alignment = taRightJustify
    Caption = 'Diskon (%):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 189
    Top = 181
    Width = 6
    Height = 13
    Alignment = taRightJustify
    Caption = '='
  end
  object Label17: TLabel
    Left = 75
    Top = 206
    Width = 54
    Height = 16
    Alignment = taRightJustify
    Caption = 'PPN (%):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 189
    Top = 206
    Width = 6
    Height = 13
    Alignment = taRightJustify
    Caption = '='
  end
  object Label8: TLabel
    Left = 13
    Top = 262
    Width = 116
    Height = 16
    Alignment = taRightJustify
    Caption = 'Total Harga + PPN:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lTotal: TLabel
    Left = 148
    Top = 258
    Width = 11
    Height = 20
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 15
    Top = 230
    Width = 74
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tgl Kadaluarsa:'
    Transparent = True
  end
  object Label7: TLabel
    Left = 270
    Top = 228
    Width = 136
    Height = 16
    Caption = '(khusus barang medis)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 200
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel
    Left = 71
    Top = 286
    Width = 58
    Height = 13
    Alignment = taRightJustify
    Caption = 'Keterangan:'
    Transparent = True
  end
  object lJumlah: TLabel
    Left = 320
    Top = 103
    Width = 32
    Height = 16
    Caption = '(<= 1)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 200
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object SpeedButton4: TSpeedButton
    Left = 322
    Top = 125
    Width = 23
    Height = 24
    Hint = 'Ambil harga terakhir'
    Caption = 'R'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Wingdings 2'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
  end
  object Edit3: TEdit
    Left = 138
    Top = 13
    Width = 325
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    MaxLength = 255
    TabOrder = 0
  end
  object mmo1: TMemo
    Left = 138
    Top = 39
    Width = 325
    Height = 58
    Hint = 'Tekan Ctrl+Enter untuk pindah baris'
    Anchors = [akLeft, akTop, akRight]
    MaxLength = 1000
    ParentShowHint = False
    ScrollBars = ssVertical
    ShowHint = True
    TabOrder = 1
  end
  object Edit8: TEdit
    Left = 138
    Top = 99
    Width = 180
    Height = 21
    TabOrder = 2
    Text = '0'
    OnExit = EditNumberExit
    OnKeyPress = OKeyPress
  end
  object Edit9: TEdit
    Tag = 1
    Left = 138
    Top = 125
    Width = 180
    Height = 21
    TabOrder = 3
    Text = '0'
    OnClick = Edit9Click
    OnEnter = EditNumberExit
    OnKeyPress = OKeyPress
    OnKeyUp = OKeyUp
  end
  object Edit10: TEdit
    Tag = 2
    Left = 138
    Top = 151
    Width = 299
    Height = 24
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '0'
    OnExit = EditNumberExit
    OnKeyPress = OKeyPress
  end
  object Edit2: TEdit
    Left = 138
    Top = 177
    Width = 44
    Height = 21
    TabOrder = 5
    Text = '0'
    OnExit = EditNumberExit
    OnKeyPress = OKeyPress
  end
  object Edit4: TEdit
    Left = 202
    Top = 177
    Width = 216
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 6
    Text = '0'
    OnExit = EditNumberExit
    OnKeyPress = OKeyPress
  end
  object Edit12: TEdit
    Left = 138
    Top = 198
    Width = 44
    Height = 21
    TabOrder = 7
    Text = '10'
    OnExit = EditNumberExit
    OnKeyPress = OKeyPress
  end
  object Edit13: TEdit
    Left = 202
    Top = 198
    Width = 216
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 8
    Text = '0'
  end
  object DTPicker1: TDateTimePicker
    Left = 138
    Top = 225
    Width = 130
    Height = 24
    Date = 40780.579931273100000000
    Time = 40780.579931273100000000
    ShowCheckbox = True
    TabOrder = 9
  end
  object Edit5: TEdit
    Left = 136
    Top = 278
    Width = 325
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    MaxLength = 255
    TabOrder = 10
  end
  object BitBtn1: TBitBtn
    Left = 288
    Top = 307
    Width = 90
    Height = 27
    Anchors = [akLeft, akBottom]
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 11
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 383
    Top = 307
    Width = 85
    Height = 27
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = '&Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 200
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 12
    NumGlyphs = 2
  end
  object pcontrol: TPanel
    Left = 16
    Top = 344
    Width = 449
    Height = 25
    Caption = 'pcontrol'
    Color = clGradientActiveCaption
    TabOrder = 13
  end
  object BitBtn3: TBitBtn
    Left = 288
    Top = 307
    Width = 90
    Height = 27
    Anchors = [akLeft, akBottom]
    Caption = '&Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 14
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
end
