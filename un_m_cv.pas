unit un_m_cv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Buttons,DBTables, DBAccess, MyAccess,
  MemDS, EXLReportExcelTLB, EXLReportBand, EXLReport, Grids, AdvObj, BaseGrid,
  AdvGrid, AdvUtil;

type
  Tfrm_mcv = class(TForm)
    exlrprt1: TEXLReport;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Edit4: TEdit;
    Edit1: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    edit7: TEdit;
    edit8: TEdit;
    edit9: TEdit;
    edit10: TEdit;
    edit11: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    edit2: TEdit;
    edit3: TEdit;
    edit12: TEdit;
    ed_sebagai: TComboBox;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
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
    BtnHapus: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btnexportdpa: TSpeedButton;
    grid2: TAdvStringGrid;
    ts1: TTabSheet;
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
    Procedure cbo_sebagai;
  end;

var
  frm_mcv: Tfrm_mcv;
  tambah: boolean;
  old_kd_jenis:string;
  FCounter : Integer;

implementation

  uses UnModul, UFunctions,UF_dbsql,UF_setting,Clipbrd;
{$R *.dfm}

Procedure Tfrm_mcv.cbo_sebagai;
var
    qcom1 : TMyQuery;
begin
    try
      qcom1 := TMyQuery.Create(nil);
      qcom1.Connection := DmModul.con1;
      qcom1.Close;
      qcom1.SQL.Text:=
      'Select nm_sebagai From m_sebagai order by nm_sebagai';
      qcom1.Open;
      ed_sebagai.Items.Clear;
while not qcom1.Eof do
begin
ed_sebagai.Items.Add(qcom1.FieldByName('nm_sebagai').AsString);
qcom1.Next;
end;

finally
qcom1.Close;
qcom1.Free;
end;
end;

Procedure Tfrm_mcv.aturgrid;
begin
  Grid2.Cells[0,0]:='No.';
  Grid2.Cells[1,0]:='Kode';
  Grid2.Cells[2,0]:='Nama';
  Grid2.Cells[3,0]:='Alamat';
  Grid2.Cells[4,0]:='No. HP';

  Grid2.ColWidths[0]:=20;
  Grid2.ColWidths[1]:=60; //1
  Grid2.ColWidths[2]:=210;
  Grid2.ColWidths[3]:=320;
  Grid2.ColWidths[4]:=180;

end;


Procedure Tfrm_mcv.cari_cv;
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
    spcv1.StoredProcName := 'sp_GETPenyedia';
    spcv1.PrepareSQL;
    //spcv.ParamByName('tgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp_awal.date); //key ba
    //spdataAwal.ParamByName('tgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp_akhir.date); //key ba
    //spcv.ParamByName('cariGudang').AsString := FMenu.dxStatusBar1.Panels[2].Text;
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

    end;
    //isi grid
    counter:=0;
    if  spcv1.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spcv1.RecordCount+1;
    while not spcv1.Eof do begin
          Inc(counter);
        //cek
		    //Grid1.ShowSelection := false;
        for i := 1 to Grid2.RowCount - 1 do
        //Grid1.AddCheckBox(1, i, false, false);

          Grid2.Cells[0,counter]:=IntToStr(counter);
          Grid2.Cells[1,counter]:=spcv1.FieldByName('id').AsString; //No.
          Grid2.Cells[2,counter]:=spcv1.FieldByName('Nama').AsString;
          Grid2.Cells[3,counter]:=spcv1.FieldByName('alm_supp').AsString;
          Grid2.Cells[4,counter]:=spcv1.FieldByName('nohp_pet').AsString;

          {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
          spcv1.Next;
    end;

    //Total;

    finally
    spcv1.Close;
    end;
end;


Procedure Tfrm_mcv.buatno;
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
      SQL.Add('Select Max(right(novendor, 6)) from m_perusahaan');

//SQL.Add('Select Max(right(NoAng, 8)) from anggota ' +
//              'Where left(NoAng, 7) = ' + QuotedStr(tgl) + ';');

      Active := true;
    end;

  if Qbuatno.Fields[0].AsString = '' then
    urut := '000001'
  else
    urut := IntToStr(Qbuatno.Fields[0].AsInteger + 1);

  if length(urut) < 6 then              //4
  begin
    for i := length(urut) to 5 do       // 4 = 3
      urut := '0' + urut;
  end;

  //EdNoTrans.Text := urut;
  Edit1.Text := 'P-'+urut;

  finally
    Qbuatno.Close;
  end;




end;



procedure Tfrm_mcv.add;
begin
 PageControl1.ActivePageIndex:=0;
 konTombol(not true);
 Edit2.Clear;
 Edit3.Clear;
 Edit4.Clear;
 Edit2.SetFocus;
 tambah:=true;
 buatno;
end;

procedure Tfrm_mcv.edit;
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
    qv.SQL.Text := 'SELECT * FROM m_perusahaan WHERE NoVendor = '+QuotedStr(edit1.Text)+'';
    qv.Open;

     if qv.RecordCount > 0 then
  begin
    PageControl1.ActivePageIndex:=0;
    konTombol(not true);
    Edit2.SetFocus;
    Edit1.Enabled := false;
    tambah:=false;
    edit1.Text:=qv.FieldByName('NoVendor').AsString;
    edit2.Text:=qv.FieldByName('NamaPerusahaan').AsString;
    edit3.Text:=qv.FieldByName('Alamat').AsString;
    edit4.Text:=qv.FieldByName('Kota').AsString;
    edit5.Text:=qv.FieldByName('Propinsi').AsString;
    edit6.Text:=qv.FieldByName('KodePost').AsString;
    edit7.Text:=qv.FieldByName('rekening_bank').AsString;
    edit9.Text:=qv.FieldByName('Telephone').AsString;
    edit10.Text:=qv.FieldByName('npwp').AsString;
    edit11.Text:=qv.FieldByName('Email').AsString;
    edit12.Text:=qv.FieldByName('Pemilik').AsString;
    edit13.Text:=qv.FieldByName('BANK').AsString;
    edit14.Text:=qv.FieldByName('ktp').AsString;
    ed_sebagai.Text:=qv.FieldByName('sebagai').AsString;

  end
  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + edit1.Text );
    end;

end;
end;

procedure Tfrm_mcv.delete;
var
   QJenisDML : TMyQuery;

begin
  QJenisDML := TMyQuery.Create(nil);

 try
   {
   ListView1.Selected.Index;
   with QJenisDML do
    begin
     Connection := DmModul.con1;
     Close;
     SQL.Text:='DELETE FROM m_perusahaan WHERE novendor='+''''+ListView1.Selected.SubItems.Strings[0]+'''';
     if MessageDlg('Anda yakin akan menghapus novendor '+ListView1.Selected.SubItems.Strings[1]+'?',mtConfirmation,[mbYES,mbNO],0)=id_YES then
        begin
          ExecSQL;
          showData(false,'','');
        end;
    end;
    }
 except
   MessageDlg('Operasi gagal dilakukan ! tidak ada data yang terseleksi pada grid data',mtInformation,[mbOK],0);
 end;
end;


//pencarian database
procedure Tfrm_mcv.cari;
var
 sel_kt_kunci : string;
begin
 case CMB_CARI_KAT.ItemIndex of
     0:sel_kt_kunci:='novendor';
     1:sel_kt_kunci:='namaperusahaan';
     2:sel_kt_kunci:='alamat';
 end;
 showData(true,sel_kt_kunci,EdCari.Text);
end;


function Tfrm_mcv.cekSelection:boolean;
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

procedure Tfrm_mcv.konTombol(aktif:boolean);
begin
 Panel1.Enabled:=aktif;
 BitBtn4.Enabled:=not aktif;
 BitBtn5.Enabled:=not aktif;
 Edit2.Enabled:=not aktif;
 Edit3.Enabled:=not aktif;
 Edit4.Enabled:=not aktif;
 Edit5.Enabled:=not aktif;
 Edit1.Enabled:=not aktif;
 //ListView1.Enabled:=aktif;
end;

procedure Tfrm_mcv.showData(cari:boolean;kt_kunci:string;nilai:string);
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
    spcv.StoredProcName := 'SP_cari_perusahaan';
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

procedure Tfrm_mcv.BTN_CARIClick(Sender: TObject);
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

procedure Tfrm_mcv.FormCreate(Sender: TObject);
begin

 konTombol(true);
 PageControl1.ActivePageIndex:=1;
 cbo_sebagai;
 aturgrid;

end;

procedure Tfrm_mcv.BitBtn4Click(Sender: TObject);
var
  QJenisDML : TMyQuery;

begin
  QJenisDML := TMyQuery.Create(nil);
  QJenisDML.Connection := DmModul.con1;

 try
  with QJenisDML do
  begin

   Close;
   if tambah then
      SQL.Text:='insert m_perusahaan (NoVendor,tgl_create,NamaPerusahaan,Alamat,Kota,Propinsi,KodePost,'+
        'rekening_bank,Telephone,Fax,npwp,Email,Pemilik,BANK,sebagai,ktp) Values('+
        QuotedStr(edit1.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+','+
        QuotedStr(edit2.Text)+','+
        QuotedStr(edit3.Text)+','+
        QuotedStr(edit4.Text)+','+
        QuotedStr(edit5.Text)+','+
        QuotedStr(edit6.Text)+','+
        QuotedStr(edit7.Text)+','+
        QuotedStr(edit8.Text)+','+
        QuotedStr(edit9.Text)+','+
        QuotedStr(edit10.Text)+','+
        QuotedStr(edit11.Text)+','+
        QuotedStr(edit12.Text)+','+
        QuotedStr(edit13.Text)+','+
        QuotedStr(ed_sebagai.Text)+','+
        QuotedStr(Edit14.Text)+')'

   else
      SQL.Text:='UPDATE m_perusahaan SET NoVendor='+''''+edit1.Text+''''+
      ',NamaPerusahaan='+''''+edit2.Text+''''+
      //',tgl_create='+QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+
      ',Alamat='+''''+edit3.Text+''''+
      ',Kota='+''''+edit4.Text+''''+
      ',Propinsi='+''''+edit5.Text+''''+
      ',KodePost='+''''+edit6.Text+''''+
      ',rekening_bank='+''''+edit7.Text+''''+
      ',Telephone='+''''+edit8.Text+''''+
      ',Fax='+''''+edit9.Text+''''+
      ',npwp='+''''+edit10.Text+''''+
      ',Email='+''''+edit11.Text+''''+
      ',Pemilik='+''''+edit12.Text+''''+
      ',BANK='+''''+edit13.Text+''''+
      ',ktp='+''''+edit14.Text+''''+
      ',sebagai='+''''+ed_sebagai.Text+''''+
      ' WHERE NoVendor='+''''+Edit1.Text+'''';
   //ShowMessage(SQL.Text);
   ExecSQL;
   ShowMessage('sukses Simpan :'+#13+#10+edit2.Text);
   EdCari.text := edit2.Text;
   BitBtn5.Click;
   cari_cv;

   //showData(false,'','');
  end;
 except
  MessageDlg('gagal simpan',mtInformation,[mbOK],0);
 end;
end;

procedure Tfrm_mcv.BitBtn5Click(Sender: TObject);
begin
 edit1.Clear;
 edit2.Clear;
 edit3.Clear;
 edit4.Clear;
 edit5.Clear;
 edit6.Clear;
 edit7.Clear;
 edit8.Clear;
 edit9.Clear;
 edit10.Clear;
 edit11.Clear;
 edit12.Clear;
 edit13.Clear;
 edit14.Clear;

 konTombol(true);
 PageControl1.ActivePageIndex:=1;
 //ListView1.SetFocus;
end;

procedure Tfrm_mcv.ListView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=113)then
    edit
 else if (Key=114)then
    delete
 else if (Key=116)then
    showData(false,'','');
end;

procedure Tfrm_mcv.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrm_mcv.FormActivate(Sender: TObject);
begin
 showData(false,'','');
 //ListView1.SetFocus;
end;

procedure Tfrm_mcv.EdCariChange(Sender: TObject);
begin
cari_cv;
end;

procedure Tfrm_mcv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Action:=CaFree;
end;

procedure Tfrm_mcv.BitBtn1Click(Sender: TObject);
begin
cari_cv;
end;

procedure Tfrm_mcv.BitBtn2Click(Sender: TObject);
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

procedure Tfrm_mcv.BtnBaruClick(Sender: TObject);
begin
add;
end;

procedure Tfrm_mcv.BtnUbah1Click(Sender: TObject);
begin
edit;
end;

procedure Tfrm_mcv.FormShow(Sender: TObject);
begin
//showData(true,'','');
cari_cv;
end;

procedure Tfrm_mcv.grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
edit1.Text:=Grid2.Cells[1,AROW];
edit;
end;

procedure Tfrm_mcv.BitBtn3Click(Sender: TObject);
begin
add;
end;

procedure Tfrm_mcv.SpeedButton4Click(Sender: TObject);
begin
//showData(false,'','');
cari_cv;
end;

procedure Tfrm_mcv.btnexportdpaClick(Sender: TObject);
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
      exlrprt1.template :=ExtractFilePath(Application.ExeName) + '\xls_rpt\'+'CV.xlsx';
      exlrprt1.Dataset:=spxlsagr;
      exlrprt1.TemplSheet :='CV';
      exlrprt1.Show();
  finally
    spxlsagr.Close;
  end;
end;

end;

procedure Tfrm_mcv.exlrprt1GetFieldValue(Sender: TObject;
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

procedure Tfrm_mcv.exlrprt1BeforeBuild(Sender: TObject);
begin
FCounter := 1;
end;

end.
