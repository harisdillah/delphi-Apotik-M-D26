object FrmTutupBuku: TFrmTutupBuku
  Left = 267
  Top = 151
  Caption = 'Tutup Buku Stok'
  ClientHeight = 478
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 9
    Top = 3
    Width = 65
    Height = 21
    Caption = 'Tgl. Awal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 238
    Top = 3
    Width = 66
    Height = 21
    Caption = 'Tgl. Akhir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object LJumlahData: TLabel
    Left = 720
    Top = 9
    Width = 89
    Height = 21
    Caption = 'Jumlah Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object btnBtnUbah1: TSpeedButton
    Left = 238
    Top = 440
    Width = 91
    Height = 26
    Hint = 'Ubah'
    Caption = '&Proses'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF4EB1456DC066FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF56B24F1CC63218
      B9218ECB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF65B96019C33828E95829E34615B1139CD299FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77BF7117C54025EB6A1FDD4C20
      DC3F29E03613A709B8DFB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      70BD6A16C74823EF791AE05B33E86532E4531FD92E2ADE2C0FA004CEE9CCFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF75BF7015CA5220F3891CE56C27EC6B46D15776
      E88333E4491FD7222AD8211FA415E0F1DEFFFFFFFFFFFFFFFFFF6FC06916CF5D
      1CF99B17E87A26F07D43D36060B46036A92E87F59425DB2C23DA1D27D31F2EA7
      24FAFDF9FFFFFFFFFFFF4FB14829D66A1AF99E2EFA9845D7696FBD6AFFFFFFE0
      F1E02AAA2784F98A26D82325DC1E26CF1D2BA221FFFFFFFFFFFFFFFFFF54B04F
      30D76C4ADD7A77C072FFFFFFFFFFFFFFFFFFBFE2BF40BA3E85FC821BD21228DC
      2021C8194AAF42FFFFFFFFFFFFFFFFFF63BA584DB044FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFADD9AD49C24783FF7E1BD2122AE0231FC41860B959FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98CF985ACB5281FF
      7C23DC1D1CBF1454B44CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF6FBC6F6CDC663AC63566BA66FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60BB
      5E8ECE89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    OnClick = btnBtnUbah1Click
  end
  object Label1: TLabel
    Left = 14
    Top = 440
    Width = 71
    Height = 21
    Caption = 'Tgl. Tutup'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Arial Unicode MS'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton9: TSpeedButton
    Left = 431
    Top = 440
    Width = 130
    Height = 22
    Hint = 'Hapus'
    Caption = '&Export data '
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF0084000084000084000084000084000084000084000084
      00008400008400008400AA7F7AB88384B88384B88384B88384008400FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008400AD827BFCEBCE
      F7DFBFF4DAB3F3D6AB008400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF008400B1857CFDEDD5F5DFC5F4DBBBF2D7B2008400FFFFFF91
      CA91008400309B30FBFDFB84C48400840068B668FFFFFF008400B6897EFEF2DE
      F7E5CEF5E0C5F4DCBC008400FFFFFFFFFFFFC4E3C40486041C911C00840084C4
      84FFFFFFFFFFFF008400BA8D80FFF7E8F8E8D6F6E4CDF5E0C4008400FFFFFFFF
      FFFFFFFFFF69B769008400178F17FBFDFBFFFFFFFFFFFF008400BF9183FFFCF2
      F9EDDFF7E8D6F6E4CD008400FFFFFFFFFFFF7ABF7A00840065B5650486043AA0
      3AF2F9F2FFFFFF008400C49685FFFFFCFAF1E8F9ECDEF8E8D5008400FFFFFF61
      B3610084007BBF7BFFFFFFCAE5CA0385033AA03AFFFFFF008400C99B87FFFFFF
      FDF7F2FBF1E8FAEEDF008400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF008400CD9E8AFFFFFFFFFCFBFEF7F1FBF2E7008400FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008400D1A38BFFFFFF
      FFFFFFFFFDFBFDF7F10084000084000084000084000084000084000084000084
      00008400008400008400D6A78DFFFFFFFFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FA
      EDDEFDF0DDEADDCAC7BFB0B88384FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
      FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
      FFFF00FFFF00FFFF00FFDDAC91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7
      F0ECB88384E9B676F3AE52CA8A6AFF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
      FFFF00FFFF00FFFF00FFDBA685DBA685DBA685DBA685DBA685DBA685DBA685DB
      A685B88384CA9784FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    OnClick = SpeedButton9Click
  end
  object btnTampil: TButton
    Left = 464
    Top = 5
    Width = 81
    Height = 25
    Caption = '&Tampil'
    TabOrder = 0
    OnClick = btnTampilClick
  end
  object dtpAwal: TDateTimePicker
    Left = 92
    Top = 3
    Width = 144
    Height = 24
    Date = 43878.443909201390000000
    Time = 43878.443909201390000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object dtpAkhir: TDateTimePicker
    Left = 314
    Top = 4
    Width = 144
    Height = 26
    Date = 43878.443909201390000000
    Time = 43878.443909201390000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Grid1: TAdvStringGrid
    Left = 8
    Top = 41
    Width = 825
    Height = 393
    Cursor = crDefault
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    HoverRowCells = [hcNormal, hcSelected]
    OnGetCellColor = Grid1GetCellColor
    OnGetAlignment = Grid1GetAlignment
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'MS Sans Serif'
    FilterDropDown.Font.Style = []
    FilterDropDown.TextChecked = 'Checked'
    FilterDropDown.TextUnChecked = 'Unchecked'
    FilterDropDownClear = '(All)'
    FilterEdit.TypeNames.Strings = (
      'Starts with'
      'Ends with'
      'Contains'
      'Not contains'
      'Equal'
      'Not equal'
      'Clear')
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    HoverButtons.Buttons = <>
    HoverButtons.Position = hbLeftFromColumnLeft
    HTMLSettings.ImageFolder = 'images'
    HTMLSettings.ImageBaseName = 'img'
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'MS Sans Serif'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'MS Sans Serif'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'MS Sans Serif'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'MS Sans Serif'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'MS Sans Serif'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SearchFooter.ResultFormat = '(%d of %d)'
    SortSettings.DefaultFormat = ssAutomatic
    Version = '8.6.0.0'
  end
  object dtpTutup: TDateTimePicker
    Left = 91
    Top = 440
    Width = 144
    Height = 26
    Date = 43878.443909201390000000
    Time = 43878.443909201390000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Unicode MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object EGudang: TEdit
    Left = 335
    Top = 440
    Width = 89
    Height = 21
    TabOrder = 5
    Text = '101'
  end
  object SpTampil: TMyStoredProc
    Left = 650
    Top = 5
  end
  object ds1: TMyDataSource
    Left = 683
    Top = 5
  end
end
