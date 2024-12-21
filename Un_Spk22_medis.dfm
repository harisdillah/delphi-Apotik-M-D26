object Fspk22_medis: TFspk22_medis
  Left = 245
  Top = 147
  Align = alLeft
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'frm SPK23_medis'
  ClientHeight = 696
  ClientWidth = 1279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 4
    Width = 42
    Height = 13
    Caption = 'No Peng'
  end
  object Label29: TLabel
    Left = 920
    Top = 14
    Width = 3
    Height = 13
    Color = clFuchsia
    ParentColor = False
  end
  object Label42: TLabel
    Left = 1177
    Top = 40
    Width = 30
    Height = 13
    Caption = 'Selisih'
    Color = clWhite
    ParentColor = False
  end
  object Label3: TLabel
    Left = 690
    Top = 56
    Width = 90
    Height = 29
    Caption = '00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object btnBtnUbah: TSpeedButton
    Left = 215
    Top = 2
    Width = 60
    Height = 24
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
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      E8B868E5B15AE3B05CDEA855D8A050D5994AD09247CA8B41C4853BC07E35BD79
      2BA85F1FFFFFFFFFFFFFFFFFFFFFFFFFEAB965FBD68DFFE297FFD27FFFCD79FF
      C771FFC067FFBA5EFEB453F7AC4BF5BC4FB66F25FFFFFFFFFFFFFFFFFFFFFFFF
      F1D19CD6A76C96967A62A49871A28E6CA08A669E88629C865D9C8652A28B9767
      4BC3926BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECE9EB77A0B900D5FF00C9FF00
      D4FF00DBFF00E1FF00EEFF39E6FD968A99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAF8C85A0EDFF00BEFF04C4FE0FCDFE00D2FF21DDFCB3AEADA996
      99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3BDC0E4C4BCC9FAFF14
      C9FF00C9FF64DBF5E4D4CE9D8383F3F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFB5AFB3F3BFB14BD1F900CEFFB6C9CEB58E8DE1DEE0FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1D5D453
      9CBD03CCFF92959CFBFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFEBDAD94AA9C300CEFFA2A1A8FDFAFAFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCABEC28AB2C071
      DEF700D5FF1AC3F48C9AABEFE5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDBD2D48BC7D2B5F2FF08D3FC00CBFE00CBFF00C5FF77A2B7FAF6
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0B3B2CAFDFF63E7FE45
      E2FC54DDFA53D8F843D5FD62C9E8D3BFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF7F6F7DAD7E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D3
      E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D19DE1B87FDCBB8AE9C591E3BD8AE0
      B888DAB486D5AE82D0A67FCDA17BBB8E6EC5956FFFFFFFFFFFFFFFFFFFFFFFFF
      E9B764F6D084F8D88BF1C979EFC471ECBE69E8B75FE6B154E2AA49DEA340E9AC
      3CB26A1EFFFFFFFFFFFFFFFFFFFFFFFFE8B868E5B35EE5B56AE0AD62DBA65ED7
      A059D29653CD9250C88D4CC38746C1843EA96124FFFFFFFFFFFF}
    ParentFont = False
    OnClick = btnBtnUbahClick
  end
  object btncari: TSpeedButton
    Left = 281
    Top = 2
    Width = 61
    Height = 24
    Hint = 'Ubah'
    Caption = '&cari'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF4D74AB234179C5ABA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4173AF008EEC009AF41F4B80FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF2F6EB22BA7
      F516C0FF00A0F3568BC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEFFFF2974BB68C4F86BD4FF279CE66696C8FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D8FD5A4E3FEB5EEFF4CAA
      E7669DD2FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEA188898A6A6A93736E866567B0
      9595BAA8B1359EE8BDF5FF77C4EF63A1DAFFFFFFFFFFFFFFFFFFFFFFFFD7CDCD
      7E5857DFD3CBFFFFF7FFFFE7FFFEDBD6BB9E90584D817B8E1794E46BB5E9FFFF
      FFFFFFFFFFFFFFFFFFFFEDE9E9886565FFFFFFFFFFFFFDF8E8FAF2DCF8EDCFFF
      F1CFF6DEBA9F5945C0C7D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA38889F6EFEA
      FFFFFFFEFBF5FBF7E8F9F4DAF5EBCCE6CEACF3DAB8E2BD99AB8B8EFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF937674FFFFFFFDFBF1FCF8EEFAF3E1FCF5E3F7F0D7F0
      DFC1E7C9A9F0D1ABA87E75F8F6F6FFFFFFFFFFFFFFFFFFFFFFFF997D7AFFFFFC
      F9F2E1FAF3DEFAF7E5FAF1DCF1DFC0EDD9BAECD8B9EDCAA5AF8679EDE8E9FFFF
      FFFFFFFFFFFFFFFFFFFF9C807BFFFFEBF9EED5FAF1D7F9F2DAF2E3C6FEFBF9FF
      FFF0EFDFC0E9C69EB0857BF5F2F3FFFFFFFFFFFFFFFFFFFFFFFFAF9596F7EAC8
      F9EBCCEFDCBEF4E4C7F0E1C5FDFCECFAF5DDEFDCBCDFB087B59A9AFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDED4D7BA998CFDECC4EDD4B0E5CAA8EFDBBFF2E3C4F2
      DEBCEABF93BB8E7DE7DFE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEBFC5
      BE9A8DE6C7A5EFCBA3ECC8A2E8BE94DCAA86BE9585DFD6D7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E4E6C9B3B4B99C93C3A097BF9F96CC
      B9B7F1EEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentFont = False
    OnClick = btncariClick
  end
  object lbl3: TLabel
    Left = 597
    Top = 4
    Width = 41
    Height = 20
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 805
    Top = 4
    Width = 36
    Height = 20
    Caption = 'Sisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 389
    Top = 4
    Width = 42
    Height = 20
    Caption = 'Pagu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edkodetransaksi: TLabel
    Left = 851
    Top = 34
    Width = 54
    Height = 40
    Caption = 'xxx'
    Color = clMedGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 9
    Top = 32
    Width = 840
    Height = 656
    ActivePage = TabSheet2
    TabOrder = 0
    object ts2: TTabSheet
      Caption = 'Tahap 1'
      ImageIndex = 3
      object Panel1: TPanel
        Left = 3
        Top = 4
        Width = 809
        Height = 449
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 0
        object Label51: TLabel
          Left = 6
          Top = 5
          Width = 139
          Height = 21
          Caption = 'Jenis Pengadaan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Arial Unicode MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 6
          Top = 30
          Width = 23
          Height = 15
          Caption = 'Agr'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 241
          Top = 33
          Width = 33
          Height = 15
          Caption = 'Pagu'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 16
          Top = 87
          Width = 73
          Height = 15
          Caption = 'Pengadaan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 363
          Top = 8
          Width = 22
          Height = 19
          Caption = 'ket'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Candara'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label26: TLabel
          Left = 16
          Top = 131
          Width = 95
          Height = 15
          Caption = 'Ruang Lingkup'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 5
          Top = 241
          Width = 77
          Height = 15
          Caption = 'Penawaran '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 5
          Top = 265
          Width = 77
          Height = 15
          Caption = 'Harga Nego'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 5
          Top = 194
          Width = 58
          Height = 15
          Caption = 'CV / PBF '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 3
          Top = 168
          Width = 106
          Height = 15
          Caption = 'Tgl Pelaksanaan'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object btn1: TSpeedButton
          Left = 546
          Top = 168
          Width = 120
          Height = 21
          Hint = 'Hapus'
          Caption = '&Hitung Hari'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5CDC545816C1762
            474B8570BBD1C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFB5CEC51E6A4E1E6A4E89B7A31E6A4E1E6A4EBDD3CB36755E0E593D
            0E593D0E593D0E593D0E593D0E593D0E593DDDE8E445866E267256267256FFFF
            FF2672562672564C8B74146043FFFFFFFFFFFFFDFEFEFBFEFDFAFDFCF7FCFAF4
            FBF9FDFDFD2F7C5F89B7A3FFFFFFFFFFFFFFFFFF89B7A3347F631B684AFCFDFD
            FCFEFEF9FDFCF6FBFAF1FAF7EDF8F5E8F6F2FCFEFD4F9479378667378667FFFF
            FF3786673786675A9B82247152FAFCFBF9FDFCF6FBFAF1FAF7EDF8F5E8F6F2E3
            F4EFEDF8F5BBD7CC3F8E6F3F8E6F89B7A33F8E6F3F8E6FC2DBD12C7A5AF8FCFA
            F6FBFAF1FAF7EDF8F5E8F6F2E3F4EFDDF2ECD8F0E9ECF8F5BEDACF64A78D4696
            7669AA90C4DED3FFFFFF368462F7FBFAF1FAF7EDF8F5E8F6F2E3F4EFDDF2ECD8
            F0E9D2EEE6CDECE4DFF3EEF5FBFAFFFFFFF7FCFB86B5A1FFFFFF3E8D6AF4FAF8
            EDF8F5E8F6F2E3F4EFDDF2ECD8F0E9D2EEE6CDECE4C8EAE1C3E8DEBEE6DBBBE5
            D9D3EEE73E8D6AFFFFFF479672F1F9F7E9F6F2E3F4EFDDF2ECD8F0E9D2EEE6CD
            ECE4C8EAE1C3E8DEBEE6DBBAE5D9B7E3D7D1EEE6479672FFFFFF4E9E79EEF9F5
            E4F4EFDDF2ECD8F0E9D2EEE6CDECE4C8EAE1C3E8DEBFE6DBBBE5D9B7E3D7B4E2
            D5D0EDE54E9E79FFFFFF54A57FEEF8F5EBF7F4E8F6F2E4F5F0E1F4EFDEF2EDDB
            F1EBD8F0E9D6EFE8D3EEE7D1EEE6D0EDE5D0EDE554A57FFFFFFF55A57F59AA83
            59AA8359AA8359AA8359AA8359AA8359AA8359AA8359AA8359AA8359AA8359AA
            8359AA8354A47EFFFFFF54A27E99C9B29ACAB39ACAB39ACAB39ACAB39ACAB39A
            CAB39ACAB39ACAB39ACAB39ACAB39ACAB39ACAB351A17CFFFFFF5BA98498C9B1
            99C9B299C9B299C9B299C9B299C9B299C9B299C9B299C9B299C9B299C9B299C9
            B299C9B259A782FFFFFFA3D0BA5EAD875CAB855CAB855CAB855CAB855CAB855C
            AB855CAB855CAB855CAB855CAB855CAB855CAB85A0CEB8FFFFFF}
          ParentFont = False
          OnClick = btn1Click
        end
        object Label24: TLabel
          Left = 9
          Top = 345
          Width = 114
          Height = 15
          Caption = 'Tgl.Jatuh Tempo :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object lbl8: TLabel
          Left = 236
          Top = 346
          Width = 65
          Height = 15
          Caption = 'Tgl. Bayar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 5
          Top = 219
          Width = 28
          Height = 15
          Caption = 'HPS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object cbb2: TcxLookupComboBox
          Left = 152
          Top = 6
          Properties.ListColumns = <>
          TabOrder = 0
          Width = 209
        end
        object ed_a: TcxButtonEdit
          Left = 30
          Top = 31
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ed_aPropertiesButtonClick
          Properties.OnChange = ed_aPropertiesChange
          TabOrder = 1
          Width = 209
        end
        object ed_pagu: TEdit
          Left = 279
          Top = 32
          Width = 119
          Height = 21
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = ed_paguChange
        end
        object ed_Tpagu: TEdit
          Left = 407
          Top = 32
          Width = 385
          Height = 21
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object ed_u_a: TEdit
          Left = 64
          Top = 57
          Width = 729
          Height = 21
          TabOrder = 4
        end
        object M_l: TMemo
          Left = 112
          Top = 123
          Width = 529
          Height = 41
          Color = clGradientActiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 5
        end
        object mp: TMemo
          Left = 112
          Top = 81
          Width = 529
          Height = 41
          Color = clGradientActiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 6
        end
        object BitBtn10: TBitBtn
          Left = 16
          Top = 101
          Width = 95
          Height = 21
          Caption = '&Samakan'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            B6B6DD5454AF1717921919935A5AB1BCBCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF7879C120259F3849BF3045C61A34C11226B310
            16987B7CC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B4DD272CA4
            6F83DA4E66D12A48C71838C51635C51533C2111BA17B7CC4FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF5153B58491D97086DB4B66D32B4ACA1C3DC91A3BC91A
            3BC91A3AC7131DA57B7DC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF10149E97A7E7
            7489E04F6BD63052D12347CE2044CE1F43CE1F43CE1E41CC202AA17678B1FFFF
            FFFFFFFFFFFFFFFFFFFF171CA48DA1E8849AE45F7BDD3D5FD62D53D4264DD424
            4CD3244CD4495DA47F7F7F8C8C8C9C9DA8FFFFFFFFFFFFFFFFFF6064C46073D5
            97ADEB7590E55374DF365FD92D57D82A54D74D63A8828282C6C6C6CCCCCC8C8C
            8CB2B2B2FFFFFFFFFFFFC3C5EA1821AF859FE99AB1EF7392E8537AE43D69DF54
            6CAE868686C9C9C9CCCCCCC7C7C7CFCFCF8F8F8FB7B7B7FFFFFFFFFFFF7F83D4
            2633BC8FA8ED9BB4F17396EC768CC08F8F8ECCCCCCD0D0D0BBBBBBBBBBBBCCCC
            CCD3D3D3858585E0E0E0FFFFFFFFFFFF7F84D62735BF90AAEF9DADCD9F9E9FD5
            D5D5D6D6D7C1C2C2C1C0C0C1C1C1C1C1C1D8D8D8C1C1C1ADADADFFFFFFFFFFFF
            FFFFFF8286D8323FB99B9C9DE4E4E4E9E9E9DFE0E0D0CFD1C9C9C9C7C7C7C7C7
            C7CBCBCBE0E0E08E8E8EFFFFFFFFFFFFFFFFFFFFFFFF8488C9A4A4A4EDEEEEEC
            EDEDE9E8E9E7E8E8DDDEDED3D3D3CECECDD4D4D3E8E8E8919191FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFB3B5C0A6A6A6EEEDEEEEEEEEE9E9E8E9E9E9E7E7E6E3E2
            E2EBEBEAD7D7D7B3B3B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9AB
            ABABF0F0EFF2F1F1ECECECEEEFEFF6F6F4F3F3F2A6A6A6E1E1E1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACACAA7A7A7DDDEDEF5F5F3F5F6F6E1E1
            E2ABABABC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFE4E4E4BCBCBCA3A3A3A1A1A1B9B9B9E1E1E1FFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 7
          OnClick = BitBtn10Click
        end
        object ed_npenw: TEdit
          Left = 88
          Top = 239
          Width = 139
          Height = 21
          Color = clBtnHighlight
          TabOrder = 8
          OnChange = ed_npenwChange
        end
        object ed_TPewn: TEdit
          Left = 228
          Top = 239
          Width = 422
          Height = 21
          TabOrder = 9
        end
        object ed_nNego: TEdit
          Left = 88
          Top = 262
          Width = 139
          Height = 21
          Color = clBtnHighlight
          TabOrder = 10
          OnChange = ed_nNegoChange
        end
        object ED_Tnego: TEdit
          Left = 228
          Top = 263
          Width = 422
          Height = 21
          TabOrder = 11
        end
        object ed_cv: TcxButtonEdit
          Left = 84
          Top = 193
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = ed_cvPropertiesButtonClick
          Properties.OnChange = ed_cvPropertiesChange
          TabOrder = 12
          Width = 137
        end
        object Ed_u_cv: TEdit
          Left = 227
          Top = 194
          Width = 521
          Height = 21
          TabOrder = 13
        end
        object tgl_awal: TDateTimePicker
          Left = 112
          Top = 167
          Width = 93
          Height = 23
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object tgl_akhir: TDateTimePicker
          Left = 208
          Top = 168
          Width = 93
          Height = 23
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnChange = tgl_akhirChange
        end
        object ed_jml_hr: TEdit
          Left = 305
          Top = 168
          Width = 49
          Height = 21
          TabOrder = 16
          OnChange = ed_jml_hrChange
        end
        object ed_Thr: TEdit
          Left = 361
          Top = 167
          Width = 177
          Height = 21
          Color = clBtnHighlight
          TabOrder = 17
          OnChange = ed_ThrChange
        end
        object ed_tgl_jt: TDateTimePicker
          Left = 124
          Top = 344
          Width = 113
          Height = 23
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object tgl_bayar: TDateTimePicker
          Left = 303
          Top = 343
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          OnClick = tgl_bayarClick
        end
        object BitBtn14: TBitBtn
          Left = 421
          Top = 344
          Width = 121
          Height = 21
          Caption = 'Export ke Xls DB'
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 20
          OnClick = BitBtn14Click
        end
        object ed_hps: TEdit
          Left = 88
          Top = 217
          Width = 139
          Height = 21
          Color = clBtnHighlight
          TabOrder = 21
          OnChange = ed_hpsChange
        end
        object Ed_thps: TEdit
          Left = 228
          Top = 217
          Width = 422
          Height = 21
          TabOrder = 22
        end
      end
      object mmo1: TMemo
        Left = 9
        Top = 459
        Width = 808
        Height = 54
        Color = clBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlightText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          '')
        ParentFont = False
        TabOrder = 1
      end
    end
    object ts3: TTabSheet
      Caption = 'Tahap 2'
      ImageIndex = 4
      object Panel3: TPanel
        Left = -12
        Top = 2
        Width = 900
        Height = 547
        BorderStyle = bsSingle
        Caption = 'PnInput'
        Color = clGradientInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Label9: TLabel
          Left = 21
          Top = 16
          Width = 109
          Height = 16
          Caption = '1. NOTA DINAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 21
          Top = 40
          Width = 397
          Height = 16
          Caption = '2. RINCIAN HARGA PERHITUNGAN SENDIRI (HPS) / OE '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 19
          Top = 68
          Width = 442
          Height = 16
          Caption = '3. DOKUMEN PENGADAAN LANGSUNG & SPESIFIKASI BARANG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 19
          Top = 92
          Width = 378
          Height = 16
          Caption = '4. UNDANGAN PERSIAPAN PENGADAAN LANGSUNG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 21
          Top = 116
          Width = 298
          Height = 16
          Caption = '5. PENYERAHAN FORMULIR KUALIFIKASI '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 22
          Top = 142
          Width = 296
          Height = 16
          Caption = '6. BERITA ACARA EVALUASI KUALIFIKASI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 23
          Top = 168
          Width = 367
          Height = 16
          Caption = '7. PEMBERITAHUAN HASIL EVALUASI KUALIFIKASI '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label45: TLabel
          Left = 24
          Top = 194
          Width = 208
          Height = 16
          Caption = '8. PENJELASAN PEKERJAAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 23
          Top = 218
          Width = 435
          Height = 16
          Caption = '9. PEMASUKAN PENAWARAN HARGA & PAKTA INTERGRITAS '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label47: TLabel
          Left = 18
          Top = 250
          Width = 333
          Height = 16
          Caption = '10. BERITA ACARA PEMBUKAAN PENAWARAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label48: TLabel
          Left = 12
          Top = 299
          Width = 316
          Height = 16
          Caption = '12. BERITA ACARA KLARIFIKASI & NEGOSIASI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 14
          Top = 323
          Width = 367
          Height = 16
          Caption = '13. BERITA ACARA HASIL PENGADAAN LANGSUNG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label53: TLabel
          Left = 15
          Top = 371
          Width = 378
          Height = 16
          Caption = '15. SPPBJ / PENUNJUKAN PELAKSANA PENGADAAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label54: TLabel
          Left = 15
          Top = 395
          Width = 265
          Height = 16
          Caption = '16. SURAT PERINTAH KERJA  ( SPK )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label57: TLabel
          Left = 13
          Top = 347
          Width = 498
          Height = 16
          Caption = '14. PENYAMPAIAN BERITA ACARA PROSES PENGADAAN LANGSUNG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblagenda: TLabel
          Left = 136
          Top = 16
          Width = 39
          Height = 15
          Caption = 'lblagenda'
        end
        object Label59: TLabel
          Left = 416
          Top = 13
          Width = 18
          Height = 20
          Caption = 'cv'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label61: TLabel
          Left = 331
          Top = 296
          Width = 111
          Height = 13
          Caption = 'yg TDK No 11 Fisik'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 607
          Top = 36
          Width = 97
          Height = 24
          Hint = 'Ubah'
          Caption = '&Buat Bulan '
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            CFCBCA5D646FFFFFFFF9EDE4DFBFA6D19E73D09E73DFBFA7F8EDE4FFFFFF5C63
            6DCECAC9FFFFFFFFFFFFFFFFFFFFFFFFE7E7E948444CB7712ADA8705DF9508FC
            BF33FABE31DF9106D88300B56D2649424CE7E7E9FFFFFFFFFFFFFFFFFFFFFFFF
            F9F3EFCC7D17F7AD15F6B627F5DFBAEAECF2454444F7E0B8F6B729F7A70DC878
            0FF9F3EFFFFFFFFFFFFFFFFFFFFFFFFFD3862FF3B72EFBB928F7E0B8EAECF2EA
            ECF2E3E1DED4D4D2F7E0B8FBBB2BF7BD36CF8025FFFFFFFFFFFFFEFDFCE1BD9E
            ECB337F0C97F69686ADEE2E6EBE7E7EBE7E7E3E1DED4D4D2D4D4D2454444F9B9
            2CE9AB29E0BC9EFEFDFCF4E4D5DFA85EF0BD45F1E5CEFFFFFFFFFFFFF1F2F0F0
            F0EDF3F1F0ECEAE7D4D4D2CCC8C8DAC4A8F4BE42DBA159F4E4D5E9C8A4E4AF58
            F8CC68D8D3CEF9F7F7F9F7F7F1F2F0D4D4D2D4D4D2D4D4D2D4D4D2B6B3B4ABA2
            9BFCC75BDFA94EE8C6A3E8C59EEBC175FFD8706C6B6BFEFDFCFEFDFCFFFFFF00
            00000000004240434240436E6D6C454444FFCA5BE9BE6DE7C69DF0D6B5E9BF77
            F2CC7AF9ECCFFFFFFFF6F6F6FFFFFF424043FFFEFDFFFEFDECE9E7ECE9E7F9D3
            7CFAD78CE8BB74EFD5B5FBF3E9E8C082FEF8DEF5CC756E6D6CEAEAEBFFFFFF6E
            6D6CEFEDEBEFEDEBE2E1E2454444F6CF79FFFAE2E7BF82FBF3E9FFFFFFF8EAD7
            F8E6BFFBEAC6F6CD71EDF0FAFFFFFF959496E1E2E5E1E2E5E1E2E6F7CE74FFED
            C5F7E2B8F8EAD7FFFFFFFFFFFFFFFFFFF3D9ACFEF5DAFFEFCDF0C76DE1E2E695
            9496454444E9E2D9F1C76CFFF0CAFFF7DFF2D6ACFFFFFFFFFFFFEEC26AF1CF7E
            F4DCAEE5B864F7E9D0FFFDEFF7DDA1F5CD76F2CA75F0C872FFFFF0F5E8CEE2B6
            67F1D39CE7B140E9BC59F8E5B0F5DFAAEDBB55DB9F30DEA337F2CF87F7E1AFFB
            EDC9FCEDCAF6E2B2F3D089DEA030D79726ECBC56F1D17BF6D991FEF9ECFDF0CB
            FFE88FF5D27EECBA52DF9F23F9EACDFFFDF9FFFDF9F8E9CAE8BC64EDC468F5CD
            6CFFEA8EFDEBB5FEF8E8FFFFFFFFFFFFBDB09EFEEAAAF9DF92F5D891FFFDFAFF
            FFFFFFFFFFFFFDFAF4D68FFAEAB6FFEFBEB3A593FFFFFFFFFFFF}
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object Label22: TLabel
          Left = 352
          Top = 445
          Width = 90
          Height = 18
          Caption = ' NO. Faktur'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 165
          Top = 447
          Width = 81
          Height = 18
          Caption = 'tgl. Faktur'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Rounded MT Bold'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 15
          Top = 419
          Width = 109
          Height = 16
          Caption = '17. SPMK / SPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 19
          Top = 274
          Width = 313
          Height = 16
          Caption = '11. BERITA ACARA EVALUASI PENAWARAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object tgl_nota_dns_tgl: TDateTimePicker
          Left = 455
          Top = 8
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object e_nota_dns_no: TEdit
          Left = 570
          Top = 8
          Width = 73
          Height = 23
          TabOrder = 1
        end
        object tgl_hps_tgl: TDateTimePicker
          Left = 455
          Top = 36
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object tgl_uppl_tgl: TDateTimePicker
          Left = 455
          Top = 88
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object e_uppl_no: TEdit
          Left = 569
          Top = 88
          Width = 73
          Height = 23
          TabOrder = 4
        end
        object tgl_pfk_tgl: TDateTimePicker
          Left = 455
          Top = 112
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object tgl_ba_ek_tgl: TDateTimePicker
          Left = 455
          Top = 136
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnChange = tgl_ba_ek_tglChange
        end
        object e_ba_ek_no: TEdit
          Left = 569
          Top = 136
          Width = 73
          Height = 23
          TabOrder = 7
        end
        object tgl_p_h_ek_tgl: TDateTimePicker
          Left = 454
          Top = 162
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object e_p_h_ek_no: TEdit
          Left = 569
          Top = 162
          Width = 73
          Height = 23
          TabOrder = 9
        end
        object tgl_penj_p_tgl: TDateTimePicker
          Left = 455
          Top = 188
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnChange = tgl_penj_p_tglChange
        end
        object e_penj_p_no: TEdit
          Left = 569
          Top = 188
          Width = 73
          Height = 23
          TabOrder = 11
        end
        object tgl_p_perw_tgl: TDateTimePicker
          Left = 455
          Top = 216
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object e_p_perw_no: TEdit
          Left = 570
          Top = 216
          Width = 201
          Height = 23
          TabOrder = 13
        end
        object tgl_ba_pem_perw_tgl: TDateTimePicker
          Left = 454
          Top = 247
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnChange = tgl_ba_pem_perw_tglChange
        end
        object e_ba_pem_perw_no: TEdit
          Left = 569
          Top = 247
          Width = 73
          Height = 23
          TabOrder = 15
        end
        object tgl_ba_kla_nego_tgl: TDateTimePicker
          Left = 454
          Top = 295
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          OnChange = tgl_ba_kla_nego_tglChange
        end
        object e_ba_kla_nego_no: TEdit
          Left = 572
          Top = 295
          Width = 73
          Height = 23
          TabOrder = 17
        end
        object tgl_ba_h_pl_tgl: TDateTimePicker
          Left = 449
          Top = 320
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          OnChange = tgl_ba_h_pl_tglChange
        end
        object e_ba_h_pl_no: TEdit
          Left = 564
          Top = 320
          Width = 73
          Height = 23
          TabOrder = 19
        end
        object tgl_pen_ba_p_pl_tgl: TDateTimePicker
          Left = 561
          Top = 344
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
        end
        object e_pen_ba_p_pl_no: TEdit
          Left = 676
          Top = 344
          Width = 73
          Height = 23
          TabOrder = 21
        end
        object tgl_sppbj_tgl: TDateTimePicker
          Left = 448
          Top = 368
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 22
        end
        object e_sppbj_no: TEdit
          Left = 562
          Top = 368
          Width = 73
          Height = 23
          TabOrder = 23
        end
        object tgl_spk_tgl: TDateTimePicker
          Left = 447
          Top = 392
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 24
          OnChange = tgl_spk_tglChange
        end
        object e_spk_no: TEdit
          Left = 561
          Top = 392
          Width = 73
          Height = 23
          TabOrder = 25
        end
        object e_ba_ek_t_hr: TEdit
          Left = 643
          Top = 136
          Width = 105
          Height = 23
          Color = clFuchsia
          TabOrder = 26
        end
        object e_penj_p_t_hr: TEdit
          Left = 642
          Top = 188
          Width = 105
          Height = 23
          Color = clFuchsia
          TabOrder = 27
        end
        object e_ba_pem_perw_t_hr: TEdit
          Left = 642
          Top = 247
          Width = 145
          Height = 23
          Color = clFuchsia
          TabOrder = 28
        end
        object e_ba_kla_nego_t_hr: TEdit
          Left = 646
          Top = 295
          Width = 145
          Height = 23
          Color = clFuchsia
          TabOrder = 29
        end
        object e_ba_h_pl_t_hr: TEdit
          Left = 639
          Top = 320
          Width = 145
          Height = 23
          Color = clFuchsia
          TabOrder = 30
        end
        object e_spk_t_hr: TEdit
          Left = 635
          Top = 392
          Width = 145
          Height = 23
          Color = clFuchsia
          TabOrder = 31
        end
        object BitBtn2: TBitBtn
          Left = 688
          Top = 9
          Width = 121
          Height = 23
          Caption = 'Tanggal Sekarang'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000DDDCDCC2C0BF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF7F7F7B7B1B4AFACAAFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBE9E8
            BAB4B3B6B3B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCDBB4AFACB3B8C1FFFFFFFFFFFFF8
            DFCDE99B61E58B48FAE8DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFDEDBD8B4AFACE3C4ABE58B45D96004DB5F03DB5F03E27A2EFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5CBC4EB7604E56700DA
            5F00D75900D95E03DB5F03F9E1D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF9A84BF68E13EF7601EA6F01E5740DE36700DD6101F8DECBFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDAEFAAF3CF6A22BF49A25FC
            C052F9AA36EC7C0FE26905FDF3EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFED388FFCC6BF9B03BFCD898FEE8CBFBBB4BF6A934ED7E10ECA164FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED98DFED270FAB746FFD271FF
            ECCFFDDFB8FBBD4CF6A832EA760BF7CDA5FFF7EDFDF2E8FFFFFFFFFFFFFFFFFF
            FFFFFFFFFDF8FCCD7DF7B248F6A53BFFD578FFEACBFDDFBBFABD4CFAB13CFBBA
            4AF5A030F19017FCE2C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF8FFFAF6FF
            FCF6FFE7ADFFE5C0FFE0A9FDCD75E6832FE67A23EF8F29F4A23BFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC8FCEAD6CF5011D148
            08E06216E5741BEE8924FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEEC3DC8443B62D00D25012D85A14E06919EFA161FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC6C33A02BA3105CA44
            0FCE4C10DC621FFDF2E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE6A277AE2F06C14011E2997AFDF6F2FFFFFF}
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 32
          OnClick = BitBtn2Click
        end
        object dtg_bulan: TDateTimePicker
          Left = 705
          Top = 36
          Width = 104
          Height = 24
          Date = 38581.827836585700000000
          Format = 'MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 33
        end
        object ed_no_faktur: TcxMemo
          Left = 448
          Top = 440
          Lines.Strings = (
            '')
          Properties.ScrollBars = ssVertical
          TabOrder = 34
          Height = 45
          Width = 329
        end
        object ed_tgl_faktur: TDateTimePicker
          Left = 250
          Top = 445
          Width = 103
          Height = 23
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 35
        end
        object dtp_spmk: TDateTimePicker
          Left = 447
          Top = 416
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 36
          OnChange = dtp_spmkChange
        end
        object edt_spmk: TEdit
          Left = 561
          Top = 416
          Width = 73
          Height = 23
          TabOrder = 37
        end
        object edt_tspmk: TEdit
          Left = 635
          Top = 416
          Width = 145
          Height = 23
          Color = clFuchsia
          TabOrder = 38
        end
        object dtgl_eva_perw: TDateTimePicker
          Left = 454
          Top = 271
          Width = 114
          Height = 24
          Date = 38581.827836585700000000
          Format = 'dd/MM/yyyy'
          Time = 38581.827836585700000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 39
          OnChange = dtgl_eva_perwChange
        end
        object edt_eva_perw: TEdit
          Left = 575
          Top = 271
          Width = 73
          Height = 23
          TabOrder = 40
        end
        object edt_hr_eva_perw: TEdit
          Left = 655
          Top = 271
          Width = 145
          Height = 23
          Color = clFuchsia
          TabOrder = 41
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Tahap 3'
      object SpeedButton10: TSpeedButton
        Left = 233
        Top = 344
        Width = 89
        Height = 25
        Caption = '&samakan kwi '
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
        OnClick = SpeedButton9Click
      end
      object PnInput: TPanel
        Left = -9
        Top = 3
        Width = 849
        Height = 519
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object SpeedButton5: TSpeedButton
          Left = 12
          Top = 494
          Width = 61
          Height = 22
          Caption = 'Hapus'
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
          OnClick = SpeedButton5Click
        end
        object SpeedButton11: TSpeedButton
          Left = 74
          Top = 494
          Width = 78
          Height = 22
          Caption = '&import xls'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000030202823C3B39E8444341EF444341EF444341EF444341EF444341EF4443
            41EF444341EF444341EF3C3B39E8030202820000000000000000000000000000
            003A7C7A78FFF3F1EFFFF5F4F2FFF5F4F2FFF5F4F2FFF5F4F2FFF5F4F2FFF5F4
            F2FFF5F4F2FFF5F4F2FFF3F1EFFF7C7A78FF0000003A00000000000000000000
            0057ABAAA8FFFFFFFFFFD3D3D3FFDCDCDCFFDFDFDFFFD9D9D9FFE6E6E6FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFABAAA8FF0000005700000000000000220818
            00D67BA462FFA8D28FFF87B06EFF88B16EFF7DA764FF87B06DFF86AE6DFFB1BF
            A6FFD5D5D5FFF4F4F4FFFFFFFFFFAFAEADFF00000057000000000103009D329D
            10FF71C153FF7FC763FF7FC763FF7FC763FF7FC763FF7FC763FF6FC051FF3DA7
            1BFFB5B6B3FFF0F0F0FFFFFFFFFFB2B1B0FF0000005700000000020B02AF32B5
            2AFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFD4F9E9FFC0F7DFFFF5FDF9FF2FB4
            27FFEAEFE7FFFFFFFFFFFFFFFFFFB4B3B3FF0000005700000000020B03AF2BC0
            42FFFCFEFDFF65EBB1FF46E7A1FFBEF6DCFF1AE18AFF63EBB0FFFEFEFEFF28BF
            3FFFCBD1CAFFDCDCDCFFFEFEFEFFB5B5B4FF0000005700000000020C05AF24CB
            5AFFFFFFFFFFE4FBF1FF2BE18DFF17DA7AFF38E190FFF2FDF8FFFFFFFFFF21CA
            57FFB0B8B1FFDADADAFFFEFEFEFFB6B5B5FF0000005700000000010D06AF1DD6
            71FFFFFFFFFFFEFEFEFF64DB8CFF1CD166FF6BDC91FFFEFEFEFFFFFFFFFF1AD5
            6FFFC2CAC4FFDDDCDCFFFDFDFCFFB6B6B6FF0000005700000000010E08AF17E0
            89FFFFFFFFFFA9DEA1FF2BB933FF70D786FF2ABC39FF9EDA97FFFFFFFFFF13E0
            87FFC8D1CBFFDBDADAFFFCFBFBFFB6B6B6FF0000005700000000000E09AF10EB
            A0FFFEFEFEFFDEF0D7FFDAF0D6FFFEFEFEFFDEF2DBFFDBEFD3FFFDFEFEFF0CEB
            9EFFDFE9E4FFFAF9F8FFFAF9F8FFB6B6B6FF00000057000000000005039D05E3
            A9FF4DF9CDFF5EFAD3FF5EFAD3FF5EFAD3FF5EFAD3FF5EFAD3FF4BF9CDFF13EF
            B5FFB8BAB8FFE9E8E7FFF7F6F4FFB6B6B6FF0000005700000000000000220025
            1DD66CD1BCFF8FF4DDFF68CDB7FF6DD3BCFF70D6BFFF69CFB8FF6ED2BCFFABCD
            C3FFD8D6D4FFD0CFCDFFF2F1EFFFB6B5B5FF0000005700000000000000000000
            0057B5B5B4FFECEAE7FFCAC9C6FFCBC9C6FFCFCDCAFFCECCC9FFCCCAC8FFCFCE
            CBFFC7C6C3FFD1CFCCFFECEAE7FFB5B5B4FF0000005700000000000000000000
            003A8A8A8AFFEFEDEBFFEDEBE8FFEDEBE8FFEDEBE8FFEDEBE8FFEDEBE8FFEDEB
            E8FFEDEBE8FFEDEBE8FFEFEDEBFF8A8A8AFF0000003A00000000000000000000
            000003030382454545E84F4F4FEF4F4F4FEF4F4F4FEF4F4F4FEF4F4F4FEF4F4F
            4FEF4F4F4FEF4F4F4FEF454545E8030303820000000000000000}
          OnClick = SpeedButton11Click
        end
        object btn5: TSpeedButton
          Left = 440
          Top = 489
          Width = 97
          Height = 24
          Hint = 'Ubah'
          Caption = '&Simpan'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            BC8F808C3F27BB9689BB9689BB9689BB9689BB9689BB9689BB9689BB96898C3F
            278C3F278C3F27BC8F80FFFFFFBD90818F4229C06929EAECECEAECECEAECECEA
            ECECEAECECEAECECEAECECEAECEC8C3F27C06929C069298F4229BF928392462B
            C26D2DC26D2DEAECECA25129A25129EAECECEAECECEAECECEAECECEAECEC8C3F
            27C26D2DC26D2D92462B964A2FC47132C47132C47132EAECECA2532BA2532BEA
            ECECEAECECEAECECEAECECEAECEC8C3F27C47132C47132964A2F994E32C77638
            C77638C77638EAECECA4552EA4552EEAECECEAECECEAECECEAECECEAECEC8C3F
            27C77638C77638994E329D5336CA7B3ECA7B3ECA7B3EE4D5C9EAECECEAECECEA
            ECECEAECECEAECECEAECECE4D5C98C3F27CA7B3ECA7B3E9D5336A1593ACD8144
            CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD81
            44CD8144CD8144A1593AA55E3DD0874BD0874BD0874BD0874BD0874BD0874BD0
            874BD0874BD0874BD0874BD0874BD0874BD0874BD0874BA55E3DAA6241D48D52
            D48D52EED1BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEED1
            BAD48D52D48D52AA6241AD6845D79358D79358FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD79358D79358AD6845B16D49DA985E
            DA985EFFFFFFF8EADCF1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F8EADCFFFF
            FFDA985EDA985EB16D49B5724CDD9D64DD9D64FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9D64DD9D64B5724CB9754FDFA169
            DFA169FFFFFFF8EADCF1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F8EADCFFFF
            FFDFA169DFA169B9754FBC7952E1A56DE1A56DFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1A56DE1A56DBC7952BE7C54E1A56D
            E1A56DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFE1A56DE1A56DBE7C54DAB49CC07F56C07F56D4A589D4A589D4A589D4A589D4
            A589D4A589D4A589D4A589D4A589D4A589C07F56C07F56DAB49C}
          ParentFont = False
          OnClick = btn5Click
        end
        object SpeedButton7: TSpeedButton
          Left = 340
          Top = 489
          Width = 97
          Height = 24
          Hint = 'Ubah'
          Caption = '&load'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            BC8F808C3F27BB9689BB9689BB9689BB9689BB9689BB9689BB9689BB96898C3F
            278C3F278C3F27BC8F80FFFFFFBD90818F4229C06929EAECECEAECECEAECECEA
            ECECEAECECEAECECEAECECEAECEC8C3F27C06929C069298F4229BF928392462B
            C26D2DC26D2DEAECECA25129A25129EAECECEAECECEAECECEAECECEAECEC8C3F
            27C26D2DC26D2D92462B964A2FC47132C47132C47132EAECECA2532BA2532BEA
            ECECEAECECEAECECEAECECEAECEC8C3F27C47132C47132964A2F994E32C77638
            C77638C77638EAECECA4552EA4552EEAECECEAECECEAECECEAECECEAECEC8C3F
            27C77638C77638994E329D5336CA7B3ECA7B3ECA7B3EE4D5C9EAECECEAECECEA
            ECECEAECECEAECECEAECECE4D5C98C3F27CA7B3ECA7B3E9D5336A1593ACD8144
            CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD81
            44CD8144CD8144A1593AA55E3DD0874BD0874BD0874BD0874BD0874BD0874BD0
            874BD0874BD0874BD0874BD0874BD0874BD0874BD0874BA55E3DAA6241D48D52
            D48D52EED1BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEED1
            BAD48D52D48D52AA6241AD6845D79358D79358FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD79358D79358AD6845B16D49DA985E
            DA985EFFFFFFF8EADCF1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F8EADCFFFF
            FFDA985EDA985EB16D49B5724CDD9D64DD9D64FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9D64DD9D64B5724CB9754FDFA169
            DFA169FFFFFFF8EADCF1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F8EADCFFFF
            FFDFA169DFA169B9754FBC7952E1A56DE1A56DFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1A56DE1A56DBC7952BE7C54E1A56D
            E1A56DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFE1A56DE1A56DBE7C54DAB49CC07F56C07F56D4A589D4A589D4A589D4A589D4
            A589D4A589D4A589D4A589D4A589D4A589C07F56C07F56DAB49C}
          ParentFont = False
          OnClick = SpeedButton7Click
        end
        object lbl6: TLabel
          Left = 10
          Top = 130
          Width = 174
          Height = 15
          Caption = 'Edit Detail ( Klik 2x ) untuk Edit'
          Color = clCream
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Candara'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object grp1: TGroupBox
          Left = 12
          Top = 12
          Width = 796
          Height = 119
          Caption = 'Data Detail barang'
          Color = clMoneyGreen
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object Label32: TLabel
            Left = 64
            Top = 16
            Width = 30
            Height = 15
            Caption = 'Nama'
          end
          object Label33: TLabel
            Left = 392
            Top = 16
            Width = 35
            Height = 15
            Caption = 'jumlah'
          end
          object Label34: TLabel
            Left = 464
            Top = 16
            Width = 36
            Height = 15
            Caption = 'satuan'
          end
          object Label35: TLabel
            Left = 568
            Top = 16
            Width = 30
            Height = 15
            Caption = 'harga'
          end
          object Label37: TLabel
            Left = 16
            Top = 13
            Width = 19
            Height = 15
            Caption = 'No.'
          end
          object Label39: TLabel
            Left = 648
            Top = 13
            Width = 36
            Height = 15
            Caption = 'Total 1'
          end
          object SpeedButton6: TSpeedButton
            Left = 375
            Top = 76
            Width = 61
            Height = 25
            Caption = '&hitung'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFCD8D4CC9843EC7813CC6803AC57E38C37B35C17630C1752EBD6F29B466
              2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB384F8E9D5F8E9D5F0D49FF8E9D5F8
              E9D5F0D49FF0D49FF0D49FF0D49FEAC689BA723DFFFFFFFFFFFFFFFFFFFFFFFF
              E0B587F8E9D5D59850D59850F5E2C0D59850D59850EDCA80D59850D59850ECCA
              8EBB733EFFFFFFFFFFFFFFFFFFFFFFFFE2B988F8EAD6FAF2EAEACFA7F8ECDEFA
              F2E8F5E9DAF3DDBAF9F0E5EBD3AFECCB90BB733EFFFFFFFFFFFFFFFFFFFFFFFF
              E3BB8BF9EADAF6E8D4F0D49FF8ECDCF3E1C7F0D49FF1DAB8F0D49FECCA8EECCA
              8EBA733EFFFFFFFFFFFFFFFFFFFFFFFFE6BF8DFAEFE3DEAE69DEAE69F5E2C0DE
              AE69DEAE69F0D18DDEAE69DEAE69ECCB90C47F40FFFFFFFFFFFFFFFFFFFFFFFF
              E7C18DFAEFE3FAF2EAEACFA7F8EAD6FAF2E8F5E9DAF2DCB5F9F0E5EBD3AFECCB
              90C47E3FFFFFFFFFFFFFFFFFFFFFFFFFEAC690F9ECDBF3E1CBF3E1CBF8EBDCF3
              E1CBF3E1CBF3DFC1F3DFC1E5C5A1ECCB90C47E3FFFFFFFFFFFFFFFFFFFFFFFFF
              EBC993FAEFE3D39B5AD39B5AF5E3C4D59850D59850F3DFC11A25F23026B8ECCB
              90C47E3FFFFFFFFFFFFFFFFFFFFFFFFFEDCB96FAEFE3FBF4ECEAD1ABF6E7CFFA
              F2EAF6EADDF3DFC17A81F68064B9ECCB90C47F40FFFFFFFFFFFFFFFFFFFFFFFF
              EECE96FAEFE3F6E7CCF8ECDEF8ECDEF6E8D4F3E1C7F3DFC1EED19EEED19EECCB
              90C88445FFFFFFFFFFFFFFFFFFFFFFFFF0D199EAB951EAB84BE5AB39E3A42FDE
              981FDB9219D98D14D98D14D78A14CD8431D29146FFFFFFFFFFFFFFFFFFFFFFFF
              F1D49AFAECC7FAECC5F8E7BDF7E5B8F3DDA4F2D794EFD084EECD7BEDCF81EDCF
              81D79746FFFFFFFFFFFFFFFFFFFFFFFFF3D89EFAECC7FAECC7FAECC7F9EBC3F7
              E7BAF6E3B5F4DFAAF3DDA4F0D697F0D697DC972DFFFFFFFFFFFFFFFFFFFFFFFF
              F5DDA5EAB951EAB84BE5AB39E3A42FDE981FDB9219D98D14D98D14D78A14D78A
              14DC972EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D590EEC86FEEC76DEEC76DED
              C369ECC266EBBE60EABC5DE9B656ECBC64FFFFFFFFFFFFFFFFFF}
            OnClick = SpeedButton6Click
          end
          object btn_tambah: TSpeedButton
            Left = 439
            Top = 76
            Width = 69
            Height = 25
            Caption = '&Tambah'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF709C8C0C573C0C573C0C573C0C573C709C8CFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF105B3F2C8E642C
              8E642C8E642C8E64105B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF14604332926A32926A32926A32926A146043FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19654839977139
              9771399771399771196548FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF1F6B4D429D78429D78429D78429D781F6B4DFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF7FAC9A2572532572532572532572532572534BA3804B
              A3804BA3804BA3802572532572532572532572532572537FAC9A2B785855A989
              55A98955A98955A98955A98955A98955A98955A98955A98955A98955A98955A9
              8955A98955A9892B7858317F5E5FB0925FB0925FB0925FB0925FB0925FB0925F
              B0925FB0925FB0925FB0925FB0925FB0925FB0925FB092317F5E37866468B79B
              68B79B68B79B68B79B68B79B68B79B68B79B68B79B68B79B68B79B68B79B68B7
              9B68B79B68B79B3786643D8C69C2E3D8C2E3D8C2E3D8C2E3D8C2E3D872BDA472
              BDA472BDA472BDA4C2E3D8C2E3D8C2E3D8C2E3D8C2E3D83D8C6990BFAA43936F
              43936F43936F43936F43936F7BC3AC7BC3AC7BC3AC7BC3AC43936F43936F4393
              6F43936F43936F90BFAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49997484C9B384
              C9B384C9B384C9B3499974FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF4E9E798BCEBA8BCEBA8BCEBA8BCEBA4E9E79FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52A37D91D2C091
              D2C091D2C091D2C052A37DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF56A780D2EDE6D2EDE6D2EDE6D2EDE656A780FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DCDB659AA8359
              AA8359AA8359AA839DCDB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = btn_tambahClick
          end
          object SpeedButton1: TSpeedButton
            Left = 512
            Top = 73
            Width = 81
            Height = 23
            Hint = 'Hapus'
            Caption = 'Incl PPn'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              ECF5EB288F1F0AA63432A53EA8873BD5A170D5A16ED5A170D5A16ED29C63D095
              5DD09557CC9153E2C4ADFFFFFF7EBB7835AC483DBD5E3BBD5F30B75825B9550A
              A634E6F0DDFFDFB5D9A15AEED5B2F8E4B2E4B266E5BB7ACD8D4C95C8913BC163
              2CB65570B86C4EC36E32A53E51AD450CB1430AA634E7CD9BF6D8B4E3BC86E5B7
              5CE9C084E9C993CD8D4C59B96262D68F6BB76AFFFFFF46C77035A740FFE5CC5D
              C97C0AA634B9CDA1FFF4EEF4E5CBF2D9B1F3DEC4F4E1B6CF8D46A8D1A5B6D8B4
              FFFFFFE1EFDD46C67632A643A2C48E37BF6416AB41BCD1A4ECA661E5C497F0D5
              A4DBA250E1B474D6974FFFFFFFFFFFFFADD2A654AE563DC36B2FB5550FAF4316
              B64F53AA50F2D6ABF1CFA4D9A96AEDCC89EDD2AEE2BD89D6974FF2F8F143A748
              2DC26545CB7B3CC46D36BA6053AA5053AA50FFEEE4FCDFBEFCFAF6F2DFC3FBE7
              C0FFFFE6F6E3B6D6954993C78E91EDC33FBC68C0E0BE40CF802DAA47FFF1E5FF
              E7D1FAE9DCF6E4CBE2B87EF9E4BBDFC8C7A17EBAF0D3A2D6954990C88FADFAE5
              78C17FFFFFFF68E2AA39AF4E55903914A53E559039DABE72EDBC7AEAB9784A45
              F10002FF5F57BFF3B34BB7D9B3A6E7C68FEAC96BC27995E7C25FC17B61CD8F7B
              E6BE559039FFE2B8FFFFFFFBE3BD9790F3486AFF8F81C7EEB24BFFFFFF98C890
              8DD19D9AE9C692EDD17BE6BE7BE6BE559039DBBB9CEDCAB1E2C3A8E5C5A3E6BE
              98D29F8EEECB92E2AE5CFFFFFFFFFFFFF3F9F297C88E78D39D9FB354559039E1
              9A30DC8E22D08616CD7E0DCC7907CD7806D07A01D08422DA9D4AFFFFFFFFFFFF
              FFFFFFFFFFFF9FB3549FB354FFDA8FF5CF6FEEC153EAB43AE7A82BE39F1EDE94
              11DC8C05D5830ADA9840FFFFFFFFFFFFFFFFFFFFFFFFF5C267EEC87CFCF4DCFB
              F0CFF8E7BAF5DFA8F2D592F0CD80EDC671ECC56EE6B860DFA447FFFFFFFFFFFF
              FFFFFFFFFFFFEEC262F1D493F7E3AFF7E1ACF7E3AEF6E2AEF6E0A7F4DDA2F3DB
              9BF2D998EECE87E5AE51FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDEFC774EEC668ED
              C564EDC565EDC564EDC363ECC160EBBF5DEBBB59E9B656F9E9CE}
            ParentFont = False
            OnClick = SpeedButton1Click
          end
          object btn2: TSpeedButton
            Left = 630
            Top = 82
            Width = 134
            Height = 23
            Hint = 'Ubah'
            Caption = '&Hapus Isi detail'
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
              21A93A1ED04E21D45420D05304B62A18C4401DCE4A18C84420D15121D4541ED0
              4E21A93AFBFDFBFFFFFFFFFFFF4EB15B1ECE4D22D45615C9481CAC2F9DD2A137
              AF4614C13B1FD24E1ECE4B1ECD4A20D2531ECE4D4EB15BFFFFFFBDDEBE17BA3F
              21D85A13C64612A826F2F4ECFFFFFFEAF2E626AA380DC03920D24F1ECE491DCD
              4D20D75817BA3FBDDEBE6ABC7418D15214CB4E0BA01EF2F4ECFFFBFFFFFAFFFF
              FFFFEAF2E623A8350BC03A1ED3591CCF531ED25818CF516ABC7430A03F2DE172
              1BA82DF2F4ECFFF8FFEAF2E6A9D5A4EEF2EBFFFFFFD0EBD323A8340AC24218D6
              6213CF5430E17330A14130A34365EAA158B25CEAF2E6EAF2E60EB42F00BF303A
              B649F2F4ECFFFFFFEAF2E623A83307C13D24D86973F0B130A14223953778F4BC
              49CD7A74BF7F2DB64C24D3672ED87219CC5A48B558EAF2E6FFFFFFEAF2E626A7
              3125D06077F6BE23953533933D71F2B561E4A84CDB955BE1A561DEA563DDA463
              E2AB4DDA964FB860EEF2E8FFFFFFEAF2E62AB3436DF0B333933D67AB6686E3B5
              62E7A95DE2A460E2A65FE1A65FE1A65EE1A563E5AD4CDA954DB75EEAF0E5FFFF
              FF61BC6580DFAE67AB66B9D4B94EB068A8FCE15FE1A257E09F5BE0A35DE1A45D
              E1A45DE1A461E5AB4EDC9748BA605DC27096EABF4EB068B9D4B9FFFFFF458945
              7BDBA7B0FCE876E5B562E3AA5EE0A65EE1A65EE1A65EE0A566E6B06FE3AFA7F9
              E07ADCA8458945FFFFFFFFFFFFFAFDFA1572156DD6A3B3FDF0A4F5DF8CE9C78C
              E8C48AE7C28DE9C6A5F5DEB3FDF06DD6A3157215FAFDFAFFFFFFFFFFFFFFFFFF
              F9FCF945864538A75E7FE1B8A9FFECB9FFFBB9FFFBA9FFEC7FE1B838A75E4586
              45F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CEB767A567247D3328
              8738288738247D3367A567B7CEB7FFFFFFFFFFFFFFFFFFFFFFFF}
            ParentFont = False
            OnClick = btn2Click
          end
          object Label38: TLabel
            Left = 599
            Top = 61
            Width = 47
            Height = 15
            Caption = 'Ppn 10%'
          end
          object Label50: TLabel
            Left = 440
            Top = 135
            Width = 63
            Height = 15
            Caption = 'Data Import'
          end
          object Label36: TLabel
            Left = 68
            Top = 58
            Width = 38
            Height = 15
            Caption = 'Disk %'
          end
          object Label41: TLabel
            Left = 244
            Top = 58
            Width = 36
            Height = 15
            Caption = 'Total 2'
          end
          object ed_no: TEdit
            Left = 16
            Top = 32
            Width = 41
            Height = 23
            Color = clMenuText
            TabOrder = 0
          end
          object ed_jml: TEdit
            Left = 392
            Top = 32
            Width = 57
            Height = 23
            TabOrder = 1
            OnChange = ed_jmlChange
            OnKeyDown = ed_jmlKeyDown
          end
          object ed_hrg: TEdit
            Left = 552
            Top = 32
            Width = 89
            Height = 23
            TabOrder = 2
            OnChange = ed_hrgChange
          end
          object Ed_t1d: TEdit
            Left = 648
            Top = 32
            Width = 113
            Height = 23
            TabOrder = 3
          end
          object ed_satuan: TComboBox
            Left = 456
            Top = 32
            Width = 89
            Height = 23
            TabOrder = 4
          end
          object ed_nama: TEdit
            Left = 68
            Top = 32
            Width = 322
            Height = 23
            Color = clCream
            TabOrder = 5
            OnKeyPress = ed_namaKeyPress
          end
          object Edit2: TEdit
            Left = 599
            Top = 82
            Width = 25
            Height = 23
            TabOrder = 6
          end
          object Ed_disk_d: TEdit
            Left = 68
            Top = 77
            Width = 41
            Height = 23
            Color = clScrollBar
            TabOrder = 7
            Text = '0'
          end
          object CheckBox1: TCheckBox
            Left = 112
            Top = 59
            Width = 92
            Height = 17
            Caption = 'Nilai Diskon'
            TabOrder = 8
          end
          object ed_Tdisk: TEdit
            Left = 111
            Top = 77
            Width = 121
            Height = 23
            Color = clSilver
            TabOrder = 9
            Text = '0'
          end
          object ed_t2_d: TEdit
            Left = 234
            Top = 77
            Width = 137
            Height = 23
            TabOrder = 10
            Text = '0'
          end
        end
        object StringGrid1: TAdvStringGrid
          Left = 10
          Top = 151
          Width = 831
          Height = 337
          Cursor = crDefault
          ColCount = 13
          DrawingStyle = gdsClassic
          RowCount = 9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssBoth
          TabOrder = 1
          OnDrawCell = StringGrid1DrawCell
          OnSelectCell = StringGrid1SelectCell
          HoverRowCells = [hcNormal, hcSelected]
          OnGetCellColor = StringGrid1GetCellColor
          OnGetAlignment = StringGrid1GetAlignment
          OnDblClickCell = StringGrid1DblClickCell
          OnGetFloatFormat = StringGrid1GetFloatFormat
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
          ColWidths = (
            64
            64
            64
            64
            64
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
            22)
        end
        object BitBtn8: TBitBtn
          Left = 153
          Top = 494
          Width = 77
          Height = 22
          Caption = '&Export xls'
          DoubleBuffered = True
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
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = BitBtn8Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cetak'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 3
        Top = 7
        Width = 710
        Height = 297
        Color = clGradientActiveCaption
        ParentBackground = False
        TabOrder = 0
        object SpeedButton16: TSpeedButton
          Left = 372
          Top = 16
          Width = 77
          Height = 27
          Caption = '&Sama'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            CB9684A64C2EA64C2EA64C2EA64C2ECB9684FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFCD9A88AB5334AB5334C67435C67435C67435C67435AA
            5334AB5434CD9A88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5E3CCE8245
            AF5E3BCE8245CE8245CE8245CE8245AF5E3BCE8245AF5E3BFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFB46744D69156B46744D69156D69156D69156D69156B4
            6744D69156B46744FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA714CEFCFB3
            DE9F66DE9F66DE9F66DE9F66DE9F66DE9F66EFCFB3B66E49B0C9BF115D40115D
            4073A08FFFFFFFFFFFFFD9B099BD7951F1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F1
            D4B8BA774FBFA386BDDCCF38966F38966F1C694B1C694B79A795FFFFFFDAB49B
            C07F56517F93047FBD047FBD63A4C3D9B39BBEA286C5E2D795C9B651A78651A7
            862A775751A7862A7757FFFFFFFFFFFF6BB4D8047FBD50D2F150D2F1047FBD65
            B1D4D8E8E1A6D4C46CB99E6CB99E6CB99E3887656CB99E388765FFFFFFFFFFFF
            047FBD74DBF374DBF374DBF374DBF3047FBDDBEFE985CAB585CAB585CAB585CA
            B585CAB5CAE8DF469571FFFFFFFFFFFF047FBD99E5F599E5F599E5F599E5F504
            7FBDF2FAF8D2EDE6D2EDE6D2EDE6D2EDE6D2EDE651A17C99C8B2FFFFFFFFFFFF
            6BB4D8047FBDB2EBF6B2EBF6047FBD60ADD09ECDB62791A5047FBD047FBD2791
            A559AA839DCDB6FFFFFFFFFFFFFFFFFFFFFFFF6BB4D8047FBD047FBD6BB3D8FF
            FFFF6BB4D8047FBD50D2F150D2F1047FBD6BB4D8FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF047FBD74DBF374DBF374DBF374DB
            F3047FBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF047FBD99E5F599E5F599E5F599E5F5047FBDFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6BB4D8047FBDB2EBF6B2EBF6047F
            BD6BB4D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF6BB4D8047FBD047FBD6BB4D8FFFFFFFFFFFFFFFFFF}
          OnClick = SpeedButton16Click
        end
        object Label5: TLabel
          Left = 13
          Top = 193
          Width = 80
          Height = 20
          Caption = 'ket_cetak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_tunggu: TLabel
          Left = 13
          Top = 174
          Width = 74
          Height = 20
          Caption = 'Loading....'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Lucida Bright'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 455
          Top = 18
          Width = 186
          Height = 22
          Hint = 'Hapus'
          Caption = '&Ringkasan Kontrak xls'
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
          OnClick = SpeedButton3Click
        end
        object Edit5: TEdit
          Left = 168
          Top = 20
          Width = 89
          Height = 21
          TabOrder = 0
        end
        object Edit6: TEdit
          Left = 264
          Top = 20
          Width = 65
          Height = 21
          Color = clAqua
          TabOrder = 1
        end
        object BitBtn3: TBitBtn
          Left = 335
          Top = 18
          Width = 25
          Height = 25
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD
            4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00FF00FFBD4C00
            FFFFFFFFFFFFFFF8F2FFEFDEFEE5C9FEDAB2FED1A1FECB96FECB96FECB96FECB
            96FECB96FECB96BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFF8F2FFEFDEFE
            E5C9FEDAB4FED1A1FECB96FECB96FECB96FECB96FECB96BD4C00FF00FFBD4C00
            FFFFFF2D56F82D56F82D56F8FFFAF28B28038B28038B2803FED0A10182BF0182
            BF0182BFFECB96BD4C00FF00FFBD4C00FFFFFF2D56F82D56F82D56F8FFFFFF8B
            28038B28038B2803FEDAB40182BF0182BF0182BFFECB96BD4C00FF00FFBD4C00
            FFFFFF2D56F82D56F82D56F8FFFFFF8B28038B28038B2803FFE5C90182BF0182
            BF0182BFFECB96BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEF8F2FEEFE0FEE5C9FFDAB2FED1A1FECB96BD4C00FF00FFBD4C00
            FFFFFFBD8281BD8281BD8281FFFFFFD96401D96401D96401FFF8F00082010082
            01008201FED1A1BD4C00FF00FFBD4C00FFFFFFBD8281BD8281BD8281FFFFFFD9
            6401D96401D96401FFFFFF008201008201008201FEDAB4BD4C00FF00FFBD4C00
            FFFFFFBD8281BD8281BD8281FFFFFFD96401D96401D96401FFFFFF0082010082
            01008201FFE5C9BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F2FFEFDEBD4C00FF00FFBD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00FF00FFFF00FFBD4C00BD4C00BD4C00BD4C00BD4C00BD
            4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = BitBtn3Click
        end
        object BitBtn6: TBitBtn
          Left = 248
          Top = 56
          Width = 25
          Height = 25
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD
            4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00FF00FFBD4C00
            FFFFFFFFFFFFFFF8F2FFEFDEFEE5C9FEDAB2FED1A1FECB96FECB96FECB96FECB
            96FECB96FECB96BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFF8F2FFEFDEFE
            E5C9FEDAB4FED1A1FECB96FECB96FECB96FECB96FECB96BD4C00FF00FFBD4C00
            FFFFFF2D56F82D56F82D56F8FFFAF28B28038B28038B2803FED0A10182BF0182
            BF0182BFFECB96BD4C00FF00FFBD4C00FFFFFF2D56F82D56F82D56F8FFFFFF8B
            28038B28038B2803FEDAB40182BF0182BF0182BFFECB96BD4C00FF00FFBD4C00
            FFFFFF2D56F82D56F82D56F8FFFFFF8B28038B28038B2803FFE5C90182BF0182
            BF0182BFFECB96BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEF8F2FEEFE0FEE5C9FFDAB2FED1A1FECB96BD4C00FF00FFBD4C00
            FFFFFFBD8281BD8281BD8281FFFFFFD96401D96401D96401FFF8F00082010082
            01008201FED1A1BD4C00FF00FFBD4C00FFFFFFBD8281BD8281BD8281FFFFFFD9
            6401D96401D96401FFFFFF008201008201008201FEDAB4BD4C00FF00FFBD4C00
            FFFFFFBD8281BD8281BD8281FFFFFFD96401D96401D96401FFFFFF0082010082
            01008201FFE5C9BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F2FFEFDEBD4C00FF00FFBD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00FF00FFFF00FFBD4C00BD4C00BD4C00BD4C00BD4C00BD
            4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = BitBtn6Click
        end
        object ed_k2: TEdit
          Left = 160
          Top = 56
          Width = 81
          Height = 21
          Color = clYellow
          TabOrder = 4
        end
        object BitBtn4: TBitBtn
          Left = 128
          Top = 56
          Width = 25
          Height = 25
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFBD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD
            4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00FF00FFBD4C00
            FFFFFFFFFFFFFFF8F2FFEFDEFEE5C9FEDAB2FED1A1FECB96FECB96FECB96FECB
            96FECB96FECB96BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFF8F2FFEFDEFE
            E5C9FEDAB4FED1A1FECB96FECB96FECB96FECB96FECB96BD4C00FF00FFBD4C00
            FFFFFF2D56F82D56F82D56F8FFFAF28B28038B28038B2803FED0A10182BF0182
            BF0182BFFECB96BD4C00FF00FFBD4C00FFFFFF2D56F82D56F82D56F8FFFFFF8B
            28038B28038B2803FEDAB40182BF0182BF0182BFFECB96BD4C00FF00FFBD4C00
            FFFFFF2D56F82D56F82D56F8FFFFFF8B28038B28038B2803FFE5C90182BF0182
            BF0182BFFECB96BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEF8F2FEEFE0FEE5C9FFDAB2FED1A1FECB96BD4C00FF00FFBD4C00
            FFFFFFBD8281BD8281BD8281FFFFFFD96401D96401D96401FFF8F00082010082
            01008201FED1A1BD4C00FF00FFBD4C00FFFFFFBD8281BD8281BD8281FFFFFFD9
            6401D96401D96401FFFFFF008201008201008201FEDAB4BD4C00FF00FFBD4C00
            FFFFFFBD8281BD8281BD8281FFFFFFD96401D96401D96401FFFFFF0082010082
            01008201FFE5C9BD4C00FF00FFBD4C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F2FFEFDEBD4C00FF00FFBD4C00
            BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C
            00BD4C00BD4C00BD4C00FF00FFFF00FFBD4C00BD4C00BD4C00BD4C00BD4C00BD
            4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00BD4C00FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentDoubleBuffered = False
          TabOrder = 5
          OnClick = BitBtn4Click
        end
        object ed_k1: TEdit
          Left = 24
          Top = 56
          Width = 97
          Height = 21
          Color = clYellow
          TabOrder = 6
        end
        object cbb1: TComboBox
          Left = 24
          Top = 20
          Width = 137
          Height = 21
          Color = clSilver
          TabOrder = 7
        end
        object rg_cetak: TRadioGroup
          Left = 13
          Top = 87
          Width = 340
          Height = 82
          Caption = 'Cetak Data'
          Color = clInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'SPK Medis Obat '
            'SPK 1 halaman'
            'RINGKASAN KONTRAK')
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object pnl1: TPanel
          Left = 383
          Top = 55
          Width = 193
          Height = 25
          Color = clCream
          TabOrder = 9
          object lbl5: TLabel
            Left = 17
            Top = 3
            Width = 25
            Height = 19
            Caption = 'lbl5'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -16
            Font.Name = 'Corbel'
            Font.Style = []
            ParentFont = False
          end
        end
        object rg_ba: TRadioGroup
          Left = 359
          Top = 86
          Width = 266
          Height = 84
          Caption = 'Cetak BA.'
          Color = clMoneyGreen
          Items.Strings = (
            'BA. SPK '
            '-'
            '-')
          ParentBackground = False
          ParentColor = False
          TabOrder = 10
        end
        object BitBtn17: TBitBtn
          Left = 278
          Top = 55
          Width = 99
          Height = 23
          Caption = 'Kwitansi  '
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFD7C39BECE3D6ECE3D6ECE3D6ECE3D6ECE3D6ECE3D6D7C39BFFFF
            FFFFFFFFFFFFFFFFFFFFB0ACACB1ACACA7A2A2726C73C4AB7FEDE1D5EDE1D5ED
            E1D5EDE1D5EDE1D5EDE1D5C4AB7F767177A49E9EA9A4A4ABA5A5958F8FC3C0BF
            C3C0BF837D84C6A874E0CBAEE0CBAEE0CBAEE0CBAEE0CBAEE0CBAEC6A874837D
            84C3C0BFC3C0BF999292A49FA1D1CFCED1CFCED3D2D1D2D2D3D0D0D2D0D0D2D0
            D0D2D0D0D2D0D0D2D0D0D2D2D2D3D3D2D1BACAD76E9BE3A49FA1AAA7A7D9D7D7
            D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7D7D9D7
            D78AC3E9004BFBABA8A8B7B3B3E6E8E9D6C5AFBC6B10BB6A0FBB6A0FBB6A0FBB
            6A0FBB6A0FBB6A0FBB6A0FBB6A0FBC6B10D6C5AFE6E8E9B8B5B5BCB9BAEEF2F5
            BA7B3EE1A942E1A842E1A842E1A842E1A842E1A842E1A842E1A842E1A842E1A9
            42BA7B3EEEF2F5BFBBBCCDC8C9F8FCFFCD9753EEC670EEC771EEC771EEC771EE
            C771EEC771EEC771EEC771EEC771EEC670CD9753F8FCFFCECBCCD2D0D0FCFFFF
            D7A55CEDC977E9BF68E9BF68E9BF68E9BF68E9BF68E9BF68E9BF68E9BF68EDC9
            77D7A55CFCFFFFD4D1D0DEDCDBFFFFFFE8C070E0AC54B99D6BD7BD91D7BD91D7
            BD91D7BD91D7BD91D7BD91B99D6BE0AC54E8C070FFFFFFE3DFDFD1CBCDBCBBC0
            DEB673CF9E5FC4AB7FDFCAADDFCAADDFCAADDFCAADDFCAADDFCAADC4AB7FCD99
            56DDB36EBEBDC1D1CACCFFFFFFFFFFFFFFFFFFFFFFFFD0BD98ECDFD1ECDFD1EC
            DFD1ECDFD1ECDFD1ECDFD1D0BD98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFD5C4A4EFE4D8EFE4D8EFE4D8EFE4D8EFE4D8EFE4D8D5C4A4FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED0B8F5EDE4F5EDE4F5
            EDE4F5EDE4F5EDE4F5EDE4DED0B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE2D6C1F8F3EAF8F3EAF8F3EAF8F3EAF8F3EAF8F3EAE2D6C1FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DDCDEFE8DBEFE8DBEF
            E8DBEFE8DBEFE8DBEFE8DBE8DFD0FFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 11
          OnClick = BitBtn17Click
        end
        object BitBtn7: TBitBtn
          Left = 543
          Top = 98
          Width = 74
          Height = 25
          Caption = 'Cetak'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFF9C9C9C5757575757575757575757575757575757575757575757579C9C
            9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF656565FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF656565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF767676F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F87676
            76FFFFFFFFFFFFFFFFFF9696964C4C4C4C4C4C6E6E6EB8B8B8EFEFEFEFEFEFEF
            EFEFEFEFEFEFEFEFEFEFEFB8B8B86E6E6E4C4C4C4C4C4C969696525252A8A8A8
            A9A8A95353537372738D8D8D8E8C8D8D8D8E8D8C8D8C8D8E8E8E8E7474745655
            55ACACACAAAAAB525252595959A9A9A9ACACAC4C4B4D4B4C4C4B4B4B4B4A4B4B
            4C4B4C4C4D4D4D4E4E4E4E515251525353B0AFAFAFAFAF595959626262AFAFAF
            B4B4B4B4B4B4B5B5B5B4B4B4B4B4B4B3B3B3B4B4B4B5B5B5B5B5B5B8B8B8BABA
            BABABBBBB8B7B76262626C6C6CBCBCBCC4C4C4C6C6C6C6C6C6C5C5C5C4C5C5C5
            C5C5C5C5C5C5C5C5C6C7C7C8C8C8CACACACACBCBC6C6C66C6C6C777777D6D6D6
            E4E4E4E5E5E5E5E5E5E5E5E5E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E5E5
            E5E4E4E4D9D9D9777777949494EEEEEEF8F8F7F9F9F9F8F8F8F9F9F9F9F9F9F9
            F9F9F8F8F8F9F9F9F9F9F9F8F8F8F8F8F8F8F8F8EFEEEF939393C7C7C7C8C8C8
            EFEFEF6E6E6E6060605757575757575757575757575757575757576060606E6E
            6EEFEFEFCBCBCBC2C2C2F4F4F4A3A3A3EAEAEA404040656565FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF656565404040EAEAEAA6A6A6ECECECFFFFFFC5C5C5
            9C9C9C3B3B3B777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7777773B3B
            3B9B9B9BC4C4C4FFFFFFFFFFFFFFFFFFFFFFFF3B3B3B888888FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF8888883B3B3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF979797FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C8A1A1A1A1A1A1A1
            A1A1A1A1A1A1A1A1A1A1A1C8C8C8FFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 12
          OnClick = BitBtn7Click
        end
        object BitBtn9: TBitBtn
          Left = 265
          Top = 98
          Width = 74
          Height = 25
          Caption = 'Cetak'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFF9C9C9C5757575757575757575757575757575757575757575757579C9C
            9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF656565FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF656565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF767676F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F87676
            76FFFFFFFFFFFFFFFFFF9696964C4C4C4C4C4C6E6E6EB8B8B8EFEFEFEFEFEFEF
            EFEFEFEFEFEFEFEFEFEFEFB8B8B86E6E6E4C4C4C4C4C4C969696525252A8A8A8
            A9A8A95353537372738D8D8D8E8C8D8D8D8E8D8C8D8C8D8E8E8E8E7474745655
            55ACACACAAAAAB525252595959A9A9A9ACACAC4C4B4D4B4C4C4B4B4B4B4A4B4B
            4C4B4C4C4D4D4D4E4E4E4E515251525353B0AFAFAFAFAF595959626262AFAFAF
            B4B4B4B4B4B4B5B5B5B4B4B4B4B4B4B3B3B3B4B4B4B5B5B5B5B5B5B8B8B8BABA
            BABABBBBB8B7B76262626C6C6CBCBCBCC4C4C4C6C6C6C6C6C6C5C5C5C4C5C5C5
            C5C5C5C5C5C5C5C5C6C7C7C8C8C8CACACACACBCBC6C6C66C6C6C777777D6D6D6
            E4E4E4E5E5E5E5E5E5E5E5E5E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E5E5
            E5E4E4E4D9D9D9777777949494EEEEEEF8F8F7F9F9F9F8F8F8F9F9F9F9F9F9F9
            F9F9F8F8F8F9F9F9F9F9F9F8F8F8F8F8F8F8F8F8EFEEEF939393C7C7C7C8C8C8
            EFEFEF6E6E6E6060605757575757575757575757575757575757576060606E6E
            6EEFEFEFCBCBCBC2C2C2F4F4F4A3A3A3EAEAEA404040656565FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF656565404040EAEAEAA6A6A6ECECECFFFFFFC5C5C5
            9C9C9C3B3B3B777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7777773B3B
            3B9B9B9BC4C4C4FFFFFFFFFFFFFFFFFFFFFFFF3B3B3B888888FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF8888883B3B3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF979797FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C8A1A1A1A1A1A1A1
            A1A1A1A1A1A1A1A1A1A1A1C8C8C8FFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 13
          OnClick = BitBtn9Click
        end
      end
    end
    object ts1: TTabSheet
      Caption = 'LAPORAN'
      ImageIndex = 2
      object grp2: TGroupBox
        Left = 24
        Top = 24
        Width = 529
        Height = 153
        Caption = 'grp2'
        Color = clMoneyGreen
        ParentColor = False
        TabOrder = 0
        object lbl7: TLabel
          Left = 8
          Top = 72
          Width = 104
          Height = 13
          Caption = 'Tanggal Penerimaan :'
        end
        object btnexportdpa: TSpeedButton
          Left = 111
          Top = 94
          Width = 148
          Height = 22
          Hint = 'Hapus'
          Caption = '&Export Detail Xls '
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
        object cxm1: TcxMemo
          Left = 111
          Top = 15
          Lines.Strings = (
            '')
          TabOrder = 0
          Height = 48
          Width = 348
        end
        object cxcari: TcxButtonEdit
          Left = 9
          Top = 14
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxcariPropertiesButtonClick
          TabOrder = 1
          Width = 100
        end
        object dtp_awal: TDateTimePicker
          Left = 112
          Top = 72
          Width = 97
          Height = 19
          Date = 42220.523548333330000000
          Time = 42220.523548333330000000
          TabOrder = 2
        end
        object dtp_akhir: TDateTimePicker
          Left = 216
          Top = 72
          Width = 97
          Height = 19
          Date = 42220.523634965280000000
          Time = 42220.523634965280000000
          TabOrder = 3
        end
      end
    end
  end
  object BtnCari_no: TBitBtn
    Left = 322
    Top = 586
    Width = 33
    Height = 25
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF4D74AB234179C5ABA7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF4173AF008EEC009AF41F4B80FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF2F6EB22BA7
      F516C0FF00A0F3568BC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFEFFFF2974BB68C4F86BD4FF279CE66696C8FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D8FD5A4E3FEB5EEFF4CAA
      E7669DD2FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEA188898A6A6A93736E866567B0
      9595BAA8B1359EE8BDF5FF77C4EF63A1DAFFFFFFFFFFFFFFFFFFFFFFFFD7CDCD
      7E5857DFD3CBFFFFF7FFFFE7FFFEDBD6BB9E90584D817B8E1794E46BB5E9FFFF
      FFFFFFFFFFFFFFFFFFFFEDE9E9886565FFFFFFFFFFFFFDF8E8FAF2DCF8EDCFFF
      F1CFF6DEBA9F5945C0C7D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA38889F6EFEA
      FFFFFFFEFBF5FBF7E8F9F4DAF5EBCCE6CEACF3DAB8E2BD99AB8B8EFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF937674FFFFFFFDFBF1FCF8EEFAF3E1FCF5E3F7F0D7F0
      DFC1E7C9A9F0D1ABA87E75F8F6F6FFFFFFFFFFFFFFFFFFFFFFFF997D7AFFFFFC
      F9F2E1FAF3DEFAF7E5FAF1DCF1DFC0EDD9BAECD8B9EDCAA5AF8679EDE8E9FFFF
      FFFFFFFFFFFFFFFFFFFF9C807BFFFFEBF9EED5FAF1D7F9F2DAF2E3C6FEFBF9FF
      FFF0EFDFC0E9C69EB0857BF5F2F3FFFFFFFFFFFFFFFFFFFFFFFFAF9596F7EAC8
      F9EBCCEFDCBEF4E4C7F0E1C5FDFCECFAF5DDEFDCBCDFB087B59A9AFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDED4D7BA998CFDECC4EDD4B0E5CAA8EFDBBFF2E3C4F2
      DEBCEABF93BB8E7DE7DFE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEBFC5
      BE9A8DE6C7A5EFCBA3ECC8A2E8BE94DCAA86BE9585DFD6D7FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E4E6C9B3B4B99C93C3A097BF9F96CC
      B9B7F1EEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BtnCari_noClick
  end
  object pn_list: TPanel
    Left = 851
    Top = 73
    Width = 430
    Height = 189
    Color = clMoneyGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      430
      189)
    object Label8: TLabel
      Left = 136
      Top = 19
      Width = 28
      Height = 20
      Caption = 'Total'
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 99
      Top = 74
      Width = 75
      Height = 20
      Caption = 'Pejabat TTd '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 80
      Top = 99
      Width = 93
      Height = 20
      Caption = 'Pejabat TTd BA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 93
      Top = 48
      Width = 80
      Height = 20
      Caption = 'Pejabat PPK '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label55: TLabel
      Left = 47
      Top = 125
      Width = 85
      Height = 20
      Caption = 'VERIFIKATOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Label56: TLabel
      Left = 0
      Top = 159
      Width = 133
      Height = 20
      Caption = 'PEMBUAT DOKUMEN'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Edtotal: TEdit
      Left = 177
      Top = 10
      Width = 249
      Height = 33
      Anchors = [akRight]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnClick = EdtotalClick
    end
    object cbb_pejabat: TcxLookupComboBox
      Left = 179
      Top = 74
      Properties.ListColumns = <>
      TabOrder = 1
      Width = 209
    end
    object cbb_pejabat_ba: TcxLookupComboBox
      Left = 179
      Top = 100
      Properties.ListColumns = <>
      TabOrder = 2
      Width = 209
    end
    object cbb_ppk: TcxLookupComboBox
      Left = 177
      Top = 48
      Properties.ListColumns = <>
      TabOrder = 3
      Width = 209
    end
    object cxLookupVerifikator: TcxLookupComboBox
      Left = 138
      Top = 125
      ParentFont = False
      Properties.ListColumns = <>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 278
    end
    object cxLookupDokument: TcxLookupComboBox
      Left = 139
      Top = 157
      ParentFont = False
      Properties.ListColumns = <>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 277
    end
  end
  object PageControl2: TPageControl
    Left = 851
    Top = 268
    Width = 357
    Height = 305
    ActivePage = TabSheet5
    TabOrder = 3
    object TabSheet5: TTabSheet
      Caption = 'Total'
      DesignSize = (
        349
        277)
      object lbl1: TLabel
        Left = 4
        Top = 8
        Width = 36
        Height = 13
        Caption = 'Total t1'
      end
      object Label49: TLabel
        Left = 269
        Top = 70
        Width = 38
        Height = 13
        Caption = 'Label49'
      end
      object Label31: TLabel
        Left = 3
        Top = 39
        Width = 33
        Height = 13
        Caption = 'Diskon'
      end
      object lbl2: TLabel
        Left = 3
        Top = 72
        Width = 33
        Height = 13
        Caption = 'Total 2'
      end
      object btn6: TSpeedButton
        Left = 3
        Top = 253
        Width = 131
        Height = 21
        Hint = 'Ubah'
        Caption = '&BA. Form Baru'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
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
        OnClick = btn6Click
      end
      object Label30: TLabel
        Left = 3
        Top = 121
        Width = 54
        Height = 13
        Caption = 'Total Bayar'
      end
      object ed_t1: TEdit
        Left = 113
        Top = 5
        Width = 150
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Fax'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = ed_t1Change
      end
      object ed_pjk: TEdit
        Left = 150
        Top = 89
        Width = 113
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Fax'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = ed_pjkChange
      end
      object ed_t2: TEdit
        Left = 115
        Top = 63
        Width = 148
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Fax'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnChange = ed_t2Change
      end
      object chk2: TCheckBox
        Left = 39
        Top = 92
        Width = 70
        Height = 17
        Caption = 'Non Pajak'
        Color = clInfoBk
        ParentColor = False
        TabOrder = 3
      end
      object chktempo: TCheckBox
        Left = 12
        Top = 179
        Width = 97
        Height = 17
        Caption = 'Khusus Tempo'
        TabOrder = 4
        OnClick = chktempoClick
      end
      object ed_perpjk: TEdit
        Left = 115
        Top = 89
        Width = 34
        Height = 26
        Anchors = [akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = '11'
        OnChange = ed_perpjkChange
      end
      object cxTerbiilang_kwi: TcxMemo
        Left = 0
        Top = 202
        Lines.Strings = (
          '')
        Properties.ScrollBars = ssVertical
        TabOrder = 6
        Height = 45
        Width = 313
      end
      object ed_disk: TEdit
        Left = 153
        Top = 34
        Width = 110
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Fax'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnChange = ed_diskChange
      end
      object chk1: TCheckBox
        Left = 12
        Top = 147
        Width = 113
        Height = 17
        Caption = 'Biaya Pengiriman'
        Color = clInfoBk
        ParentColor = False
        TabOrder = 8
      end
      object edtpengiriman: TEdit
        Left = 120
        Top = 147
        Width = 143
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Fax'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object ed_bayar: TEdit
        Left = 120
        Top = 121
        Width = 143
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Fax'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnChange = ed_bayarChange
      end
    end
  end
  object ednokwi: TEdit
    Left = 64
    Top = 3
    Width = 145
    Height = 28
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnChange = ednokwiChange
    OnKeyDown = ednokwiKeyDown
  end
  object Edit3: TEdit
    Left = 641
    Top = 4
    Width = 161
    Height = 21
    TabOrder = 5
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 849
    Top = 3
    Width = 185
    Height = 21
    TabOrder = 6
    OnChange = Edit4Change
  end
  object Edit1: TEdit
    Left = 433
    Top = 4
    Width = 153
    Height = 21
    TabOrder = 7
    OnChange = Edit1Change
  end
  object pnl4: TPanel
    Left = 128
    Top = 212
    Width = 569
    Height = 285
    Caption = 'pnl4'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 8
    Visible = False
    object lv1: TListView
      Left = 16
      Top = 16
      Width = 537
      Height = 246
      Color = clMenuText
      Columns = <
        item
          AutoSize = True
          Caption = 'Nama Barang'
          MaxWidth = 270
        end
        item
          Caption = '@ Harga'
          Width = 90
        end
        item
          Caption = 'Satuan'
          MaxWidth = 70
          Width = 70
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      GridLines = True
      ReadOnly = True
      RowSelect = True
      ParentFont = False
      TabOrder = 0
      ViewStyle = vsReport
      OnKeyDown = lv1KeyDown
      OnKeyPress = lv1KeyPress
    end
    object cxLabel4: TcxLabel
      Left = 19
      Top = 264
      Caption = 'Jumlah Barang'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel5: TcxLabel
      Left = 375
      Top = 264
      Caption = 'Enter : Pilih , Esc : Keluar '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.TextColor = clRed
      Style.TextStyle = [fsBold, fsItalic]
      Style.IsFontAssigned = True
    end
    object cxLabel6: TcxLabel
      Left = 16
      Top = -1
      Caption = 'Data Pencarian : Barang'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object pnl2: TPanel
    Left = 849
    Top = 569
    Width = 390
    Height = 34
    Color = clMoneyGreen
    TabOrder = 9
    object btn7: TSpeedButton
      Left = 222
      Top = 5
      Width = 76
      Height = 24
      Hint = 'Ubah'
      Caption = '&Keluar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000864406D9C387
        1EE163420D7C352407421A110320000000000000000000000000000000000000
        000000000000000000000000000000000000331B084D0404084D854907EDDF9C
        1FFFCC891BFFCD8A1BFFCD8A1BFFA26D15CB835B119C351F0850000000000000
        000000000000000000000000000000000000AA5D1AF6121019FF804A09FFE39C
        20FFCB891CFFCD8A1CFFCD8A1CFFCC891CFFD6941CFFAC641DFF000000000000
        000000000000000000000000000000000000AF6415E713111AFF864F09FFE49A
        21FFCD8A1DFFCF8B1DFFCF8B1DFFCE8A1DFFD8941BFFA86420F4000000000000
        000000000000000002020C0CB6EA00000000A6610FCE14111BFF8A530BFFE69E
        22FFCE8C1FFFCF8D1FFFCF8D1FFFCE8C1FFFD6941DFFAB6823F3000000000000
        000000000000000000001614D9FF0D12DDE8935226E4251A00FF8E530EFFD892
        20FFCF8C1FFFD08F23FFD08F22FFCF8E22FFD79620FFAE6D27F32E37E5FD1D2A
        E8FF232CE8FF222EEBFF2430EFFF2032FFFF1B25F9FF00002FFFAA6F06FFE4EA
        F1FFBC7418FFD69324FFD29227FFD29127FFD89925FFB2712AF35966E8F8152E
        F4FF223AF4FF2137F4FF2338F2FF273AEFFF213CFFFF2B3FFFFF895645FFFAD2
        73FFD29A3DFFD6982EFFD39229FFD4932BFFDA9C2DFFB6762DF36374EDF84565
        F7FF4A67F6FF4E69F6FF425CF3FF1F3CF2FF5E7FFFFF1F28B9FFA46820FFF0BA
        4DFFDEAE56FFDFAF58FFDBA749FFD59A36FFDB9F31FFBA7D32F3575EEDFD656F
        F1FF636DF1FF6670F0FF495FF1FF638AFFFF8667B4FF0D0300FFAA7628FFF2C4
        6DFFE0B05DFFE0B25EFFE2B462FFE2B261FFE1AE4BFFBF8033F3000000000000
        000000000000000000003B40F0FF2733D2D2AE6E13C422180BFFA8793AFFF5CA
        77FFE2B768FFE3B869FFE3B869FFE4B86AFFEAC377FFC58C41F3000000000000
        000000000000010005050000DDDD00000000CE8D23D61C1014FFB2803FFFF8D2
        84FFE6BF73FFE7C074FFE7C074FFE7BF73FFECCB80FFC99247F3000000000000
        000000000000000000000000000000000000DD982BE61D1212FFB98949FFFDD9
        91FFEAC681FFEAC581FFEAC581FFEAC581FFF0D08FFFCD984BF3000000000000
        000000000000000000000000000000000000CC9140E4180D0EFFC49957FFFFF2
        AFFFFFE09DFFFFE4A0FFF8DB9AFFF3D495FFF5DEA3FFD29F51F3000000000000
        000000000000000000000000000000000000D49844E7301F1BFF231F20FF6E5A
        44FF9E8663FFBBA77CFFDDC18CFFF1D399FFFEEBBAFFDCAA5DF8000000000000
        000000000000000000000000000000000000C59443DAD3A049F7C39142F3B987
        3AF3AD7E34F3A7752DF3C28E3BF3D39F47F3DDAD58F4CB9946E6}
      ParentFont = False
      OnClick = btn7Click
    end
    object btnBtnBaru: TSpeedButton
      Left = 4
      Top = 6
      Width = 61
      Height = 24
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
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF709C8C0C573C0C573C0C573C0C573C709C8CFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF105B3F2C8E642C
        8E642C8E642C8E64105B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF14604332926A32926A32926A32926A146043FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19654839977139
        9771399771399771196548FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF1F6B4D429D78429D78429D78429D781F6B4DFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF7FAC9A2572532572532572532572532572534BA3804B
        A3804BA3804BA3802572532572532572532572532572537FAC9A2B785855A989
        55A98955A98955A98955A98955A98955A98955A98955A98955A98955A98955A9
        8955A98955A9892B7858317F5E5FB0925FB0925FB0925FB0925FB0925FB0925F
        B0925FB0925FB0925FB0925FB0925FB0925FB0925FB092317F5E37866468B79B
        68B79B68B79B68B79B68B79B68B79B68B79B68B79B68B79B68B79B68B79B68B7
        9B68B79B68B79B3786643D8C69C2E3D8C2E3D8C2E3D8C2E3D8C2E3D872BDA472
        BDA472BDA472BDA4C2E3D8C2E3D8C2E3D8C2E3D8C2E3D83D8C6990BFAA43936F
        43936F43936F43936F43936F7BC3AC7BC3AC7BC3AC7BC3AC43936F43936F4393
        6F43936F43936F90BFAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49997484C9B384
        C9B384C9B384C9B3499974FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4E9E798BCEBA8BCEBA8BCEBA8BCEBA4E9E79FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52A37D91D2C091
        D2C091D2C091D2C052A37DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF56A780D2EDE6D2EDE6D2EDE6D2EDE656A780FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DCDB659AA8359
        AA8359AA8359AA839DCDB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Margin = 0
      ParentFont = False
      OnClick = btnBtnBaruClick
    end
    object btn_hapusd: TSpeedButton
      Left = 66
      Top = 6
      Width = 75
      Height = 25
      Hint = 'Hapus'
      Caption = '&Hapus '
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
      OnClick = btn_hapusdClick
    end
    object btnproses: TSpeedButton
      Left = 142
      Top = 5
      Width = 79
      Height = 25
      Hint = 'Ubah'
      Caption = '&Simpan'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        BC8F808C3F27BB9689BB9689BB9689BB9689BB9689BB9689BB9689BB96898C3F
        278C3F278C3F27BC8F80FFFFFFBD90818F4229C06929EAECECEAECECEAECECEA
        ECECEAECECEAECECEAECECEAECEC8C3F27C06929C069298F4229BF928392462B
        C26D2DC26D2DEAECECA25129A25129EAECECEAECECEAECECEAECECEAECEC8C3F
        27C26D2DC26D2D92462B964A2FC47132C47132C47132EAECECA2532BA2532BEA
        ECECEAECECEAECECEAECECEAECEC8C3F27C47132C47132964A2F994E32C77638
        C77638C77638EAECECA4552EA4552EEAECECEAECECEAECECEAECECEAECEC8C3F
        27C77638C77638994E329D5336CA7B3ECA7B3ECA7B3EE4D5C9EAECECEAECECEA
        ECECEAECECEAECECEAECECE4D5C98C3F27CA7B3ECA7B3E9D5336A1593ACD8144
        CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD8144CD81
        44CD8144CD8144A1593AA55E3DD0874BD0874BD0874BD0874BD0874BD0874BD0
        874BD0874BD0874BD0874BD0874BD0874BD0874BD0874BA55E3DAA6241D48D52
        D48D52EED1BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEED1
        BAD48D52D48D52AA6241AD6845D79358D79358FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD79358D79358AD6845B16D49DA985E
        DA985EFFFFFFF8EADCF1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F8EADCFFFF
        FFDA985EDA985EB16D49B5724CDD9D64DD9D64FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDD9D64DD9D64B5724CB9754FDFA169
        DFA169FFFFFFF8EADCF1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F1D4B8F8EADCFFFF
        FFDFA169DFA169B9754FBC7952E1A56DE1A56DFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1A56DE1A56DBC7952BE7C54E1A56D
        E1A56DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE1A56DE1A56DBE7C54DAB49CC07F56C07F56D4A589D4A589D4A589D4A589D4
        A589D4A589D4A589D4A589D4A589D4A589C07F56C07F56DAB49C}
      ParentFont = False
      OnClick = BtnProsesClick
    end
  end
  object PnOperasi: TcxButton
    Left = 1040
    Top = 3
    Width = 223
    Height = 31
    Caption = 'Operasi'
    TabOrder = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
  end
  object dtpTrans: TDateTimePicker
    Left = 1140
    Top = 606
    Width = 88
    Height = 23
    Date = 38581.827836585700000000
    Format = 'dd/MM/yyyy'
    Time = 38581.827836585700000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnChange = ed_SPK_TglChange
  end
  object BitBtn5: TBitBtn
    Left = 977
    Top = 604
    Width = 102
    Height = 24
    Caption = 'List Detail'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFF3F4F5DDD8D5EDE9E5FBFDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF1EDECC1A99EB38E79A18475A58E82C0B1A9D5CFCC
      EEEBEAF0F3F4FAFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBFADCC1B5F8B896FFEAD4FFE4C8F8
      C7AAE3AA8DC19379BC927AB8A197BFB7B3D8D1CECED5D9E1E3E5F5F7F8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE3E0DA9C82FFE5
      D2FFFFFFFFFFFFFFFFFEFFFBF1FFECDBFFDCC7F9C8AFC8A38CC48D709B7A6EA1
      887D9C8F8AD0D5D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD
      CFB1A6FDB69DFFFFFFFEF4EFFDE7DFFDF3F0FDFFFFFEFFFFFFFFFFFFFFFFFFD4
      BCFFB391FFAD8DE69C7EBD8067CB9C85F3C6B3C3B4AEDAD8D7FCFCFCFFFFFFFF
      FFFFFFFFFFF1EDECCA9278FFE7D9FFFFFFFDE6DAFBBDA6FCB89EFBC3AFFDD2C4
      FEF0E6FEDFD4FCB8A2FABAA5FBBAA5FEBAA2FFBBA1FFAF8EF5A989DFAB8BC7BA
      B1F5F7F7FFFFFFFFFFFFFFFFFFD3C5C1F39C79FFFFFDFFFFFFFEFFFFFEF5F1FC
      E6DBFCD3C2FCC4AFFCB79FF9A37FF9A380F9AD90FCB89FFABBA7FAB49CFAC0AA
      FFD5B9DEB298DED5D2F9FAFBFEFEFEFFFFFFFFFFFFBE9D90FFBFA8FEFFFFFEEF
      E9FEE5D6FFFDF8FFFFFFFFFFFFFFFFFFFFFCF8F9B9A4F8A381F79C77F49672F9
      A98CFBBDA8FFE4D0CFB49FCEC5C0FBFDFEFFFFFFFFFFFFFFFFFFFAFCFDCD8362
      FFDBCEFFFFFFFEE4D4F7B092F7A285FDB392FCC9B3FBE4DAFCEFEAFFC6A8FCBA
      A5FEB99FFEB79DFEBEA4FDF1E7FFD4BBD3AC99DDE1E4FFFFFFFFFFFFFFFFFFFF
      FFFFE6E5E4E87F5FFEEDE2FFFFF8FFFBF5FFFFFFFFF9F1FDDFD1FCC3AEFFBCA4
      E09F83AC7358F0AB91F8C7B2F6DFD3FFF7EEFFF5E7CDA388CBC0BBFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDECAC2E68464FDF8F2FFF2E8FCD1BCFBD3BFFCE7DFFE
      F5F3FEFFFFFFFFFFBEB4AD41556A88B8DF7DAADF7DB9E5D2E9FBFFD2BAC59A86
      DBDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9AD9DEB8F71FFFFFDFEF0E6FCD4
      C2F9BBA4F9B49AFCBAA1FAC5B0FFDAC7DED5D571B9FF3CAFF800AAFF1288F652
      97E6C0A6A5C8A594EBEEF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEA386ED977B
      FFEFE5FEE9D6FEF1E6FFF5E8FEECDFFEE0CFFCCEB9FFC19FEEB7AA42B1EE00C0
      FC00BDFF0EACFC1C93FC4385C8999493E4E2E0FEFEFEFFFFFFFFFFFFFFFFFFFF
      FFFFF3BFB0E98D6FFDC1A1FBB28EF8AA8BFCC2A7FFD9C9FEE8DEFFF7EBFFFEF2
      ECE2E208D7F906E8FF00B4FF01BDFF11ACFE258CF73B7CB6A3A9ADF3EFEDFEFE
      FEFFFFFFFFFFFFFFFFFFFDF9F8FAE2D4FFEBDEFDCCB5F9A480EC7C58EF8968F8
      A789F9AD8FFCBBA5FFDBC994CFE100F9FF18D6FB00B5FF01BCFF12A8FF258FFC
      397BB6B0B5BBFFFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF6EBFFFFFFFFFF
      FBF1CEBCDF8465F4B697FFDCBFFCC2A6FFAE8FFF966B4EA5D100F9FF0AE3FF00
      B6FF00BEFF12A9FF1387FF416D98C6C3C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F8F6F5E6D5CAFFFFF9FBF0E8F5AF94FBB693FFE7D1FFEFDBFFF1DCFFECDDF7D4
      C664C9D700EBFF04CBFF00BAFF02B8FB4AB0DA97A3A96A6A6CB2B2AFFFFFFFFF
      FFFFFFFFFFFFFFFFF7F8F9CECAC8E2D6CFFFF9F4FBBB9FFCB997FFDBBFFFE0C5
      FFDFC4FEE2D1FFECD4E9DBD234CFEE00EDFF10CCF970B4D39896B3405EE81C3C
      D0595D7BEDECE6FFFFFFFFFFFFFFFFFFFFFFFFE7E6E5B3A9A6F0E4DBFFCEB3FE
      C1A4FFDCC2FFDEC3FFD9BDFFDEC2FFDEC2FFDFC4CFDDDD2DDBF56DD3E2AAA8D2
      566BEA2653FF0B42FF1135D06F769DFCF9F5FFFFFFFFFFFFFFFFFFFFFFFFE6E8
      EAC1BAB4E5A58CF2A78EF5CBB8FBE0CCFDE7D5FFE7D2FFE3CEFFE1C4FDF1E7C3
      ACA7A8A0B28999F05E7CF5496BF41D4DFD063FFF0A22A0F4F0EAFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFEBEAE8E3BFAFEB9A7FE4866BE68E74EA9A82F1B9A5FED5
      C4F1EDE1FFEFE6E0886692777C869DEA718DFB3E61F32756FF1445FF6B76AEFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEFEAF7DED6F4C7B8
      EDAB98E79B86EE9272DF876DEA8C70D16F50B1998DB4BAE1798DEE688EFF6E80
      EA7A84D3EBEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFEFCFBFCF4F2FCE7DFF5C7B7F29B7ED99D83E1E1DDF1EFF9
      A2ABEB7B85DEB9B9D2F2F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFEFDFDFFFFFEFFFFFFFFFFFFFFFFFF}
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 12
    OnClick = BitBtn5Click
  end
  object BitBtn1: TBitBtn
    Left = 851
    Top = 604
    Width = 120
    Height = 25
    Caption = 'Export ke Xls DB'
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 13
    OnClick = BitBtn14Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Gambar|*.bmp;*.jpg'
    Left = 1024
    Top = 24
  end
  object EkRTF1: TEkRTF
    OutFile = 'outfile.doc'
    TrueValue = 'True'
    FalseValue = 'False'
    Charset = DEFAULT_CHARSET
    Lang = 0
    Options = [eoGraphicsBinary, eoDotAsColon]
    DisableControls = True
    Left = 3
    Top = 582
    VarDataTypes = {00000000}
  end
  object EkRTF2: TEkRTF
    OutFile = 'outfile.doc'
    TrueValue = 'True'
    FalseValue = 'False'
    Charset = DEFAULT_CHARSET
    Lang = 0
    Options = [eoGraphicsBinary, eoDotAsColon]
    DisableControls = True
    Left = 44
    Top = 588
    VarDataTypes = {00000000}
  end
  object OpenDialog2: TOpenDialog
    Left = 212
    Top = 595
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 1232
    Top = 30
  end
  object ksp: TMyStoredProc
    Left = 390
    Top = 624
  end
  object spDs: TMyStoredProc
    Left = 422
    Top = 624
  end
  object cxlkndflcntrlr1: TcxLookAndFeelController
    NativeStyle = True
    SkinName = 'Darkroom'
    Left = 802
    Top = 6
  end
  object cxlkndflcntrlr2: TcxLookAndFeelController
    NativeStyle = True
    SkinName = 'Darkroom'
    Left = 289
    Top = 586
  end
  object ds1: TMyDataSource
    Left = 575
    Top = 695
  end
  object psc: TMyStoredProc
    Left = 693
    Top = 130
  end
  object dlgOpen1: TOpenDialog
    Left = 904
    Top = 32
  end
  object ds2: TMyDataSource
    Left = 1200
    Top = 456
  end
  object ds3: TMyDataSource
    Left = 1184
    Top = 102
  end
  object ds4: TMyDataSource
    Left = 1184
    Top = 134
  end
  object Sp_EXPORT: TMyStoredProc
    Left = 1104
    Top = 606
  end
  object qba: TMyQuery
    Left = 765
    Top = 146
  end
  object mysphc: TMyStoredProc
    Left = 693
    Top = 74
  end
  object myspds: TMyStoredProc
    Left = 741
    Top = 74
  end
  object exlrprt1: TEXLReport
    About = 'EMS Advanced Excel Report(tm) Component Suite for Delphi(R)'
    Dictionary = <>
    _Version = '1.40'
    Left = 923
    Top = 266
  end
  object dsVerifikator: TMyDataSource
    Left = 1295
    Top = 333
  end
  object dsDokument: TMyDataSource
    Left = 975
    Top = 453
  end
end
