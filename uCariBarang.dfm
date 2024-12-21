object fcariBarang: TfcariBarang
  Left = 305
  Top = 185
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Pencarian Data Barang'
  ClientHeight = 251
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcontrol: TPanel
    Left = 0
    Top = 218
    Width = 797
    Height = 33
    Align = alBottom
    Caption = 'pcontrol'
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 3
      Top = 5
      Width = 110
      Height = 25
      Hint = 'Buat Data baru'
      Caption = 'Tambah Baru'
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object BitBtn1: TBitBtn
      Left = 683
      Top = 5
      Width = 102
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 0
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      797
      41)
    object Label1: TLabel
      Left = 15
      Top = 10
      Width = 33
      Height = 20
      Caption = 'Cari'
    end
    object Edit1: TEdit
      Left = 56
      Top = 8
      Width = 689
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn3: TBitBtn
      Left = 749
      Top = 8
      Width = 39
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object CRDBGrid1: TCRDBGrid
    Left = 0
    Top = 41
    Width = 797
    Height = 177
    OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeStretch]
    Align = alClient
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Unicode MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
    OnDblClick = CRDBGrid1DblClick
    OnKeyDown = CRDBGrid1KeyDown
    OnKeyPress = CRDBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        Title.Alignment = taCenter
        Width = 60
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = MyQuery
    Left = 448
    Top = 224
  end
  object MyQuery: TMyQuery
    SQL.Strings = (
      'select * from m_barang')
    CachedUpdates = True
    Left = 416
    Top = 224
  end
end
