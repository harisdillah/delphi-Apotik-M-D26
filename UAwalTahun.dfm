object FrmAwal: TFrmAwal
  Left = 0
  Top = 0
  Caption = 'FrmAwal'
  ClientHeight = 613
  ClientWidth = 851
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
    Width = 835
    Height = 577
    Caption = 'Panel2'
    TabOrder = 0
    DesignSize = (
      835
      577)
    object Label3: TLabel
      Left = 11
      Top = 75
      Width = 190
      Height = 20
      Caption = 'Data Awal Tahun Detail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_nm_jml: TLabel
      Left = 18
      Top = 409
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
      Left = 11
      Top = 39
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
    object Label2: TLabel
      Left = 10
      Top = 463
      Width = 102
      Height = 20
      Alignment = taRightJustify
      Caption = 'Nama Barang:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 18
      Top = 495
      Width = 91
      Height = 20
      Alignment = taRightJustify
      Caption = '&Jumlah / Qty:'
      FocusControl = eJumlah
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 47
      Top = 524
      Width = 63
      Height = 20
      Alignment = taRightJustify
      Caption = 'Tgl Awal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 254
      Top = 522
      Width = 165
      Height = 16
      Caption = '( Tanggal Awal Tahun Stok)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 200
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lSatuan: TLabel
      Left = 210
      Top = 478
      Width = 6
      Height = 19
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 30
      Top = 436
      Width = 79
      Height = 16
      Alignment = taRightJustify
      Caption = 'Kode Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object bGudang: TSpeedButton
      Left = 302
      Top = 431
      Width = 67
      Height = 26
      Hint = 'Ambil harga terakhir'
      Caption = 'Gudang'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = '@Meiryo'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object LabelSatuan: TLabel
      Left = 215
      Top = 495
      Width = 52
      Height = 20
      Alignment = taRightJustify
      Caption = '&Satuan'
      FocusControl = eJumlah
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 371
      Top = 430
      Width = 126
      Height = 26
      Caption = 'Ambil Data Baru'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFB0FF8283FF8485FF898BFFFFFFFF
        FFFFFFFFFFFFFFFFFF898BFF8485FF8283FFAFB0FFFFFFFFFFFFFFFFFFFFAFB0
        FF3E40FF8D8EFF8485FF898BFFFFFFFFFFFFFFFFFFFFFFFFFF898BFF8485FF8D
        8FFF3D3FFFAFB0FFFFFFFFFFFFFF8283FF8D8EFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8EFF8283FFFFFFFFFFFFFF8586
        FF8586FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF8586FF8586FFFFFFFFFFFFFF898BFF898AFFFFFFFFFFFFFFFFFFFFFFFFFF
        C0BFFFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFF898BFF898AFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8485FF8486FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0BFFF8486FF
        696BFF696BFF8486FFC0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBFBFFF8486FF696BFF696BFF8486FFBFBFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        8485FF8485FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF898B
        FF8A8BFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFFC0BFFFFFFFFFFFFFFFFFFFFFFF
        FFFF898BFF8A8BFFFFFFFFFFFFFF8586FF8586FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8586FF8586FFFFFFFFFFFFFF8283
        FF8D8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF8D8EFF8283FFFFFFFFFFFFFFAFB0FF3E40FF8D8EFF8485FF898BFFFFFFFF
        FFFFFFFFFFFFFFFFFF898BFF8485FF8D8EFF3E40FFAFB0FFFFFFFFFFFFFFFFFF
        FFAEAFFF8283FF8485FF898BFFFFFFFFFFFFFFFFFFFFFFFFFF898BFF8485FF82
        83FFAFB0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object dtp_awal: TDateTimePicker
      Left = 134
      Top = 5
      Width = 126
      Height = 28
      Date = 44511.000000000000000000
      Time = 0.628642106479674100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cxlbl1: TcxLabel
      Left = 11
      Top = 5
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
      Date = 44511.000000000000000000
      Time = 0.628642106479674100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Grid1: TAdvStringGrid
      Left = 10
      Top = 93
      Width = 823
      Height = 310
      Cursor = crDefault
      ColCount = 7
      DrawingStyle = gdsClassic
      FixedColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 4
      OnDblClick = Grid1DblClick
      OnDrawCell = Grid1DrawCell
      GridLineColor = 13948116
      GridFixedLineColor = 11250603
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = Grid1GetCellColor
      OnGetAlignment = Grid1GetAlignment
      OnDblClickCell = Grid1DblClickCell
      OnGetFloatFormat = Grid1GetFloatFormat
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = 4474440
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
      ControlLook.FixedGradientDownFrom = clWhite
      ControlLook.FixedGradientDownTo = clWhite
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
      FixedFont.Color = 3881787
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
      SearchFooter.ColorTo = clWhite
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
      SelectionColor = 13744549
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.HeaderColor = clWhite
      SortSettings.HeaderColorTo = clWhite
      SortSettings.HeaderMirrorColor = clWhite
      SortSettings.HeaderMirrorColorTo = clWhite
      Version = '8.5.0.1'
    end
    object btcari: TBitBtn
      Left = 442
      Top = 6
      Width = 70
      Height = 29
      Cursor = crHandPoint
      Caption = 'Cari'
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
      TabOrder = 5
      OnClick = btcariClick
    end
    object cxCariNama: TcxTextEdit
      Left = 131
      Top = 37
      ParentFont = False
      Style.Color = clCream
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clInfoBk
      Style.Font.Height = -21
      Style.Font.Name = 'Baskerville Old Face'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 381
    end
    object eNamaBarang: TEdit
      Left = 118
      Top = 462
      Width = 502
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 255
      ParentFont = False
      TabOrder = 7
    end
    object eJumlah: TEdit
      Left = 118
      Top = 491
      Width = 90
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Text = '0'
    end
    object DtpTanggal: TDateTimePicker
      Left = 118
      Top = 520
      Width = 130
      Height = 24
      Date = 40780.000000000000000000
      Time = 0.579931273103284200
      ShowCheckbox = True
      Checked = False
      TabOrder = 9
    end
    object BitBtn3: TBitBtn
      Left = 442
      Top = 522
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
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 10
      OnClick = BitBtn3Click
    end
    object BitBtn2: TBitBtn
      Left = 538
      Top = 522
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
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 11
    end
    object eKode: TEdit
      Tag = 1
      Left = 118
      Top = 431
      Width = 180
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      Text = '0'
      OnChange = eKodeChange
    end
    object PnOperasi: TPanel
      Left = 601
      Top = 423
      Width = 206
      Height = 34
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object cxlbljam: TcxLabel
      Left = 626
      Top = 459
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
    object BtnimportAwal: TBitBtn
      Left = 518
      Top = 6
      Width = 139
      Height = 29
      Cursor = crHandPoint
      Caption = '&Import Master Brg'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FAFAFAFDFDFDFFFFFFFEFEFEFAFAFAFFFFFFF6F6F6D4D3D2D7D7D6D7D7D7D8D7
        D6D8D7D7D7D6D6D8D7D7D8D7D6D8D7D7D7D6D6D8D7D7D8D7D7D6D5D5E2E1E1FF
        FFFFFBFBFBFFFFFFFFFFFFFBFBFBFDFDFDFFFFFFFEFEFEFFFFFF7B7978959391
        9492919493929593929593929392919593929593929593929392919594929593
        929796946C6969E2E1E1FCFCFCFCFCFCFFFFFFFFFFFFFAFAFAFDFDFDFFFFFFFF
        FFFF474544FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF989595D7D6D5FFFFFFFCFCFCFBFBFBFFFFFFFFFF
        FFFDFFFFE8D8C7FAEFE3969696FFFFFFF4F3F3E6E6E6E8E8E8E7E6E6E7E7E7E7
        E7E7E8E7E7E7E6E6E7E7E7E8E7E7E6E5E5FFFFFF959393D8D7D6FEFEFEFFFFFF
        FBFBFBFBFBFBFFFFFFFFFFFFBD8F609F550BDFBD9CFFFFFFE8E7E7CDCCCCD0D0
        D0CFCECECFCFCFD0D0D0D0D0D0CFCDCDD0D0D0D0D0D0CCCCCCFFFFFF959393D8
        D7D6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6BA9EA6601CDFC4A8
        ECF3FAACABABB0AFAFB0AFAFB0B0B0AEACACB0B0B0B0B0B0AFAEAEAEACACABAA
        AAFFFFFF949291D7D6D6FDFDFDFAFBFBFFFFFFE7D4C0AB6C2E9747009A4D00A8
        631DB1773FA45F1ADFC1A2F7FAFDEFEFEFF0EFEFF0F0F0F0F0F0F0EFEFF0F0F0
        F0F0F0F0F0F0EDEDEDFFFFFF959493D8D7D6FFFFFFFFFFFFF1EAE39F5408BE8B
        58D4B496D8BA9CCBA37AAC6C2CB6804BFCF2E9D9DADCCECDCDCFCECED0D0D0D0
        D0D0CFCECECFCFCFD0D0D0D0CFCFCACACAFFFFFF959393D8D7D6FEFEFEFFFFFF
        C19162B0753CFFFEFDFFFFFFFFFEFFB0753AAF6C29FFFFFFD8DADDA9A9A9B0B0
        B0B0B0B0AEACACB0B0B0B0AFAFB0B0B0AEACACB0AFAFABAAAAFFFFFF959493D8
        D7D6FAFAFAFFFFFFB67C43B78149FFFFFFFFFFFFAB6B2ABE8B58E2E1DFFFFFFF
        F8F8F8EFEEEEEFEFEFF0F0F0F0F0F0F0F0F0F0EFEFF0F0F0F0F0F0EFEFEFEDED
        EDFFFFFF949291D7D6D6FEFEFEFFFFFFAF7134AF7032FFFFFFFAFAFBFFFFFFFF
        FFFF5C5A5BFFFFFFE9E8E8CDCDCDCFCDCDD0D0D0D0D0D0CFCFCFCFCECED0D0D0
        D0D0D0CECECECCCBCBFFFFFF959393D8D7D6FFFFFFFFFFFFF4E8E0F4E8DEFFFF
        FFFFFFFFFEFDFFFFFFFF3A3536FFFFFFDBDADDAAA8A9B0B0B0AFADADAFAEAEB0
        AFAFAFAEAEABA9A9ADADADADACACA8A7A7FFFFFF959293D8D7D6FCFDFCE4EBDA
        E4EDDDE5EEDFE3EAD9E3EAD8E3EAD8E2EAD8F5FDECE2EAD8E8EFDEFFFFFFECEB
        ECF0F0F0F0F0F0EEEDEDFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF959392D8
        D7D6E8EEDF5E8A2459861B517F11568219668F2E6992315C8821507D10558215
        5E8922EAF2E1CAC8CBD1D0D0D0D0D0CCCACAE9E8E8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF9B9998D7D6D6E7EDDD558119D9E2CBEDF2E6C4D3AE72974071973CA4
        BD82ECF1E6E1E9D66B9334E9F2DEA5A2A5B0AEAEB0AFAFACABABDAD9D9FFFFFF
        989695504D4C555252666262524F4EDFDEDEE7EEDE6991305C8622FFFFFFFFFF
        FFB2C7957FA153FFFFFFFFFFFF87A75C5C8722E6EDDCF0EFF2F0F0F0EFEFEFEF
        EEEEF8F8F8FFFFFF4E4B49FFFFFFFFFFFFCCCBCA989695FDFDFDE7EDDE689131
        7A9D4887A65BFBFCFBFFFFFFE6ECDDFFFFFFB2C7976B9334689031E8F0DEC1C0
        C3C8C7C7C6C5C5C5C4C4E5E4E4FFFFFF565352FFFFFFC1C0C07F7C7CF6F5F5FF
        FFFFE6EDDE668F2F7FA25070973AA2B981FEFEFEFFFFFFC2D2AB6A92357EA14F
        689130E3EBD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF64605FCECECD7572
        72FFFFFFFFFFFFFAFAFAE7EDDE668F2F7D9F4E6F963AC8D6B4FFFFFFFFFFFFD4
        E0C473993F7C9E4C68902FE9F0DECDCBCED2D1D1D2D1D1D2D1D1D2D2D1DFDEDE
        43403E959392FFFFFFFFFFFFFFFFFFFEFEFEE7EEDE6A9231699134B0C593FFFF
        FFEBF1E4DAE3CEFFFFFFC5D5AF678F2D678F31EEF6E485818395939294939295
        9392959392918F8EB7B5B6F9F8F8FFFFFFFBFBFBFDFDFDFFFFFFE8EDDF5F8A23
        87A85BFFFFFFFFFFFF8CAB6182A555FFFFFFFFFFFF95B06D5B8720E3EAD9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFAFAFAFD
        FDFDE4EBDA689032E1E8D6EEF2E7A2BB8170953C72983DA4BC81ECF2E6E1E9D6
        6D9638E0E8D4FEFDFFFEFEFEFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFCFCFCFBFB
        FBFFFFFFFFFFFFFAFAFAE9EFE05C88215380155280115E8922668F2F678F305F
        8A22528112537F145B8720E5ECDBFFFFFFFAFAFAFEFEFEFFFFFFFDFDFDFBFBFB
        FFFFFFFFFFFFFBFBFBFBFBFBFFFFFFFEFEFEFDFDFDE8EFE0E6ECDEE8EEE0E7EE
        DFE7EDDEE6ECDEE7EEDFE8EEDFE7EDDEE8EEE0FCFDFCFFFFFFFEFEFEFAFAFAFE
        FEFEFFFFFFFDFDFDFAFAFAFFFFFFFFFFFFFCFCFCFCFCFCFFFFFF}
      TabOrder = 15
      Visible = False
    end
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
  object dlgOpen1: TOpenDialog
    Left = 704
    Top = 56
  end
end
