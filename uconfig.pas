unit uconfig;

interface

uses SysUtils, Forms, Graphics, Windows;

procedure apLoadKonfigurasiProgram;
//procedure apSettingMainForm;

var
  apNamaAplikasi: string= 'APOTIK-D26. ver 24.12.21';
  apDirExe, apDirLib,apDirrtf,
  apDirDb, apDirDbImgBooks,
  apdirxls,apdirback,apdirlist,
  apDirDbImgMembers,apDirupdate: string;

  //---hub--- konect
  apIsKoneksiOK: Boolean= False;
  apIsKoneksigagal: Boolean= false;
  apRunAplikasi: Boolean= False;

  FCounter :integer;
  tambah: boolean;
  i1,i2,baris :Integer;
  i,counter,hapus_baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,m1,m2,m3,m4,m5,ppn: String;
  qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
  hrgd,n_t1d,ddisk,n_diskd,n_t2d,n_pajakd,JML_BRG :real;
  a1,a2,a3,a4,a5 ,a6 : real;
  cek_inputan:boolean;


implementation

//uses;

procedure apLoadKonfigurasiProgram;
begin
  apDirExe         := ExtractFilePath(Application.ExeName);
  apdirback        := apDirExe + 'back\';
  apDirrtf         := apDirExe + 'rtf\';
  apDirxls         := apDirExe + 'xls\';
  //apDirDb          := apDirExe + '_db\';
  //apDirDbImgBooks  := apDirDb + 'img\books\';
  //apDirDbImgMembers:= apDirDb + 'img\members\';
end;

{
procedure apSettingMainForm;
begin
  with fmMain do begin
    Color:= RGB(247,239,222);

    // Bar Judul
    with panBar do begin
      imgBarLeft.Picture.LoadFromFile(apDirLib + apBarLeftBmp);
      imgBarMid.Picture.LoadFromFile(apDirLib + apBarMidBmp);
      imgBarRight.Picture.LoadFromFile(apDirLib + apBarRightBmp);

      lblTanggal.Caption:= FormatDateTime('dddd, dd mmmm yyyy', Date);
    end;

    if brSQLOpen('select Nilai from konfigurasi where Item=''TampilkanJudulAplikasi''') then
      apIsShowJudulApp:= DM.qrTools.Fields[0].AsString='Y';
    panBar.Visible:= apIsShowJudulApp;

    if brSQLOpen('select Nilai from konfigurasi where Item=''TampilkanStatusBar''') then
      apIsShowStatusBar:= DM.qrTools.Fields[0].AsString='Y';
    StatusBar1.Visible:= apIsShowStatusBar;
  end;

  // Buka setting nama perpustakaan, alamat dll
  with DM.qrSerbaGuna do begin
    Close;
    SQL.Text:= 'select * from sc_perpus where Perpus_ID=1';
    Open;

    sPerpustakaan_Nama    := FieldByName('Nama_Perpus').AsString;
    sPerpustakaan_Alamat  := FieldByName('Alamat_Perpus').AsString;
    sPerpustakaan_TelpFax := 'Telp. '+FieldByName('Telp_Perpus').AsString +
                             ' / Fax'+ FieldByName('Fax_Perpus').AsString;
    sPerpustakaan_Pimpinan:= FieldByName('Pimpinan_Perpus').AsString;

    Close;
  end;
end;
 }
end.