object fjabatan: Tfjabatan
  Left = 491
  Top = 150
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Data Jabatan'
  ClientHeight = 539
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ScreenSnap = True
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lbkode: TLabel
    Left = 240
    Top = 16
    Width = 3
    Height = 16
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 5
    Width = 512
    Height = 539
    ActivePage = TabSheet2
    TabHeight = 5
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object lbstatus: TLabel
        Left = 8
        Top = 320
        Width = 46
        Height = 16
        Caption = 'lbstatus'
      end
      object Label1: TLabel
        Left = 20
        Top = 12
        Width = 32
        Height = 16
        Caption = 'Kode'
      end
      object Label2: TLabel
        Left = 16
        Top = 40
        Width = 49
        Height = 16
        Caption = 'Jabatan'
      end
      object Label3: TLabel
        Left = 16
        Top = 64
        Width = 24
        Height = 16
        Caption = 'Gaji'
      end
      object Label4: TLabel
        Left = 200
        Top = 32
        Width = 69
        Height = 16
        Caption = 'Keterangan'
      end
      object pkontrol: TPanel
        Left = -8
        Top = 383
        Width = 504
        Height = 50
        TabOrder = 0
        OnClick = pkontrolClick
        object btreset: TSpeedButton
          Left = 4
          Top = 2
          Width = 25
          Height = 24
          NumGlyphs = 2
          OnClick = btresetClick
        end
        object ptengah: TPanel
          Left = 0
          Top = 1
          Width = 472
          Height = 32
          BevelOuter = bvNone
          TabOrder = 0
          OnClick = ptengahClick
          object btcari: TBitBtn
            Left = 392
            Top = 2
            Width = 77
            Height = 25
            Cursor = crHandPoint
            Caption = 'Cari'
            TabOrder = 0
            OnClick = btcariClick
          end
          object btHapus: TBitBtn
            Left = 304
            Top = 2
            Width = 85
            Height = 25
            Cursor = crHandPoint
            Caption = 'Hapus'
            NumGlyphs = 2
            TabOrder = 1
            OnClick = btHapusClick
          end
          object btEdit: TBitBtn
            Left = 130
            Top = 3
            Width = 79
            Height = 25
            Cursor = crHandPoint
            Caption = 'Edit'
            NumGlyphs = 2
            TabOrder = 2
            OnClick = btEditClick
          end
        end
        object btsimpan: TBitBtn
          Left = 223
          Top = 3
          Width = 74
          Height = 25
          Cursor = crHandPoint
          Caption = 'Simpan'
          NumGlyphs = 2
          TabOrder = 1
          OnClick = btsimpanClick
        end
      end
      object CRDBGrid1: TCRDBGrid
        Left = 0
        Top = 92
        Width = 504
        Height = 257
        OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeStretch]
        DataSource = MyDataSource1
        PopupMenu = PopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = CRDBGrid1DrawColumnCell
        OnKeyDown = CRDBGrid1KeyDown
        OnKeyPress = CRDBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'kd_jabatan'
            Title.Alignment = taCenter
            Title.Caption = 'Kode'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_jabatan'
            Title.Alignment = taCenter
            Title.Caption = 'Nama'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gaji_pokok'
            Title.Alignment = taCenter
            Title.Caption = 'Jml Gaji'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ket'
            Title.Alignment = taCenter
            Title.Caption = 'Keterangan'
            Width = 189
            Visible = True
          end>
      end
      object pcari: TPanel
        Left = 0
        Top = 351
        Width = 504
        Height = 32
        TabOrder = 2
        Visible = False
        object Label8: TLabel
          Left = 1
          Top = 7
          Width = 61
          Height = 16
          Caption = 'Pencarian'
        end
        object Edit5: TEdit
          Left = 73
          Top = 4
          Width = 376
          Height = 24
          TabOrder = 0
          OnClick = Edit5Click
          OnKeyDown = Edit5KeyDown
        end
        object BitBtn3: TBitBtn
          Left = 453
          Top = 4
          Width = 39
          Height = 25
          Cursor = crHandPoint
          TabOrder = 1
          OnClick = BitBtn3Click
        end
      end
      object Edit1: TEdit
        Left = 80
        Top = 8
        Width = 105
        Height = 24
        TabOrder = 3
        OnKeyDown = Edit1KeyDown
      end
      object Edit2: TEdit
        Left = 80
        Top = 35
        Width = 105
        Height = 24
        TabOrder = 4
        OnKeyDown = Edit2KeyDown
      end
      object Edit3: TEdit
        Left = 288
        Top = 32
        Width = 129
        Height = 24
        TabOrder = 6
        OnKeyDown = Edit3KeyDown
      end
      object CheckBox1: TCheckBox
        Left = 192
        Top = 8
        Width = 89
        Height = 17
        Caption = 'Otomatis'
        TabOrder = 5
        OnClick = CheckBox1Click
      end
    end
  end
  object MyQuery1: TMyQuery
    SQL.Strings = (
      'select * from jabatan')
    CachedUpdates = True
    AfterOpen = MyQuery1AfterOpen
    Left = 312
    Top = 200
  end
  object MyDataSource1: TMyDataSource
    DataSet = MyQuery1
    Left = 240
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 132
    Top = 223
    object Edit: TMenuItem
      Caption = 'Edit'
      OnClick = EditClick
    end
    object utup1: TMenuItem
      Caption = 'Tutup'
      OnClick = utup1Click
    end
  end
end
