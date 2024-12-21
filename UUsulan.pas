unit UUsulan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Grids, DBGrids, CRGrid,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel, ComCtrls, Buttons, StdCtrls,
  ExtCtrls, AdvObj, BaseGrid, AdvGrid, DB, MemDS, DBAccess, MyAccess,ShellAPI,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, AdvUtil,nuest,
  ekbasereport, ekrtf;

type
  TFrmUsulan = class(TForm)
    Panel2: TPanel;
    dtp_awal: TDateTimePicker;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    dtp_akhir: TDateTimePicker;
    btcari: TBitBtn;
    MyStoredProc1: TMyStoredProc;
    Lbl_nm_jml: TLabel;
    cxCariNama: TcxTextEdit;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    PnOperasi: TPanel;
    tmr1: TTimer;
    Timer1: TTimer;
    Timer2: TTimer;
    cxlbljam: TcxLabel;
    Grid1: TAdvStringGrid;
    lst1: TListBox;
    Label4: TLabel;
    cboBidang: TcxLookupComboBox;
    ds1: TMyDataSource;
    Grid2: TAdvStringGrid;
    cxLabel7: TcxLabel;
    cxNoUsul: TcxTextEdit;
    dtpTglUsul: TDateTimePicker;
    cxLabel9: TcxLabel;
    Label2: TLabel;
    btnsave: TSpeedButton;
    btnBtnHapus: TSpeedButton;
    lbl2: TLabel;
    edt_jml_barang: TcxTextEdit;
    btn2: TSpeedButton;
    btnTambahUsulan: TSpeedButton;
    btnBtnBaru: TSpeedButton;
    btnBtnUbah1: TSpeedButton;
    QCari: TMyQuery;
    ds6: TMyDataSource;
    SpeedButton1: TSpeedButton;
    spHc: TMyStoredProc;
    spDs: TMyStoredProc;
    ekrtf2: TEkRTF;
    SpeedButton2: TSpeedButton;
    procedure btcariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure Grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure eKodeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer2Timer(Sender: TObject);
    procedure Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure BitBtn2Click(Sender: TObject);

    procedure Grid1CheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
    procedure cxCariNamaKeyPress(Sender: TObject; var Key: Char);
    procedure Grid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Grid2GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid2GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure btnTambahUsulanClick(Sender: TObject);
    procedure deleterow(mg:TStringGrid;ARow:integer);
    procedure btn2Click(Sender: TObject);
    procedure btnBtnBaruClick(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure btnBtnUbah1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnBtnHapusClick(Sender: TObject);
  private
    { Private declarations }
    Procedure KosongTex(Kunci:Boolean);
    Procedure aturgrid3;
    Procedure Aturgrid;
    Procedure Tampil_combo_bidang;
    procedure hapus_grid;
    procedure Total;
    Function GetNoUsul:string;
    Function LastUsul(s:string):string;
    procedure tampildata;
    procedure tampildata_stok;
    procedure buatNoGrid;

  public
    { Public declarations }


  end;

var
  FrmUsulan: TFrmUsulan;
  i,counter,hapus_baris,i1,i2,baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	fileku,sql,sql1,sql2,sql3,sql4,m1,m2,m3,m4,m5,ppn: String;
  hrgd,n_t1d,ddisk,n_diskd,n_t2d,n_pajakd,JML_BRG :real;

implementation

uses UnModul,UFunctions,UF_dbsql, UnCarisp,UnCarisp2, UnMenu,uconfig;

{$R *.dfm}

procedure TFrmUsulan.buatNoGrid;
begin
 for i1:=1 to Grid2.RowCount-1 do begin
    Grid2.Cells[0,i1]:=IntToStr(i1);
    Grid2.Cells[1,i1]:=IntToStr(i1);
  end;
end;


procedure TFrmUsulan.tampildata_stok;
var
  spdataAwal : TMyStoredProc;
  prcpeg1: TMyStoredProc;
  i, counter: Integer;
  databidang:string;

begin

// DBlookup databidang
   if cboBidang.Text = '' then
  databidang := ''
  else
  databidang :=  cboBidang.EditValue;



    prcpeg1 := TMyStoredProc.Create(nil);
    prcpeg1.Connection := DmModul.con1;

    try

      {
      prcpeg1.Close;
      prcpeg1.StoredProcName := 'SP_peg_aktif';
      prcpeg1.PrepareSQL;
      prcpeg1.ParamByName('cari').AsString := cx_cari_pegawai.Text;
      prcpeg1.Execute;
       }

    prcpeg1.Close;
    prcpeg1.StoredProcName := 'SP_StokBarangTgl';
    prcpeg1.PrepareSQL;
    prcpeg1.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key ba
    prcpeg1.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
    prcpeg1.ParamByName('cariGudang').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    prcpeg1.ParamByName('cariBidang').AsString := databidang;
    prcpeg1.ParamByName('cariNamaBarang').AsString := cxCariNama.text;
    prcpeg1.Execute;
    Lbl_nm_jml.Caption := inttostr(prcpeg1.RecordCount) +' record ' + FormatDateTime('yyyy-mm-dd',dtp_awal.date) + ' s/d ' + FormatDateTime('yyyy-mm-dd',dtp_akhir.date);



      if prcpeg1.Eof then
      begin
        ShowMessage('data tidak ada...');
        // Clear
        Grid1.ClearRows(1, Grid1.RowCount - 1);
        Grid1.RowCount := 2;
        exit;
      end;
      for i := 1 to Grid1.RowCount - 1 do
      begin
        Grid1.Cells[0, i] := '';
        Grid1.Cells[1, i] := '';
        Grid1.Cells[2, i] := '';
        Grid1.Cells[3, i] := '';
        Grid1.Cells[4, i] := '';
        Grid1.Cells[5, i] := '';
        Grid1.Cells[6, i] := '';
      end;
      // isi grid
      counter := 0;
      if prcpeg1.RecordCount <= 1 then
        Grid1.RowCount := 2
      else
        Grid1.RowCount := prcpeg1.RecordCount + 1;
      while not prcpeg1.Eof do
      begin
        Inc(counter);
        // cek
        Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
          Grid1.AddCheckBox(1, i, false, false);

        Grid1.Cells[0, counter] := IntToStr(counter);
        Grid1.Cells[1, counter] := prcpeg1.FieldByName('kode_brg').AsString; // No.
        Grid1.Cells[2, counter] := prcpeg1.FieldByName('nama_barang').AsString;
        Grid1.Cells[3, counter] := prcpeg1.FieldByName('satuan').AsString;
        Grid1.Cells[4, counter] := prcpeg1.FieldByName('aktif').AsString;
        Grid1.Cells[5, counter] := prcpeg1.FieldByName('stok').AsString;
        Grid1.Cells[6, counter] := prcpeg1.FieldByName('bid_nama').AsString;
        {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
        prcpeg1.Next;
      end;
      // Total;
    finally
      prcpeg1.Close;
    end;

end;


Function TFrmUsulan.LastUsul(s:string):string;
begin
QCari.Close;
QCari.Connection:=DmModul.con1;
QCari.SQL.text:='SELECT MAX(no_trans_ug) AS NOTA'+
     ' FROM h_usulangudang'+
     ' WHERE no_trans_ug LIKE '+quotedstr(s);
QCari.Open;
if not QCari.IsEmpty then
result:=QCari.fieldbyname('NOTA').AsString
else
result:='';
end;



 procedure TFrmUsulan.SpeedButton1Click(Sender: TObject);
 var
    infile,OutFile : string;
begin
try
  //Sp_header
    spHc.Connection := DmModul.con1;
    spHc.Close;
    spHc.StoredProcName := 'SP_cetak_UsulanHeader_sp';
    spHc.PrepareSQL;
    spHc.ParamByName('cari').AsString := cxNoUsul.text; //key ba
    spHc.Open;
    //Sp_detail:
    spDs.Connection := DmModul.con1;
    spDs.Close;
    spDs.StoredProcName := 'Sp_cetak_detailUsulan';
    spDs.PrepareSQL;
    spDs.ParamByName('cari').AsString := cxNoUsul.text; //key ba
    spDs.Open;

    Screen.cursor := crsqlWait;

    With ekrtf2 do Begin
      //format tanggal
      ClearVars;
      CreateVar('fullformat','dd mmmm yyyy');
      CreateVar('fP','dd - mm - yyyy');
      CreateVar('fh','dddd');
      CreateVar('fd','dddd');
      CreateVar('fbln','mmmmm');
      CreateVar('ftgl_time','yyyy/mm/dd hh:nn:ss');


//    //lbl_tunggu.Caption := 'Tunggu Proses...';
//    //    Label5.Caption := 'cetak Sp Medis';
//        infile:=apDirrtf+'\Usulan\'+'usul.rtf';
//        fileku:= apDirExe + '\cetak\usulan\'+cxNoUsul.Text+'-Usulan'+'.doc';
//        OutFile:= apDirExe + '\cetak\usulan\'+cxNoUsul.Text+'-Usulan'+'.doc';
//        //proses data
//       if FileExists(fileku) then
//        begin
//            if MessageDlg('File '+fileku+' sudah ada , akan ditindas ?', mtconfirmation, [mbyes, mbno], 0) = mryes then
//            begin
//                trs:=true;
//                DeleteFile(fileku);
//            end else trs:=false;
//        end else trs:=true;
//        Screen.cursor := crDefault;
//        if trs then
//        begin
//            dir:=fileku;
//            Try
//              //PROSES DATA
//              ExecuteOpen([spHc,spDs],SW_SHOW);
////              lbl_tunggu.Caption := 'Silakan Cetak ...';
//              Screen.cursor := crDefault;
//
//            Except
//            ShowMessage('Cetak Gagal' + dir);
//            Screen.cursor := crDefault;
//            End;
//        end;

       //ExecuteOpen([spHc,spDs],SW_SHOW);

    end;
finally
  spHc.Close;
    spDs.Close;
end;
end;

procedure TFrmUsulan.SpeedButton2Click(Sender: TObject);
var
  tgl1,tgl2,ht1,cari:string;
begin
  //tgl1 := FormatDateTime('yyyy/mm/dd',dtp_buat.Date);
  //tgl2 := FormatDateTime('yyyy/mm/dd',dtp_akhir.Date);
  cari := cxNoUsul.text;
  ht1:='http://192.168.30.7:88/cetak_delphi/cetak/cetak_usulan.php?cari='+cari;
  ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

end;

Function TFrmUsulan.GetNoUsul:string;
var nomor,faktur:string;
NO:integer;
begin
// nomor:='';
 nomor:=LastUsul('UG'+formatdatetime('yymmdd',now())+'%');
 if nomor='' then
 faktur:='UG'+formatdatetime('yymmdd',now())+'-0001'
 else
 begin
   nomor:=copy(nomor,10,4);
   no:=strtoint(nomor);
   nomor:='0000'+inttostr(no+1);
   nomor:=copy(nomor,length(nomor)-3,4);
   faktur:='UG'+formatdatetime('yymmdd',now())+'-'+nomor;
 end;
result:=faktur;
end;



procedure TFrmUsulan.tampildata;
var
  spdataEdit : TMyStoredProc;
  qd3: TMyStoredProc;
  q2,q3,qd2 : TMyQuery;
  i,id2, counter: Integer;
  databidang:string;
  stok_sekarang : real;



begin


q2 := TMyQuery.Create(nil);
    q2.Connection := DmModul.con1;
  try
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text :='select * from h_usulangudang where no_trans_ug='+QuotedStr(cxNoUsul.Text)+'';
  q2.Open;

  if q2.RecordCount > 0 then
  begin



  if PnOperasi.Caption='Ubah Data' then
   begin
    //

    end;
    KosongTex(True);
    cxNoUsul.Text:=q2.FieldByName('no_trans_ug').AsString;
    dtpTglUsul.date:=q2.FieldByName('tgl_usulan').AsDateTime;

  end
  else
    begin
    ShowMessage( 'data kosong Usul / Tidak ADA : ' + cxNoUsul.Text );
    end;

  finally
    q2.Close;
    q2.Free;
  end;

  //tampil detail
  qd2 := TMyQuery.Create(nil);
  qd2.Connection := DmModul.con1;

  try
    qd2.Active := false;
    qd2.SQL.Clear;
    qd2.SQL.Text :='select * from detail_UsulGudang WHERE no_usulgd like'+
    QuotedStr(cxNoUsul.Text)+' order by no';
    qd2.Open;

    if qd2.Eof then
    begin
    Total;
    //Edtotal.Text := '0';
    Exit;
    end;

    for id2:=1 to Grid2.RowCount-1 do begin
        Grid2.Cells[0,id2]:='';
        Grid2.Cells[1,id2]:='';
        Grid2.Cells[2,id2]:='';
        Grid2.Cells[3,id2]:='';
        Grid2.Cells[4,id2]:='';
        Grid2.Cells[5,id2]:='';
        Grid2.Cells[6,id2]:='';
    end;

    counter:=0;
    if  qd2.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= qd2.RecordCount+1;


	//no_transaksi,no,kode_brg,nama,qty,satuan,harga,total
  //qd3 := TMyStoredProc.Create(nil);
  //qd3.Connection := DmModul.con1;

    while not qd2.Eof do begin
          Inc(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter);
          Grid2.Cells[1,counter]:=dataRow(qd2.FieldByName('no'),'');
          Grid2.Cells[2,counter]:=dataRow(qd2.FieldByName('kode_brg'),'-');
          Grid2.Cells[3,counter]:=dataRow(qd2.FieldByName('nama'),'-');
          Grid2.Cells[4,counter]:=dataRow(qd2.FieldByName('jumlah'),'0');
          Grid2.Cells[5,counter]:=dataRow(qd2.FieldByName('satuan'),'-');
          qd2.Next;

          //ambil stok
       {
          qd3.Close;
          qd3.StoredProcName := 'sp_stok' ;
          qd3.PrepareSQL;
          qd3.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key stok Awal Tahun
          qd3.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key Tgl Akhir
          qd3.ParamByName('cari').AsString := dataRow(qd2.FieldByName('kode_brg'),'-');
          qd3.Open;

          // Grid2.Cells[6,counter]:=dataRow(qd3.FieldByName('stok'),'-');
          // data ambil dari permintaan
          //jml:=StrToFloat(Grid1.Cells[4,counter]);
          //stok_sekarang:=StrToFloat(Grid2.Cells[6,counter]);//stok sekarang
          //stok_mutasi:=stok_sekarang-jml;
          //Grid1.Cells[7,counter]:=FloatToStr(stok_sekarang); //stok_mutasi
          qd2.Next;
          }

    end;
   Total;

  finally
    qd2.Close;
    qd2.Free;
  end;
  //hitung_tran;


end;

procedure TFrmUsulan.deleterow(mg:TStringGrid;ARow:integer);
var i,j,k:integer;
begin
        with mg do begin
                for i:=ARow to RowCount-1 do
                        for j:=0 to ColCount-1 do
                            Cells[j,i]:=Cells[j,i+1];

        RowCount:=RowCount-1;
        for k:=1 to RowCount-1 do
                Cells[0,k]:=IntToStr(k);
        end;
end;



procedure TFrmUsulan.hapus_grid;
begin
  if (cek_baris='') then begin
    ShowMessage('Silahkan pilih grid di hapus');
    exit;
  end else
      if MessageDlg('Hapus item kode: '+Grid2.Cells[3,hapus_baris]+' ?',mtConfirmation,mbOKCancel,0)=mrok then begin
         deleterow(Grid2,hapus_baris);
         Total;
         cek_baris:='';
         counter:=counter-1;
         edt_jml_barang.text := IntToStr(counter);
         buatNoGrid;
end
else ShowMessage('Grid Belum di Pilih');
end;

procedure TFrmUsulan.Total;
begin
JML_BRG:=0;
   for i:=1 to Grid2.RowCount-1 do begin
        JML_BRG:=JML_BRG+strtofloat(Grid2.Cells[4,i]);
   end;
   edt_jml_barang.Text:=floattostr(JML_BRG);
end;

 Procedure TFrmUsulan.Tampil_combo_bidang;
 var
 q2 : TMyQuery;

begin
//QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
  q2 := TMyQuery.Create(nil);
  try
  q2.Connection := DmModul.con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text := 'Select * from ref_bidang'+
   //' where gudang = ' + QuotedStr(''+FMenu.dxStatusBar1.Panels[2].Text+'')+
   ' where aktif = ' + QuotedStr('1')+
   ' order by kd_bidang';
  //q2.SQL.Text := 'Select nip, CONCAT(gol, " , ", nm_gol) as nm  from r_gol';
  q2.Open;
    if q2.RecordCount > 0 then
  begin
  //lbl1.Caption:=q2.FieldByName('nm_gol').AsString
  ds1.DataSet := q2;
  cboBidang.Properties.ListSource := ds1;
  cboBidang.Properties.ListOptions.ShowHeader := False;
  cboBidang.Properties.ListFieldNames := 'bid_nama';
  cboBidang.Properties.KeyFieldNames := 'kd_bidang';
  end;
   finally
  //  q2.Close;
  //  q2.Free;
  end;

 end;

 Procedure TFrmUsulan.KosongTex(Kunci:Boolean);
Begin
  if Kunci=True then
  begin
  cxNoUsul.Text  := '';
  edt_jml_barang.Text := '0';
  aturgrid3;
  cxNoUsul.Text:=GetNoUsul;
 //cxcari.SetFocus;
 end;
end;

Procedure TFrmUsulan.aturgrid3;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  Grid2.ColCount:=7;
  Grid2.RowCount:=1;
  Grid2.FixedRowAlways := True;
  Grid2.Cells[0,0]:='No';
  Grid2.Cells[1,0]:='No urut';
  Grid2.Cells[2,0]:='Kode';
  Grid2.Cells[3,0]:='Nama';
  Grid2.Cells[4,0]:='Jumlah';
  Grid2.Cells[5,0]:='Satuan';
  Grid2.Cells[6,0]:='Stok';
  Grid2.ColWidths[0]:=30;
  Grid2.ColWidths[1]:=30;
  Grid2.ColWidths[2]:=80;
  Grid2.ColWidths[3]:=350;
  Grid2.ColWidths[4]:=90;
  Grid2.ColWidths[5]:=90;
  Grid2.ColWidths[6]:=90;
  //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);
  //rata kanan
  //RightEdit(ed_dtotal);

end;


Procedure TFrmUsulan.Aturgrid;
begin
  counter:=0;
  hapus_baris:=0;

  Grid1.ColCount:=7;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;
  Grid1.Cells[0, 0] := 'No.';
    Grid1.Cells[1, 0] := 'Kode';
    Grid1.Cells[2, 0] := 'Nama';
    Grid1.Cells[3, 0] := 'Satuan';
    Grid1.Cells[4, 0] := 'Aktif';
    Grid1.Cells[5, 0] := 'stok';
    Grid1.Cells[6, 0] := 'Bidang';

    Grid1.ColWidths[0] := 30;
    Grid1.ColWidths[1] := 90; // 1
    Grid1.ColWidths[2] := 300;
    Grid1.ColWidths[3] := 120;
    Grid1.ColWidths[4] := 40;
    Grid1.ColWidths[5] := 40;
    Grid1.ColWidths[6] := 120;

end;


procedure TFrmUsulan.BitBtn2Click(Sender: TObject);
var
  ht,kodecari:string;
    i: Integer;
    State: Boolean;
    sql: string;
begin
if MessageDlg('Data dengan'+#13+#10+' Akan Di Proses'+#13+#10+
        'tidak aktif , ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
  lst1.Items.Clear;
  for i := 1 to Grid1.RowCount - 1 do
  begin
    if grid1.GetCheckBoxState(1, i, state) then
    begin
      if state then
      begin
        try

        Grid1.SetCheckBoxState(1, i, false);
        sql := 'update m_barang set aktif = 0 where kode_brg = '+QuotedStr(grid1.Cells[1, i]);
        ExecSQL1(sql);
        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i]+'-'+grid1.Cells[4, i]+ ' sukses ');
      except
        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i] + ' gagal ' );
        end;
      end;
    end;
  end;
  Grid1.Invalidate;
  end;
  Tampildata;
end;

procedure TFrmUsulan.btcariClick(Sender: TObject);
begin
tampildata_stok;
end;

procedure TFrmUsulan.btn2Click(Sender: TObject);
begin
hapus_grid;
end;

procedure TFrmUsulan.btnBtnBaruClick(Sender: TObject);
begin
//GetNoUsul;
cxNoUsul.Text:=GetNoUsul;
PnOperasi.Caption := 'Tambah Data';
aturgrid3;
//btnnoreg.Text:=GetNoBBK;
//btnnoreg.Enabled:=False;
//KosongTex(True);
cxNoUsul.SetFocus;



end;

procedure TFrmUsulan.btnBtnHapusClick(Sender: TObject);
begin
PnOperasi.Caption := 'Hapus Data';
end;

procedure TFrmUsulan.btnBtnUbah1Click(Sender: TObject);
begin
FCarisp2:=TFCarisp2.Create(Application);
  FCarisp2.Label4.Caption :='SP_AmbilUsulGudang';
  FCarisp2.EGudang.Text := FMenu.dxStatusBar1.Panels[2].Text;
  LsvSetCol('No|tgl.|No. Usul|',
  '240|120|120|',FCarisp2.LsCari);
  FCarisp2.LsField.Items.Clear;
  FCarisp2.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp2.LsField.Items.Add('no_trans_ug');
  FCarisp2.LsField.Items.Add('tgl_usulan');
  FCarisp2.LsField.Items.Add('no_usulan');
  //FCarisp2.LsField.Items.Add('NamaPerusahaan');
  //FCarisp2.LsField.Items.Add('nama_gudang');
  //FCarisp.LsField.Items.Add('N_t1');
  FCarisp2.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    cxNoUsul.Text:=nFieldCari[0];
    cxNoUsul.Style.Color:=clLtGray;
    TampilData;
    PnOperasi.Caption := 'Ubah Data';
    cxNoUsul.Style.Color:=clcxLightGray;
    cxNoUsul.SetFocus;
  end;
end;

procedure TFrmUsulan.btnsaveClick(Sender: TObject);
var
// simpan cbb
//cbogudang,cbopetugas:string;
//selisih :Real;
sp_usul : TMyQuery;
//qv : TMyQuery;

begin


//Nomor Baru Grid
    for i1:=1 to Grid2.RowCount-1 do begin
    Grid2.Cells[0,i1]:=IntToStr(i1);
    Grid2.Cells[1,i1]:=IntToStr(i1);
  end;
  //Simpan data
  sp_usul := TMyQuery.Create(nil);

  if MessageDlg('Data dengan'+#13+#10+cxNoUsul.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

   //hitung_tran;

   If PnOperasi.Caption='Tambah Data' then
   begin
	    //validasi
      //if Validasi=False then exit;

    sp_usul.Connection := DmModul.con1;
    sp_usul.SQL.Clear;
    sp_usul.SQL.Text := 'Select * from h_usulangudang where no_trans_ug = '+QuotedStr(cxNoUsul.Text)+'';
    sp_usul.Open;
    if sp_usul.RecordCount > 0 then
      begin

        if MessageDlg('Kode Sudah ada'+#13+#10+cxNoUsul.Text+#13+#10+
        'Buat Nomor Baru (Register), ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       cxNoUsul.Text:=GetNoUsul;

       end;
        exit;
      end;
      try
         sql1 := 'insert into h_usulangudang (no_trans_ug,tgl_create,tgl_usulan'+
        ') Values('+
        QuotedStr(cxNoUsul.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglUsul.Date))+')';
        //QuotedStr(cxNoJalan.Text)+')';
        ExecSQL1(sql1);
     except
        ShowMessage('Simpan baru gagal :'+ cxNoUsul.Text);
        raise;
      end;


      //simpan Detail
      try
        for i1:=1 to Grid2.RowCount-1 do begin
             sql2:='INSERT INTO detail_UsulGudang (no_usulgd,tgl_create,tgl_usulgd,no,kode_brg,nama,jumlah,satuan)'+
             ' Values('+
             QuotedStr(cxNoUsul.Text)+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglUsul.Date))+','+
             QuotedStr(Grid2.Cells[1,i1])+','+
             QuotedStr(Grid2.Cells[2,i1])+','+
             QuotedStr(Grid2.Cells[3,i1])+','+
             //QuotedStr(Grid2.Cells[4,i1])+','+
             QuotedStr(RealFormat(StrToFloat(Grid2.Cells[4,i1])))+','+// jumlah 0,00
             QuotedStr(Grid2.Cells[5,i1])+')';
             ExecSQL1(sql2);
             end;


    // sql3 :='Update h_penjualan set terbilang= tcase(terbilang)'+
    //         ' where no_transaksi='+QuotedStr(btnnoreg.Text);
    //    ExecSQL1(sql3);

     //   m5 := 'Ubah Nama OK';
     KosongTex(True);
     //--cetak
     //  bayar_tran;
     ShowMessage('Simpan Detail ok :'+ cxNoUsul.Text);
     except
      ShowMessage('Simpan Detail gagal ok :'+ cxNoUsul.Text);
        //m1 := 'simpan Baru Gagal';
        raise;
      end;



   end    //end tambah

   else if PnOperasi.Caption='Ubah Data' then
   begin
        //if Validasi=False then exit;
        try
      // ubah
      sql1 :='Update h_usulangudang set no_trans_ug='+ QuotedStr(cxNoUsul.Text)+
      ',tgl_usulan='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglUsul.Date))+
      ' where no_trans_ug='+QuotedStr(cxNoUsul.Text);
      ExecSQL1(sql1);

      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ cxNoUsul.Text);
        raise;
      end;

      //simpan Detail
       sql:= 'delete from detail_UsulGudang'+
        ' where no_usulgd='+QuotedStr(cxNoUsul.Text);
        ExecSQL1(sql);

         try

                for i1:=1 to Grid2.RowCount-1 do begin
              sql2:='INSERT INTO detail_UsulGudang (no_usulgd,tgl_create,tgl_usulgd,no,kode_brg,nama,jumlah,satuan)'+
             ' Values('+
             QuotedStr(cxNoUsul.Text)+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtpTglUsul.Date))+','+
             QuotedStr(Grid2.Cells[1,i1])+','+
             QuotedStr(Grid2.Cells[2,i1])+','+
             QuotedStr(Grid2.Cells[3,i1])+','+
             //QuotedStr(Grid2.Cells[4,i1])+','+
             QuotedStr(RealFormat(StrToFloat(Grid2.Cells[4,i1])))+','+// jumlah 0,00
             QuotedStr(Grid2.Cells[5,i1])+')';
             ExecSQL1(sql2);
             end;
     //--cetak
    // bayar_tran;
           ShowMessage('Simpan Perubahan ok :'+ cxNoUsul.Text);
           KosongTex(True);
     except
        raise;
      end;

       //KosongTex(True);
   end //end Update
   else if PnOperasi.Caption='Hapus Data' then
   begin
      if MessageDlg('Data dengan'+#13+#10+cxNoUsul.Text+#13+#10+
        'akan di Hapus, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
        begin
      try
      // delete
         SQL := 'delete from h_usulangudang where no_trans_ug='+
        QuotedStr(cxNoUsul.Text)+'';
        ExecSQL1(sql); //Hapus

        sql:= 'delete from detail_UsulGudang'+
        ' where no_usulgd='+QuotedStr(cxNoUsul.Text);
        ExecSQL1(sql);


        ShowMessage('Hapus / :'+ cxNoUsul.Text);
        //KosongTex(True);
        //AktifControl(Self,PnInput,False);
      except
             ShowMessage('Hapus Usul Gudang Gagal :'+ cxNoUsul.Text);
        raise;
      end;
        end;
    end; //selesai Proses
      KosongTex(True);

end; //end tanya



end;

procedure TFrmUsulan.btnTambahUsulanClick(Sender: TObject);
var
  ht,kodecari:string;
    i: Integer;
    State: Boolean;
    sql: string;
begin

if MessageDlg('Data dengan'+#13+#10+' Akan Di Proses'+#13+#10+
        'Pilih Usulan , ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
  lst1.Items.Clear;
  for i := 1 to Grid1.RowCount - 1 do
  begin
    if grid1.GetCheckBoxState(1, i, state) then
    begin
      if state then
      begin
        try

        Grid1.SetCheckBoxState(1, i, false);
        {
        sql := 'update m_barang set aktif = 1 where kode_brg = '+QuotedStr(grid1.Cells[1, i]);
        ExecSQL1(sql);
         }

         inc(counter);
          Grid2.RowCount:=Grid2.RowCount + 1;
          Grid2.Cells[0,Grid2.RowCount-1]:=IntToStr(counter);
          Grid2.Cells[1,Grid2.RowCount-1]:=IntToStr(counter);
          Grid2.Cells[2,Grid2.RowCount-1]:=grid1.Cells[1, i];//kode
          Grid2.Cells[3,Grid2.RowCount-1]:=grid1.Cells[2, i];//nama
          Grid2.Cells[4,Grid2.RowCount-1]:='0';//jumlah
          Grid2.Cells[5,Grid2.RowCount-1]:=grid1.Cells[3, i];//satuan
          //Grid2.Cells[6,Grid2.RowCount-1]:=grid1.Cells[5, i];//Stok
          Total;
        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i]+'-'+grid1.Cells[3, i]+ ' sukses ' );
        //Tampildata;
        except
        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i] + 'gagal ' );
        end;
      end;
    end;
  end;
  Grid1.Invalidate;
  end;
   tampildata_stok;

end;

procedure TFrmUsulan.cxCariNamaKeyPress(Sender: TObject; var Key: Char);
begin
if(Key=#13)then
	begin
    try
      tampildata();
    finally
    //cxLookupbrg.SetFocus;
    //cxLookupbrg.OnClick(Sender);
    end;
	end;
end;

procedure TFrmUsulan.eKodeChange(Sender: TObject);
var
    q1 : TMyQuery;
begin
 {

 q1 := TMyQuery.Create(nil);
    q1.Connection := DmModul.con1;

    try
      q1.Active := false;
      q1.SQL.Clear;
      q1.SQL.Text :='select * from detail_awal_tutup where kode_brg='+QuotedStr(eKode.Text)+'';
      q1.Open;

       //tanggal SPK
    if VarIsNull(q1['tgl_tutup']) then
      begin
    DtpTanggal.ShowCheckbox :=true;
    DtpTanggal.Checked := false;
    DtpTanggal.Color := clred;
    end
   else
      begin
      DtpTanggal.Date:=q1.FieldByName('tgl_tutup').AsDateTime;
      DtpTanggal.Color := clMenu;
    end;


    //DtpTanggal.date:=q1.FieldByName('tgl_tutup').AsDateTime;


    finally
    q1.Close;
    q1.Free;
   end;
  }

end;

procedure TFrmUsulan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FrmUsulan:=nil;
Action:=caFree;
end;

procedure TFrmUsulan.FormCreate(Sender: TObject);
  var
  qsetting : TMyQuery;
begin

  qsetting := TMyQuery.Create(nil);
  qsetting.Connection := DmModul.con1;
  try
  qsetting.Active := false;
  qsetting.SQL.Clear;
  qsetting.SQL.Text :='SELECT * FROM setting WHERE aktif=1';
  qsetting.Open;

  if qsetting.RecordCount > 0 then
  begin

  dtp_awal.date:=qsetting.FieldByName('tglawal').AsDateTime;
     end
  else
    begin
    ShowMessage( 'data Setting  Tidak ADA ');
    end;



  finally
  qsetting.Close;

  end;

  dtpTglUsul.Date := Now;
  dtp_Akhir.Date := Now;
//DtpTanggal.Date := Now;
 Tampil_combo_bidang;
 Aturgrid;
 aturgrid3;
end;


procedure TFrmUsulan.Grid1CheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
grid1.RowSelect[Arow] := State;
end;


procedure TFrmUsulan.Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
CanEdit := ACol = 1;
//CanEdit := ACol = 4;
end;

procedure TFrmUsulan.Grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);


begin

   
{

    eKode.Text:=Grid1.Cells[1,AROW];
    eNamaBarang.Text:=Grid1.Cells[2,AROW];
    bGudang.Caption :=Grid1.Cells[3,AROW];
    LabelSatuan.Caption  :=Grid1.Cells[4,AROW];
    eJumlah.Text:=Grid1.Cells[5,AROW];
    PnOperasi.Caption := 'Ubah Data';
 }

end;

procedure TFrmUsulan.Grid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
   for i:=2 to  Grid1.RowCount - 1 do
    if Grid1.Cells[1,i]='' then
      begin
        Grid1.Canvas.Brush.Color:=clRed;
        //grid1.Fonts.Color:=clGray;
          if ((ACol=1)and(ARow=i)) then
            begin
              Grid1.Canvas.FillRect(Rect);

            end;
      end;
end;

procedure TFrmUsulan.Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin

case ACol of
    0,1: HAlign := taCenter;
    2: HAlign := taLeftJustify;
    5,6: HAlign := taRightJustify;
  end;
end;

procedure TFrmUsulan.Grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
  var
    State: Boolean;
begin
if Grid1.GetCheckBoxState(1, ARow, State) then
    begin
      if State then
        ABrush.Color := Grid1.SelectionColor;
    end;
    // baris Kolom 4
    if ((ACol = 4) and (ARow > 0)) then
    begin

      if (Grid1.Cells[ACol, ARow] = '') then
      begin
        ABrush.Color := clRed;
        AFont.Color := clCream ;
        AFont.Style := [fsBold];
      end;

      if (Grid1.Cells[ACol, ARow] = '0') then
      begin
        ABrush.Color := clYellow;
        AFont.Color := clred;
        AFont.Style := [fsBold];
      end;

      if (Grid1.Cells[ACol, ARow] > '0') then
      begin
        ABrush.Color := clWebPaleGreen;
        AFont.Color := clBlue;
        AFont.Style := [fsBold];
      end;

    end;
    // baris Kolom 5
    if ((ACol = 5) and (ARow > 0)) then
    begin

    if (Grid1.Cells[ACol, ARow] < '0') then
      begin
        ABrush.Color := clPurple;
        AFont.Color := clWhite;
        AFont.Style := [fsBold];

      end;


      if (Grid1.Cells[ACol, ARow] = '0') then
      begin
        ABrush.Color := clYellow;
        AFont.Color := clred;
        AFont.Style := [fsBold];
      end;

      if (Grid1.Cells[ACol, ARow] > '1') then
      begin
        ABrush.Color := clWebPaleGreen;
        AFont.Color := clBlack;
        AFont.Style := [fsBold];
      end;

    end;


end;
procedure TFrmUsulan.Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
  var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [5];
case ACol of
  5: Floatformat :='%.0n';
end;
end;

procedure TFrmUsulan.Grid2GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
   case ACol of
      0:
        HAlign := taCenter;
      2, 3:
        HAlign := taLeftJustify;
      4: HAlign := taRightJustify;
    end;
end;

procedure TFrmUsulan.Grid2GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
if ((ACol = 4) and (ARow > 0)) then
    begin

      if (Grid2.Cells[ACol, ARow] = '0') then
      begin
        ABrush.Color := clYellow;
        AFont.Color := clred;
        AFont.Style := [fsBold];
      end;

      if (Grid2.Cells[ACol, ARow] > '0') then
      begin
        ABrush.Color := clWebPaleGreen;
        AFont.Color := clBlack;
        AFont.Style := [fsBold];
      end;

    end;
end;

procedure TFrmUsulan.Grid2SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
  var input_box : string;

  qty,jml,stok_sekarang,stok_mutasi,harga,total_harga,disk,total2 : real ; // :integer;

begin
hapus_baris:=ARow;
cek_baris:=Grid2.Cells[1,arow];

if not (Grid2.Cells[ACol,ARow]='') then begin

   //jumlah brg
    if ACol=4 then  begin
    if not (Grid2.RowCount=1) then begin
       input_box:=InputBox('qty','Jumlah Barang : '+Grid2.Cells[2,arow]+' -> '+Grid2.Cells[3,arow],Grid2.Cells[4,arow]);
       qty:=StrToFloat(input_box);
       Grid2.Cells[ACol,ARow]:=FloatToStr(qty);
     jml:=StrToFloat(Grid2.Cells[4,arow]);
     Grid2.Cells[4,arow]:=FloatToStr(jml);
     Total;
     {
     stok_sekarang:=StrToFloat(Grid1.Cells[6,arow]);//stok sekarang
          stok_mutasi:=stok_sekarang-jml;
          Grid1.Cells[7,arow]:=FloatToStr(stok_mutasi); //stok_mutasi
      }
          //harga:=StrToFloat(Grid1.Cells[5,arow]);
      //total_harga:=jml*harga;
      //Grid1.Cells[6,arow]:=FloatToStr(total_harga);
      //Total;
      end;
      end;
 end;


end;

procedure TFrmUsulan.Timer2Timer(Sender: TObject);
begin
cxlbljam.caption:=TimeToStr(Now);
PnOperasi.Font.Color := Trunc(clBLUE*random);
end;

end.
