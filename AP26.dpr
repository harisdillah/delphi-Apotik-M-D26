program AP26;

uses
  Forms,
  MeeXL in 'MeeXL.pas',
  UnCarisp2 in 'UnCarisp2.pas' {FCarisp2},
  UnMenu in 'UnMenu.pas' {FMenu},
  UnModul in 'UnModul.pas' {DmModul: TDataModule},
  UBarangFxMasuk in 'UBarangFxMasuk.pas' {FrmBarangfx},
  uCariBarang in 'uCariBarang.pas' {fcariBarang},
  uMBarang24 in 'uMBarang24.pas' {FrmBrg24},
  unCariJabatan in 'unCariJabatan.pas' {fcariJabatan},
  uTest in 'uTest.pas' {FrmTest},
  uglobal in 'uglobal.pas',
  UnBast in 'UnBast.pas' {FrmBast},
  Un_detail in 'Un_detail.pas' {Frm_detail},
  ULabel in 'ULabel.pas' {FrmLabel},
  uCariPetugas in 'uCariPetugas.pas' {fcariPetugas},
  UF_setting in 'UF_setting.pas',
  UF_terbilang in 'UF_terbilang.pas',
  uMain in 'uMain.pas' {Form1},
  umMain in 'umMain.pas' {mMain: TDataModule},
  UCekVersiAplikasi in 'UCekVersiAplikasi.pas' {FCekVersiUpdate},
  Un_settingDB in 'Un_settingDB.pas' {frm_setting},
  uLogin in 'uLogin.pas' {Flogin},
  Ubidang in 'Ubidang.pas' {FrmBidang},
  UKeluar in 'UKeluar.pas' {FrmKeluar},
  uconfig in 'uconfig.pas',
  UBarangAktif in 'UBarangAktif.pas' {FrmAktif},
  uVariabel in 'uVariabel.pas',
  nuest in 'nuest.pas',
  UFunctions in 'UFunctions.pas',
  UAwalTahun in 'UAwalTahun.pas' {FrmAwal},
  UImportMasterbarang in 'UImportMasterbarang.pas' {FrmImportMasterBrg},
  U_Cetak in 'U_Cetak.pas',
  UnCarisp in 'UnCarisp.pas' {FCarisp},
  UF_dbsql in 'UF_dbsql.pas',
  uMasterDokter in 'uMasterDokter.pas' {frmDokter},
  UnMasterDokter in 'UnMasterDokter.pas' {FrmMasterDokter},
  UnPenerimaanResep in 'UnPenerimaanResep.pas' {FrmPenerimaanResep},
  ULaporan in 'ULaporan.pas' {FrmLaporan},
  UnKonsiyansi in 'UnKonsiyansi.pas' {FrmKonsiyansi},
  UnPembelianBrg in 'UnPembelianBrg.pas' {FrmPembelian},
  UnPenjualan in 'UnPenjualan.pas' {FrmPenjualan},
  UnOP in 'UnOP.pas' {FrmOp},
  UBayar in 'UBayar.pas' {frmBayar},
  UnReturJual in 'UnReturJual.pas' {FrmReturJual},
  UncekSQL in 'UncekSQL.pas' {FrmCekSQL},
  UnOpname in 'UnOpname.pas' {FrmOpname},
  UnReturKonsiyansi in 'UnReturKonsiyansi.pas' {FrmReturKonsiyansi},
  Un_ganti_barang in 'Un_ganti_barang.pas' {frm_ganti_brg},
  Un_pesanan in 'Un_pesanan.pas' {frm_pesanan};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'apotik2.4';
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TDmModul, DmModul);
  Application.CreateForm(TFCarisp, FCarisp);
  Application.CreateForm(TFrmCekSQL, FrmCekSQL);
  Application.Run;
end.
