object Frm_detail: TFrm_detail
  Left = 260
  Top = 114
  Caption = 'Frm_detail'
  ClientHeight = 454
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 421
    Width = 71
    Height = 13
    Caption = 'Nama Barang :'
  end
  object Label2: TLabel
    Left = 480
    Top = 421
    Width = 41
    Height = 13
    Caption = 'Jml Brg :'
  end
  object btn1: TSpeedButton
    Left = 595
    Top = 419
    Width = 105
    Height = 24
    Hint = 'Hapus'
    Caption = 'Export xls'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFDDE5D6AEC29D8CA773698D4946721FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBACAAC97B08174955746721F46721F46721F46721F46
      721F46721FFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F
      46721F46721F46721F46721F46721F46721F46721FFFFFFF46721F46721F4672
      1F46721F46721F46721F46721F46721F46721F46721F46721F46721F46721F46
      721F46721FFFFFFF46721FFFFFFFFFFFFFFFFFFF46721F46721F46721F517A2C
      7395565C833A46721F5C833A739556517A2C46721FFFFFFF46721FFFFFFFFFFF
      FFFFFFFF46721F46721F46721F5C833AFFFFFFD1DCC746721FE8EDE3F3F6F151
      7A2C46721FFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F
      ADC19CFFFFFF96AF80FFFFFFA2B88E46721F46721FFFFFFF46721F46721F4672
      1F46721F46721F46721F46721F46721F517A2CF3F6F1FFFFFFF3F6F1517A2C46
      721F46721FFFFFFF46721FFFFFFFFFFFFFFFFFFF46721F46721F46721F46721F
      46721FB9CAAAFFFFFFB9CAAA46721F46721F46721FFFFFFF46721FFFFFFFFFFF
      FFFFFFFF46721F46721F46721F46721F517A2CF3F6F1FFFFFFF3F6F1517A2C46
      721F46721FFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F
      A2B88EFFFFFFADC19CFFFFFFA2B88E46721F46721FFFFFFF46721F46721F4672
      1F46721F46721F46721F46721F46721FF3F6F1E8EDE346721FDCE5D5F3F6F146
      721F46721FFFFFFF46721FFFFFFFFFFFFFFFFFFF46721F46721F46721F46721F
      46721F46721F46721F46721F46721F46721F46721FFFFFFF46721FFFFFFFFFFF
      FFFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F46721F46
      721F46721FFFFFFF46721F46721F46721F46721F46721F46721FBACAAC97B081
      74955746721F46721F46721F46721F46721F46721FFFFFFF46721F46721F4672
      1F46721F46721F46721FFFFFFFFFFFFFFFFFFFFFFFFFDDE5D6AEC29D8CA77369
      8D4946721FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    OnClick = btn1Click
  end
  object Grid1: TAdvStringGrid
    Left = 8
    Top = 0
    Width = 873
    Height = 418
    Cursor = crDefault
    ColCount = 8
    DrawingStyle = gdsClassic
    ScrollBars = ssBoth
    TabOrder = 0
    HoverRowCells = [hcNormal, hcSelected]
    OnGetAlignment = Grid1GetAlignment
    OnDblClickCell = Grid1DblClickCell
    OnGetFloatFormat = Grid1GetFloatFormat
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
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
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
      'Larger than'
      'Smaller than'
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
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SearchFooter.ResultFormat = '(%d of %d)'
    SortSettings.DefaultFormat = ssAutomatic
    Version = '8.5.0.1'
    ColWidths = (
      64
      64
      64
      64
      64
      64
      64
      64)
    RowHeights = (
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22)
  end
  object Ed_cari: TEdit
    Left = 82
    Top = 419
    Width = 361
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyDown = Ed_cariKeyDown
  end
  object Ed_jml: TEdit
    Left = 522
    Top = 419
    Width = 63
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = Ed_jmlChange
    OnKeyDown = Ed_cariKeyDown
  end
  object SP_detailbrg: TMyStoredProc
    Left = 701
    Top = 418
  end
end
