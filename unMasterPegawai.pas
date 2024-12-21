unit unMasterPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Buttons, DBAccess, MyAccess,
  MemDS, Grids, AdvObj, BaseGrid,
  AdvGrid, AdvUtil, AdvSmoothPanel,AdvStyleIF, AdvCombo;

type
  TFrmPetugas = class(TForm)
 //   exlrprt1: TEXLReport;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    CoolBar2: TCoolBar;
    Panel1: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    CMB_CARI_KAT: TComboBox;
    EdCari: TEdit;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    lbl1: TLabel;
    Panel4: TPanel;
    BtnBaru: TSpeedButton;
    BtnUbah1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btnexportdpa: TSpeedButton;
    grid2: TAdvStringGrid;
    ts1: TTabSheet;
    ComboBox1: TComboBox;
    Label1: TLabel;
    AdvSmoothPanel2: TAdvSmoothPanel;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    edit2: TEdit;
    Label7: TLabel;
    Label13: TLabel;
    Edit4: TEdit;
    Label21: TLabel;
    Edit5: TEdit;
    Label24: TLabel;
    Edit6: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label2: TLabel;
    dtpmasuk: TDateTimePicker;
    cbbsebagai: TAdvComboBox;
    SpeedButton1: TSpeedButton;
    procedure BTN_CARIClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ListView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure EdCariChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnBaruClick(Sender: TObject);
    procedure BtnUbah1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnexportdpaClick(Sender: TObject);
    procedure exlrprt1GetFieldValue(Sender: TObject; const Field: String;
      var Value: OleVariant);
    procedure exlrprt1BeforeBuild(Sender: TObject);
    procedure grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure buatno;
    Procedure aturgrid;
    Procedure cari_cv;

  public
    { Public declarations }
    procedure showData(cari:boolean;kt_kunci:string;nilai:string);
    procedure konTombol(aktif:boolean);
    function cekSelection:boolean;

    procedure add;
    procedure edit;
    procedure delete;
    procedure cari;
    //Procedure cbo_sebagai;
  end;

var
  FrmPetugas: TFrmPetugas;
  tambah: boolean;
  old_kd_jenis:string;
  FCounter : Integer;

implementation

  uses UnModul, UFunctions,UF_dbsql,UF_setting,Clipbrd;
{$R *.dfm}

//Procedure Tfrm_mcv.cbo_sebagai;
//var
//    qcom1 : TMyQuery;
//begin
//    try
//      qcom1 := TMyQuery.Create(nil);
//      qcom1.Connection := DmModul.con1;
//      qcom1.Close;
//      qcom1.SQL.Text:=
//      'Select nm_sebagai From m_sebagai order by nm_sebagai';
//      qcom1.Open;
//      ed_sebagai.Items.Clear;
//while not qcom1.Eof do
//begin
//ed_sebagai.Items.Add(qcom1.FieldByName('nm_sebagai').AsString);
//qcom1.Next;
//end;
//
//finally
//qcom1.Close;
//qcom1.Free;
//end;
//end;

Procedure TFrmPetugas.aturgrid;
begin
  Grid2.Cells[0,0]:='No.';
  Grid2.Cells[1,0]:='Kode';
  Grid2.Cells[2,0]:='Nama';
  Grid2.Cells[3,0]:='Alamat';
  Grid2.Cells[4,0]:='No. HP';
  Grid2.Cells[5,0]:='email';
  Grid2.ColWidths[0]:=20;
  Grid2.ColWidths[1]:=60; //1
  Grid2.ColWidths[2]:=310;
  Grid2.ColWidths[3]:=320;
  Grid2.ColWidths[4]:=200;
  Grid2.ColWidths[5]:=200;
end;


Procedure TFrmPetugas.cari_cv;
var
 no:integer;
 spcv1: TMyStoredProc;
 i, counter: Integer;
begin
no:=0;

 spcv1:= TMyStoredProc.Create(nil);
 spcv1.Connection := DmModul.con1;


  try
    spcv1.Close;
    spcv1.StoredProcName := 'sp_GETPetugas';
    spcv1.PrepareSQL;
    spcv1.ParamByName('cari').AsString := EdCari.text;
    spcv1.Execute;

   lbl1.Caption :='Jumlah Data : ' + inttostr(spcv1.RecordCount) +' record ';
   if spcv1.Eof then
    begin
    ShowMessage('data tidak ada...');
    //Clear
    Grid2.ClearRows(1, Grid2.RowCount - 1);
    Grid2.RowCount := 2;
    exit;
    end;
         for i:=1 to Grid2.RowCount-1 do begin
        Grid2.Cells[0,i]:='';
        Grid2.Cells[1,i]:='';
        Grid2.Cells[2,i]:='';
        Grid2.Cells[3,i]:='';
        Grid2.Cells[4,i]:='';
        Grid2.Cells[5,i]:='';
    end;
    //isi grid
    counter:=0;
    if  spcv1.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spcv1.RecordCount+1;
    while not spcv1.Eof do begin
          Inc(counter);
        for i := 1 to Grid2.RowCount - 1 do

          Grid2.Cells[0,counter]:=IntToStr(counter);
          Grid2.Cells[1,counter]:=spcv1.FieldByName('idpegawai').AsString; //No.
          Grid2.Cells[2,counter]:=spcv1.FieldByName('nama_peg').AsString;
          Grid2.Cells[3,counter]:=spcv1.FieldByName('alamat_peg').AsString;
          Grid2.Cells[4,counter]:=spcv1.FieldByName('hp_peg').AsString;
          Grid2.Cells[5,counter]:=spcv1.FieldByName('email').AsString;

          spcv1.Next;
    end;

    //Total;

    finally
    spcv1.Close;
    end;
end;


Procedure TFrmPetugas.buatno;
var
  Qbuatno : TMyQuery;
  //tgl, urut : string;
  urut : string;
  i : integer;
begin

  Qbuatno := TMyQuery.Create(nil);
  Qbuatno.Connection := DmModul.con1;

  try
    //tgl := FormatDateTime('yyMMdd', DtpTrans.Date) + '-';
  With Qbuatno do
    begin
      Active := false;
      SQL.Clear;                  // juml 4
      SQL.Add('Select Max(right(idpegawai, 4)) from tbl_pegawai');
      Active := true;
    end;

  if Qbuatno.Fields[0].AsString = '' then
    urut := '0001'
  else
    urut := IntToStr(Qbuatno.Fields[0].AsInteger + 1);

  if length(urut) < 4 then              // xxxxx 1
  begin
    for i := length(urut) to 3 do       // 0 = 5
      urut := '0' + urut;
  end;

  //EdNoTrans.Text := urut;
  Edit1.Text := 'P-'+urut;

  finally
    Qbuatno.Close;
  end;




end;



procedure TFrmPetugas.add;
begin
 PageControl1.ActivePageIndex:=0;
 konTombol(not true);
 Edit2.Clear;
 dtpmasuk.Date := now;
 Edit4.Clear;
 Edit2.SetFocus;
 tambah:=true;
 buatno;
end;

procedure TFrmPetugas.edit;
var
qv : TMyQuery;

begin

    qv := TMyQuery.Create(nil);
    qv.Connection := DmModul.con1;

  if MessageDlg('Data dengan'+#13+#10+edit1.text+#13+#10+
        'akan di Edit/Diubah , ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
    qv.Close;
    qv.Connection := DmModul.con1;
    qv.SQL.Clear;
    qv.SQL.Text := 'SELECT * FROM tbl_pegawai WHERE idpegawai = '+QuotedStr(edit1.Text)+'';
    qv.Open;

     if qv.RecordCount > 0 then
  begin
    PageControl1.ActivePageIndex:=0;
    konTombol(not true);
    Edit2.SetFocus;
    Edit1.Enabled := false;
    tambah:=false;
    edit1.Text:=qv.FieldByName('idpegawai').AsString;
    edit2.Text:=qv.FieldByName('nama_peg').AsString;
    cbbsebagai.Text:=qv.FieldByName('pos_peg').AsString;
    edit4.Text:=qv.FieldByName('hp_peg').AsString;
    edit5.Text:=qv.FieldByName('alamat_peg').AsString;
    edit6.Text:=qv.FieldByName('email').AsString;
    if VarIsNull(qv['msk_peg']) then
      begin
    dtpmasuk.ShowCheckbox :=true;
    dtpmasuk.Checked := false;
    dtpmasuk.Color := clred;
    end
   else
      begin
      dtpmasuk.Date:=qv.FieldByName('msk_peg').AsDateTime;
      dtpmasuk.Color := clMenu;
    end;
     //msk_peg
  end
  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + edit1.Text );
    end;

end;
end;

procedure TFrmPetugas.delete;
var
   QJenisDML,qv,qv2,qv3 : TMyQuery;

begin
  QJenisDML := TMyQuery.Create(nil);

  qv := TMyQuery.Create(nil);
  qv.Connection := DmModul.con1;
  qv.SQL.Clear;
  qv.SQL.Text := 'Select * from tbl_pembelian where id_peg = '+QuotedStr(edit1.Text)+'';
  qv.Open;
    if qv.RecordCount > 0 then
      begin

        if MessageDlg('Pegawai ada transaksi Pembelian '+#13+#10+edit1.Text+#13+#10+
        'gagal Hapus, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       BitBtn5.Click;
       //EKodeBrg.Text:=GetNoBBK;
       //CheckBox1.Checked:=true;
       end;
        exit;
      end;

  qv2 := TMyQuery.Create(nil);
  qv2.Connection := DmModul.con1;
  qv2.SQL.Clear;
  qv2.SQL.Text := 'Select * from h_pesanan where id_petugas = '+QuotedStr(edit1.Text)+'';
  qv2.Open;
    if qv2.RecordCount > 0 then
      begin

        if MessageDlg('Pemesanan ada transaksi Pemesanan '+#13+#10+edit1.Text+#13+#10+
        'gagal Hapus, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       BitBtn5.Click;
       //EKodeBrg.Text:=GetNoBBK;
       //CheckBox1.Checked:=true;
       end;
        exit;
      end;

      qv3 := TMyQuery.Create(nil);
  qv3.Connection := DmModul.con1;
  qv3.SQL.Clear;
  qv3.SQL.Text := 'Select * from tbl_penjualan where id_peg = '+QuotedStr(edit1.Text)+'';
  qv3.Open;
    if qv2.RecordCount > 0 then
      begin

        if MessageDlg('Pemesanan ada transaksi Penjualan '+#13+#10+edit1.Text+#13+#10+
        'gagal Hapus, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       BitBtn5.Click;
       //EKodeBrg.Text:=GetNoBBK;
       //CheckBox1.Checked:=true;
       end;
        exit;
      end;

 try



   //ListView1.Selected.Index;
   with QJenisDML do
    begin
     Connection := DmModul.con1;
     Close;
     SQL.Text:='DELETE FROM tbl_pegawai WHERE idpegawai='+''''+edit1.text+'''';
     if MessageDlg('Anda yakin akan menghapus idpegawai '+edit1.text+'?',mtConfirmation,[mbYES,mbNO],0)=id_YES then
        begin
          ExecSQL;
          ShowMessage('sukses Hapus :'+#13+#10+edit2.Text);
   //EdCari.text := edit2.Text;
   BitBtn5.Click;
   cari_cv;
        end;
    end;

 except
   MessageDlg('Operasi gagal dilakukan '+edit1.text,mtInformation,[mbOK],0);
 end;
end;


//pencarian database
procedure TFrmPetugas.cari;
var
 sel_kt_kunci : string;
begin
 case CMB_CARI_KAT.ItemIndex of
     0:sel_kt_kunci:='no_supp';
     1:sel_kt_kunci:='nama_supp';
     2:sel_kt_kunci:='alm_supp';
 end;
 showData(true,sel_kt_kunci,EdCari.Text);
end;


function TFrmPetugas.cekSelection:boolean;
var
 i:integer;
 res:boolean;
begin
 res:=false;
 {
 for i:=0 to ListView1.Items.Count-1 do
    if ListView1.Items.Item[i].Checked then
       begin
         res:=true;
         Break;
       end;
 }
 Result:=res;
end;

procedure TFrmPetugas.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:AdvSmoothPanel2.SetComponentStyle(tsOffice2003Blue);
    1:AdvSmoothPanel2.SetComponentStyle(tsOffice2003Silver);
    2:AdvSmoothPanel2.SetComponentStyle(tsOffice2003Olive);
    3:AdvSmoothPanel2.SetComponentStyle(tsOffice2003Classic);
    4:AdvSmoothPanel2.SetComponentStyle(tsOffice2007Luna);
    5:AdvSmoothPanel2.SetComponentStyle(tsOffice2007Obsidian);
    6:AdvSmoothPanel2.SetComponentStyle(tsOffice2007Silver);
    7:AdvSmoothPanel2.SetComponentStyle(tsWindows8);
  end;
end;

procedure TFrmPetugas.konTombol(aktif:boolean);
begin
 Panel1.Enabled:=aktif;
 BitBtn4.Enabled:=not aktif;
 BitBtn5.Enabled:=not aktif;
 Edit2.Enabled:=not aktif;
 //Edit3.Enabled:=not aktif;
 Edit4.Enabled:=not aktif;
 Edit5.Enabled:=not aktif;
 Edit1.Enabled:=not aktif;
 //ListView1.Enabled:=aktif;
end;

procedure TFrmPetugas.showData(cari:boolean;kt_kunci:string;nilai:string);
var
 dt:TListItem;
 no:integer;
 spcv: TMyStoredProc;
 i, counter: Integer;


 //QJenisDDL : TMyQuery;

 begin
 no:=0;

 spcv:= TMyStoredProc.Create(nil);
 spcv.Connection := DmModul.con1;

 //ListView1.Clear;

  try
    spcv.Close;
    spcv.StoredProcName := 'sp_GETPenyedia';
    spcv.PrepareSQL;
    //spcv.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key ba
    //spdataAwal.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
    //spcv.ParamByName('cariGudang').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    spcv.ParamByName('cari').AsString := EdCari.text;
    spcv.Open;

   lbl1.Caption :='Jumlah Data : ' + inttostr(spcv.RecordCount) +' record ';

   if spcv.Eof then
    begin
    ShowMessage('data yang dicari tidak ada'  );
    exit;
    end;

      while not spcv.Eof do
       begin
        Inc(no);
//        dt:=ListView1.Items.Add;
//        dt.Caption:=IntToStr(no);
//        dt.SubItems.Add(DmModul.dataRow(spcv.FieldByName('NoVendor'),'-'));
//        dt.SubItems.Add(DmModul.dataRow(spcv.FieldByName('NamaPerusahaan'),'-'));
//        dt.SubItems.Add(DmModul.dataRow(spcv.FieldByName('Alamat'),'-'));
//        dt.SubItems.Add(DmModul.dataRow(spcv.FieldByName('Kota'),'-'));
//        dt.SubItems.Add(DmModul.dataRow(spcv.FieldByName('sebagai'),'-'));
        Next;
       end;
        //ListView1.SetFocus;
        //ListView1.Items.Item[0].Selected:=true;

  finally
    spcv.close;
end;
end;

procedure TFrmPetugas.BTN_CARIClick(Sender: TObject);
begin
end;

{
var
 i:integer;
begin
 if(cekSelection)then
 if MessageDlg('Anda yakin akan melakukan proses hapus data banyak pada data yang terpilih di atas?',mtConfirmation,[mbYES,mbNO],0)=id_YES then
  try
   for i:=0 to ListView1.Items.Count-1 do
   begin
    if ListView1.Items.Item[i].Checked then
      with DataModuleApotik.QJenisDML do
      begin
        Close;
        SQL.Text:='DELETE FROM tb_jenis WHERE kd_jenis='+''''+ListView1.Items.Item[i].SubItems.Strings[0]+'''';
        ExecSQL;
      end;
   end;
   showData(false,'','');
  except
   MessageDlg('Operasi gagal dilakukan',mtInformation,[mbOK],0);
  end;
}

procedure TFrmPetugas.FormCreate(Sender: TObject);
begin

 konTombol(true);
 PageControl1.ActivePageIndex:=1;
 //cbo_sebagai;
 aturgrid;
 dtpmasuk.date:= now;
  dtpmasuk.ShowCheckbox :=true;
  dtpmasuk.Checked := false;
  dtpmasuk.Color := clred;

end;

procedure TFrmPetugas.BitBtn4Click(Sender: TObject);
var
  QJenisDML : TMyQuery;
  tglmasuk:string;

begin
  QJenisDML := TMyQuery.Create(nil);
  QJenisDML.Connection := DmModul.con1;

  if dtpmasuk.Checked then
   tglmasuk:=FormatDateTime('yyyy/mm/dd',dtpmasuk.Date)
   else
   tglmasuk:='';

 try
  with QJenisDML do
  begin

   Close;
   if tambah then
      SQL.Text:='insert tbl_pegawai (idpegawai,nama_peg,pos_peg,hp_peg,alamat_peg,email,msk_peg,tgl_create) Values('+
        QuotedStr(edit1.Text)+','+
        QuotedStr(edit2.Text)+','+
        QuotedStr(cbbsebagai.Text)+','+
        QuotedStr(edit4.Text)+','+
        QuotedStr(edit5.Text)+','+
        QuotedStr(edit6.Text)+','+
        QuotedStr(tglmasuk)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+')'
        //QuotedStr(Edit14.Text)+')'

   else
      SQL.Text:='UPDATE tbl_pegawai SET idpegawai='+''''+edit1.Text+''''+
      ',nama_peg='+''''+edit2.Text+''''+
      ',pos_peg='+''''+cbbsebagai.Text+''''+
      ',hp_peg='+''''+edit4.Text+''''+
      ',alamat_peg='+''''+edit5.Text+''''+
      ',email='+''''+edit6.Text+''''+
      ',msk_peg='+QuotedStr(tglmasuk)+
      ',tgl_create='+QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+
      ' WHERE idpegawai='+''''+Edit1.Text+'''';
   //ShowMessage(SQL.Text);
   ExecSQL;
   ShowMessage('sukses Simpan :'+#13+#10+edit2.Text);
   EdCari.text := '';
   BitBtn5.Click;
   cari_cv;

   //showData(false,'','');
  end;
 except
  MessageDlg('gagal simpan',mtInformation,[mbOK],0);
 end;
end;

procedure TFrmPetugas.BitBtn5Click(Sender: TObject);
begin
 edit1.Clear;
 edit2.Clear;
 //edit3.Clear;
 edit4.Clear;
 edit5.Clear;
 konTombol(true);
 PageControl1.ActivePageIndex:=1;
 //ListView1.SetFocus;
end;

procedure TFrmPetugas.ListView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=113)then
    edit
 else if (Key=114)then
    delete
 else if (Key=116)then
    showData(false,'','');
end;

procedure TFrmPetugas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 if(Key = VK_RETURN) and (Shift = []) then
    Perform(WM_NEXTDLGCTL, 0, 0);
 if(Key=112)then   //F1
    add;
 if(Key=115) and(PageControl1.ActivePageIndex=1) then //F4
    begin
     //PCari.Visible:=true;
     //EdCari.SetFocus;
    end;
 if(Key=27) then   // ESC
    if PageControl1.ActivePageIndex=0 then
       BitBtn5.Click
    else
     begin
      {
      if not PCari.Visible then
         Close
      else
        begin
         PCari.Visible:=false;
         ListView1.SetFocus;
        end;
        }
     end;
end;

procedure TFrmPetugas.FormActivate(Sender: TObject);
begin
 showData(false,'','');
 //ListView1.SetFocus;
end;

procedure TFrmPetugas.EdCariChange(Sender: TObject);
begin
cari_cv;
end;

procedure TFrmPetugas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Action:=CaFree;
end;

procedure TFrmPetugas.BitBtn1Click(Sender: TObject);
begin
cari_cv;
end;

procedure TFrmPetugas.BitBtn2Click(Sender: TObject);
begin
  {
  FCari:=TFCari.Create(Application);
  LsvSetCol('No |nama|',
  '90|300|',FCari.LsCari);
  FCari.LsField.Items.Clear;
  FCari.LsField.Items.Add('dok_spesialis'); //Tabel
  FCari.LsField.Items.Add('spesialis');
  FCari.LsField.Items.Add('nama');
  FCari.ShowModal;
  if nFieldCari[0]<>'' then
  begin
    edit1.Text:=nFieldCari[0];
    edit4.Text:=nFieldCari[1];
    //KosongTex(False);
    //AktifControl(Self,PnInput,False);
    //ednokwi.Enabled:=True;
    edit1.Color:=clWhite;
    edit1.SetFocus;
  end;
    }
end;

procedure TFrmPetugas.BtnBaruClick(Sender: TObject);
begin
add;
end;

procedure TFrmPetugas.BtnUbah1Click(Sender: TObject);
begin
edit;
end;

procedure TFrmPetugas.FormShow(Sender: TObject);
begin
//showData(true,'','');
AdvSmoothPanel2.SetComponentStyle(tsOffice2003Blue);
ComboBox1.ItemIndex := 1;
cari_cv;


end;

procedure TFrmPetugas.grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
edit1.Text:=Grid2.Cells[1,AROW];
edit;
end;

procedure TFrmPetugas.BitBtn3Click(Sender: TObject);
begin
add;
end;

procedure TFrmPetugas.SpeedButton1Click(Sender: TObject);
begin
delete;
end;

procedure TFrmPetugas.SpeedButton4Click(Sender: TObject);
begin
//showData(false,'','');
cari_cv;
end;

procedure TFrmPetugas.btnexportdpaClick(Sender: TObject);
var
  spxlsagr: TMyStoredProc;
  begin
  if MessageDlg('Data dengan'+#13+#10+'xxxxxxxx'+#13+#10+
        'akan di Cetak excel, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin

    spxlsagr:= TMyStoredProc.Create(nil);
    spxlsagr.Connection := DmModul.con1;
  try
    Screen.cursor := crsqlWait;
    spxlsagr.Close;
    spxlsagr.StoredProcName := 'SP_CV';
    spxlsagr.PrepareSQL;
    //spdetail.ParamByName('cari').AsString := EdNokwi.Text;
    spxlsagr.Execute;
    Screen.cursor := crDefault;
    if spxlsagr.Eof then exit;
//      exlrprt1.template :=ExtractFilePath(Application.ExeName) + '\xls_rpt\'+'CV.xlsx';
//      exlrprt1.Dataset:=spxlsagr;
//      exlrprt1.TemplSheet :='CV';
//      exlrprt1.Show();
  finally
    spxlsagr.Close;
  end;
end;

end;

procedure TFrmPetugas.exlrprt1GetFieldValue(Sender: TObject;
  const Field: String; var Value: OleVariant);
begin
if AnsiCompareText(Field, 'No') = 0 then
  begin
    Value := FCounter;
    Inc(FCounter);
  end;

  //kode rek
 // if AnsiCompareText(Field, 'koderek') = 0 then
 //   Value := cxcari.text;
  //nama rek
 // if AnsiCompareText(Field, 'namarek') = 0 then
 //   Value := cxm1.text;

  //tgl 1
  //  if AnsiCompareText(Field, 'tgl_bulan') = 0 then
  //  Value := FormatDateTime('mmmm-yyyy',dtp_awal.date);
  //tgl 2
  {
    if AnsiCompareText(Field, 'tgl2') = 0 then
    Value := FormatDateTime('yyyy-mm-dd',dp_tgl2.date);
   }
end;

procedure TFrmPetugas.exlrprt1BeforeBuild(Sender: TObject);
begin
FCounter := 1;
end;

end.
