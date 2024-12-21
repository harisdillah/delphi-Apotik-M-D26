object frm_m_brg: Tfrm_m_brg
  Left = 191
  Top = 151
  Width = 1044
  Height = 618
  Caption = 'frm_brg'
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
  object pnl1: TPanel
    Left = -1
    Top = 0
    Width = 1025
    Height = 577
    Color = clActiveCaption
    TabOrder = 0
    object pnl2: TPanel
      Left = 4
      Top = 5
      Width = 569
      Height = 41
      Caption = 'pnl2'
      Color = clScrollBar
      TabOrder = 0
      object PnOperasi1: TSpeedButton
        Left = 498
        Top = 6
        Width = 61
        Height = 23
        Hint = 'Baru'
        Caption = '&Cari'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000E1C8C3163B7B
          4D66A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF3A629D70D4FF148AFD335293FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4788CCA1F1FF
          CFFFFF1791F63866AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF3678C77EE2FFE0FFFF2BA1F6326FBDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          3280D265D9FFE9FFFF4BB3F7368BEAFFFFFFFFFFFFFAF9F9EEE9E9F4F2F2FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF368CDE58D5FFBCFBFF118BF0C4
          B7BC9E7A78A1807CAB8B7FA37C72815F61DDD5D6FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF2F9AEE19A5FFC7B8BCAB746EFAFAF6FFFFFFFFFFF3FFFFEBFFF8
          D298695CBBACAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7CBD6C98A7DFD
          FFFFFFFFFFFDFAECFAF2E1F6F0D3F8E8CBFFFFD9996959E5DFE0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD2B7B5F5EFE8FFFFFFFEFCF5FCF9EEFBF2DFF9F3D7EDD5
          B7F4DCBCF5D5AE9D7D7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB89A9DFFFFFCFD
          FAF2FCF9EFFBF4E5FDF8E9FAF3DDF5E5C9ECD4B6FFE4BC986D66FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFC9B3B2FFFFE9FBF4E5FAF5E2FDF7E9FCF4E2F4E3C9F1D9
          BFEFDDC0FFE1B9A67B72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B4B3FFFEDAFA
          F2DBFAF3D9FBF5E0F4E3C6FEFDFBFFFFFBF5EBCFFDD5ABA0746EFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD0BFC6EEDABBFCEFCEF2DEC0F6EAD0F3E1C6FDFDEDFAF8
          E3F7E8C8E8B892BDA2A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBFCC9AEAAF6
          D8B3F1D9B7E8CCACF4E2C6F4E9CAF7E3C3F3CC9FB98677E5DEE1FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF3F0F2CBB1A7E7C49FEDC498EEC59AEBBD90E1AF
          84BF8F79CDBFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8
          F7F8E0D5D7CEB4A8CBB1AAC5A69DCFBABAE8E2E5FFFFFFFFFFFF}
        Margin = 0
        ParentFont = False
        OnClick = PnOperasi1Click
      end
      object cxLabel16: TcxLabel
        Left = 1
        Top = 8
        Caption = 'Pencarian '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object ed1: TcxTextEdit
        Left = 80
        Top = 8
        TabOrder = 1
        Width = 409
      end
    end
    object pnl3: TPanel
      Left = 1
      Top = 512
      Width = 369
      Height = 33
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 8
        Top = 7
        Width = 81
        Height = 20
        Hint = 'Baru'
        Caption = '&Import'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08
          780E08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A70DA31B08780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A70EAA1D08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A70EA81C08780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A710AA1F08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          08780E08780E08780E08780E08780E76F9A719B02C08780E08780E08780E0878
          0E08780EFF00FFFF00FFFF00FF08780E76F9A755E38349DA7242D36837C8562A
          B94322B3371CB23016AF270FA81D0EA91B0DA21B08780EFF00FFFF00FF08780E
          76F9A776F9A776F9A776F9A776F9A776F9A72CBB4876F9A776F9A776F9A776F9
          A776F9A708780EFF00FFFF00FFFF00FF08780E08780E08780E08780E08780E76
          F9A73CCB5D08780E08780E08780E08780E08780EFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A749D97208780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A755E28208780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A763F09708780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A776F9A708780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF08780E08780EFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Margin = 0
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 94
        Top = 6
        Width = 77
        Height = 21
        Hint = 'Ubah'
        Caption = '&export'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFB78183B78183B78183B78183B78183B78183B78183B7
          8183B78183B78183B78183B78183B78183FF00FFFF00FFFF00FFB78183FDEFD9
          F4E1C9E4CFB4D1BCA0CDB798DAC09AE4C599E9C896EDCB96EECC97F3D199B781
          83FF00FFFF00FFFF00FFB48176FEF3E3F8E7D3494645373C3E516061AE9C82BF
          A889D0B48DE4C393EDCB96F3D199B78183FF00FFFF00FFFF00FFB48176FFF7EB
          F9EBDAB0A5981B617D097CA818556F66625BA79479C5AC86DCBD8DEECD95B781
          83FF00FFFF00FFFF00FFBA8E85FFFCF4FAEFE4F2E5D638728629799A8D787F95
          6D6F7959539D8B73BAA380D9BC8CB47F81FF00FFFF00FFFF00FFBA8E85FFFFFD
          FBF4ECFAEFE3A5B3B17C7078E5A6A3C89292A4727276575195856CAF9978A877
          79FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5FBF3ECF4EBDF85787CEEB7B5DA
          A6A6C38E8E9E6E6E73564F93836B996E6FFF00FFFF00FFFF00FFCB9A82FFFFFF
          FFFEFDFDF8F4FBF3ECF0E4D9A37978E9B5B5D9A5A5C48F8F9D6D6D7759528F67
          69FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFFFFEFDFEF9F4FBF3EBE8D9CE9E
          7473E8B5B5D8A4A4C18D8D9D6C6C7D5556FF00FFFF00FFFF00FFDCA887FFFFFF
          FFFFFFFFFFFFFFFEFDFDF9F4FBF3EBE0CFC5A17676ECB9B9D6A2A2C68E8E965F
          5D585C60FF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF8F3FD
          F6ECDAC5BCAC8080F3BCBBA3878C3392B319ADCC19ADCCFF00FFE3B18EFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9AA7A71B27873469CBA0FCA
          F400A4E6021EAA000099EDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE4D4D2B8857ADCA76A10A5CF04A8E60936C9092CC30318AEEDBD92FCF7F4
          FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00FF077D
          CD4860F1204ADD0416AAEDBD92DCA887DCA887DCA887DCA887DCA887DCA887DC
          A887DCA887B8857AFF00FFFF00FFFF00FF3E4BDB192DC4FF00FF}
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object lbl1: TLabel
        Left = 176
        Top = 8
        Width = 21
        Height = 13
        Caption = 'lbl1'
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object grid1: TAdvStringGrid
      Left = 3
      Top = 46
      Width = 568
      Height = 381
      Cursor = crDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 2
      HoverRowCells = [hcNormal, hcSelected]
      OnGetCellColor = grid1GetCellColor
      OnDblClickCell = grid1DblClickCell
      OnGetFloatFormat = grid1GetFloatFormat
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
      SearchFooter.HintFindNext = 'Find next occurence'
      SearchFooter.HintFindPrev = 'Find previous occurence'
      SearchFooter.HintHighlight = 'Highlight occurences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SearchFooter.ResultFormat = '(%d of %d)'
      SortSettings.DefaultFormat = ssAutomatic
      Version = '8.6.0.0'
    end
    object pnl4: TPanel
      Left = 574
      Top = 4
      Width = 449
      Height = 505
      Color = clMoneyGreen
      TabOrder = 3
      object cxkode: TcxTextEdit
        Left = 240
        Top = 3
        Style.Color = cl3DLight
        TabOrder = 0
        Width = 91
      end
      object cxlbl1: TcxLabel
        Left = 199
        Top = 3
        Caption = 'Kode '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel1: TcxLabel
        Left = 16
        Top = 44
        Caption = 'Nama'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edcxstok: TcxTextEdit
        Left = 80
        Top = 234
        TabOrder = 3
        Width = 73
      end
      object cxLabel2: TcxLabel
        Left = 15
        Top = 234
        Caption = 'Stok'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel3: TcxLabel
        Left = 14
        Top = 163
        Caption = 'Satuan'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel4: TcxLabel
        Left = 1
        Top = 189
        Caption = 'harga Beli'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edcxhrgbeli: TcxTextEdit
        Left = 81
        Top = 189
        TabOrder = 7
        Width = 129
      end
      object cxLabel5: TcxLabel
        Left = 1
        Top = 210
        Caption = 'Harga Jual'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object edcxhrgjual: TcxTextEdit
        Left = 81
        Top = 211
        Style.Color = clCream
        TabOrder = 9
        Width = 129
      end
      object cxLabel6: TcxLabel
        Left = 17
        Top = 288
        Caption = 'Tgl. ED'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel7: TcxLabel
        Left = 24
        Top = 307
        Caption = 'Merk'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object edcxmerk: TcxTextEdit
        Left = 104
        Top = 307
        TabOrder = 12
        Width = 297
      end
      object cxLabel8: TcxLabel
        Left = 22
        Top = 326
        Caption = 'Penyedia'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel9: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Jenis Obat'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel10: TcxLabel
        Left = 25
        Top = 376
        Caption = 'Formulasi'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object edcxformula: TcxTextEdit
        Left = 105
        Top = 376
        TabOrder = 16
        Width = 129
      end
      object cxLabel11: TcxLabel
        Left = 25
        Top = 400
        Caption = 'Faktor %'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel12: TcxLabel
        Left = 25
        Top = 424
        Caption = 'Nama Dagang'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object edcxnmdagang: TcxTextEdit
        Left = 132
        Top = 424
        TabOrder = 19
        Width = 269
      end
      object cxLabel13: TcxLabel
        Left = 22
        Top = 444
        Caption = 'Distibutor'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cbbcxcbodistri: TcxComboBox
        Left = 120
        Top = 447
        TabOrder = 21
        Width = 241
      end
      object cxLabel14: TcxLabel
        Left = 25
        Top = 469
        Caption = 'Stok Min'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object edcxstokmin: TcxTextEdit
        Left = 105
        Top = 469
        TabOrder = 23
        Width = 129
      end
      object cxLabel15: TcxLabel
        Left = 8
        Top = 2
        Caption = 'Bidang brg'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxlbl2: TcxLabel
        Left = 165
        Top = 235
        Caption = 'No. Bacth'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object ednobatch: TcxTextEdit
        Left = 240
        Top = 235
        Style.Color = cl3DLight
        TabOrder = 26
        Width = 201
      end
      object ed_nama: TcxMemo
        Left = 80
        Top = 44
        Lines.Strings = (
          '')
        TabOrder = 27
        Height = 57
        Width = 361
      end
      object cxlblcxisi: TcxLabel
        Left = 15
        Top = 239
        Caption = 'Isi '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object ed_isi: TcxTextEdit
        Left = 80
        Top = 258
        TabOrder = 29
        Width = 73
      end
      object ed_nmgenerik: TcxMemo
        Left = 96
        Top = 105
        Lines.Strings = (
          '')
        TabOrder = 30
        Height = 57
        Width = 345
      end
      object cxlbl3: TcxLabel
        Left = 0
        Top = 103
        Caption = 'Nama Generik'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clNavy
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cbbsat: TComboBox
        Left = 84
        Top = 163
        Width = 177
        Height = 21
        ItemHeight = 13
        TabOrder = 32
      end
      object cbb_pbf: TComboBox
        Left = 104
        Top = 329
        Width = 337
        Height = 21
        ItemHeight = 13
        TabOrder = 33
      end
      object cxl_bidang: TcxLookupComboBox
        Left = 81
        Top = 2
        Properties.ListColumns = <>
        TabOrder = 34
        Width = 113
      end
      object cxl1: TcxLookupComboBox
        Left = 82
        Top = 24
        Properties.ListColumns = <>
        TabOrder = 35
        Width = 265
      end
      object dtp_ed: TDateTimePicker
        Left = 80
        Top = 283
        Width = 137
        Height = 22
        Date = 42182.349704131940000000
        Time = 42182.349704131940000000
        TabOrder = 36
      end
      object Pnket: TPanel
        Left = 336
        Top = 3
        Width = 108
        Height = 21
        Caption = 'Keterangan'
        Color = clAqua
        TabOrder = 37
      end
      object edcxfaktor: TcxTextEdit
        Left = 104
        Top = 400
        TabOrder = 38
        Width = 42
      end
      object cxlbl4: TcxLabel
        Left = 148
        Top = 400
        Caption = '%'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxlbl5: TcxLabel
        Left = 20
        Top = 261
        Caption = 'Isi'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -13
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
    object pnl5: TPanel
      Left = 576
      Top = 544
      Width = 449
      Height = 33
      TabOrder = 4
      object btnBtnBaru: TSpeedButton
        Left = 8
        Top = 4
        Width = 61
        Height = 23
        Hint = 'Baru'
        Caption = '&Baru'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08
          780E08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A70DA31B08780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A70EAA1D08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A70EA81C08780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A710AA1F08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          08780E08780E08780E08780E08780E76F9A719B02C08780E08780E08780E0878
          0E08780EFF00FFFF00FFFF00FF08780E76F9A755E38349DA7242D36837C8562A
          B94322B3371CB23016AF270FA81D0EA91B0DA21B08780EFF00FFFF00FF08780E
          76F9A776F9A776F9A776F9A776F9A776F9A72CBB4876F9A776F9A776F9A776F9
          A776F9A708780EFF00FFFF00FFFF00FF08780E08780E08780E08780E08780E76
          F9A73CCB5D08780E08780E08780E08780E08780EFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A749D97208780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A755E28208780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A763F09708780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A776F9A708780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF08780E08780EFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Margin = 0
        ParentFont = False
      end
      object btnBtnUbah1: TSpeedButton
        Left = 77
        Top = 4
        Width = 64
        Height = 23
        Hint = 'Ubah'
        Caption = '&Edit'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFB78183B78183B78183B78183B78183B78183B78183B7
          8183B78183B78183B78183B78183B78183FF00FFFF00FFFF00FFB78183FDEFD9
          F4E1C9E4CFB4D1BCA0CDB798DAC09AE4C599E9C896EDCB96EECC97F3D199B781
          83FF00FFFF00FFFF00FFB48176FEF3E3F8E7D3494645373C3E516061AE9C82BF
          A889D0B48DE4C393EDCB96F3D199B78183FF00FFFF00FFFF00FFB48176FFF7EB
          F9EBDAB0A5981B617D097CA818556F66625BA79479C5AC86DCBD8DEECD95B781
          83FF00FFFF00FFFF00FFBA8E85FFFCF4FAEFE4F2E5D638728629799A8D787F95
          6D6F7959539D8B73BAA380D9BC8CB47F81FF00FFFF00FFFF00FFBA8E85FFFFFD
          FBF4ECFAEFE3A5B3B17C7078E5A6A3C89292A4727276575195856CAF9978A877
          79FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5FBF3ECF4EBDF85787CEEB7B5DA
          A6A6C38E8E9E6E6E73564F93836B996E6FFF00FFFF00FFFF00FFCB9A82FFFFFF
          FFFEFDFDF8F4FBF3ECF0E4D9A37978E9B5B5D9A5A5C48F8F9D6D6D7759528F67
          69FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFFFFEFDFEF9F4FBF3EBE8D9CE9E
          7473E8B5B5D8A4A4C18D8D9D6C6C7D5556FF00FFFF00FFFF00FFDCA887FFFFFF
          FFFFFFFFFFFFFFFEFDFDF9F4FBF3EBE0CFC5A17676ECB9B9D6A2A2C68E8E965F
          5D585C60FF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF8F3FD
          F6ECDAC5BCAC8080F3BCBBA3878C3392B319ADCC19ADCCFF00FFE3B18EFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9AA7A71B27873469CBA0FCA
          F400A4E6021EAA000099EDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE4D4D2B8857ADCA76A10A5CF04A8E60936C9092CC30318AEEDBD92FCF7F4
          FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00FF077D
          CD4860F1204ADD0416AAEDBD92DCA887DCA887DCA887DCA887DCA887DCA887DC
          A887DCA887B8857AFF00FFFF00FFFF00FF3E4BDB192DC4FF00FF}
        ParentFont = False
      end
      object btnBtnHapus: TSpeedButton
        Left = 149
        Top = 5
        Width = 72
        Height = 22
        Hint = 'Hapus'
        Caption = '&Hapus'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
          0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
          B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
          0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
          00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
          05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
          00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
          0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentFont = False
      end
      object btnsave: TSpeedButton
        Left = 229
        Top = 5
        Width = 72
        Height = 22
        Hint = 'Hapus'
        Caption = '&Simpan'
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
      end
    end
    object PnOperas1: TPanel
      Left = 576
      Top = 544
      Width = 449
      Height = 33
      Color = clActiveCaption
      TabOrder = 5
      object PnOperasi2: TSpeedButton
        Left = 8
        Top = 4
        Width = 61
        Height = 23
        Hint = 'Baru'
        Caption = '&Baru'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08
          780E08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A70DA31B08780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A70EAA1D08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A70EA81C08780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A710AA1F08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          08780E08780E08780E08780E08780E76F9A719B02C08780E08780E08780E0878
          0E08780EFF00FFFF00FFFF00FF08780E76F9A755E38349DA7242D36837C8562A
          B94322B3371CB23016AF270FA81D0EA91B0DA21B08780EFF00FFFF00FF08780E
          76F9A776F9A776F9A776F9A776F9A776F9A72CBB4876F9A776F9A776F9A776F9
          A776F9A708780EFF00FFFF00FFFF00FF08780E08780E08780E08780E08780E76
          F9A73CCB5D08780E08780E08780E08780E08780EFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A749D97208780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A755E28208780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF08780E76F9A763F09708780EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
          F9A776F9A708780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF08780E08780EFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Margin = 0
        ParentFont = False
        OnClick = PnOperasi2Click
      end
      object PnOperasi3: TSpeedButton
        Left = 68
        Top = 4
        Width = 64
        Height = 23
        Hint = 'Ubah'
        Caption = '&Edit'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFB78183B78183B78183B78183B78183B78183B78183B7
          8183B78183B78183B78183B78183B78183FF00FFFF00FFFF00FFB78183FDEFD9
          F4E1C9E4CFB4D1BCA0CDB798DAC09AE4C599E9C896EDCB96EECC97F3D199B781
          83FF00FFFF00FFFF00FFB48176FEF3E3F8E7D3494645373C3E516061AE9C82BF
          A889D0B48DE4C393EDCB96F3D199B78183FF00FFFF00FFFF00FFB48176FFF7EB
          F9EBDAB0A5981B617D097CA818556F66625BA79479C5AC86DCBD8DEECD95B781
          83FF00FFFF00FFFF00FFBA8E85FFFCF4FAEFE4F2E5D638728629799A8D787F95
          6D6F7959539D8B73BAA380D9BC8CB47F81FF00FFFF00FFFF00FFBA8E85FFFFFD
          FBF4ECFAEFE3A5B3B17C7078E5A6A3C89292A4727276575195856CAF9978A877
          79FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5FBF3ECF4EBDF85787CEEB7B5DA
          A6A6C38E8E9E6E6E73564F93836B996E6FFF00FFFF00FFFF00FFCB9A82FFFFFF
          FFFEFDFDF8F4FBF3ECF0E4D9A37978E9B5B5D9A5A5C48F8F9D6D6D7759528F67
          69FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFFFFEFDFEF9F4FBF3EBE8D9CE9E
          7473E8B5B5D8A4A4C18D8D9D6C6C7D5556FF00FFFF00FFFF00FFDCA887FFFFFF
          FFFFFFFFFFFFFFFEFDFDF9F4FBF3EBE0CFC5A17676ECB9B9D6A2A2C68E8E965F
          5D585C60FF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF8F3FD
          F6ECDAC5BCAC8080F3BCBBA3878C3392B319ADCC19ADCCFF00FFE3B18EFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9AA7A71B27873469CBA0FCA
          F400A4E6021EAA000099EDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE4D4D2B8857ADCA76A10A5CF04A8E60936C9092CC30318AEEDBD92FCF7F4
          FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00FF077D
          CD4860F1204ADD0416AAEDBD92DCA887DCA887DCA887DCA887DCA887DCA887DC
          A887DCA887B8857AFF00FFFF00FFFF00FF3E4BDB192DC4FF00FF}
        ParentFont = False
        OnClick = PnOperasi3Click
      end
      object PnOperasi4: TSpeedButton
        Left = 134
        Top = 4
        Width = 72
        Height = 22
        Hint = 'Hapus'
        Caption = '&Hapus'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
          0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
          B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
          0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
          00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
          05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
          00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
          0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentFont = False
        OnClick = PnOperasi4Click
      end
      object PnOperasi5: TSpeedButton
        Left = 209
        Top = 4
        Width = 72
        Height = 22
        Hint = 'Hapus'
        Caption = '&Simpan'
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
        OnClick = PnOperasi5Click
      end
    end
    object PnOperas2: TPanel
      Left = 576
      Top = 512
      Width = 449
      Height = 33
      TabOrder = 6
      object btnnobaru: TSpeedButton
        Left = 8
        Top = 4
        Width = 129
        Height = 23
        Hint = 'Baru'
        Caption = '&No Baru alkes'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFBBE4C270CF8527B7471EBA401EBA4027B74770CF85BBE4C2FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFA4FB96219C1401FCE4C24DC5827
          DD5C27DD5C24DC581FCE4C19C1404FB962FAFDFAFFFFFFFFFFFFFFFFFFFBFDFB
          21A93A1ED04E22D55521D35503B82C00A71200A71203B82C21D35522D5551ED0
          4E21A93AFBFDFBFFFFFFFFFFFF4EB15B1ECE4D21D3541FCC4D0FCC4500AD13FF
          FFFFFFFFFF00AD130FCC451FCC4D21D3541ECE4D4EB15BFFFFFFBDDEBE17BA3F
          21DA5A1ECC5120D0530DC74200BE25FFFFFFFFFFFF00BE250DC74220D0531ECC
          5121DA5A17BA3FBDDEBE6ABC7417D15120D45F0BCC4A04CA4300C13300BC22FF
          FFFFFFFFFF00BD2700C23B10CA4B0ECC4C20D45F17D1516ABC7430A03F33E67A
          00B62D00AD1300AD1300AD1300AD13FFFFFFFFFFFF00AD1300BD2700BD2300AD
          1300B62D33E67A30A14130A34381FCC300AF21FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00AF2181FCC430A14223953785FDCC
          2AC262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF2AC26285FDCC23953533933D7BFAC33CD07D71C7801EBF5921C05B0ABA4DFF
          FFFFFFFFFF10BC5122C05C1EBF5971C7803CD07D7BFAC333933D67AB668AE5B9
          65EAB050DF9756DF9C41DB8D22C05CFFFFFFFFFFFF22C05C49DC9356DF9C50DF
          9765EAB08AE5B967AB66B9D4B94EB068AFFFEA5EE0A156E19F45DE9766D589FF
          FFFFFFFFFF23C05B50E09E56E19F5EE0A1AFFFEA4EB068B9D4B9FFFFFF458945
          7BDCA8B6FFEF76E5B551DFA366D589FFFFFFFFFFFF24BF5956E2A876E5B5B6FF
          EF7BDCA8458945FFFFFFFFFFFFFAFDFA1572156DD6A3B7FFF5AAF7E370E0B022
          C05C22C05C74E2B3ABF7E4B7FFF56DD6A3157215FAFDFAFFFFFFFFFFFFFFFFFF
          F9FCF945864538A75E7FE1B8A9FFECB9FFFBB9FFFBA9FFEC7FE1B838A75E4586
          45F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CEB767A567247D3328
          8738288738247D3367A567B7CEB7FFFFFFFFFFFFFFFFFFFFFFFF}
        Margin = 0
        ParentFont = False
        OnClick = btnnobaruClick
      end
      object btn1: TSpeedButton
        Left = 142
        Top = 4
        Width = 129
        Height = 23
        Hint = 'Baru'
        Caption = '&No Baru Paten'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFBBE4C270CF8527B7471EBA401EBA4027B74770CF85BBE4C2FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFA4FB96219C1401FCE4C24DC5827
          DD5C27DD5C24DC581FCE4C19C1404FB962FAFDFAFFFFFFFFFFFFFFFFFFFBFDFB
          21A93A1ED04E22D55521D35503B82C00A71200A71203B82C21D35522D5551ED0
          4E21A93AFBFDFBFFFFFFFFFFFF4EB15B1ECE4D21D3541FCC4D0FCC4500AD13FF
          FFFFFFFFFF00AD130FCC451FCC4D21D3541ECE4D4EB15BFFFFFFBDDEBE17BA3F
          21DA5A1ECC5120D0530DC74200BE25FFFFFFFFFFFF00BE250DC74220D0531ECC
          5121DA5A17BA3FBDDEBE6ABC7417D15120D45F0BCC4A04CA4300C13300BC22FF
          FFFFFFFFFF00BD2700C23B10CA4B0ECC4C20D45F17D1516ABC7430A03F33E67A
          00B62D00AD1300AD1300AD1300AD13FFFFFFFFFFFF00AD1300BD2700BD2300AD
          1300B62D33E67A30A14130A34381FCC300AF21FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00AF2181FCC430A14223953785FDCC
          2AC262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF2AC26285FDCC23953533933D7BFAC33CD07D71C7801EBF5921C05B0ABA4DFF
          FFFFFFFFFF10BC5122C05C1EBF5971C7803CD07D7BFAC333933D67AB668AE5B9
          65EAB050DF9756DF9C41DB8D22C05CFFFFFFFFFFFF22C05C49DC9356DF9C50DF
          9765EAB08AE5B967AB66B9D4B94EB068AFFFEA5EE0A156E19F45DE9766D589FF
          FFFFFFFFFF23C05B50E09E56E19F5EE0A1AFFFEA4EB068B9D4B9FFFFFF458945
          7BDCA8B6FFEF76E5B551DFA366D589FFFFFFFFFFFF24BF5956E2A876E5B5B6FF
          EF7BDCA8458945FFFFFFFFFFFFFAFDFA1572156DD6A3B7FFF5AAF7E370E0B022
          C05C22C05C74E2B3ABF7E4B7FFF56DD6A3157215FAFDFAFFFFFFFFFFFFFFFFFF
          F9FCF945864538A75E7FE1B8A9FFECB9FFFBB9FFFBA9FFEC7FE1B838A75E4586
          45F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CEB767A567247D3328
          8738288738247D3367A567B7CEB7FFFFFFFFFFFFFFFFFFFFFFFF}
        Margin = 0
        ParentFont = False
        OnClick = btn1Click
      end
      object btn2: TSpeedButton
        Left = 276
        Top = 3
        Width = 141
        Height = 23
        Hint = 'Baru'
        Caption = '&No Baru Generik'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFBBE4C270CF8527B7471EBA401EBA4027B74770CF85BBE4C2FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFA4FB96219C1401FCE4C24DC5827
          DD5C27DD5C24DC581FCE4C19C1404FB962FAFDFAFFFFFFFFFFFFFFFFFFFBFDFB
          21A93A1ED04E22D55521D35503B82C00A71200A71203B82C21D35522D5551ED0
          4E21A93AFBFDFBFFFFFFFFFFFF4EB15B1ECE4D21D3541FCC4D0FCC4500AD13FF
          FFFFFFFFFF00AD130FCC451FCC4D21D3541ECE4D4EB15BFFFFFFBDDEBE17BA3F
          21DA5A1ECC5120D0530DC74200BE25FFFFFFFFFFFF00BE250DC74220D0531ECC
          5121DA5A17BA3FBDDEBE6ABC7417D15120D45F0BCC4A04CA4300C13300BC22FF
          FFFFFFFFFF00BD2700C23B10CA4B0ECC4C20D45F17D1516ABC7430A03F33E67A
          00B62D00AD1300AD1300AD1300AD13FFFFFFFFFFFF00AD1300BD2700BD2300AD
          1300B62D33E67A30A14130A34381FCC300AF21FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00AF2181FCC430A14223953785FDCC
          2AC262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF2AC26285FDCC23953533933D7BFAC33CD07D71C7801EBF5921C05B0ABA4DFF
          FFFFFFFFFF10BC5122C05C1EBF5971C7803CD07D7BFAC333933D67AB668AE5B9
          65EAB050DF9756DF9C41DB8D22C05CFFFFFFFFFFFF22C05C49DC9356DF9C50DF
          9765EAB08AE5B967AB66B9D4B94EB068AFFFEA5EE0A156E19F45DE9766D589FF
          FFFFFFFFFF23C05B50E09E56E19F5EE0A1AFFFEA4EB068B9D4B9FFFFFF458945
          7BDCA8B6FFEF76E5B551DFA366D589FFFFFFFFFFFF24BF5956E2A876E5B5B6FF
          EF7BDCA8458945FFFFFFFFFFFFFAFDFA1572156DD6A3B7FFF5AAF7E370E0B022
          C05C22C05C74E2B3ABF7E4B7FFF56DD6A3157215FAFDFAFFFFFFFFFFFFFFFFFF
          F9FCF945864538A75E7FE1B8A9FFECB9FFFBB9FFFBA9FFEC7FE1B838A75E4586
          45F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CEB767A567247D3328
          8738288738247D3367A567B7CEB7FFFFFFFFFFFFFFFFFFFFFFFF}
        Margin = 0
        ParentFont = False
        OnClick = btn2Click
      end
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 1
    Top = 409
  end
  object mystrdprc1: TMyStoredProc
    Left = 776
    Top = 360
  end
  object ds1: TMyDataSource
    Left = 853
    Top = 342
  end
  object ds2: TMyDataSource
    Left = 829
    Top = 284
  end
  object exlrprt1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    Dictionary = <>
    _Version = '1.40'
    Left = 208
    Top = 512
  end
end
