object frm_Laporan_stok: Tfrm_Laporan_stok
  Left = 254
  Top = 198
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'frm_Laporan_stok'
  ClientHeight = 460
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 697
    Height = 89
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 9
      Width = 39
      Height = 13
      Caption = 'Laporan'
    end
    object Label2: TLabel
      Left = 170
      Top = 9
      Width = 18
      Height = 13
      Caption = 'S/d'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 64
      Height = 13
      Caption = 'Nama barang'
    end
    object dtgl1: TDateTimePicker
      Left = 58
      Top = 9
      Width = 105
      Height = 22
      Date = 41935.332186365740000000
      Time = 41935.332186365740000000
      TabOrder = 0
    end
    object dtgl2: TDateTimePicker
      Left = 202
      Top = 9
      Width = 105
      Height = 22
      Date = 41935.332186365740000000
      Time = 41935.332186365740000000
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 320
      Top = 8
      Width = 137
      Height = 25
      Caption = '&Laporan stok tanggal'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00C89460FDCA9764FFCA9664FFCA9664FFCA9664FFCA9663FFC996
        63FFC99663FFCA9764FFC89360FDFFFFFF00FFFFFF00FFFFFF00626262995C5C
        5CD2575757FFC79460FFF9F7F6FFF9F1ECFFF9F1EBFFF8F0E9FFF7EDE6FFF4EA
        E1FFF2E8DEFFFAF8F6FFC79360FF232323FF222222D12222227A696969FDA6A6
        A6FFB4B4B4FF808080FFAEABA9FFC4BFBCFFC4BFBCFFC4BFBCFFC4BFBCFFC4BF
        BCFFC4BFBCFFACA9A7FF2B2B2BFFB4B4B4FF9A9A9AFF222222FF6F6F6FFFB4B4
        B4FFB4B4B4FF949494FF808080FF808080FF787878FF6D6D6DFF606060FF5151
        51FF424242FF414141FF6D6D6DFFB4B4B4FFB4B4B4FF242424FF747474FFBABA
        BAFFBABABAFF8C8C8CFFD4D4D4FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
        B8FFB8B8B8FFD3D3D3FF828282FFBABABAFFBABABAFF292929FF797979FFD7D7
        D7FFD7D7D7FF969696FFD8D8D8FFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
        BEFFBEBEBEFFD7D7D7FF8D8D8DFFD7D7D7FFD7D7D7FF3E3E3EFF7D7D7DFFF9F9
        F9FFF9F9F9FFAAAAAAFFDFDFDFFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
        CBFFCBCBCBFFDFDFDFFFA2A2A2FFF9F9F9FFF9F9F9FF606060FF808080F9FCFC
        FCFFFCFCFCFFCBCBCBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
        F2FFF2F2F2FFF2F2F2FFC5C5C5FFFCFCFCFFFCFCFCFF6F6F6FFE808080D2D2D2
        D2FFE8E8E8FF7C7C7CFF7C7C7CFF7C7C7CFF7C7C7CFF7C7C7CFF7C7C7CFF7C7C
        7CFF7C7C7CFF7C7C7CFF7C7C7CFFE8E8E8FFC3C3C3FF555555DC808080459999
        99FFCCCCCCFFC78A4DFFF9F4EDFFFEE8D8FFFEE8D7FFFDE5D3FFFCE4D1FFFAE0
        C7FFF9DDC2FFFAF4EDFFC78449FFC2C2C2FF737373FF46464645FFFFFF008080
        8063808080F3C4884BFFF9F4EFFFFEE7D7FFFDE7D5FFFCE6D2FFFBE1CCFFF8DC
        C1FFF6DABCFFFAF4EFFFC38247FF585858F352525263FFFFFF00FFFFFF00FFFF
        FF0080808009C4884AF9F9F4F0FFFCE6D3FFFDE7D3FFFBE3CDFFFAE0C8FFF5D6
        BAFFF3D4B4FFF8F4F0FFC28145F95F5F5F09FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C5884AF7F9F5F1FFFCE3CFFFFCE4CFFFFAE1CAFFF9DDC3FFF4E9
        DFFFF7F2ECFFF5EFE9FFC17D44FBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C5884BF6F9F5F1FFFCE3CDFFFBE3CDFFF9E0C8FFF8DCC1FFFDFB
        F8FFFCE6CDFFE2B583FFBE7841A6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C38548FAF7F2ECFFF8F4EEFFF8F3EDFFF8F3EDFFF8F2ECFFF2E6
        D7FFE2B17CFFDA9062F6B36A3D07FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C07C4360C88A4CBBC88B4EFEC88B4EFFC88C4EF7C98B4EF7C488
        4BFEC3753A94FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object chk_xls: TCheckBox
      Left = 64
      Top = 35
      Width = 113
      Height = 17
      Caption = 'Tampilakan Excel '
      TabOrder = 3
    end
    object ed_nama: TEdit
      Left = 80
      Top = 56
      Width = 353
      Height = 21
      TabOrder = 4
    end
    object btn_cari: TBitBtn
      Left = 440
      Top = 56
      Width = 65
      Height = 25
      Caption = '&cari'
      TabOrder = 5
      OnClick = btn_cariClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF003664A95A325BA4E5477FB8FF3663AADC315DA40EFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003A69
        AC5D5083BBFF7CB4D7FF7EB4D6FF5590C2FF3666AADEFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003D6FAF5D578D
        C0FF8EC4DFFF9FD3E7FF92C7E0FF609AC9FF274786DCFFFFFF00FFFFFF00FFFF
        FF004984BB374984BBAF4B85BBEB4B85BCFD4A83BBFD2F7834FF2A702FFF256A
        29FFA2D5E8FFA4D7E9FF7FBADAFF3C63AAFD3561A717FFFFFF00FFFFFF004D8B
        BF654F8EC1E74C89BDCE4883BB7C457EB828447CB62836823DFF7CC181FF2B73
        31FF98CCE3FF8CC3DEFF4E82BBFF3867AB17FFFFFF00FFFFFF005091C2375494
        C3E74E8EC086F3E2CF1FF3E2CF414A9D52FF44954CFF5DA664FF84C78AFF529A
        59FF2D7532FF286E2DFF3B6EAF59FFFFFF00FFFFFF00FFFFFF005598C5AF5495
        C5CEF3E2CF20F3E2CF56F3E2CF6551A75BFF96D29EFF91CF99FF7CC485FF87CA
        8FFF82C58AFF2F7834FFFFFFFF00FFFFFF00FFFFFF00FFFFFF005A9EC9EB5396
        C77CF3E2CF48F3E2CF6BF3E2CF6A58B162FF53AA5DFF6CB675FF94D19DFF62AB
        6AFF3C8A43FF36823DFFFFFFFF00FFFFFF00FFFFFF00FFFFFF0060A4CDFD5498
        C728F3E2CF67F3E2CF6FF3E2CF6EF3E2CF6BF3E2CF6855AC5EFF9CD5A5FF4A9D
        52FF447DB7284B85BCFDFFFFFF00FFFFFF00FFFFFF00FFFFFF0061A6CFFD569B
        C928F3E2CF6BF3E2CF74F3E2CF71F3E2CF6FF3E2CF6C5BB566FF56AF60FF51A7
        5BFF4780BA284E89BDFDFFFFFF00FFFFFF00FFFFFF00FFFFFF005FA5CEEB589F
        CC7CF3E2CF52F3E2CF78F3E2CF76F3E2CF73F3E2CF71F3E2CF6CF3E2CF6AF3E2
        CF444A85BC7C4C88BDEBFFFFFF00FFFFFF00FFFFFF00FFFFFF005DA5CDAF5DA4
        CDCEF3E2CF28F3E2CF69F3E2CF79F3E2CF76F3E2CF74F3E2CF71F3E2CF5BF3E2
        CF204E8DC0CE4B88BCAFFFFFFF00FFFFFF00FFFFFF00FFFFFF005BA5CE3760A7
        CFE75AA3CD86F3E2CF29F3E2CF54F3E2CF6FF3E2CF6CF3E2CF4DF3E2CF224F90
        C2865290C2E74B88BD37FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005CA6
        CE6560A7CFE75DA5CECE59A0CC7C569CC928559AC8285499C87C5699C7CE5696
        C7E74F90C165FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF005BA5CE375DA6CEAF60A6CEEB63A7CFFD61A5CEFD5CA0CCEB569BC8AF5295
        C537FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 104
    Width = 697
    Height = 345
    Caption = 'Panel2'
    TabOrder = 1
    object Grid1: TAdvStringGrid
      Left = 5
      Top = 11
      Width = 668
      Height = 321
      Cursor = crDefault
      ColCount = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      OnGetCellColor = Grid1GetCellColor
      OnGetAlignment = Grid1GetAlignment
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
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
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
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
      Version = '5.0.2.0'
    end
  end
  object EXLReport1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    Dictionary = <>
    _Version = '1.40'
    Left = 596
    Top = 16
  end
  object MyStoredProc1: TMyStoredProc
    Left = 560
    Top = 16
  end
end
