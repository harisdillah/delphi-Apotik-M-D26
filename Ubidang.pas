unit Ubidang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MyAccess, MemDS, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, ComCtrls, cxLabel, Buttons,
  ExtCtrls, cxTextEdit,ShellAPI, cxMaskEdit, cxButtonEdit, StdCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Grids,
  AdvObj, BaseGrid, AdvGrid, AdvUtil;

type
  TFrmBidang = class(TForm)
    MyStoredProc1: TMyStoredProc;
    MyDataSource1: TMyDataSource;
    cxlbljam: TcxLabel;
    Panel1: TPanel;
    cxlbl10: TcxLabel;
    dtp_buat: TDateTimePicker;
    cxLabel1: TcxLabel;
    dtp_akhir: TDateTimePicker;
    btnBtnUbah1: TSpeedButton;
    cxLabel2: TcxLabel;
    SpeedButton1: TSpeedButton;
    btn_bidang: TcxButtonEdit;
    lbl_namabidang: TLabel;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    cbb_petugas: TComboBox;
    cxLabel3: TcxLabel;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    ed_cariuser: TEdit;
    chktempo: TCheckBox;
    ed_perpjk: TEdit;
    ts2: TTabSheet;
    Label23: TLabel;
    cbb_ppk: TcxLookupComboBox;
    Label25: TLabel;
    btn_cari: TBitBtn;
    Grid2: TAdvStringGrid;
    Label2: TLabel;
    btnLogin: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Grid3: TAdvStringGrid;
    SpeedButton9: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_bidangPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBtnUbah1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btn_cariClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
    Procedure Aturgrid3;
  public
    { Public declarations }
    Procedure aturgrid2;
  end;

var
  FrmBidang: TFrmBidang;
  i,counter,hapus_baris:integer;

implementation

uses UnModul,UFunctions,UF_dbsql, UnCarisp,UnCarisp2, UnMenu,UPilihBarang,UTutupBuku;

{$R *.dfm}


Procedure TFrmBidang.aturgrid2;
var counter,hapus_baris : Integer;
begin
  hapus_baris:=0;
  Grid2.ColCount:=8;
  Grid2.RowCount:=1;
  Grid2.FixedRowAlways := True;
  //No|tgl.|No.BBK|Ruangan|Gudang|
  Grid2.Cells[0,0]:='No.';
  Grid2.Cells[1,0]:='Kode User';
  Grid2.Cells[2,0]:='User';
  Grid2.Cells[3,0]:='Nama User';
  Grid2.ColWidths[0]:=30;
  Grid2.ColWidths[1]:=50;
  Grid2.ColWidths[2]:=160;
  Grid2.ColWidths[3]:=140;

end;


procedure TFrmBidang.btn_cariClick(Sender: TObject);
var
  spdatauser : TMyStoredProc;
  i : integer;

begin
   aturgrid2;
   spdatauser:= TMyStoredProc.Create(nil);
   spdatauser.Connection := DmModul.con1;
  try
    spdatauser.Close;
    spdatauser.StoredProcName := 'sp_cariuser';
    spdatauser.PrepareSQL;
    //spdata.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    //spdata.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    spdatauser.ParamByName('cari').AsString := ed_cariuser.text;
    spdatauser.Open;

    Label2.Caption := inttostr(spdatauser.RecordCount) +' record ';


    if spdatauser.Eof then
    begin
    ShowMessage('data YANG DICARI tidak ada :'+ ed_cariuser.Text);
    exit;
    end;


     for i:=1 to Grid2.RowCount-1 do begin
        Grid2.Cells[0,i]:='';
        Grid2.Cells[1,i]:='';
        Grid2.Cells[2,i]:='';
        Grid2.Cells[3,i]:='';
        //Grid2.Cells[4,i]:='';
        //Grid2.Cells[5,i]:='';
    end;


    //isi grid

    counter:=0;
      if  spdatauser.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spdatauser.RecordCount+1;


    while not spdatauser.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
          Grid2.Cells[1,counter]:=spdatauser.FieldByName('id_user').AsString;
          Grid2.Cells[2,counter]:=spdatauser.FieldByName('username').AsString;
          Grid2.Cells[3,counter]:=spdatauser.FieldByName('nama_user').AsString;
          {
          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);
           }
          spdatauser.Next;
    end;

    finally
    spdatauser.Close;
    end;
end;

procedure TFrmBidang.btnBtnUbah1Click(Sender: TObject);
var
  tgl1,tgl2,ht1:string;
begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtp_buat.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtp_akhir.Date);
  ht1:='http://192.168.30.7:88/cetak_delphi/cetak/tampil_barang_stok_tgl.php?tgl1='+tgl1+'&tgl2='+tgl2;
   ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);
end;

procedure TFrmBidang.btnLoginClick(Sender: TObject);
begin
//Grid2DblClickCell(Sender);

end;

procedure TFrmBidang.btn_bidangPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin

  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_cari_bidang';
  LsvSetCol('Kode|Nama Bidang|',
  '120|520|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('kd_bidang');
  FCarisp.LsField.Items.Add('bid_nama');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    btn_bidang.Text:=nFieldCari[0];
    lbl_namabidang.Caption:=nFieldCari[1];
    btn_bidang.Style.Color:=clLtGray;
    btn_bidang.SetFocus;
  end;


end;

procedure TFrmBidang.FormCreate(Sender: TObject);
begin
dtp_buat.date:= now;
dtp_akhir.date:= now;
Aturgrid3;
end;

procedure TFrmBidang.Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
   var
  tgl1,tgl2,ht1ogin,user:string;
begin
  user:=Grid2.Cells[2,AROW];
  ht1ogin:='http://192.168.30.7:88/sicantig/login.php?user='+user;
  ShellExecute(Handle,'open',PChar(ht1ogin),'','',SW_NORMAL);

  end;

procedure TFrmBidang.SpeedButton1Click(Sender: TObject);
var
  ht,kodecari:string;
begin
//if MyQuery1.RecordCount<=0 then exit;
  kodecari := btn_bidang.Text;
//  ht:='http://192.168.30.7/gudang22/modul/laporan/lap_bulanan/kartu_barang_pdf_delphi.php?cari='+kodecari;
   //ht:='http://localhost/bidang23/tampil_barang_bidang.php?cari=3101';
   ht:='http://192.168.30.7/bidang23/tampil_barang_bidang.php?cari='+kodecari;
   ShellExecute(Handle,'open',PChar(ht),'','',SW_NORMAL);
end;

procedure TFrmBidang.SpeedButton2Click(Sender: TObject);
var
  ht3,kodecari3:string;
  SPcaristok  : TMyStoredProc;

begin

 if MessageDlg('Data dengan'+#13+#10+'Data Stok Tutup '+#13+#10+
        'akan di Proses, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
begin
SPcaristok := TMyStoredProc.Create(nil);

  try
    SPcaristok.Connection := DmModul.con1;
    SPcaristok.Close;
    SPcaristok.StoredProcName := 'sp_tutupstok';
    SPcaristok.PrepareSQL;
    //SPcaristok.ParamByName('cari').AsString := btn_cv.Text; //cv bringin
    SPcaristok.Execute;
    //SPcaristok.Open;
   if SPcaristok.RecordCount > 0 then
  begin
    //Label1.Caption :=SPcaristok.FieldByName('nama').AsString;
    Label1.Caption := 'Data Belum di proses';
   end
  else
    begin
    Label1.Caption :='Data Sudah di proses';
    end;

   finally
    SPcaristok.Close;
    SPcaristok.Free;
  end;
//if MyQuery1.RecordCount<=0 then exit;
//  kodecari3 := btn_bidang.Text;
//  ht:='http://192.168.30.7/gudang22/modul/laporan/lap_bulanan/kartu_barang_pdf_delphi.php?cari='+kodecari;
   //ht:='http://localhost/bidang23/tampil_barang_bidang.php?cari=3101';
   ht3:='http://192.168.30.7/bidang23/tampil_barang_habis.php';
   ShellExecute(Handle,'open',PChar(ht3),'','',SW_NORMAL);
 end;

end;
procedure TFrmBidang.SpeedButton3Click(Sender: TObject);
var
  ht4,kodecari4:string;
begin
   //ht4:='http://192.168.30.7/bidang23/tampil_barang_habis.php';
   ht4:='http://192.168.30.7/bidang23/tampil_barang_habis_xls.php';
   ShellExecute(Handle,'open',PChar(ht4),'','',SW_NORMAL);
end;

procedure TFrmBidang.SpeedButton4Click(Sender: TObject);
var
  ht2,kodecari2,gudang:string;
begin
  kodecari2 := btn_bidang.Text;
  ht2:='http://192.168.30.7/bidang23/tampil_barang_bidang_xls.php?cari='+kodecari2;
  ShellExecute(Handle,'open',PChar(ht2),'','',SW_NORMAL);

end;

procedure TFrmBidang.SpeedButton5Click(Sender: TObject);
var
  tgl1xls,tgl2xls,ht1xls:string;
begin
  tgl1xls := FormatDateTime('yyyy/mm/dd',dtp_buat.Date);
  tgl2xls := FormatDateTime('yyyy/mm/dd',dtp_akhir.Date);
  ht1xls:='http://192.168.30.7:88/cetak_delphi/cetak/tampil_barang_stok_tgl_xls.php?tgl1='+tgl1xls+'&tgl2='+tgl2xls;
   ShellExecute(Handle,'open',PChar(ht1xls),'','',SW_NORMAL);

end;

procedure TFrmBidang.SpeedButton6Click(Sender: TObject);
var
  ht5,kodecari5:string;
begin
   ht5:='http://192.168.30.7/bidang23/tampil_barang_habis_keluar_xls.php';
   ShellExecute(Handle,'open',PChar(ht5),'','',SW_NORMAL);

end;

procedure TFrmBidang.SpeedButton7Click(Sender: TObject);
var
  tgl1xlsb,tgl2xlsb,ht1xlsb,petugas:string;
begin
  tgl1xlsb := FormatDateTime('yyyy/mm/dd',dtp_buat.Date);
  tgl2xlsb := FormatDateTime('yyyy/mm/dd',dtp_akhir.Date);
  petugas := cbb_petugas.Text;
  ht1xlsb:='http://192.168.30.7:88/laporan/cobak_bast.php?tgl1='+tgl1xlsb+'&tgl2='+tgl2xlsb+'&petugas='+petugas;
  ShellExecute(Handle,'open',PChar(ht1xlsb),'','',SW_NORMAL);

end;

procedure TFrmBidang.SpeedButton8Click(Sender: TObject);
begin
if FrmPilihBarang=nil then
     FrmPilihBarang:=TFrmPilihBarang.Create(Application);
     FrmPilihBarang.Show;
end;

procedure TFrmBidang.SpeedButton9Click(Sender: TObject);
begin
if FrmTutupBuku=nil then
     FrmTutupBuku:=TFrmTutupBuku.Create(Application);
     FrmTutupBuku.Show;
end;

Procedure TFrmBidang.Aturgrid3;
begin
  counter:=0;
  hapus_baris:=0;

  Grid3.ColCount:=12;
  Grid3.RowCount:=1;
  Grid3.FixedRowAlways := True;
  Grid3.Cells[0,0]:='cek';
  Grid3.Cells[1,0]:='No';
  Grid3.Cells[2,0]:='Kode';
  Grid3.Cells[3,0]:='Nama';
  Grid3.Cells[4,0]:='Gudang';
  Grid3.Cells[5,0]:='Satuan';
  Grid3.Cells[6,0]:='Awal';
  Grid3.Cells[7,0]:='Stok';
  //Grid1.Cells[6,0]:='tgl.awal';
  Grid3.ColWidths[0]:=50;
  Grid3.ColWidths[1]:=50;
  Grid3.ColWidths[2]:=90;
  Grid3.ColWidths[3]:=370;
  Grid3.ColWidths[4]:=50;
  Grid3.ColWidths[5]:=120;
  Grid3.ColWidths[6]:=60;
  Grid3.ColWidths[7]:=60;
  //Grid1.ColWidths[6]:=60;
      //rata kanan
  //  RightEdit(ed_dtotal);

end;


end.
