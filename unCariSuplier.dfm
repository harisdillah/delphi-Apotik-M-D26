object fcariSuplier: TfcariSuplier
  Left = 332
  Top = 176
  ActiveControl = CRDBGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Pencarian Data Suplier'
  ClientHeight = 253
  ClientWidth = 765
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
  PixelsPerInch = 96
  TextHeight = 13
  object pcontrol: TPanel
    Left = 0
    Top = 220
    Width = 765
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
      Left = 275
      Top = 5
      Width = 182
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      TabOrder = 0
      OnClick = BitBtn1Click
      NumGlyphs = 2
    end
  end
  object CRDBGrid1: TCRDBGrid
    Left = 0
    Top = 41
    Width = 765
    Height = 179
    OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeStretch]
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
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
        FieldName = 'kd_suplier'
        Title.Alignment = taCenter
        Title.Caption = 'Kode Suplier'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_suplier'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Suplier'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'almt_suplier'
        Title.Alignment = taCenter
        Title.Caption = 'Alamat Suplier'
        Width = 364
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      765
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
      Width = 649
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Edit1'
      OnChange = Edit1Change
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn3: TBitBtn
      Left = 717
      Top = 8
      Width = 39
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object DataSource1: TDataSource
    DataSet = MyQuery
    Left = 440
    Top = 48
  end
  object MyQuery: TMyQuery
    SQL.Strings = (
      'select * from Suplier')
    CachedUpdates = True
    Left = 408
    Top = 48
  end
end
