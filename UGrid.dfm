object FrmGrid: TFrmGrid
  Left = 339
  Top = 300
  Width = 928
  Height = 521
  Caption = 'FrmGrid'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    895
    465)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 9
    Top = 8
    Width = 53
    Height = 13
    Caption = 'No. Faktur '
  end
  object pnmBrg: TLabel
    Left = 672
    Top = 40
    Width = 36
    Height = 13
    Caption = 'pnmBrg'
  end
  object Label3: TLabel
    Left = 17
    Top = 83
    Width = 32
    Height = 13
    Caption = 'Suplier'
  end
  object Label1: TLabel
    Left = 9
    Top = 41
    Width = 39
    Height = 13
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Tanggal'
  end
  object Label5: TLabel
    Left = 319
    Top = 42
    Width = 19
    Height = 13
    Caption = 'Jam'
  end
  object lbterbilang: TLabel
    Left = 672
    Top = 24
    Width = 48
    Height = 13
    Caption = 'lbterbilang'
  end
  object lbtotal: TLabel
    Left = 672
    Top = 8
    Width = 28
    Height = 13
    Caption = 'lbtotal'
  end
  object Edit1: TEdit
    Left = 83
    Top = 7
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 257
    Top = 10
    Width = 50
    Height = 17
    TabStop = False
    Caption = 'Auto'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object Edit2: TEdit
    Left = 60
    Top = 81
    Width = 118
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 64
    Top = 38
    Width = 201
    Height = 24
    Date = 41957.565119814810000000
    Time = 41957.565119814810000000
    DateFormat = dfLong
    TabOrder = 3
  end
  object DateTimePicker2: TDateTimePicker
    Left = 349
    Top = 38
    Width = 78
    Height = 24
    Date = 41957.565119814810000000
    Time = 41957.565119814810000000
    Kind = dtkTime
    TabOrder = 4
  end
  object CheckBox2: TCheckBox
    Left = 431
    Top = 40
    Width = 65
    Height = 17
    Caption = 'Manual'
    TabOrder = 5
  end
  object btHapus: TButton
    Left = 16
    Top = 392
    Width = 121
    Height = 25
    Caption = 'btHapus'
    TabOrder = 6
    OnClick = btHapusClick
  end
  object bttotal: TButton
    Left = 280
    Top = 392
    Width = 89
    Height = 25
    Caption = 'bttotal'
    TabOrder = 7
    OnClick = bttotalClick
  end
  object btsimpan: TButton
    Left = 16
    Top = 424
    Width = 97
    Height = 25
    Caption = 'btsimpan'
    TabOrder = 8
  end
  object btbatal: TButton
    Left = 120
    Top = 424
    Width = 89
    Height = 25
    Caption = 'btbatal'
    TabOrder = 9
    OnClick = btbatalClick
  end
  object btbaris: TButton
    Left = 144
    Top = 392
    Width = 121
    Height = 25
    Caption = 'btbaris'
    TabOrder = 10
    OnClick = btbarisClick
  end
  object pbtotal: TPBNumEdit
    Left = 752
    Top = 39
    Width = 100
    Height = 21
    Alignment = taRightJustify
    Decimals = -1
    NumberFormat = Thousands
    TabOrder = 11
    Visible = False
  end
  object tblebar: TBitBtn
    Left = 656
    Top = 408
    Width = 81
    Height = 25
    Caption = 'tblebar'
    TabOrder = 12
    OnClick = tblebarClick
  end
  object sgkop: TStringGrid
    Left = 16
    Top = 128
    Width = 912
    Height = 25
    BorderStyle = bsNone
    Color = clInfoBk
    ColCount = 6
    DefaultColWidth = 30
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goTabs, goThumbTracking]
    ParentFont = False
    TabOrder = 13
    ColWidths = (
      30
      30
      30
      30
      31
      30)
  end
  object CRDBGrid1: TCRDBGrid
    Left = 448
    Top = 288
    Width = 161
    Height = 120
    OptionsEx = [dgeEnableSort, dgeStretch]
    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        Width = 146
        Visible = True
      end>
  end
  object sg: TStringGrid
    Left = 16
    Top = 128
    Width = 912
    Height = 482
    BorderStyle = bsNone
    Color = clInfoBk
    ColCount = 6
    DefaultColWidth = 30
    RowCount = 16
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goTabs, goThumbTracking]
    ParentFont = False
    TabOrder = 15
    OnDblClick = sgDblClick
    OnKeyDown = sgKeyDown
    OnKeyPress = sgKeyPress
    ColWidths = (
      30
      30
      30
      30
      30
      30)
  end
end
