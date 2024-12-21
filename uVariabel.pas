unit uVariabel;

interface
uses
   SysUtils, Forms, Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
   dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxStatusBarPainter,
   dxStatusBar,  dxNavBarCollns, cxClasses,
   dxNavBarBase, dxNavBar, dxSkinscxPCPainter, cxPC, cxSplitter;

var
   RootPath : String;
   TJudul,TPerusahaan,TKota,TAlamatPerusahaan,TTelpPerusahaan,TFaxPerusahaan : String;
   TCETAKSTR,TCETAKLREG : String; // inisialisasi cetak struk bank & label register
   TISSETTING : String; // inisaialisasi setting awal
   vIsCariLangsung : sTRING; // Cari langsung pada saat print , 0 dengan 2 kondisi, 1=dengan 1 kondisi
   tISTIMER : String;
   tWaktu : String;
   IMenit : Int64;
   tToleransi : Real;
   vLokasiFont,vNamaFileFont,vNamaFont,vURLFont,vFolderHapus,vNamaFile,vNamaDirFontInstall : String; // lokasi font pertama kali di download dari server

   tSNHDD,TReport,vPassword : String;
   tabSheet : array[0..500] of TcxTabSheet;
   TTglSrvSkr : TDateTime;
   fFormAktif : TForm;
   IsConect : Boolean;
   bAction : Boolean;
   vRoleID : String;
   tKDBarang,tNamaBarang,tKDSatuan,tNamaSatuan : String;
   isFormQuery : String;
   vLokasiFileJPEG : String;
   TLIMITDATA : String;
   isTreaceLog : String;

   TPRINTER_CF,TPRINTER_BPKB : String;
   TOnLineCF : String;
   tTglPembuatanLaporan : String;
   tIsTampilLapEdit : String; // edit laporan  = 1; tampil laporan = 0
   vDirFileEXEL,vNamaFileExel : String;

   vNamaProp : String; // kode propinsi
   vKodeProp : integer;

   // Report
   tHeader, tNoDok, tTglDok, tKetDok, tNoSPMM  : String;
   tHari, tTanggal, tBulan, tTahun, tNoSPPM, tTglSPPM, tNamaMaterial, tNoAwal, tNoAkhir,
   tJumlah, tSatuan : String;
   isKeyBarcode : String;  // 0=BARCODE BERKAS; 1=NO
   tAktifasi,tUUIDKey : String;
   tURLUpdate : String;
   tThreadUpdate,tBufferUpdate : integer;
   tNoAwalMLD,tNoAkhirMLD : String;


implementation

end.
