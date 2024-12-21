object frmBayar: TfrmBayar
  Left = 0
  Top = 0
  Caption = 'frmBayar'
  ClientHeight = 594
  ClientWidth = 1284
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
  object Label2: TLabel
    Left = 9
    Top = 149
    Width = 92
    Height = 20
    Caption = 'Nilai Faktur'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 9
    Top = 117
    Width = 110
    Height = 20
    Caption = 'Nomor Faktur'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 17
    Top = 125
    Width = 110
    Height = 20
    Caption = 'Nomor Faktur'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = -1
    Top = 41
    Width = 786
    Height = 632
    ActivePage = ts1
    Align = alCustom
    TabOrder = 0
    object ts1: TTabSheet
      Caption = 'Belum Bayar'
      object Label9: TLabel
        Left = 515
        Top = 497
        Width = 46
        Height = 20
        Caption = 'Total '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object grid1: TAdvStringGrid
        Left = 1
        Top = 30
        Width = 774
        Height = 486
        Cursor = crDefault
        ColCount = 8
        DrawingStyle = gdsClassic
        FixedColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        GridLineColor = 13948116
        GridFixedLineColor = 11250603
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = grid1GetAlignment
        OnDblClickCell = grid1DblClickCell
        OnGetFloatFormat = grid1GetFloatFormat
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
      object EdTotalblmbayar: TEdit
        Left = 592
        Top = 517
        Width = 181
        Height = 26
        Alignment = taRightJustify
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Lucida Fax'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object chkgrid1: TCheckBox
        Left = 5
        Top = 4
        Width = 142
        Height = 25
        Caption = 'Cari Nama Supplier'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = chkgrid1Click
      end
      object EdCariSupplierbayar: TEdit
        Left = 148
        Top = 3
        Width = 233
        Height = 21
        TabOrder = 3
        OnChange = EdCariSupplierbayarChange
      end
    end
    object ts2: TTabSheet
      Caption = 'Sudah bayar'
      ImageIndex = 1
      object Label7: TLabel
        Left = 493
        Top = 495
        Width = 95
        Height = 20
        Caption = 'Total Lunas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Grid2: TAdvStringGrid
        Left = 3
        Top = 35
        Width = 774
        Height = 486
        Cursor = crDefault
        ColCount = 8
        DrawingStyle = gdsClassic
        FixedColor = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Bright'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        GridLineColor = 13948116
        GridFixedLineColor = 11250603
        HoverRowCells = [hcNormal, hcSelected]
        OnGetAlignment = Grid2GetAlignment
        OnDblClickCell = Grid2DblClickCell
        OnGetFloatFormat = Grid2GetFloatFormat
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
      object edTotalLunas: TEdit
        Left = 596
        Top = 522
        Width = 181
        Height = 26
        Alignment = taRightJustify
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Lucida Fax'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object Ed_carisupplierbayar: TEdit
        Left = 148
        Top = 3
        Width = 233
        Height = 21
        TabOrder = 2
        OnChange = Ed_carisupplierbayarChange
      end
      object chkcrgid2: TCheckBox
        Left = 5
        Top = 4
        Width = 142
        Height = 25
        Caption = 'Cari Nama Supplier'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = chkcrgid2Click
      end
    end
  end
  object Panel1: TPanel
    Left = 3
    Top = 0
    Width = 758
    Height = 41
    TabOrder = 1
    object cxLabel3: TcxLabel
      Left = 3
      Top = 6
      Caption = 'Tanggal'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object dtp1: TDateTimePicker
      Left = 78
      Top = 7
      Width = 133
      Height = 28
      Date = 44511.628642106480000000
      Time = 44511.628642106480000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object cxLabel8: TcxLabel
      Left = 217
      Top = 11
      Caption = 's/d'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object dtp2: TDateTimePicker
      Left = 249
      Top = 7
      Width = 133
      Height = 28
      Date = 44511.628642106480000000
      Time = 44511.628642106480000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object btcari: TBitBtn
      Left = 388
      Top = 6
      Width = 157
      Height = 32
      Cursor = crHandPoint
      Caption = 'Cari tgl BELUM BAYAR'
      DoubleBuffered = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFF4643BF
        0F0BBA100CBF100BBE100BBE100BBE0F0BBD0F0BBD0F0BBD0F0BBD0F0BBD0F0B
        BD0F0BBD0F0BBB0F0BBB0F0BBB0F0BBB0F0BBB0F0BBB0F0BBA0E0AB74543BBFF
        FFFF4744C31714DF1D1BF61B1AF41B19F41B18F41B18F41B17F41B17F41B18F5
        1B18F51B17F51B15F51B15F51B14F51A14F41A14F41A14F41A14F41A14F41A14
        F41B15F61510DD4643BE110EC31E1EF51D1DF11D1DF11D1DF11D1CF11D1BF11C
        1BF11C1AF20B0ADF0B0ADF0B0ADF0B0ADF0B0ADF0B0ADF1B18F21B17F11B17F1
        1A17F11A17F11A16F11A15F11A15F6100BBE1310C91E22F31E21F11E21F11E20
        F11E20F11D1FF11D1FF11E1FF50200A3D6D4F6D6D4F6D6D4F6D6D4F601009B1E
        1CF51C1BF11C1AF11C1AF11C1AF11C1AF11B1AF11B19F4110EC51411CC2127F3
        2025F12024F12024F11F23F11F23F11F23F12023F50000A4FFFFFFFFFFFFFFFF
        FFFFFFFF0000A51E20F51D1FF11D1EF11D1DF11D1DF11D1DF11D1DF11D1EF313
        0FC81512CE222AF32129F12129F12128F12127F12027F12026F12128F50000AB
        FFFFFFFFFFFFFFFFFFFFFFFF0000AB2024F51F23F11F22F11F22F11E21F11E21
        F11E21F11E21F31310CB1614D2232FF4222EF1222DF1212DF1212CF1212CF121
        2BF1222CF40700B4D6D4F6D6D4F6D6D4F6D6D4F60700B42128F42026F12026F1
        2026F12026F12025F12024F12025F31512CE1615D42534F42432F22331F22331
        F22330F22330F2232FF22330F31B20E40602BC0000BC0000BC0601BD181BDF21
        2DF2212BF1212AF1212AF1212AF12129F12129F12229F31512D11716D72739F4
        2536F22536F22535F22534F22534F22434F22433F22331F31D17CA7973E47973
        E42E26CF202CEF2330F2232FF2232FF2222EF2222EF2222EF1222DF1212EF316
        13D31916D8273DF3263BF2263AF2263AF22639F22639F22638F22639F21D29E9
        3B34D6FFFFFFFFFFFF3B33D61C27E92534F22434F22433F22433F22432F22432
        F22331F22433F41715D61614DA2840F4293DF2283EF2283DF2283DF2273CF227
        3CF2273DF31922E57973E4FFFFFFFFFFFF7A74E41820E5263AF32638F22638F2
        2637F22637F22536F22536F22435F31513D84B49E53C56F6273EF3293FF32940
        F32A40F32A40F32A40F32B41F4161BE28C86E8FFFFFFFFFFFF8C86E8151AE127
        3DF3273CF2273CF2273CF2253AF22439F22236F2374CF54947E34F4EE7677DF7
        5E75F63F5AF52B43F32940F32A41F32B42F32D44F41114DFCAC6F4FFFFFFFFFF
        FFCAC6F41113DF2B42F4293FF3283DF3263CF3283DF33D52F4596FF56077F64D
        4CE64F4EE9657FF8647CF7667DF6687FF6526CF5425BF53850F42B44F30B09DF
        D6D4F6FFFFFFFFFFFFD6D4F60B0ADF2941F4354EF43E57F55067F5657AF66378
        F66277F66079F74F4CE7504FEB6983F8677FF7677FF7677FF7677EF7687FF769
        80F76B84F83F3AE7FFFFFFFFFFFFFFFFFFFFFFFF3F3AE76982F7667DF6657CF6
        647BF66378F66278F66278F6637BF74E4DE9504FEC6A86F76983F76883F76881
        F76881F76881F76880F76983F83A32E7FFFFFFFFFFFFFFFFFFFFFFFF3A32E767
        80F8667DF7667DF7667CF7647CF7647CF7647BF6657EF64F4EEB514FED6E89F7
        6C85F76C85F76B85F76B85F76B84F76B84F76886F76960EEFFFFFFFFFFFFFFFF
        FFFFFFFF6960EE6783F76880F76880F76880F76880F7677FF7677FF76882F750
        4FEC5151EF6F8CF76D88F76D88F76D88F76D88F76C86F76C86F76B87F76960EE
        FFFFFFFFFFFFFFFFFFFFFFFF6960EE6A85F76B84F76984F76984F76983F76983
        F76883F76984F75050ED5352F07290F7708CF7708CF7708AF7708AF7708AF76E
        8AF76D8AF76960EEFFFFFFFFFFFFFFFFFFFFFFFF6960EE6A87F76C86F76C86F7
        6C86F76C86F76C85F76C85F76C88F7514FEE5453F17492F7728EF7728EF7728E
        F7728EF7718DF7718DF7708FF76960EEFFFFFFFFFFFFFFFFFFFFFFFF6960EE6F
        8BF76E8AF76E89F76E89F76D89F76D88F76D88F76F8BF75151F05453F27796F8
        7591F87591F87391F7738FF7738FF7738FF77392F76960EED6D4F6D6D4F6D6D4
        F6D6D4F66960EE718FF7718DF7718DF7718DF7708CF7708CF7708CF7728DF753
        53F05351F37A99F87793F87793F87793F87793F87692F87692F87693F86A7DF7
        677BF76578F76578F76678F7697BF77390F7738FF7738FF7738FF7728EF7728E
        F7728EF77593F7514FF16862F66978F67B9AF87A98F87A98F87A98F87A98F87A
        98F87A98F87B99F87A98F87A98F87A98F87A98F87A98F87996F87896F87896F8
        7896F87896F87795F87897F86875F5756FF6FFFFFF7770F85451F55555F55555
        F55555F55555F55555F55555F55555F55655F55655F55655F55655F55655F556
        55F55655F55655F55655F55654F55654F5534FF57770F6FFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = btcariClick
    end
    object btnCariSudah: TBitBtn
      Left = 546
      Top = 6
      Width = 157
      Height = 32
      Cursor = crHandPoint
      Caption = 'Cari tgl LUNAS'
      DoubleBuffered = True
      Glyph.Data = {
        42020000424D4202000000000000420000002800000010000000100000000100
        1000030000000002000000000000000000000000000000000000007C0000E003
        00001F000000F75E00000000000000000000000000000000000000000000F75E
        F75EF75EF75EF75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        F75EF75EF75EF75E0000FF7F007C007C007C007C007C007C007C007C007CFF7F
        F75EF75EF75EF75E0000FF7F007C007C007C007C007C007C007C007C007CFF7F
        F75EF75EF75EF75E0000FF7FFF7FFF7F1F00FF7F1F00FF7F1F00FF7FFF7FFF7F
        F75EF75EF75EF75E0000FF7FFF7FF75EFF7FF75EFF7FF75EFF7FF75EFF7FFF7F
        F75EF75EF75EF75E0000FF7F0F000F000F000F000F000F000F000F000F00FF7F
        F75EF75EF75EF75E0000FF7F0F000F000F000F000F000F000F000F000F00FF7F
        00000000F75EF75EF75EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FF75EF75EF75E0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7FF75EF75EF75E0000FF7FFF7F003C003C003CF75EE07FE07FE07F
        F75EFF7FFF7FF75EF75EF75E0000FF7F003C003C003C003C003CF75EE07FE07F
        E07FF75EFF7FF75EF75EF75E0000FF7F003CFF7F003CFF7FFF7FF75EFF7FF75E
        E07FF75EFF7FF75EF75EF75E0000FF7F003C003C003C003C003CF75EE07FE07F
        E07FF75EFF7FF75EF75EF75E0000FF7FFF7F003C003C003CF75EE07FE07FE07F
        F75EFF7FFF7FF75EF75EF75EF75EFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7FFF7F}
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = btnCariSudahClick
    end
  end
  object Panel2: TPanel
    Left = 786
    Top = 8
    Width = 521
    Height = 593
    TabOrder = 2
    object btnsave: TSpeedButton
      Left = 223
      Top = 213
      Width = 90
      Height = 32
      Hint = 'Hapus'
      Caption = '&Bayar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000C1761BC27519
        BD6B13B96504B96504B96504BA6504BA6504BA6504BA6504BA6504BA6504BA65
        04BC690AB96A15C3791FD5933DEFB736CDC6C0E9F8FFDBE5F6DBE8F8DBE8F8DB
        E8F9DBE8F8DAE7F8DBE7F8D8E4F5E9F6FFCDC6C0EAA714C0761DCD9551E8AE3C
        DCD7D4ECE8E9ADA0A2A79B9E9E939594898C8A818583797C7B7276685F64ECE8
        E9DCD7D4E59E20C77B25D09653EAB447DCD7D4EFF0EFDFDEDCE1E0DFE0DFDEDF
        E0DDE0DFDDDFDEDDDFE0DEDBD9D9EDEDEDDCD7D4E7A62BC9802BD49B58EBB950
        DCD7D4ECE8E9A99D9FA4999E9A919492888B897F8582797C7A7177655C62ECE8
        E9DCD7D4E8AC37CC8531D69E5BEDBD5ADCD7D4FFFFFFFFFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4EAB340D08B34D9A45EF0C263
        DCD7D4ECE8E9A99D9FA4999E9A919492888B897F8582797C7A7177655C62ECE8
        E9DCD7D4EDB749D2903AD8A35CF0C66DDCD7D4FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCD7D4EEBD54D7963EDEAC69F9D281
        C1975C9A7B6095775E97795D97795D97795D97795D97795C97795C95775E9A7A
        5EC19A64F7CA6BD99B44DDAB67F6D58BFFD056C0A887C8C5C9CEC6BFCDC6C0CD
        C6C0CDC6BFD6D0CAD6D3D0CFCED4C0A888FFD25DF3CC75DCA148DCA966F6D993
        FBC85DC2B4A2D7DEEBDDDDDDDCDDDEDCDBDDE7E8EAC8BAA7A29692C2B4A2C6BC
        A9FBCB63F3D07EE0A74CE5B973F6DA97FBCC62C8BAA7DDE0E9E1DFDDE0DFDEDF
        DDDCEFF3F99F886FE5AF479E9189C7BDB2FDCF6AF5D484E3AC51E9BC75F8DD9E
        FDCF69CEC0AFE3E7EFE7E5E3E6E5E4E5E4E2F1F6FFBAA386FFE873B5AB9ECAC0
        B8FFD26EF9DA8EE7B25BEAC079F8E09BFBD165D3C4AFEAEEF6ECEBE8ECEBE9EB
        E9E6FBFFFFA28E78DEAF4FA89C95D1C7B9FFDA78F5D889E2A442ECC47EFEF4D5
        FFE290DCD7D4F5FFFFF6FEFFF6FEFFF6FDFFFFFFFFDFDDDCC8BAA7DFDDDCE5E4
        E2FFDE88E4AA45FCF5ECECC681F0CA82F4CA7DE8C788EFCF94EFD498EDCF92EE
        D092EED093F2D396F7D79BF6D69BE6C48AEBB552FDF9F2FFFFFF}
      ParentFont = False
      OnClick = btnsaveClick
    end
    object Label10: TLabel
      Left = 71
      Top = 151
      Width = 47
      Height = 20
      Caption = 'Bayar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 27
      Top = 124
      Width = 92
      Height = 20
      Caption = 'Nilai Faktur'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 100
      Width = 110
      Height = 20
      Caption = 'Nomor Faktur'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 9
      Top = 71
      Width = 108
      Height = 20
      Caption = 'Nama Suplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnBtnHapus: TSpeedButton
      Left = 310
      Top = 214
      Width = 115
      Height = 31
      Hint = 'Hapus'
      Caption = '&Batal Bayar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFF140EAE
        1711B8100BA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF100B
        A11711B8140EAEFFFFFF1F1AB52522E92723F11F1BD1130EA6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF130EA61F1BD12723F12522E91F1AB53D3AC84648F6
        2425F12A2BF32121D4140FADFFFFFFFFFFFFFFFFFFFFFFFF140FAD2121D42A2B
        F32425F14648F63D3AC8221CB66262E1444BF3262DEF2C33F22326D71812B3FF
        FFFFFFFFFF1812B32326D72C33F2262DEF474DF46262E1221CB6FFFFFF241DBB
        6566E34853F32934EF2F3BF2262BD91A13BA1A13BA262BD92F3BF22834EF4752
        F35F61DF241DBAFFFFFFFFFFFFFFFFFF2621C2656AE54756F32C3DF03041F12B
        36E42B36E43041F12D3DF04A59F35D5FE02119BFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF2721C66267E64356F23044F03448F23448F23044EF4255F26166E5221A
        C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C23CC4551E9354DF136
        4CEF364CEF354DF04251EA2B23CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF1D14CE3240E63C54F23850F0384FF03B54F23445E91D15CEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F17D4313EE43E58F13953F045
        5EF2455FF23A53F03E57F0303AE31F15D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        2018D93542E7425FF33D59F1556EF3737FF2737EF2566EF33D59F1425EF3313A
        E41F16D9FFFFFFFFFFFFFFFFFF2018DE3744E94663F2405DF15C77F36E76EF30
        28DF2E25DF7078F05D77F4405DF14562F2333DE82117DDFFFFFF221BE23947EC
        4A69F34462F25F7AF3686EF0271FE2FFFFFFFFFFFF2C23E2717AF1607BF44362
        F24A69F33846EB2019E24144EC5372F44464F26481F46E76F2271EE6FFFFFFFF
        FFFFFFFFFFFFFFFF2D25E7747CF26480F44564F25270F33D41EB4441ED7B8FF5
        7A94F6737BF32D24EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D24EA737C
        F37A93F67A8FF64441EDFFFFFF4845F05A59F22D24EDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF2D24ED5959F24844F0FFFFFF}
      ParentFont = False
    end
    object Label8: TLabel
      Left = 306
      Top = 155
      Width = 76
      Height = 20
      Caption = 'Tgl.Bayar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblstatus: TLabel
      Left = 8
      Top = 248
      Width = 81
      Height = 19
      Caption = 'Ket : Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edTotalBayar: TEdit
      Left = 124
      Top = 153
      Width = 181
      Height = 26
      Alignment = taRightJustify
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Lucida Fax'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = edTotalBayarChange
    end
    object EdNilaiFaktur: TEdit
      Left = 125
      Top = 124
      Width = 181
      Height = 26
      Alignment = taRightJustify
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Lucida Fax'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = EdNilaiFakturChange
    end
    object edNoFaktur: TEdit
      Left = 125
      Top = 96
      Width = 300
      Height = 26
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Lucida Fax'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object cxlbl10: TcxLabel
      Left = 16
      Top = 33
      Caption = 'Tanggal. '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBackground
      Style.IsFontAssigned = True
    end
    object dtp_bayar: TDateTimePicker
      Left = 383
      Top = 151
      Width = 133
      Height = 28
      Date = 44511.628642106480000000
      Time = 44511.628642106480000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object cxlbl1: TcxLabel
      Left = 17
      Top = 7
      Caption = 'No. Transaksi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
    end
    object Edkodetransaksi: TAdvShapeButton
      Left = 125
      Top = 4
      Width = 140
      Height = 25
      HelpType = htKeyword
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      TextAlignment = taLeftJustify
      Version = '6.2.1.7'
    end
    object cxLabel1: TcxLabel
      Left = 232
      Top = 35
      Caption = 'Tgl.  Jatuh Tempo'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBackground
      Style.IsFontAssigned = True
    end
    object dtpJatuhTempo: TDateTimePicker
      Left = 368
      Top = 33
      Width = 141
      Height = 28
      Date = 44511.628642106480000000
      Time = 44511.628642106480000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object dtpFaktur: TDateTimePicker
      Left = 125
      Top = 33
      Width = 141
      Height = 28
      Date = 44511.628642106480000000
      Time = 44511.628642106480000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object PnOperasi: TPanel
      Left = 4
      Top = 217
      Width = 213
      Height = 23
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object cxLabel2: TcxLabel
      Left = 56
      Top = 185
      Caption = 'Petugas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBackground
      Style.IsFontAssigned = True
    end
    object cbbpetugas: TcxLookupComboBox
      Left = 124
      Top = 181
      ParentFont = False
      Properties.ListColumns = <>
      Properties.ListSource = ds1
      Style.BorderColor = clInfoBk
      Style.Color = clInactiveBorder
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 180
    end
    object btncv: TcxButtonEdit
      Left = 125
      Top = 67
      Enabled = False
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 92
    end
    object cxlblnamacv: TcxLabel
      Left = 223
      Top = 70
      Caption = 'Nama :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clHotLight
      Style.IsFontAssigned = True
    end
    object EdTrans: TEdit
      Left = 368
      Top = 4
      Width = 146
      Height = 26
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Lucida Fax'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object cxLabel4: TcxLabel
      Left = 271
      Top = 7
      Caption = 'No. Tran Beli'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBackground
      Style.IsFontAssigned = True
    end
    object mmo1: TMemo
      Left = -2
      Top = 275
      Width = 297
      Height = 62
      Lines.Strings = (
        'mmo1')
      TabOrder = 17
      Visible = False
    end
  end
  object ds1: TMyDataSource
    AutoEdit = False
    Left = 832
    Top = 597
  end
  object MyDataSource1: TMyDataSource
    AutoEdit = False
    Left = 832
    Top = 597
  end
  object QCari: TMyQuery
    Connection = DmModul.con1
    Left = 729
    Top = 65534
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 448
    Top = 557
  end
  object ds6: TMyDataSource
    Left = 1155
    Top = 182
  end
end
