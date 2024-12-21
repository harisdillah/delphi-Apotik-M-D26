object FrmBrowserLink: TFrmBrowserLink
  Left = 303
  Top = 133
  Caption = 'Browser - Initializing...'
  ClientHeight = 700
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object WVWindowParent1: TWVWindowParent
    Left = 0
    Top = 24
    Width = 995
    Height = 676
    Align = alClient
    TabStop = True
    TabOrder = 0
    Browser = WVBrowser1
  end
  object AddressPnl: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 24
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 1
    DesignSize = (
      995
      24)
    object AddressCb: TComboBox
      Left = 0
      Top = 0
      Width = 943
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'https://www.bing.com'
      Items.Strings = (
        '')
    end
    object GoBtn: TButton
      Left = 945
      Top = 0
      Width = 50
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Go'
      TabOrder = 1
      WordWrap = True
      OnClick = GoBtnClick
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 300
    OnTimer = Timer1Timer
    Left = 312
    Top = 160
  end
  object WVBrowser1: TWVBrowser
    TargetCompatibleBrowserVersion = '95.0.1020.44'
    AllowSingleSignOnUsingOSPrimaryAccount = False
    OnInitializationError = WVBrowser1InitializationError
    OnAfterCreated = WVBrowser1AfterCreated
    OnDocumentTitleChanged = WVBrowser1DocumentTitleChanged
    Left = 200
    Top = 160
  end
end
