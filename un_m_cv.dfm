object frm_mcv: Tfrm_mcv
  Left = 421
  Top = 41
  Caption = 'Master_CV'
  ClientHeight = 579
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 799
    Height = 579
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Input Data'
      DesignSize = (
        791
        548)
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 759
        Height = 499
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Data PBF'
        Color = clGradientInactiveCaption
        ParentColor = False
        TabOrder = 0
        object Label5: TLabel
          Left = 24
          Top = 32
          Width = 28
          Height = 16
          Caption = 'Kode'
        end
        object Label6: TLabel
          Left = 24
          Top = 64
          Width = 33
          Height = 16
          Caption = 'Nama'
        end
        object Label7: TLabel
          Left = 24
          Top = 96
          Width = 40
          Height = 16
          Caption = 'Alamat'
        end
        object Label8: TLabel
          Left = 104
          Top = 32
          Width = 5
          Height = 16
          Caption = ':'
        end
        object Label9: TLabel
          Left = 104
          Top = 64
          Width = 5
          Height = 16
          Caption = ':'
        end
        object Label10: TLabel
          Left = 104
          Top = 96
          Width = 5
          Height = 16
          Caption = ':'
        end
        object Label13: TLabel
          Left = 24
          Top = 131
          Width = 25
          Height = 16
          Caption = 'Kota'
        end
        object Label14: TLabel
          Left = 104
          Top = 131
          Width = 5
          Height = 16
          Caption = ':'
        end
        object Label12: TLabel
          Left = 16
          Top = 251
          Width = 25
          Height = 16
          Caption = 'Telp'
        end
        object Label15: TLabel
          Left = 16
          Top = 283
          Width = 20
          Height = 16
          Caption = 'Fax'
        end
        object Label16: TLabel
          Left = 16
          Top = 315
          Width = 34
          Height = 16
          Caption = 'NPWP'
        end
        object Label17: TLabel
          Left = 16
          Top = 347
          Width = 31
          Height = 16
          Caption = 'Email'
        end
        object Label18: TLabel
          Left = 16
          Top = 379
          Width = 40
          Height = 16
          Caption = 'Pemilik'
        end
        object Label19: TLabel
          Left = 319
          Top = 214
          Width = 108
          Height = 16
          Caption = 'Bank Jatim Cabang'
        end
        object Label20: TLabel
          Left = 16
          Top = 413
          Width = 47
          Height = 16
          Caption = 'NO. KTP'
        end
        object Label21: TLabel
          Left = 24
          Top = 155
          Width = 45
          Height = 16
          Caption = 'Propinsi'
        end
        object Label24: TLabel
          Left = 16
          Top = 187
          Width = 54
          Height = 16
          Caption = 'Kode POs'
        end
        object Label25: TLabel
          Left = 16
          Top = 219
          Width = 83
          Height = 16
          Caption = 'Rekening Bank'
        end
        object Edit4: TEdit
          Left = 112
          Top = 125
          Width = 281
          Height = 24
          CharCase = ecUpperCase
          Color = clMenuBar
          TabOrder = 3
        end
        object Edit1: TEdit
          Left = 112
          Top = 31
          Width = 137
          Height = 27
          Color = clSkyBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 20
          ParentFont = False
          TabOrder = 0
        end
        object Edit5: TEdit
          Left = 112
          Top = 152
          Width = 369
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Edit6: TEdit
          Left = 112
          Top = 184
          Width = 369
          Height = 24
          TabOrder = 5
        end
        object edit7: TEdit
          Left = 112
          Top = 216
          Width = 201
          Height = 24
          Color = clInfoBk
          TabOrder = 6
        end
        object edit8: TEdit
          Left = 112
          Top = 250
          Width = 369
          Height = 24
          TabOrder = 8
        end
        object edit9: TEdit
          Left = 112
          Top = 280
          Width = 369
          Height = 24
          TabOrder = 9
        end
        object edit10: TEdit
          Left = 112
          Top = 312
          Width = 369
          Height = 24
          Color = clInfoBk
          TabOrder = 10
        end
        object edit11: TEdit
          Left = 112
          Top = 344
          Width = 369
          Height = 24
          TabOrder = 11
        end
        object Edit13: TEdit
          Left = 433
          Top = 214
          Width = 226
          Height = 24
          Color = clInfoBk
          TabOrder = 7
        end
        object Edit14: TEdit
          Left = 112
          Top = 410
          Width = 369
          Height = 24
          Color = clMenuBar
          TabOrder = 14
        end
        object edit2: TEdit
          Left = 111
          Top = 62
          Width = 474
          Height = 24
          Color = clInfoBk
          TabOrder = 1
        end
        object edit3: TEdit
          Left = 111
          Top = 92
          Width = 594
          Height = 24
          Color = clMenuBar
          TabOrder = 2
        end
        object edit12: TEdit
          Left = 111
          Top = 380
          Width = 369
          Height = 24
          Color = clMenuBar
          TabOrder = 12
        end
        object ed_sebagai: TComboBox
          Left = 488
          Top = 380
          Width = 257
          Height = 24
          TabOrder = 13
        end
      end
      object BitBtn4: TBitBtn
        Left = 90
        Top = 515
        Width = 75
        Height = 25
        Caption = '&Simpan'
        DoubleBuffered = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0A0
          A000C0606000C0606000C0606000C0606000C060600080406000804040008040
          40008040400080404000804040008040400080404000FF00FF00FF00FF00C060
          8000C0A0A000C0808000C040200040402000FF00FF00FF00FF00FF00FF00FF00
          FF0040606000C0404000C0404000C040400080404000FF00FF00FF00FF00C080
          8000F0CAA600C0808000C0808000806060004040400080808000F0FBFF00F0FB
          FF0080808000C0404000C0404000C040400080404000FF00FF00FF00FF00C080
          8000F0CAA600C0A0A000C0808000806060000000000040404000F0CAA600F0FB
          FF0080806000C0404000C0404000C040400080404000FF00FF00FF00FF00C080
          8000F0CAA600F0CAA600C0A0A000806060008060600080606000806060008060
          600080606000C0606000C0606000C040400080404000FF00FF00FF00FF00C080
          8000F0CAA600F0CAA600F0CAA600C0A0A000C0808000C0808000C0808000C080
          8000C0608000C0606000C0606000C060600080404000FF00FF00FF00FF00C080
          A000F0CAA600F0CAA600C0606000C0606000C0606000C0604000C0604000C040
          4000C0402000C0402000C0606000C060600080404000FF00FF00FF00FF00C0A0
          A000F0CAA600C0606000FFFFFF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00F0CA
          A600F0CAA600F0CAA600C0402000C060600080406000FF00FF00FF00FF00C0A0
          A000F0CAA600C0808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00F0FB
          FF00F0CAA600F0CAA600C0402000C0606000C0606000FF00FF00FF00FF00C0A0
          A000F0CAA600C0808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FB
          FF00F0FBFF00F0CAA600C0404000C0808000C0606000FF00FF00FF00FF00C0A0
          A000F0CAA600C0808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F0FBFF00F0FBFF00C0604000C0808000C0606000FF00FF00FF00FF00C0A0
          A000F0CAA600C080A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F0FBFF00C060400080404000C0606000FF00FF00FF00FF00C0A0
          A000F0CAA600F0CAA600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C0606000C0606000C0606000FF00FF00FF00FF00C0A0
          A000C0A0A000C0A0A000C0A0A000C0A0A000C0A0A000C0A0A000C0A0A000C0A0
          A000C080A000C0808000C0808000C0808000C0808000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 170
        Top = 515
        Width = 75
        Height = 25
        Caption = '&Batal'
        DoubleBuffered = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FDFDFD02BFBFBF0FA0A0A0179B9B9B1A6E6E6E276A6A6A278080
          801AA0A0A016B4B4B40ED9D9D902FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00707070264F4F4F374242423D4242423E2626264A1D1D1D4A1B1B1B4A2222
          224A3030303D4B4B4B375050502F62626226FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00535353CF2D2D2DFF2D2D2DFF2D2D2DFF454545CFFF00FF00FF00FF006262
          62CF2D2D2DFF2D2D2DFF2D2D2DFF4A4A4ACFFF00FF00FF00FF00FF00FF00FF00
          FF00383838FFC4C4C4FFC4C4C4FFC4C4C4FF383838FF656565CF4A4A4ACF3838
          38FFC4C4C4FFC4C4C4FFC4C4C4FF383838FFFF00FF00FF00FF00FF00FF00FF00
          FF00494949FF929292FF929292FF929292FFC8C8C8FF494949FF494949FFC8C8
          C8FF929292FF929292FF929292FF494949FFFF00FF00FF00FF00FF00FF00FF00
          FF00636363CF585858FF9F9F9FFF9F9F9FFF9F9F9FFFCECECEFFCECECEFF9F9F
          9FFF9F9F9FFF9F9F9FFF585858FF5C5C5CCFFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00828282CF666666FFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAE
          AEFFAEAEAEFF666666FF727272CFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00868686CF737373FFBBBBBBFFBBBBBBFFBBBBBBFFBBBB
          BBFF737373FF8C8C8CCFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00909090CF808080FFDDDDDDFFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
          C5FFDDDDDDFF808080FF959595CFFF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00909090CF8B8B8BFFE2E2E2FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0
          D0FFD0D0D0FFE2E2E2FF8B8B8BFF9F9F9FCFFF00FF00FF00FF00FF00FF00FF00
          FF00949494FFE4E4E4FFD8D8D8FFD8D8D8FFD8D8D8FF949494FF949494FFD8D8
          D8FFD8D8D8FFD8D8D8FFE4E4E4FF949494FFFF00FF00FF00FF00FF00FF00FF00
          FF009D9D9DFFDDDDDDFFDDDDDDFFDDDDDDFF9D9D9DFFA7A7A7CFA7A7A7CF9D9D
          9DFFDDDDDDFFDDDDDDFFDDDDDDFF9D9D9DFFFF00FF00FF00FF00FF00FF00FF00
          FF00B1B1B1CFA1A1A1FFA1A1A1FFA1A1A1FF9F9F9FCFFF00FF00FF00FF00ABAB
          ABCFA1A1A1FFA1A1A1FFA1A1A1FF9F9F9FCFFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BitBtn5Click
      end
      object BitBtn3: TBitBtn
        Left = 10
        Top = 515
        Width = 75
        Height = 25
        Caption = '&Tambah'
        DoubleBuffered = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFF3DBBDE2A95CD98A1DDC8B1CDC8B1CDC8E1EE4AC5CF3DBBDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAF5DC9541DF972CDA880FDC8C0DDC
          8A0DDC8A0DDC8B0CD9840BE0921BDC9641FDFAF5FFFFFFFFFFFFFFFFFFFEFAF7
          DC9741DD9217DF9615DE9415DE9317DD9317DD9317DE9317DE9415DE9414E7A0
          1DD88B2BFEFAF7FFFFFFFFFFFFD88D40E19A20E3A020E29D21E19E21E29E21E2
          9D21E19D21E19D20E19E21E19E21E4A422E8A324D88D40FFFFFFEFD3B9DF9D36
          E6A224E29C1FE29C1FE29C1FE29C1FE29C1FE29C1FE29C1FE29C1FE29C1FE29C
          1FEAA92CE29B2EEFD5BBDB9A55E9B144E1981EE1981EE1981EE1981EE1981EE1
          981EE1981EE1981EE1981EE1981EE1981EE1981EEAAE33DCA162D1852EE5A936
          FFFFFFD98500FFFFFFE4A72EF9F6EBFEFFFFD98500D98500FFFFFFD98500FFFF
          FFD98500E4A72ECE822CD89341E4A42DFFFFFFF8EDD7FFFFFFD08531FAF5EBD8
          9341D08531E7C195FFFFFFE9D2B3FFFFFFEDDED5D69B36D38B38D28A3BF2DAA6
          FFFFFFFFFFFFFCFAFBD69B36FCF7EEF3E8D2D39445FDFDFBEDDED5FFFFFFEDDE
          D5F8F4F6E7BA58CE822BCC803AF3DCA4FFFFFFE5BB6EFBFBFEE7BA58FBF6F3FB
          FAFAE7BA58FCFCFEE7BA58FAFAFFE7BA58FDFDFFE7BA58C16F25D18F53F6E4B1
          E6BC6FEDD296EDD296EDD296EDD296EDD296EDD296EDD296EDD296EDD296EDD2
          96E6BC6FE6C58FD8A06EE8C7B1E3B77BFFFFE0F6E2A6F7E2A1F8E3A2F8E3A3F8
          E3A4F8E4A7F8E4A7F8E6A9F8E4A3F9E6AAFFFFE6E6BD82E9C9B4FFFFFFC06B28
          F5E6B8FFFFE9F7E7BAF6E4AEF7E3A9F7E2A7F7E2A7F7E3A9F6E4ADF7E7B7FFFF
          F1F6E7BAC16D2AFFFFFFFFFFFFFCF8F6C1691BF7E8B8FFFEEEFFF9E0FAEDCCF8
          EAC3F8EAC3FAECCBFDF4D6FFFFE4F7EABFC1691BFCF8F6FFFFFFFFFFFFFFFFFF
          FBF7F4BB6526E0B576FEF1C6FFFFF2FFFFFFFFFFFBFFFFE2FBEEBEE0B57ABB65
          26FBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4C3B3CD8A52C2763BCA
          8447CA8448C27940CD8B54E4C3B3FFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BitBtn3Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Browse Data'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label11: TLabel
        Left = 32
        Top = -8
        Width = 436
        Height = 16
        Caption = 
          'F1 = Tambah ; F2 = Edit ; F3 = Hapus ; F4 = ; F5 = Refresh ; ESC' +
          ' = Tutup'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object CoolBar2: TCoolBar
        Left = 0
        Top = 0
        Width = 791
        Height = 29
        AutoSize = True
        Bands = <
          item
            Control = Panel1
            ImageIndex = -1
            Width = 785
          end>
        object Panel1: TPanel
          Left = 11
          Top = 0
          Width = 776
          Height = 25
          Alignment = taLeftJustify
          BevelOuter = bvNone
          TabOrder = 0
          object Label4: TLabel
            Left = 4
            Top = 6
            Width = 105
            Height = 16
            Caption = 'Master PBF / CV'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 283
            Top = 2
            Width = 108
            Height = 16
            Caption = 'Pencarian Data :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CMB_CARI_KAT: TComboBox
            Left = 195
            Top = 1
            Width = 82
            Height = 22
            Style = csOwnerDrawFixed
            Color = clInfoBk
            TabOrder = 0
            Visible = False
            Items.Strings = (
              'Kode'
              'Nama'
              'Telp')
          end
          object EdCari: TEdit
            Left = 397
            Top = -1
            Width = 282
            Height = 24
            CharCase = ecUpperCase
            Color = clInfoBk
            TabOrder = 1
            OnChange = EdCariChange
          end
          object BitBtn1: TBitBtn
            Left = 685
            Top = -2
            Width = 75
            Height = 25
            Caption = '&Cari'
            DoubleBuffered = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FEFFFFEBF4FBE9F5FCE9F5FCE9F5FCE9F5FCE9F5FCE9F5FCE9F5FCE9F5FCEAF3
              FBFFFFFFFFFFFFFEFEFFFFFFFFD6D6D78F360E972D009B31009B31009B31009B
              31009B31009B31009B31009A31009A2F008E360DD9D6D8FFFFFFFFFFFF973F14
              AE4505AE4A0EAE490FAE490FAE490FAE490FAE490FAE4A0EAE480FA93B01AF48
              0FAF4506963E14FFFFFFF4FFFF9D3600B34E10B34E10B34E10B44F11B34F11B2
              4F11B44F11B14C10A33300DECBAFA73F07B24D0E9E3600F6FFFFF4FFFFA43C00
              B55111B55011B14E0DAD3C00A53400A53400AC3D00A43300EEE3C6FFFFFFE3CF
              B0B04401A23B00F8FFFFF3FFFFA73F00B95412B3500BAD4C17E6D3B9FFFFFFFF
              FFFFDEC2A6E6D5B9FFFFFAF0E5C7B04000B95412A63E00F8FFFFF4FFFFAA4302
              BA5510B34F18FFFFFFE8D7B6C47640C3773DEAD6B9FFFFFEEAD8BBB44200BA55
              13BC5715A84101F8FFFFF5FEFFAB4601B94B02E7D6BCE9D6B6B13F00BD5611BD
              5611B04000EBD8BBE1C6A9B74A03BD5917BF5B15AB4600F8FFFFF6FDFFAC4802
              BA5006FFFFFFC97E46C46423C46828C46928C36421C6814CFFFFFFBC550EC368
              26C26422AF4902F8FFFFF2FCFFBB6325C56423FFFFFFCC8656C87233CB7539CC
              753ACA7233CC875DFFFFFFC26422CB763ACE763BB86125F6FDFFF1FBFFC37337
              CD7C3BEEE1D9EBD7CDC66B2CD08448CF8448C56B2BEFDBD2EADED4CF7B3CD186
              4BD1874BBF7238F4FCFFF1F9FDC5814BD4925DD19161FFFFFFEBD9CFD3976AD5
              966BE9DBCFFFFFFFD59361D3925ED4935FD69460C4804BF5FAFEF3F8FACB8F5E
              DCA473DA9F6DD9A272F3ECE3FFFFFFFFFFFFF2E8E0D7A06FDA9E6EDAA373DAA3
              73DBA373CC8F5CF4F9FDFFFFFFCAA17CE4AD80E1AE82E1AB80E0A576DCA172DD
              A171DEA675E1AC82E1AD82E1AD82E1AD82E6AD80CDA27CFFFFFFFFFFFFECEDEC
              D3AF91D7AE86D8AD88D8AD88D9AD88D8AD88D8AD88D8AD87D8AD88D9AE88DAAD
              87CEB091EBEDECFFFFFFFFFFFFFFFFFFFFFFFFF8FCFEFAFDFFFAFDFFFAFDFFFA
              FDFFFAFDFFFAFDFFFAFDFFFBFDFFF9FCFFFFFFFFFFFFFFFFFFFF}
            ParentDoubleBuffered = False
            TabOrder = 2
            OnClick = BitBtn1Click
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 501
        Width = 791
        Height = 47
        Align = alBottom
        TabOrder = 1
        object lbl1: TLabel
          Left = 620
          Top = 15
          Width = 20
          Height = 16
          Caption = 'lbl1'
          Color = clCream
          ParentColor = False
        end
        object Panel4: TPanel
          Left = -2
          Top = 6
          Width = 692
          Height = 38
          Color = clGradientInactiveCaption
          TabOrder = 0
          object BtnBaru: TSpeedButton
            Left = 8
            Top = 7
            Width = 61
            Height = 26
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
            OnClick = BtnBaruClick
          end
          object BtnUbah1: TSpeedButton
            Left = 77
            Top = 7
            Width = 64
            Height = 26
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
            Visible = False
            OnClick = BtnUbah1Click
          end
          object BtnHapus: TSpeedButton
            Left = 149
            Top = 8
            Width = 72
            Height = 25
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
            Visible = False
          end
          object SpeedButton4: TSpeedButton
            Left = 228
            Top = 7
            Width = 86
            Height = 24
            Hint = 'Baru'
            Caption = '&Refresh'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFF6E3C1
              E4B052E4AE5DE0AC63DDA865D89E5AD4984DD09147CC8B42C5843CC37B35BD73
              2EB6661CBC7F50E3CBBBFFFFFFE7B458FAE8B3FDEDC3FFFBEFFFFFFFFFF4DEF8
              E5ACF9E08DF9DB83F2CC69EBBC4EE4AB34E6A01CC57713B26C38FFFFFFE8B55D
              F8E3ADF6DBA4F8E8CDFAEFE3F5DFBEEFD194EFCC79EEC772E7B95CE1AB46DB9D
              31DB931CC47813B57442FFFFFFE7B75FFBE9BBF9E0ABFBEED9FCF5F0F8E5C8F2
              D69AF3D17FF1CC76EBBE5EE5AF45DC9E2FDE9519C57914B57442FFFFFFE7B256
              F4DBA7F5DEB1F5E5C8F7E9D8F2DDBAEED29DEDCC8AECCA81E6BF71E3B660DCAA
              4DDEA739BD731DB36D3AFFFFFFF7E7CAE5B557E6B964E2B66BE0B776DAAA5DD6
              9E4BD39844CE903FCA8738C37C32BD712BBA6E23B7784CE8D4C8FFFFFFEDC87F
              FAE7B5F7E0ACFBEED9FDF6F1F8E4C7F1D69CF3D17FF1CD75EBBE5FE3AD46DD9D
              2EDC9417C87D12C18349FFFFFFEDC677F8E1A8F7DEAAF9EAD2FBF1E9F6E1C2EF
              D398F0CE7DEFCA76E8BB5FE2AF48DCA032D9921CC67A14BF7C40FFFFFFEDC678
              F8E2ABF7DDA2F9EAD0FBF1E7F6E1BFEFD293F0CC75EFC86FE8B958E0AA40DA9A
              2AD88E14C6770EBF7C3EFFFFFFEECA80FAEBCBF8E5BEFAEDDCFBF5EFF9E8CFF5
              DCACF3D799F2D58FECCA7CE8BE67E1B150E1AC3ACD8D26C3874CFFFFFFF8E9CC
              E7BB65E9BF7AE6C285E4C28FDEB371D9A65BD69F54D29B4DCD9045C8893EC37D
              35C07D2DC18755EAD7C9FFFFFFEABF6CF7E1A4F7DEA4F8E9CFFAF1E7F6E1BDF1
              D393F1CE78F0C96FE9BA5AE3AB43DD9A2DDA9017C27311B8753AFFFFFFEEC97A
              F8E3ADF7E0ACFBEBD5FCF3EBF9E3C5F0D59AF0D07FF0CB78EABD60E4AF49DEA0
              33DB951CC87D14C18041FFFFFFEDC778F8DFA6F7DCA1F8E7CCFAEFE2F7DFBCEF
              D18FEDCB74EDC66DE6B756E0A83FDA9829D78C14C5760EBF7D40FFFFFFECC575
              FCF1CFFCEBC6FFF8EEFFFFFFFEF1DFF7E5B7F7E09CF6DC94F1D07DEBC464E6B3
              4CE6AC34CF8B21BE7939FFFFFFF7E6C5EBC376EAC685E8C387E6C38BE3B97EE0
              B474DCAE6CD8A969D5A262D29C5CCD9552C89040C7925EE6CEBC}
            Margin = 0
            ParentFont = False
            OnClick = SpeedButton4Click
          end
          object btnexportdpa: TSpeedButton
            Left = 504
            Top = 5
            Width = 79
            Height = 25
            Hint = 'Hapus'
            Caption = '&Export'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FF0084000084000084000084000084000084000084000084
              00008400008400008400AA7F7AB88384B88384B88384B88384008400FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008400AD827BFCEBCE
              F7DFBFF4DAB3F3D6AB008400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF008400B1857CFDEDD5F5DFC5F4DBBBF2D7B2008400FFFFFF91
              CA91008400309B30FBFDFB84C48400840068B668FFFFFF008400B6897EFEF2DE
              F7E5CEF5E0C5F4DCBC008400FFFFFFFFFFFFC4E3C40486041C911C00840084C4
              84FFFFFFFFFFFF008400BA8D80FFF7E8F8E8D6F6E4CDF5E0C4008400FFFFFFFF
              FFFFFFFFFF69B769008400178F17FBFDFBFFFFFFFFFFFF008400BF9183FFFCF2
              F9EDDFF7E8D6F6E4CD008400FFFFFFFFFFFF7ABF7A00840065B5650486043AA0
              3AF2F9F2FFFFFF008400C49685FFFFFCFAF1E8F9ECDEF8E8D5008400FFFFFF61
              B3610084007BBF7BFFFFFFCAE5CA0385033AA03AFFFFFF008400C99B87FFFFFF
              FDF7F2FBF1E8FAEEDF008400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF008400CD9E8AFFFFFFFFFCFBFEF7F1FBF2E7008400FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008400D1A38BFFFFFF
              FFFFFFFFFDFBFDF7F10084000084000084000084000084000084000084000084
              00008400008400008400D6A78DFFFFFFFFFFFFFFFFFFFFFDFBFDF7F1FBF1E6FA
              EDDEFDF0DDEADDCAC7BFB0B88384FF00FFFF00FFFF00FFFF00FFD9AA8FFFFFFF
              FFFFFFFFFFFFFFFFFFFEFDFBFDF8F0FBF3E7B88384B88384B88384B88384FF00
              FFFF00FFFF00FFFF00FFDDAC91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7
              F0ECB88384E9B676F3AE52CA8A6AFF00FFFF00FFFF00FFFF00FFDFAF92FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEB88384EBB87AD09877FF00FFFF00
              FFFF00FFFF00FFFF00FFDBA685DBA685DBA685DBA685DBA685DBA685DBA685DB
              A685B88384CA9784FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentFont = False
            OnClick = btnexportdpaClick
          end
        end
      end
      object grid2: TAdvStringGrid
        Left = 8
        Top = 32
        Width = 785
        Height = 463
        Cursor = crDefault
        DrawingStyle = gdsClassic
        FixedColor = clWhite
        ScrollBars = ssBoth
        TabOrder = 2
        GridLineColor = 13948116
        GridFixedLineColor = 11250603
        HoverRowCells = [hcNormal, hcSelected]
        OnDblClickCell = grid2DblClickCell
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
        Version = '8.6.0.0'
      end
    end
    object ts1: TTabSheet
      Caption = 'ts1'
      ImageIndex = 2
    end
  end
  object exlrprt1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    Dictionary = <>
    _Version = '1.40'
    OnBeforeBuild = exlrprt1BeforeBuild
    OnGetFieldValue = exlrprt1GetFieldValue
    Left = 269
    Top = 538
  end
end
