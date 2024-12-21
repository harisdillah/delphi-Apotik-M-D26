unit Un_m_pegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, ToolWin, Buttons,DBTables, DBAccess, MyAccess,
  MemDS, ekbasereport, ekrtf, EXLReportExcelTLB, EXLReportBand, EXLReport,
  DB, Mask ;

type
  Tfrm_pegawai = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PnOperasi: TLabel;
    BitBtn1: TBitBtn;
    TabSheet2: TTabSheet;
    CoolBar2: TCoolBar;
    Panel1: TPanel;
    Label4: TLabel;
    Panel3: TPanel;
    Ed_no: TEdit;
    BtnCari: TBitBtn;
    PnInput: TPanel;
    Label19: TLabel;
    ed_nip: TEdit;
    BitBtn2: TBitBtn;
    Ed_jab: TEdit;
    Label20: TLabel;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ed_kdaerah: TEdit;
    ed_pro: TEdit;
    Ed_kab: TEdit;
    Ed_kec: TEdit;
    Ed_desa: TEdit;
    btnproses: TBitBtn;
    btnbatal: TBitBtn;
    dtgl_lahir: TDateTimePicker;
    btnhapus: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Ed_alamat: TEdit;
    Label8: TLabel;
    ed_tmplahir: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    ed_telp: TEdit;
    Label11: TLabel;
    ed_npwp: TEdit;
    Label12: TLabel;
    ed_pend: TEdit;
    Label13: TLabel;
    ed_thlulus: TEdit;
    ed_noijazah: TEdit;
    Label15: TLabel;
    dtgl_ijazah: TDateTimePicker;
    Label16: TLabel;
    dtgl_masuk: TDateTimePicker;
    Label17: TLabel;
    ed_hoby: TEdit;
    Label14: TLabel;
    Label18: TLabel;
    Edit1: TEdit;
    Label21: TLabel;
    Edit2: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Panel4: TPanel;
    Ed_bri: TEdit;
    BitBtn3: TBitBtn;
    btn_cetakbri: TBitBtn;
    ekrtf2: TEkRTF;
    BTN_XLS: TBitBtn;
    EXLReport1: TEXLReport;
    Edit3: TEdit;
    btn1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure BtnCariClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnprosesClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btn_cetakbriClick(Sender: TObject);
    procedure BTN_XLSClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  procedure combo1;
  procedure TampilData;
  procedure KosongTex(Kunci: Boolean);

  public
    { Public declarations }
  end;

var
  frm_pegawai: Tfrm_pegawai;
  sql : string;
  tambah: boolean;

implementation

uses UnCari,UnModul, UnCari_com;

{$R *.dfm}

Procedure Tfrm_pegawai.combo1;
var
  qc1 : TMyQuery;
  dsc1 : TMyDataSource;
begin
  qc1 := TMyQuery.Create(nil);
//  dsc1 := TMyDataSource.Create(nil);
  qc1.Connection := DmModul.con1;
  qc1.Active := false;
  qc1.Close;
  qc1.SQL.Clear;
  qc1.SQL.Text := 'Select jenis_kunjung,nama From ref_jenis_kunjung';
  qc1.Open;

//  dsc1.DataSet := qc1;
//  wdbcmbx1.DataSource := dsc1;

{
wdbcmbx1.Items.Clear;
while not qc1.Eof do
begin
wdbcmbx1.Items.Add(qc1.FieldByName('jenis_kunjung').AsString);
qc1.Next;
end;
 }
// wwDBLookupCombo1.DataSource := dsc1;
// wwDBLookupCombo1.DataField := 'nama';

end;



Procedure Tfrm_pegawai.KosongTex(Kunci:Boolean);
//var
//j:Integer;

Begin
  if Kunci=True then
  begin
  BtnCari.Enabled:=False;
  ed_no.Text:='';

  //ed_nama.Text:='';
  ed_nip.Text:='';
  ed_jab.Text:='';
  //ed_gol.Text:='';
  ed_tmplahir.Text:='';
  dtgl_lahir.date:=now;
  //ed_jenis.Text:='';
  ed_alamat.Text:='';
  ed_telp.Text:='';
  ed_npwp.Text:='';
  ed_pend.Text:='';
  ed_thlulus.Text:='';
  dtgl_ijazah.date:=now;
  ed_noijazah.Text:='';
  dtgl_masuk.date:=now;
  ed_hoby.Text:='';


  {

  ed_Pajak.Text:='0';
  }

  //tgl Lahir
dtgl_lahir.ShowCheckbox :=true;
dtgl_lahir.Checked := false;
dtgl_lahir.Color := clred;

//tgl masuk
dtgl_masuk.ShowCheckbox :=true;
dtgl_masuk.Checked := false;
dtgl_masuk.Color := clred;

//dtgl_ijazah
dtgl_ijazah.ShowCheckbox :=true;
dtgl_ijazah.Checked := false;
dtgl_ijazah.Color := clred;

 end;
 end;

function ExecSQL1(Sql: string): boolean;
var q: TMyQuery;
begin
  q:=TMyQuery.Create(nil);
  q.Connection := DmModul.con1;
  q.ParamCheck:=False;
  q.SQL.Clear;
  q.SQL.Text:=Sql;
  try
  q.ExecSQL;
  Result:=True;
  except
    on e: Exception do begin
      Result:=False;
    end;
  end;
  q.Free;
end;


function bukatable(Sql: string): boolean;
var q: TMyQuery;
begin
  q:=TMyQuery.Create(nil);
  q.Connection := DmModul.con1;
  //q.ParamCheck:=False;
  q.SQL.Text:=Sql;
  try
  q.open;
  Result:=True;
  except
    on e: Exception do begin
      Result:=False;
    end;
  end;
  q.Free;
end;


Procedure Tfrm_pegawai.TampilData;
var
  ds : TMyDataSource;
  q2 : TMyQuery;
  Begin

//EdNokwi.Text:=AdDsData.FieldByName('no_peng').AsString;
//tgl_awal.Date:=AdDsData.FieldByName('tgl_awal').AsDateTime;

//tanggal jatuh tempo
{
if VarIsNull(AdDsData['tgl_jatuh_tempo']) then
begin
ed_tgl_jt.ShowCheckbox :=true;
ed_tgl_jt.Checked := false;
ed_tgl_jt.Color := clred;
end
else
begin
ed_tgl_jt.Date:=AdDsData.FieldByName('tgl_jatuh_tempo').AsDateTime;
end;
}

ds := TMyDataSource.Create(nil);
q2 := TMyQuery.Create(nil);

  q2.Connection := DmModul.con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text := 'Select * from m_pegawai where nama = '+QuotedStr(Ed_no.Text)+'';
  q2.Open;

ds.DataSet := q2;
//Edit1.Text:='';
//Edit2.Text:='';

if q2.RecordCount > 0 then
  begin
    //Edit1.Text:= q2.FieldByName('nama').AsString;
    //ed_nip.Text:=  q2.FieldByName('nip').AsString;
    //ed_alamat.Text:=  q2.FieldByName('alamat').AsString; //.AsDateTime;

    //ed_nama.Text:=AdDsData.FieldByName('Nama').AsString;
    ed_nip.Text:=q2.FieldByName('NIP').AsString;
    ed_jab.Text:=q2.FieldByName('Jabatan').AsString;

    if VarIsNull(q2['Tgl_Lahir']) then
    begin
      dtgl_lahir.ShowCheckbox :=true;
      dtgl_lahir.Checked := false;
      dtgl_lahir.Color := clred;
    end
    else
    begin

    dtgl_lahir.Date:=q2.FieldByName('Tgl_Lahir').AsDateTime;
    dtgl_lahir.ShowCheckbox :=true;
    dtgl_lahir.Checked := true;
    dtgl_lahir.Color := clBlue;

    end;

    ed_tmplahir.Text:=q2.FieldByName('Temp_tgllahir').AsString;
    ed_alamat.Text:=q2.FieldByName('alamat').AsString;
    ed_telp.Text:=q2.FieldByName('telp').AsString;
    ed_npwp.Text:=q2.FieldByName('NPWP').AsString;
    ed_pend.Text:=q2.FieldByName('pend').AsString;
    ed_thlulus.Text:=q2.FieldByName('th_lulus').AsString;
  //  dtgl_ijazah.date:=q2.FieldByName('tgl_ijazah').AsDateTime;
      if VarIsNull(q2['tgl_ijazah']) then
    begin
      dtgl_ijazah.ShowCheckbox :=true;
      dtgl_ijazah.Checked := false;
      dtgl_ijazah.Color := clred;
    end
    else
    begin

    dtgl_ijazah.Date:=q2.FieldByName('tgl_ijazah').AsDateTime;
    dtgl_ijazah.ShowCheckbox :=true;
    dtgl_ijazah.Checked := true;
    dtgl_ijazah.Color := clBlue;
    end;



    ed_noijazah.Text:=q2.FieldByName('no_ijazah').AsString;
  //  dtgl_masuk.date:=q2.FieldByName('tgl_masuk').AsDateTime;

    if VarIsNull(q2['tgl_masuk']) then
    begin
      dtgl_masuk.ShowCheckbox :=true;
      dtgl_masuk.Checked := false;
      dtgl_masuk.Color := clred;
    end
    else
    begin

    dtgl_masuk.Date:=q2.FieldByName('Tgl_Lahir').AsDateTime;
    dtgl_masuk.ShowCheckbox :=true;
    dtgl_masuk.Checked := true;
    dtgl_masuk.Color := clBlue;

    end;


    ed_hoby.Text:=q2.FieldByName('hoby').AsString;

  //  ShowMessage('data Ada' );
  end

  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + Ed_no.Text );
    end;

end;

procedure Tfrm_pegawai.FormClose(Sender: TObject; var Action: TCloseAction);
///var
 // I,n1,n2,n3,n4:integer;

begin
{
  n1:=0;
  n2:=0;
  n3:=Width;
  n4:=Height;
  for I:=0 to 100 do
  begin
    n1:=n1+1;
    n2:=n2+1;
    n3:=n3-1;
    n4:=n4-1;
    Application.ProcessMessages;
    Sleep(20);
    SetWindowRgn(Handle,
    CreateRectRgn(n1,n2,n3,n4),true);
  end;
 }
  frm_pegawai:=nil;
  Action:=caFree;
end;

procedure Tfrm_pegawai.Timer1Timer(Sender: TObject);
begin
  {
if LbPerhatian.Font.Color=clBlack then
  LbPerhatian.Font.Color:=clRed
else
  LbPerhatian.Font.Color:=clBlack;
  }
  end;

procedure Tfrm_pegawai.BtnCariClick(Sender: TObject);
begin
FCari:=TFCari.Create(Application);
  LsvSetCol('Nama|Tgl.Lahir|Nip.|Jabatan|alamat|',
  '160|80|130|180|60|',FCari.LsCari);
  FCari.LsField.Items.Clear;
  FCari.LsField.Items.Add('m_pegawai'); //Tabel / Query
  FCari.LsField.Items.Add('nama');
  FCari.LsField.Items.Add('Tgl_Lahir');
  FCari.LsField.Items.Add('nip');
  FCari.LsField.Items.Add('jabatan');
  FCari.LsField.Items.Add('alamat');
  FCari.CmbField.ItemIndex:=1;
  FCari.ShowModal;

    if nFieldCari[0]<>'' then
  begin
    Ed_no.Text:=nFieldCari[0];
//    KosongTex(False);
//    AktifControl(Self,PnInput,False);
    TampilData;
    AktifControl(Self,PnInput,True);
    Ed_no.Enabled:=True;
    Ed_no.Color:=clSkyBlue;
    Ed_no.SetFocus;
  end;
end;

procedure Tfrm_pegawai.BitBtn2Click(Sender: TObject);
begin
 FCari:=TFCari.Create(Application);
  LsvSetCol('kode|Pro|Kab.|Kec.|Desa.|',
  '100|100|100|100|100|',FCari.LsCari);
  FCari.LsField.Items.Clear;
  FCari.LsField.Items.Add('ref_daerah'); //Tabel / Query
  FCari.LsField.Items.Add('kode_daerah');
  FCari.LsField.Items.Add('Propinsi');
  FCari.LsField.Items.Add('Kabupaten');
  FCari.LsField.Items.Add('Kecamatan');
  FCari.LsField.Items.Add('desa');
  FCari.CmbField.ItemIndex:=1;
  FCari.ShowModal;
    if nFieldCari[0]<>'' then
  begin
    ed_kdaerah.Text:=nFieldCari[0];
    ed_pro.Text:=nFieldCari[1];
    Ed_kab.Text:=nFieldCari[2];
    Ed_kec.Text:=nFieldCari[3];
    Ed_desa.Text:=nFieldCari[4];
//    Ed_pegawai.Text:=nFieldCari[0];
//    KosongTex(False);
//    AktifControl(Self,PnInput,False);
    ed_kdaerah.Enabled:=True;
    ed_kdaerah.Color:=clWhite;
    ed_kdaerah.SetFocus;
  end;
end;

procedure Tfrm_pegawai.FormCreate(Sender: TObject);
begin
 AktifControl(Self,PnInput, False);
 combo1;
 // PnInput.Show;
 BtnCari.Enabled:=False;
end;

procedure Tfrm_pegawai.BitBtn4Click(Sender: TObject);
begin
AktifControl(Self,PnInput, True);
 PnOperasi.Caption:='Tambah Data';
 KosongTex(True);
 //ednokwi.Enabled:= false;
// Ed_maksud.SetFocus;
 btncari.Enabled := false;
 tambah:=true; //tambah data
end;

procedure Tfrm_pegawai.BitBtn5Click(Sender: TObject);
begin
AktifControl(Self,PnInput, False);
PnOperasi.Caption:='Ubah Data';
ed_no.Enabled:=True;
ed_no.Color:=clWhite;
BtnCari.Enabled:=True;
btncari.SetFocus;
tambah:=false; //tdk
end;

procedure Tfrm_pegawai.btnprosesClick(Sender: TObject);
var
//  dsv : TMyDataSource;
  qv : TMyQuery;
begin
if MessageDlg('Data dengan'+#13+#10+ed_no.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

//ds := TMyDataSource.Create(nil);
  qv := TMyQuery.Create(nil);
  qv.Connection := DmModul.con1;
  qv.Active := false;

//KosongTex(True);
//AktifControl(Self,PnInput,False);

      //mulai simpan
      try
   {
        if ed_tgl_jt.Checked then
   tgljatuhtempo:=FormatDateTime('yyyy/mm/dd',ed_tgl_jt.Date)
   else
   tgljatuhtempo:='';

   if tgl_bayar.Checked then
   edtglbayar:=FormatDateTime('yyyy/mm/dd',tgl_bayar.Date)
   else
   edtglbayar:='';
    }

  if tambah then
  begin
  qv.SQL.Clear;
  qv.SQL.Text := 'Select * from m_pegawai where nama = '+QuotedStr(Ed_no.Text)+'';
  qv.Open;
      if qv.RecordCount > 0 then
      begin
        MessageDlg('Data dengan'+#13+#10+ed_no.Text+#13+#10+
        'Sudah Ada ?',mtInformation,[mbok],0);
        ed_no.Enabled:= true;
        ed_no.SetFocus;
        qv.Close;
        qv.Free;
        exit;
      end;
  //Nama,NIP,Jabatan,J_gol,Temp_tgllahir,Tgl_Lahir,Jenis,alamat,telp,NPWP,pend,th_lulus,tgl_ijazah,no_ijazah,tgl_masuk,hoby


  SQL := 'insert into m_pegawai (' +
  'Nama,NIP,Jabatan,Temp_tgllahir,Tgl_Lahir,'+
  'alamat,telp,NPWP,pend,th_lulus,tgl_ijazah,'+
  'no_ijazah,tgl_masuk,hoby'+
  ') Values('+
  QuotedStr(Ed_No.Text)+','+
  QuotedStr(ed_nip.Text)+','+
  QuotedStr(ed_jab.Text)+','+
  QuotedStr(ed_tmplahir.Text)+','+
  QuotedStr(FormatDateTime('dd/MM/yyyy',dtgl_lahir.Date))+','+
  QuotedStr(Ed_alamat.Text)+','+
  QuotedStr(ed_telp.Text)+','+
  QuotedStr(ed_npwp.Text)+','+
  QuotedStr(ed_pend.Text)+','+
  QuotedStr(ed_thlulus.Text)+','+
  QuotedStr(FormatDateTime('dd/MM/yyyy',dtgl_ijazah.Date))+','+
  QuotedStr(ed_noijazah.Text)+','+
  QuotedStr(FormatDateTime('dd/MM/yyyy',dtgl_masuk.Date))+','+
  QuotedStr(ed_hoby.Text)+')';

  Label23.Caption := 'Simpan Tambah';
  //QuotedStr(Ed_nip.Text)+')'; //Selesai Sql
  //QuotedStr(ed_alamat.Text)+','+
  //QuotedStr(FormatDateTime('yyyy/mm/dd',dtp1.Date))+')';
  end
  else
  begin
  sql := 'Update m_pegawai set nama='+ QuotedStr(ed_no.Text)+
     // ',alamat='+QuotedStr(ed_alamat.Text)+
     // ',tgl_lahir='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp1.Date))+
     ',NIP='+QuotedStr(ed_nip.Text)+
     ',Jabatan='+QuotedStr(ed_jab.Text)+
     ',Temp_tgllahir='+QuotedStr(ed_tmplahir.Text)+
     ',Tgl_Lahir='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtgl_lahir.Date))+
     ',alamat='+QuotedStr(Ed_alamat.Text)+
     ',telp='+QuotedStr(ed_telp.Text)+
     ',NPWP='+QuotedStr(ed_npwp.Text)+
     ',pend='+QuotedStr(ed_pend.Text)+
     ',th_lulus='+QuotedStr(ed_thlulus.Text)+
     ',tgl_ijazah='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtgl_ijazah.Date))+
     ',no_ijazah='+QuotedStr(ed_noijazah.Text)+
     ',tgl_masuk='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtgl_masuk.Date))+
     ',hoby='+QuotedStr(ed_hoby.Text)+
     ' where nama='+QuotedStr(Ed_no.Text);
     Label23.Caption := 'Simpan Ubah / Edit data ';

  end;

 ExecSQL1(sql);
 ShowMessage('Simpan ok :'+ Ed_No.Text);
 //end
  except
  ShowMessage('Simpan Gagal :'+ Ed_No.Text);
  //       m1 := 'Simpan gagal :'+ EdNokwi.Text;
 //       raise;

 //update

end;  //Selesai data
end;
end;

procedure Tfrm_pegawai.btnbatalClick(Sender: TObject);
begin
KosongTex(True);
end;

procedure Tfrm_pegawai.btn_cetakbriClick(Sender: TObject);
begin


if MessageDlg('Data dengan'+#13+#10+ed_bri.Text+#13+#10+
        'akan di Cetak, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin
    Screen.cursor := crsqlWait;
    With ekrtf2 do Begin
   //format tanggal
   ClearVars;
   CreateVar('fullformat','dd mmmm yyyy');
   infile:=ExtractFilePath(Application.ExeName)+ '\rtf\'+'BRI_kawi_2014r.rtf';
   OutFile:= ExtractFilePath(Application.ExeName)+ '\report\'+ED_bri.Text+'-bri'+'.rtf';
   ExecuteOpen([],SW_SHOW);
   Screen.cursor := crDefault;
   End;
end;
end;
procedure Tfrm_pegawai.BTN_XLSClick(Sender: TObject);
begin
if MessageDlg('Data dengan'+#13+#10+ed_bri.Text+#13+#10+
        'akan di Cetak eXCEL, ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin

//dsxls.Open;
//if dsxls.Eof then exit;
EXLReport1.template :=ExtractFilePath(Application.ExeName)+ '\xls\'+'FORM_BRI.xls';
//EXLReport1.Dataset:=dsxls;
//sheet yg dipilih
EXLReport1.TemplSheet :='1';
//EXLReport1.TemplSheet :='data1';
EXLReport1.Show();
end;
 end;
procedure Tfrm_pegawai.btn1Click(Sender: TObject);
begin
 FCari_com:=TFCari_com.Create(Application);
 FCari_com.Caption := 'pilih Agama';
  LsvSetCol('kode|nama|',
  '70|200|',FCari_com.LsCari);
  FCari_com.LsField.Items.Clear;
  FCari_com.LsField.Items.Add('ref_agama'); //Tabel / Query
  FCari_com.LsField.Items.Add('agama');
  FCari_com.LsField.Items.Add('nama');
  FCari_com.ShowModal;

    if nFieldCari[0]<>'' then
  begin
    Edit3.Text:=nFieldCari[0];
  end;

end;

end.
