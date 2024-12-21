unit Un_pasien;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DBTables, DBAccess, MyAccess,
  MemDS,DBCtrls, ExtCtrls, ComCtrls;

type
  Tfrm_pasien = class(TForm)
    PnInput: TPanel;
    pnl2: TPanel;
    PnOperasi: TPanel;
    btn_tambah: TBitBtn;
    btn1: TBitBtn;
    btn_keluar: TBitBtn;
    lbl1: TLabel;
    ednip: TEdit;
    BitBtn2: TBitBtn;
    lbl2: TLabel;
    ednama: TEdit;
    dtp_tgl: TDateTimePicker;
    Label5: TLabel;
    lbl3: TLabel;
    mmo_alamat: TMemo;
    btn_keluara: TBitBtn;
    cbb_jk: TComboBox;
    Label1: TLabel;
    Timer1: TTimer;
    procedure btn1Click(Sender: TObject);
    procedure btn_keluarClick(Sender: TObject);
    procedure btn_tambahClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ednipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_keluaraClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure kosong;
    procedure  tampildata;
  end;

var
  frm_pasien: Tfrm_pasien;

implementation

uses UnModul,UF_dbsql, UnCarisp;

{$R *.dfm}

Procedure Tfrm_pasien.TampilData;
  var
    q2 : TMyQuery;
    qd2 : TMyQuery;
    i2 : Integer;
  Begin
    q2 := TMyQuery.Create(nil);
  try

  q2.Connection := DmModul.con1;
  q2.Active := false;
  q2.SQL.Clear;
  q2.SQL.Text :='select * from m_pasien where rm='+QuotedStr(ednip.Text)+'';
  q2.Open;

  if q2.RecordCount > 0 then
  begin
    ednip.Text:=q2.FieldByName('rm').AsString;
    ednama.Text:=q2.FieldByName('nama').AsString;
    dtp_tgl.date:=q2.FieldByName('tgl_lahir').AsDateTime;
    cbb_jk.Text:=q2.FieldByName('jk').AsString;
    mmo_alamat.Text:=q2.FieldByName('alamat').AsString;
   // cbb_atasan.EditValue:=q2.FieldByName('atasan').AsString;
   btn_tambah.Enabled := False;
  end
  else
    begin
    ShowMessage( 'data kosong / Tidak ADA : ' + ednip.Text );
    kosong;
    end;

  finally
    q2.Close;
    q2.Free;
  end;
  end;

Procedure Tfrm_pasien.kosong;
 begin
 ednip.Text := '';
 ednama.Text := '';
 dtp_tgl.date := date;
 mmo_alamat.Text := '';
 btn_tambah.Enabled := True;
 ednip.SetFocus;
end;


procedure Tfrm_pasien.btn1Click(Sender: TObject);
 var
  AdDsData : TMyQuery;
  sql : string;
begin

if MessageDlg('Data dengan'+#13+#10+ednip.Text+#13+#10+
        'akan di Simpan, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin
   If PnOperasi.Caption='Tambah Data' then
   begin

      AdDsData := TMyQuery.Create(nil);
      AdDsData.Connection := DmModul.con1;

      AdDsData.Close;
      AdDsData.SQL.Text:='Select rm from m_pasien where rm='+
      QuotedStr(ednip.Text)+'';
      AdDsData.Open;

          if AdDsData.RecordCount > 0 then
      begin
       // MessageDlg('Kode sudah ada'+ednokwi.Text+'?',mtInformation,[mbok],0);
       // ednokwi.Enabled:= true;
       // ednokwi.SetFocus;
       // exit;
        if MessageDlg('Data dengan RM Sudah Ada : '+#13+#10+ednip.Text+#13+#10+
        'Membuat Nomor Baru, akan lanjutkan?',mtconfirmation, [mbOK, mbCancel], 0) = mrOK then
          begin
        ednip.Enabled:= true;
        ednip.SetFocus;
        //buatno;
        //EdNokwi.Text:=generateID('i_pjbt_kontr','no_peng','k');
        AdDsData.Close;
        AdDsData.Free;
        exit;
            end;
       Exit;

      end;





      try
       sql := 'insert into m_pasien (rm,nama,tgl_lahir,jk,alamat'+
        ') Values('+
        QuotedStr(ednip.Text)+','+
        QuotedStr(ednama.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_tgl.Date))+','+
        QuotedStr(cbb_jk.Text)+','+
        QuotedStr(mmo_alamat.Text)+')';
        ExecSQL1(sql); //simpan baru
        ShowMessage('Simpan ok :'+ ednama.Text);
        kosong;
         except
        ShowMessage('Simpan baru gagal :'+ ednip.Text);
        raise;
      end;

  end    //end tambah
   else if PnOperasi.Caption='Ubah Data' then
   begin
        //if Validasi=False then exit;
        try
      // ubah
        sql := 'Update m_pasien set rm='+QuotedStr(ednip.Text)+
      	      ',nama='+QuotedStr(ednama.Text)+
              ',tgl_lahir='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_tgl.Date))+
              ',alamat='+QuotedStr(mmo_alamat.Text)+
              ',jk='+QuotedStr(cbb_jk.Text)+
              'where rm='+
        QuotedStr(ednip.Text);
        ExecSQL1(sql); //simpan Edit

        {
        sql3 :='Update h_penjualan set terbilang= tcase(terbilang)'+
             ' where no_transaksi='+QuotedStr(btnnoreg.Text);
        ExecSQL1(sql3);
         }

        {
        sql3 :='Update input_spt_keu set terbilang= tcase(terbilang)'+
       ',t_hr= tcase(t_hr)' +
       ' where id_AGENDA='+QuotedStr(EdNokwi.Text);
        ExecSQL1(sql3);
         }

        ShowMessage('Simpan Perubahan ok :'+ ednama.Text);
        kosong;
        //KosongTex(True);
        //AktifControl(Self,PnInput,False);
      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ ednama.Text);
        raise;
      end;

     //  KosongTex(True);

   end //end Update
   else if PnOperasi.Caption='Hapus Data' then
   begin
      {
      if MessageDlg('Data dengan'+#13+#10+btnnoreg.Text+#13+#10+
        'akan di Hapus, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
        begin
      try
      // delete
        SQL := 'delete from h_penjualan where no_transaksi='+
        QuotedStr(btnnoreg.Text)+'';
        ExecSQL1(sql); //Hapus

        ShowMessage('Hapus / :'+ btnnoreg.Text);
        //KosongTex(True);
        //AktifControl(Self,PnInput,False);
      except
             ShowMessage('Hapus Gagal :'+ btnnoreg.Text);
        raise;
      end;
        end;
        }

    end; //selesai Proses

  //---bayar---

end; //end tanya

end;

procedure Tfrm_pasien.btn_keluarClick(Sender: TObject);
begin
//Close;
kosong;

end;

procedure Tfrm_pasien.btn_tambahClick(Sender: TObject);
begin
//ednip.Text:=buat_kode('ref_dokter','nip','dr-');
ednip.SetFocus;
PnOperasi.Caption:='Tambah Data';
end;

procedure Tfrm_pasien.BitBtn2Click(Sender: TObject);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_pasien';
  LsvSetCol('RM|Nama|Tgl.Lahir|Alamat|',
  '90|160|70|100|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('RM');
  FCarisp.LsField.Items.Add('nama');
  FCarisp.LsField.Items.Add('tgl_lahir');
  FCarisp.LsField.Items.Add('alamat');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    ednip.Text:=nFieldCari[0];
    ednip.Color:=clScrollBar;
    //ednama.Text:=nFieldCari[1];
    //dtp_tgl.Date:=StrToDate(nFieldCari[2]);
    //mmo_alamat.Text:=nFieldCari[3];
    //ednip.Style.Color:=clRed;
    ednip.SetFocus;
    PnOperasi.Caption:='Ubah Data';
  end;
end;

procedure Tfrm_pasien.ednipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=Vk_Return then
  begin

    if PnOperasi.Caption='Tambah Data' then
    begin
      SelectNext(ActiveControl,True,True);
      exit;
    end;

    if PnOperasi.Caption='Ubah Data' then
        AktifControl(Self,PnInput,True);
      TampilData;
      //BtnProses.Enabled:=True;
      //vKode:=ednokwi.Text;
      //ednokwi.Enabled:= false;
      //e_nama.SetFocus;
      SelectNext(ActiveControl,True,True);
    end
    else
    begin
      if PnOperasi.Caption='ubah data' then
      begin
        AktifControl(Self,PnInput,False);
        //ednip.Enabled:=true;
        ednip.Color:=clWhite;
        ednama.SetFocus;
        
        //ednokwi.SelStart:=length(ednokwi.Text);
      end;
      //KosongTex(False);
      //BtnProses.Enabled:=False;
      ednip.SetFocus;
      //vKode:='';
    end;
end;

procedure Tfrm_pasien.btn_keluaraClick(Sender: TObject);
begin
Close;

end;

procedure Tfrm_pasien.Timer1Timer(Sender: TObject);
begin
  if PnOperasi.Font.Color=clred then
  begin
    PnOperasi.Font.Color:=clWhite;
  end
  else
  begin
    PnOperasi.Font.Color:=clRed;
  end;
end;

end.
