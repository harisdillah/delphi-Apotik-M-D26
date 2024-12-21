unit UBarangFxMasuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFrmBarangfx = class(TForm)
    Label3: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Label19: TLabel;
    mmo1: TMemo;
    Label11: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    Edit9: TEdit;
    Label13: TLabel;
    Edit10: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label17: TLabel;
    Edit12: TEdit;
    Label18: TLabel;
    Edit13: TEdit;
    Label8: TLabel;
    lTotal: TLabel;
    Label9: TLabel;
    DTPicker1: TDateTimePicker;
    Label7: TLabel;
    Label15: TLabel;
    Edit5: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lJumlah: TLabel;
    SpeedButton4: TSpeedButton;
    pcontrol: TPanel;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditNumberExit(Sender: TObject);
    procedure OKeyPress(Sender: TObject; var Key: Char);
    procedure OCloseUp(Sender: TObject);
    //procedure DBLCNotInList(Sender: TObject; LookupTable: TDataSet;
    //  NewValue: String; var Accept: Boolean);
    procedure OKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);


  private
    { Private declarations }
    mMaster: Boolean;
    mMode, mTahun, mTahunMaster, mGolbar: Integer;
    mKodeLokasi, mNoUrut, mKodeRekening, mKodeBidang, mSubBidang,
    mNamaBarang, mSpesifikasi, mSatuan, mKeterangan, mData: string;
    mPPPN, mJumlahMin, mJumlah, mHarga, mTotal, mPPN,
    mDiskon, mDiskonRp, mHargaNet: Extended;
    mTanggal, mTglED: TDateTime;
//    procedure RefreshSubBidang;
    function getData: string;

  public
    { Public declarations }
    property Mode: Integer write mMode;
    property Master: Boolean write mMaster;
    property Tahun: Integer write mTahun;
    property TahunMaster: Integer write mTahunMaster;
    property Tanggal: TDateTime write mTanggal;
    property KodeLokasi: string write mKodeLokasi;
    property GolonganBarang: Integer write mGolbar;
    property NoUrut: string read mNoUrut write mNoUrut;
    property KodeRekening: string write mKodeRekening;
    property KodeBidang: string write mKodeBidang;
    property SubBidang: string write mSubBidang;
    property NamaBarang: string write mNamaBarang;
    property Spesifikasi: string write mSpesifikasi;
    property Satuan: string write mSatuan;
    property Jumlah: Extended write mJumlah;
    property Harga: Extended write mHarga;
    property PPN: Extended write mPPN;
    property PPPN: Extended write mPPPN;
    property TglED: TDateTime write mTglED;
    property Keterangan: string write mKeterangan;
    property JumlahMin: Extended write mJumlahMin;
  end;

var
  FrmBarangfx: TFrmBarangfx;

implementation
 Uses UFunctions;
{$R *.dfm}

function TFrmBarangfx.getData;
var TglED: string;
begin
    {
  if DTPicker1.Checked then TglED:=DTSQL(DTPicker1.DateTime) else TglED:='';
  Result:=wwDBLC2.Text+wwDBLC4.Text+wwDBLC7.Text+Edit3.Text+
    Trim(MemoStr(Memo1.Lines.Text))+wwDBLC1.Text+Edit8.Text+
    Edit9.Text+Edit4.Text+Edit13.Text+TglED+Edit5.Text;
    }
end;


procedure TFrmBarangfx.FormShow(Sender: TObject);
begin
{
  Image1.Picture.Bitmap:=mMain.GetBackground(1);
  BitBtn1.Glyph:=mMain.GetImage(7);
  BitBtn2.Glyph:=mMain.GetImage(9);
  SpeedButton1.Glyph:=mMain.GetImage(11);
  SpeedButton2.Glyph:=mMain.GetImage(11);
  SpeedButton3.Glyph:=mMain.GetImage(11);
  DTPicker1.Perform(DTM_SETFORMAT, 0, DWORD(PCHAR('dd MMM yyyy')));
  DTPicker1.DateTime:=Now; DTPicker1.Checked:=False;
  //
  qRekening.ParamByName('pengguna').AsString:=mMain.LOGIN.ID;
  qRekening.ParamByName('tahun').AsInteger:=mTahun;
  qRekening.ParamByName('golbar').AsInteger:=mGolBar;
  qBidang.ParamByName('tahun').AsInteger:=mTahun;
  qSatuan.ParamByName('kolok').AsString:=mKodeLokasi;
  qSubBidang.ParamByName('kolok').AsString:=mKodeLokasi;
  OpenSQL(qRekening); OpenSQL(qBidang); OpenSQL(qSatuan);
  //
  qRekening.Locate('koderekening', mKodeRekening, []);
  qBidang.Locate('kodebidang', mKodeBidang, []);
  //
  Edit1.Text:=mNoUrut;
  wwDBLC2.Text:=wwDBLC2.LookupTable.FieldByName(wwDBLC2.LookupField).AsString;
  wwDBLC3.Text:=wwDBLC3.LookupTable.FieldByName(wwDBLC3.LookupField).AsString;
  wwDBLC4.Text:=wwDBLC4.LookupTable.FieldByName(wwDBLC4.LookupField).AsString;
  wwDBLC5.Text:=wwDBLC5.LookupTable.FieldByName(wwDBLC5.LookupField).AsString;
  RefreshSubBidang;
  wwDBLC7.Text:=mSubBidang;
  Edit3.Text:=mNamaBarang;
  Memo1.Lines.Text:=mSpesifikasi;
  wwDBLC1.Text:=mSatuan;
  if mMode=ModTambah then begin //tambah
   Caption:='Form Detil Barang Masuk (Baru)';
    if mSpesifikasi+mSatuan<>'' then Edit8.SetFocus
    else wwDBLC1.SetFocus;
    Edit12.Text:=NFormat(mPPPN, 11);
  end else begin
    Caption:='Form Detil Barang Masuk (Ubah)';
    mHargaNet:=mHarga;
    mTotal:=mJumlah*mHarga;
    if mHarga=0 then mPPPN:=0
    else mPPPN:=mPPN/mTotal*100;
    //end
  } Edit8.Text:=NFormat(mJumlah, 11);
    Edit9.Text:=NFormat(mHarga, 11);
    Edit10.Text:=NFormat(mTotal, 6);
    Edit12.Text:=NFormat(mPPPN, 11);
    Edit13.Text:=NFormat(mPPN, 11);
    lTotal.Caption:=NFormat(mTotal-mDiskonRp+mPPN, 3);
    // mTglED<>mMain.TglNull then DTPicker1.DateTime:=mTglED;
    Edit5.Text:=mKeterangan;
    Edit8.SetFocus; mData:=getData;
  //d;
  if mJumlahMin=0 then
    lJumlah.Caption:='( > '+NFormat(mJumlahMin, 11)+' )'
  else lJumlah.Caption:='( >= '+NFormat(mJumlahMin, 11)+' )';
end;

procedure TFrmBarangfx.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//qRekening.Close; qBidang.Close; qSubBidang.Close; qSatuan.Close;
end;

procedure TFrmBarangfx.Edit9Click(Sender: TObject);
var LHarga, LPPN: Extended;
//q: TQuery;

begin
//mKodeBidang:=qBidang.FieldByName('kodebidang').AsString;
  //mSubBidang:=Trim(wwDBLC7.Text);
  //mNamaBarang:=Trim(Edit3.Text);
  //mSpesifikasi:=Trim(MemoStr(Memo1.Lines.Text));
  //mSatuan:=Trim(LowerCase(wwDBLC1.Text));
  if Edit8.Focused then EditNumberExit(Edit8);
  {
  q:=NewQuery;
  q.SQL.Text:='select * from dbo.GetHargaTerakhir('+QuotedStr(mKodeLokasi)+','+
    DTSQL(mTanggal)+','+QuotedStr(mKodeBidang)+','+StrSQL(mSubBidang)+','+
    StrSQL(mNamaBarang)+','+StrSQL(mSpesifikasi)+','+StrSQL(mSatuan)+')';
  OpenSQL(q);
  }
  //LHarga:=q.FieldByName('harga').AsFloat;
  //LPPN:=q.FieldByName('ppn').AsFloat*mJumlah;
  //Edit9.Text:=NFormat(LHarga, 11); EditNumberExit(Edit9);
  //Edit13.Text:=NFormat(LPPN, 11); EditNumberExit(Edit13);
end;

procedure TFrmBarangfx.BitBtn1Click(Sender: TObject);
var Pesan, Sql: string; bMaster: Boolean;
begin
{
  bMaster:=(mKodeBidang<>qBidang.FieldByName('kodebidang').AsString)
    or (mSubBidang<>Trim(wwDBLC7.Text)) or (mNamaBarang<>Trim(Edit3.Text))
    or (mSatuan<>Trim(LowerCase(wwDBLC1.Text))) or mMaster;
  mKodeRekening:=qRekening.FieldByName('koderekening').AsString;
  mKodeBidang:=qBidang.FieldByName('kodebidang').AsString;
  mSubBidang:=Trim(wwDBLC7.Text);
  mNamaBarang:=Trim(Edit3.Text);
  mSpesifikasi:=Trim(MemoStr(Memo1.Lines.Text));
  mSatuan:=Trim(LowerCase(wwDBLC1.Text));
  if DTPicker1.Checked then mTglED:=DTPicker1.DateTime
  else mTglED:=mMain.TglNull;
  mKeterangan:=Trim(Edit5.Text);
  }

  //cek
  Pesan:='';

  if mJumlah=0 then begin
    Pesan:=Pesan+'- Jumlah harus lebih dari Nol.';
    Edit8.SetFocus;
    //Edit8.Color:=ErrorBC;
  end else Edit3.Color:=clWindow;
  if mJumlah<mJumlahMin then begin
    Pesan:=Pesan+'- Jumlah harus lebih dari/sama dengan '+NFormat(mJumlahMin, 11)+'.';
    Edit8.SetFocus;
    //Edit8.Color:=ErrorBC;
  end else Edit8.Color:=clWindow;
  if mNamaBarang='' then begin
    Pesan:=Pesan+'- Nama Barang masih kosong.';
    Edit3.SetFocus;
    //Edit3.Color:=ErrorBC;
  end else Edit3.Color:=clWindow;
  if not(Pesan='') then begin
    MessageDlg('Terdapat kesalahan sebagai berikut.'+Pesan,
      mtWarning, [mbOK], 0); ModalResult:=mrNone; Exit;
  end;
  //ada perubahan ?
  
    {
  if mJumlah=0 then begin
    Pesan:=Pesan+CRLF+'- Jumlah harus lebih dari Nol.';
    Edit8.SetFocus; Edit8.Color:=ErrorBC;
  end else Edit3.Color:=clWindow;
  if mJumlah<mJumlahMin then begin
    Pesan:=Pesan+CRLF+'- Jumlah harus lebih dari/sama dengan '+NFormat(mJumlahMin, 11)+'.';
    Edit8.SetFocus; Edit8.Color:=ErrorBC;
  end else Edit8.Color:=clWindow;
  if mNamaBarang='' then begin
    Pesan:=Pesan+CRLF+'- Nama Barang masih kosong.';
    Edit3.SetFocus; Edit3.Color:=ErrorBC;
  end else Edit3.Color:=clWindow;
  if not(Pesan='') then begin
    MessageDlg('Terdapat kesalahan sebagai berikut.'+Pesan,
      mtWarning, [mbOK], 0); ModalResult:=mrNone; Exit;
  end;
  //ada perubahan ?
  if (mMode=ModUbah) and (mData=getData) then begin
    ModalResult:=mrCancel; Exit;
  end;
       }
  //simpan
  {
  Sql:='BEGIN TRANSACTION ';
  if mMode=ModUbah then
    Sql:='delete from stokmasuk where kodelokasi='+
      QuotedStr(mKodeLokasi)+'and nodokumen='+StrSQL(mMain.UserId)+
      'and nourut='+mNoUrut+' ';
  Sql:=Sql+'insert into stokmasuk(kodelokasi,nodokumen,nourut,kodebidang,'+
    'subbidang,namabarang,spesifikasi,jumlah,satuan,hargasatuan,'+
    'ppn,tglexp,koderekening,keterangan)values('+
    QuotedStr(mKodeLokasi)+','+QuotedStr(mMain.UserId)+','+mNoUrut+','+
    QuotedStr(mKodeBidang)+','+StrSQL(mSubBidang)+','+StrSQL(mNamaBarang)+','+
    StrSQL(mSpesifikasi)+','+NumSql(NFormat(mJumlah,11))+','+StrSQL(mSatuan)+','+
    NumSql(NFormat(mHargaNet,11))+','+NumSql(NFormat(mPPN,11))+','+
    DTSQL(mTglED)+','+StrSQL(mKodeRekening)+','+StrSQL(mKeterangan)+')';
  ExecSQL(Sql+' COMMIT');
  }
  if bMaster then begin
    {
    Sql:=Format(
      'exec dbo.imasterbarang %d, %d, %s, %s, %s, %s, %s, %s',
      [mTahunMaster, mGolBar, QuotedStr(mKodeLokasi), QuotedStr(mKodeBidang), StrSQL(mSubBidang),
      StrSQL(mNamaBarang), StrSQL(mSpesifikasi), StrSQL(mSatuan)]);
    ExecSQL(Sql);
    }
  end;
end;

procedure TFrmBarangfx.EditNumberExit(Sender: TObject);
var t: TEdit; s: string;
begin
  t:=(Sender as TEdit);
  s:=NFormat(SVal(t.Text), 11);
  if t=Edit8 then begin //qty
    if s=NFormat(mJumlah, 11) then Exit;
    mJumlah:=SVal(Edit8.Text, 0, -1);
    t.Text:=NFormat(mJumlah, 11);
    if mHarga>0 then begin
      mTotal:=mJumlah*mHarga;
      Edit10.Text:=NFormat(mTotal, 6);
    end else begin
      if mJumlah>0 then begin
        mHarga:=mTotal/mJumlah;
        Edit9.Text:=NFormat(mHarga, 11);
      end else begin
        mTotal:=0;
        Edit10.Text:='0';
      end;
    end;
  end;
  if t=Edit9 then begin //harga
    if s=NFormat(mHarga, 11) then Exit;
    mHarga:=SVal(Edit9.Text, 0, -1);
    t.Text:=NFormat(mHarga, 11);
    if mJumlah>0 then begin
      mTotal:=mJumlah*mHarga;
      Edit10.Text:=NFormat(mTotal, 6);
    end else begin
      if mHarga>0 then begin
        mJumlah:=mTotal/mHarga;
        Edit8.Text:=NFormat(mJumlah, 11)
      end else begin
        mTotal:=0;
        Edit10.Text:='0';
      end;
    end;
  end;
  if t=Edit10 then begin //total harga
    s:=NFormat(SVal(t.Text), 6);
    if s=NFormat(mTotal, 6) then Exit;
    mTotal:=SVal(Edit10.Text, 0, -1);
    t.Text:=NFormat(mTotal, 6);
    if mJumlah>0 then begin
      mHarga:=mTotal/mJumlah;
      Edit9.Text:=NFormat(mHarga, 11);
    end else begin
      if mHarga>0 then begin
        mJumlah:=mTotal/mHarga;
        Edit8.Text:=NFormat(mJumlah, 11);
      end;
    end;
  end;
  if (t=Edit2) or (t=Edit4) then begin //diskon
    if t=Edit2 then begin
      if Edit2.Text=NFormat(mDiskon, 11) then begin
        mPPPN:=0; EditNumberExit(Edit12); Exit;
      end;
      mDiskon:=SVal(Edit2.Text, 0, 100);
      mDiskonRp:=mDiskon/100*mTotal;
    end else begin
      if Edit4.Text=NFormat(mDiskonRp, 11) then begin
        mPPPN:=0; EditNumberExit(Edit12); Exit;
      end;
      mDiskonRp:=SVal(Edit4.Text);
      if mTotal>0 then mDiskon:=mDiskonRp/mTotal*100
      else mDiskon:=0;
    end;
    Edit2.Text:=NFormat(mDiskon, 11);
    Edit4.Text:=NFormat(mDiskonRp, 11);
    mPPPN:=0; EditNumberExit(Edit12);
  end else begin
    if not((t=Edit12) or (t=Edit13)) then begin
      mDiskon:=0; EditNumberExit(Edit2);
      lTotal.Caption:=NFormat(mTotal-mDiskonRp+mPPN, 3);
    end;
  end;
  if (t=Edit12) or (t=Edit13) then begin //ppn
    lTotal.Caption:=NFormat(mTotal-mDiskonRp+mPPN, 3);
    if mJumlah=0 then mHargaNet:=0
    else mHargaNet:=(mTotal-mDiskonRp)/mJumlah;
    if t=Edit12 then begin
      if Edit12.Text=NFormat(mPPPN, 11) then Exit;
      mPPPN:=SVal(Edit12.Text);
      mPPN:=mPPPN/100*(mTotal-mDiskonRp);
    end else begin
      if Edit13.Text=NFormat(mPPN, 11) then Exit;
      mPPN:=SVal(Edit13.Text);
      if mTotal>0 then mPPPN:=mPPN/(mTotal-mDiskonRp)*100
      else mPPPN:=0;
    end;
    Edit12.Text:=NFormat(mPPPN, 11);
    Edit13.Text:=NFormat(mPPN, 11);
    lTotal.Caption:=NFormat(mTotal-mDiskonRp+mPPN, 3);
    if mJumlah=0 then mHargaNet:=0
    else mHargaNet:=(mTotal-mDiskonRp)/mJumlah;
  end;
end;

procedure TFrmBarangfx.OKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then begin
    if HiWord(GetKeyState(VK_SHIFT))<>0 then
      SelectNext(Sender as TWinControl, False, True)
    else SelectNext(Sender as TWinControl, True, True);
    Key:=#0
  end {lse if Key=LF then begin
    if Sender=Edit8 then CalcClick(SpeedButton1)
    else if Sender=Edit9 then CalcClick(SpeedButton2)
      else if Sender=Edit10 then CalcClick(SpeedButton3)
        else Exit;
    Key:=#0;
  end; }
end;

procedure TFrmBarangfx.OKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //if Key=116 then HargaClick(Self);
end;

procedure TFrmBarangfx.OCloseUp(Sender: TObject);
begin
  //SelectNext(Sender as TWinControl, True, True);
end;

end.
