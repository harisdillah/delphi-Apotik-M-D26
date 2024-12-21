object FrmPilihBarang: TFrmPilihBarang
  Left = 0
  Top = 0
  Caption = 'FrmPilihBarang'
  ClientHeight = 629
  ClientWidth = 859
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 849
    Height = 617
    Caption = 'Panel2'
    TabOrder = 0
    DesignSize = (
      849
      617)
    object Lbl_nm_jml: TLabel
      Left = 14
      Top = 367
      Width = 94
      Height = 20
      Caption = 'jumlah data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 19
      Top = 68
      Width = 110
      Height = 20
      Caption = 'Nama Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 18
      Top = 435
      Width = 85
      Height = 16
      Caption = '( Proses Aktif )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 200
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 19
      Top = 39
      Width = 125
      Height = 20
      Caption = 'Bidang Barang '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtp_awal: TDateTimePicker
      Left = 134
      Top = 5
      Width = 126
      Height = 28
      Date = 44511.628642106480000000
      Time = 44511.628642106480000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cxlbl1: TcxLabel
      Left = 18
      Top = 4
      Caption = 'Tanggal '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -20
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHotLight
      Style.IsFontAssigned = True
    end
    object cxlbl2: TcxLabel
      Left = 262
      Top = 6
      Caption = 'S/D'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -20
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHotLight
      Style.IsFontAssigned = True
    end
    object dtp_akhir: TDateTimePicker
      Left = 310
      Top = 7
      Width = 126
      Height = 28
      Date = 44511.628642106480000000
      Time = 44511.628642106480000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object btcari: TBitBtn
      Left = 442
      Top = 6
      Width = 70
      Height = 29
      Cursor = crHandPoint
      Caption = 'Cari'
      DoubleBuffered = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD3D0CA54555F727275FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA3A19F000C401F64B509428E2D3243FFFFFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E2DFD800093F3784D9459BF2469EF6022A6D0D1937EFEBE3FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        40475A1A56A3367FCF4296EC3C8ADD22589F0E3C82000B33CDCAC4FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0016482159A22D6CB73175C23F90E43984D52661A916478E000638A09F9DFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0010471A4C921F5297255FA73F90E448A1F93D8BDE2A68B21C4F97000E477574
        77FFFFFFFFFFFFFFFFFFFFFFFFCFCFD09393947474756869697B7B7CA2A3A3EF
        EFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        747C8F00195F17468C1A498C2762AB3A86D847A0F84092E72E6FBB1F549B001A
        5A474A56FFFFFF9D9D9E4242435A5A5A7D7B7A8C8A8792908D8A888575737244
        4444818282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC5C5C9001B4C06367C19478B245BA2367ECD469DF44398EF3278C52259
        A1012C71171F337D7B78B5B3B1B2AFADAAA7A5A4A19FA3A09DA3A09EA3A1A1A9
        A8A7787778545455FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF70778C00115012428820559B3176C34397ED469EF5367F
        CF2560AA01235EDCD6CFB8B6B5B1AFADADABAAA2A2A58C8E969A948DA79E88AB
        9D85A493827B7D8546494BE5E5E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF1EEEC22345B00266B1D51972D6EB94091E647A0
        F83E90E8062254C9C3BDC1BFBEB3B4BAA09D9AC8B384F5D485FBD986F9D786F9
        D786FEDE8AE1B36A796B643D4145CBCCCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7AAB300114812448C2B68B23F90
        E52777D074737CA8A8A7B8B9C1C7B387FCD983F6D586F1D287F0D287F0D186F0
        D287F0D186F5D88BFBCF7A7C6C64434547F5F6F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2A35500022660034
        7D282F46827E79C2C2C6E3C680F7D685F1D286F0D287F1D287F1D287F1D388F1
        D287F0D287F0D387F5D88CE4AD5F656971898A8BFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63605CB2B0B3B0AF
        B2BBB7B3C8CAD0E4C781F5D485F1D388F1D389F1D48CF2D58EF2D58FF2D58FF2
        D58EF2D58DF1D48BF1D388FDDE8D96755A575B5FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBF878584C6C3C1C8C6
        C4C9CBD1D1BD8EF6D584F1D389F1D58CF2D690F3D794F3D996F4D999F4D998F4
        D998F3D896F2D792F2D58EF9DC8FBA946452555BFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF959595A09F9DB8B6B5BCBB
        BCB6B3AFF9D780F1D389F2D58EF3D793F4D998F4DB9DF5DCA1F5DDA3F5DDA3F5
        DDA2F5DCA0F4DB9CF3D896F8DD96CAA16A54585DFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8D8DA5A1A0B0AEABB1B2
        B6D6C397F4D585F1D58DF2D793F4D99AF5DCA0F6DEA6F7E0ABF7E2AEF7E2B0F7
        E1AEF6E0ABF6DEA6F5DC9FFAE09DC19A6A61646BFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A2979492AAA8A5A9AA
        B0EED28AF3D489F2D690F4D998F5DC9FF6DFA8F7E2AFF8E4B4F9E6B9F9E6B9F9
        E6B8F8E4B4F7E2AFF6DFA8FFE8A7AA8C6E83868AFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDDDD747270A7A4A2A7A7
        AFF9D783F2D58CF2D793F5DA9BF5DEA4F7E1ADF8E5B5FAE8BCFAEAC2FAEBC4FA
        EAC3FAE8BEF9E5B7F9E5B2F4CB88716F71D7D8D8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6C9F9C99A7A8
        AFF2CC7CF2D68DF3D795F5DC9EF6DFA7F8E3B1F9E6BAFBEAC2FBEDCBFCEECEFC
        EDCCFBEBC5FAE8BCFFF0BCC29F79707479FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6666669A9B
        9DE0C194F6D98CF2D795F5DB9DF6DFA8F8E2B1FAE7BAFBEBC4FCEECCFDEFD2FC
        EFCFFBECC8FFF2C8E7BC865F636AFDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6666
        67BBB8B9EBBE72F6DD96F5DB9CF5DEA5F7E2AEF9E6B8FAE9BFFBECC8FBEDCCFD
        EFCEFFF5CCECC38D67676CE7E8E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF6E7072CFC4C1E7B46DF7DD97F7E0A2F8E4ADFAE6B5FBEABDFCECC1FFF0C7FE
        DEA8D3B28E676B70E8E9EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF868889B0B3B8EBC7A6EABF85EBBC75EEC07DEFC485EFC996DEBE9982
        7A778C9095FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFD1D2D28C9093919499A6A9B0A6A8AE9194998E91969C9FA3F6
        F6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF8F8F8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = btcariClick
    end
    object cxCariNama: TcxTextEdit
      Left = 147
      Top = 65
      ParentFont = False
      Style.Color = clCream
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clInfoBk
      Style.Font.Height = -21
      Style.Font.Name = 'Baskerville Old Face'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      OnKeyPress = cxCariNamaKeyPress
      Width = 365
    end
    object BitBtn3: TBitBtn
      Left = 102
      Top = 402
      Width = 90
      Height = 27
      Anchors = [akLeft, akBottom]
      Caption = '&Pilih'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 1
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 198
      Top = 402
      Width = 85
      Height = 27
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = '&Tidak Aktif'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 200
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ModalResult = 2
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = BitBtn2Click
    end
    object PnOperasi: TPanel
      Left = 601
      Top = 435
      Width = 206
      Height = 34
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object cxlbljam: TcxLabel
      Left = 704
      Top = 367
      Caption = '00:00:00'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -24
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHotLight
      Style.IsFontAssigned = True
    end
    object lst1: TListBox
      Left = 301
      Top = 399
      Width = 516
      Height = 95
      ItemHeight = 13
      TabOrder = 10
    end
    object cboBidang: TcxLookupComboBox
      Left = 150
      Top = 39
      ParentFont = False
      Properties.ListColumns = <>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 361
    end
    object Grid2: TAdvStringGrid
      Left = 19
      Top = 500
      Width = 763
      Height = 117
      Cursor = crDefault
      ColCount = 9
      DrawingStyle = gdsClassic
      FixedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 12
      OnSelectCell = Grid2SelectCell
      GridLineColor = 13948116
      GridFixedLineColor = 11250603
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = 11565130
      ActiveCellColorTo = 11565130
      BorderColor = 11250603
      ControlLook.FixedGradientFrom = clWhite
      ControlLook.FixedGradientTo = clWhite
      ControlLook.FixedGradientMirrorFrom = clWhite
      ControlLook.FixedGradientMirrorTo = clWhite
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientHoverMirrorFrom = clWhite
      ControlLook.FixedGradientHoverMirrorTo = clWhite
      ControlLook.FixedGradientHoverBorder = 11645361
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.FixedGradientDownMirrorFrom = clWhite
      ControlLook.FixedGradientDownMirrorTo = clWhite
      ControlLook.FixedGradientDownBorder = 11250603
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
      Look = glCustom
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
      SearchFooter.ColorTo = clWhite
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SelectionColor = 13744549
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.HeaderColor = clWhite
      SortSettings.HeaderColorTo = clWhite
      SortSettings.HeaderMirrorColor = clWhite
      SortSettings.HeaderMirrorColorTo = clWhite
      Version = '8.6.0.0'
      ColWidths = (
        64
        64
        64
        64
        62
        64
        64
        64
        64)
    end
  end
  object Grid1: TAdvStringGrid
    Left = 16
    Top = 111
    Width = 835
    Height = 258
    Cursor = crDefault
    ColCount = 9
    DrawingStyle = gdsClassic
    FixedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    GridLineColor = 13948116
    GridFixedLineColor = 11250603
    HoverRowCells = [hcNormal, hcSelected]
    OnGetCellColor = Grid1GetCellColor
    OnGetAlignment = Grid1GetAlignment
    OnCanEditCell = Grid1CanEditCell
    OnCheckBoxClick = Grid1CheckBoxClick
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ActiveCellColor = 11565130
    ActiveCellColorTo = 11565130
    BorderColor = 11250603
    ControlLook.FixedGradientFrom = clWhite
    ControlLook.FixedGradientTo = clWhite
    ControlLook.FixedGradientMirrorFrom = clWhite
    ControlLook.FixedGradientMirrorTo = clWhite
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientHoverMirrorFrom = clWhite
    ControlLook.FixedGradientHoverMirrorTo = clWhite
    ControlLook.FixedGradientHoverBorder = 11645361
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.FixedGradientDownMirrorFrom = clWhite
    ControlLook.FixedGradientDownMirrorTo = clWhite
    ControlLook.FixedGradientDownBorder = 11250603
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
    Look = glCustom
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
    SearchFooter.ColorTo = clWhite
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'MS Sans Serif'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurence'
    SearchFooter.HintFindPrev = 'Find previous occurence'
    SearchFooter.HintHighlight = 'Highlight occurences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SearchFooter.ResultFormat = '(%d of %d)'
    SelectionColor = clMoneyGreen
    SortSettings.DefaultFormat = ssAutomatic
    SortSettings.HeaderColor = clWhite
    SortSettings.HeaderColorTo = clWhite
    SortSettings.HeaderMirrorColor = clWhite
    SortSettings.HeaderMirrorColorTo = clWhite
    Version = '8.6.0.0'
    ColWidths = (
      64
      64
      64
      64
      62
      64
      64
      64
      64)
  end
  object MyStoredProc1: TMyStoredProc
    Connection = DmModul.con1
    Left = 706
    Top = 9
  end
  object tmr1: TTimer
    Left = 896
    Top = 165
  end
  object Timer1: TTimer
    Left = 896
    Top = 165
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 576
    Top = 432
  end
  object ds1: TMyDataSource
    Left = 771
    Top = 78
  end
end
