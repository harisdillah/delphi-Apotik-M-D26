object frm_setting: Tfrm_setting
  Left = 275
  Top = 246
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'frm_Setting_konect'
  ClientHeight = 313
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 272
    Width = 353
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Btn_test: TBitBtn
      Left = 136
      Top = 8
      Width = 73
      Height = 25
      Caption = 'Test DB'
      TabOrder = 0
      OnClick = Btn_testClick
    end
    object btn_save: TBitBtn
      Left = 216
      Top = 8
      Width = 65
      Height = 25
      Caption = '&Simpan'
      TabOrder = 1
      OnClick = btn_saveClick
    end
    object btn_batal: TBitBtn
      Left = 56
      Top = 8
      Width = 73
      Height = 25
      Caption = '&Batal'
      TabOrder = 2
      OnClick = btn_batalClick
    end
  end
  object AdvSmoothPanel1: TAdvSmoothPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 272
    Cursor = crDefault
    Caption.Text = 'Setting Database'
    Caption.HTMLFont.Charset = DEFAULT_CHARSET
    Caption.HTMLFont.Color = clWindowText
    Caption.HTMLFont.Height = -11
    Caption.HTMLFont.Name = 'Tahoma'
    Caption.HTMLFont.Style = []
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -16
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.ColorStart = 4474440
    Caption.ColorEnd = 4474440
    Caption.LineColor = 12895944
    Fill.Color = clWhite
    Fill.ColorTo = clWhite
    Fill.ColorMirror = clNone
    Fill.ColorMirrorTo = clNone
    Fill.GradientType = gtVertical
    Fill.GradientMirrorType = gtSolid
    Fill.BorderColor = 12895944
    Fill.Rounding = 0
    Fill.ShadowOffset = 0
    Fill.Glow = gmNone
    Version = '1.7.0.0'
    Align = alClient
    TabOrder = 1
    TMSStyle = 0
    object Label1: TLabel
      Left = 16
      Top = 35
      Width = 41
      Height = 25
      Caption = 'User'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial Unicode MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 66
      Width = 86
      Height = 25
      Caption = 'Password'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Unicode MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 15
      Top = 99
      Width = 84
      Height = 25
      Caption = 'Database'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Unicode MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 15
      Top = 127
      Width = 57
      Height = 25
      Caption = 'Server'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Unicode MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 158
      Width = 35
      Height = 25
      Caption = 'Port'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Arial Unicode MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 196
      Width = 28
      Height = 13
      Caption = 'Style:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ed_user: TEdit
      Left = 112
      Top = 37
      Width = 185
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object ePassword: TEdit
      Left = 112
      Top = 71
      Width = 185
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object Ed_db: TEdit
      Left = 111
      Top = 99
      Width = 186
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Ed_host: TEdit
      Left = 111
      Top = 129
      Width = 186
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Ed_port: TEdit
      Left = 112
      Top = 159
      Width = 57
      Height = 28
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = '3306'
    end
    object ComboBox1: TComboBox
      Left = 111
      Top = 193
      Width = 209
      Height = 21
      Style = csDropDownList
      TabOrder = 5
      Visible = False
      OnChange = ComboBox1Change
      Items.Strings = (
        'Office 2003 Blue'
        'Office 2003 Silver'
        'Office 2003 Olive'
        'Office 2003 Classic'
        'Office 2007 Luna'
        'Office 2007 Obsidian'
        'Office 2007 Silver'
        'Windows 8')
    end
  end
end
