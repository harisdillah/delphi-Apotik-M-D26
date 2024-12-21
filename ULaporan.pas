unit ULaporan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Tabs, ComCtrls, StdCtrls, Buttons, ExtCtrls, AdvUtil, Grids, AdvObj,
  BaseGrid, AdvGrid,ShellAPI, OleCtrls, SHDocVw, DB, DBAccess, MyAccess, MemDS;

type
  TFrmLaporan = class(TForm)
    pgPesanan: TPageControl;
    ts1: TTabSheet;
    Panel1: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    btngol: TSpeedButton;
    lbl2: TLabel;
    ed_rek: TEdit;
    ed_nip: TEdit;
    cbo_gol: TComboBox;
    dtglmsuk: TDateTimePicker;
    ts2: TTabSheet;
    ts3: TTabSheet;
    ts4: TTabSheet;
    dtptglbeli2: TDateTimePicker;
    dtptglbeli1: TDateTimePicker;
    btncari: TSpeedButton;
    dtpjual1: TDateTimePicker;
    dtpjual2: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    BtnProses: TSpeedButton;
    PnOperasi: TSpeedButton;
    btnbaru: TSpeedButton;
    btnhapus: TSpeedButton;
    GridPembelian: TAdvStringGrid;
    ts5: TTabSheet;
    ts6: TTabSheet;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    SpeedButton2: TSpeedButton;
    ts7: TTabSheet;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
    ts8: TTabSheet;
    wbNecara: TWebBrowser;
    sp: TMyStoredProc;
    ds: TMyDataSource;
    Panel2: TPanel;
    dtptglneraca1: TDateTimePicker;
    dtptglneraca2: TDateTimePicker;
    btnCariNeraca: TSpeedButton;
    lblProsesNeraca: TLabel;
    Panel3: TPanel;
    btncaribarang: TSpeedButton;
    dtptglbrg1: TDateTimePicker;
    dtptglbrg2: TDateTimePicker;
    wbBarang: TWebBrowser;
    lblbarang: TLabel;
    btnPosesKartu: TSpeedButton;
    btnExportStok: TBitBtn;
    procedure btncariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btncaribarangClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCariNeracaClick(Sender: TObject);
    procedure btnPosesKartuClick(Sender: TObject);
    procedure btnExportStokClick(Sender: TObject);
  private
    { Private declarations }
    Procedure TampilDatacariPembelianTGL;
    Procedure ProsesNecaraTest;
    Procedure ProsesKartuAll;
  public
    { Public declarations }
  end;

var
  FrmLaporan: TFrmLaporan;

implementation

uses UnModul,uconfig,UFunctions,UF_dbsql,UF_setting, UnCarisp,UnCarisp2, UnMenu;

{$R *.dfm}

procedure TFrmLaporan.BitBtn1Click(Sender: TObject);
var
  tgl1,tgl2,ht1:string;
begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtptglbeli1.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtptglbeli2.Date);
  ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/datapembelianxls.php?tgl1='+tgl1+'&tgl2='+tgl2;
   ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

end;

procedure TFrmLaporan.BitBtn7Click(Sender: TObject);
var
  tgl1,tgl2,ht1:string;
begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtpjual1.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtpjual2.Date);
  ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/datakasirxls.php?tgl1='+tgl1+'&tgl2='+tgl2;
   ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

end;

procedure TFrmLaporan.btncaribarangClick(Sender: TObject);
var
  tgl1,tgl2,ht1:string;
begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtptglbrg1.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtptglbrg2.Date);
  ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/stok.php?tgl1='+tgl1+'&tgl2='+tgl2;
   ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

end;

procedure TFrmLaporan.btncariClick(Sender: TObject);
var
  tgl1,tgl2,ht1:string;
begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtptglbeli1.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtptglbeli1.Date);
  ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/datapembelian.php?tgl1='+tgl1+'&tgl2='+tgl2;
   ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

end;

procedure TFrmLaporan.btnCariNeracaClick(Sender: TObject);
var
  tgl1,tgl2,ht1:string;
begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtptglneraca1.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtptglneraca2.Date);
  ProsesNecaraTest;
  wbNecara.Navigate('http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/jurnaltest.php?tgl1='+tgl1+'&tgl2='+tgl2+'');
  //jurnaltest.php

  //ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/jurnaltest.php?tgl1='+tgl1+'&tgl2='+tgl2;
  //ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

end;

procedure TFrmLaporan.btnExportStokClick(Sender: TObject);
var
  tgl1,tgl2,ht1:string;
begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtptglbrg1.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtptglbrg2.Date);
  ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/stokxls.php?tgl1='+tgl1+'&tgl2='+tgl2;
  ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);
  ProsesKartuAll;
end;

procedure TFrmLaporan.btnPosesKartuClick(Sender: TObject);
   var
  tgl1,tgl2,ht1:string;

begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtptglbrg1.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtptglbrg2.Date);
  ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/stok.php?tgl1='+tgl1+'&tgl2='+tgl2;
  ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

  ProsesKartuAll;
 // wbBarang.Navigate('http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/stok.php?tgl1='+tgl1+'&tgl2='+tgl2+'');


end;

Procedure TFrmLaporan.ProsesNecaraTest;
  var
  spdata : TMyStoredProc;
  i : integer;
  begin
   //aturgrid2;
   spdata:= TMyStoredProc.Create(nil);
   spdata.Connection := DmModul.con1;
  try
    spdata.Close;
    spdata.StoredProcName := 'sp_GETjurnalTest';
    spdata.PrepareSQL;
    spdata.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtptglneraca1.date); //key ba
    spdata.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtptglneraca2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //spdata.ParamByName('cari').AsString := cxcariKeluar.text;
    spdata.Execute;

    //lblProsesNeraca.Caption := inttostr(spdata.RecordCount) +' record ';
    lblProsesNeraca.Caption := 'data sudah terproses';

    if spdata.Eof then
    begin
    ShowMessage('Data Tidak Dapat Diproses....');
    exit;
    end;

       {
     for i:=1 to Grid2.RowCount-1 do begin
        Grid2.Cells[0,i]:='';
        Grid2.Cells[1,i]:='';
        Grid2.Cells[2,i]:='';
        Grid2.Cells[3,i]:='';
        Grid2.Cells[4,i]:='';
        Grid2.Cells[5,i]:='';
        Grid2.Cells[6,i]:='';
    end;


    //isi grid

    counter:=0;
      if  spdata.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spdata.RecordCount+1;


    while not spdata.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
          Grid2.Cells[1,counter]:=spdata.FieldByName('no_faktur').AsString;
          Grid2.Cells[2,counter]:=spdata.FieldByName('tgl_pembelian').AsString;
          Grid2.Cells[3,counter]:=spdata.FieldByName('nama_supp').AsString;
          Grid2.Cells[4,counter]:=spdata.FieldByName('total_pembelian').AsString;
          Grid2.Cells[5,counter]:=spdata.FieldByName('status_byr').AsString;
          Grid2.Cells[6,counter]:=spdata.FieldByName('no_tranxp').AsString;

          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;

          grid2.ShowSelection := True;
          for i := 1 to grid2.RowCount - 1 do
          grid2.AddCheckBox(4, i, false, false);

          spdata.Next;
    end;
    }
    finally
    spdata.Close;
    end;

  end;


Procedure TFrmLaporan.ProsesKartuAll;
  var
  spdatak : TMyStoredProc;
  i : integer;
  begin
   //aturgrid2;
   spdatak:= TMyStoredProc.Create(nil);
   spdatak.Connection := DmModul.con1;
  try
    spdatak.Close;
    spdatak.StoredProcName := 'SPGeTKartu_ALL';
    spdatak.PrepareSQL;
    //spdatak.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtptglbrg1.date); //key ba
    //spdatak.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtptglbrg2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //spdata.ParamByName('cari').AsString := cxcariKeluar.text;
    spdatak.Execute;

    //lblProsesNeraca.Caption := inttostr(spdata.RecordCount) +' record ';
    lblProsesNeraca.Caption := 'data Kartu sudah terproses';

//    if spdatak.Eof then
//    begin
//    ShowMessage('Data Tidak Dapat Diproses....');
//    exit;
//    end;


    finally
    spdatak.Close;
    end;



  end;

procedure TFrmLaporan.FormCreate(Sender: TObject);
begin
dtptglbeli1.date:= now;
dtptglbeli2.date:= now;
dtptglbrg1.date:= now;
dtptglbrg2.date:= now;
dtpjual1.date:= now;
dtpjual2.date:= now;
{neraca}
dtptglneraca1.date:= now;
dtptglneraca2.date:= now;
end;

procedure TFrmLaporan.SpeedButton1Click(Sender: TObject);
var
  tgl1,tgl2,ht1:string;
begin
  tgl1 := FormatDateTime('yyyy/mm/dd',dtpjual1.Date);
  tgl2 := FormatDateTime('yyyy/mm/dd',dtpjual2.Date);
  ht1:='http://'+FMenu.dxStatusBar1.Panels[2].Text+'/cetak_apotik/cetak/datakasir.php?tgl1='+tgl1+'&tgl2='+tgl2;
   ShellExecute(Handle,'open',PChar(ht1),'','',SW_NORMAL);

end;

Procedure TFrmLaporan.TampilDatacariPembelianTGL;
  var
  //spdata : TMyStoredProc;

  i : integer;
  begin
//   aturgrid2;
//   spdata:= TMyStoredProc.Create(nil);
//   spdata.Connection := DmModul.con1;
  try
//    spdata.Close;
//    spdata.StoredProcName := 'sp_GETpembelianTgl';
//    spdata.PrepareSQL;
//    spdata.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
//    spdata.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
//    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
//    //spdata.ParamByName('cari').AsString := cxcariKeluar.text;
//    spdata.Open;
//
//    cxLabel11.Caption := inttostr(spdata.RecordCount) +' record ';


//    if spdata.Eof then
//    begin
//    ShowMessage('data YANG DICARI tidak ada :'+ edcarinomor.Text);
//    exit;
//    end;


     for i:=1 to GridPembelian.RowCount-1 do begin
//        Grid2.Cells[0,i]:='';
//        Grid2.Cells[1,i]:='';
//        Grid2.Cells[2,i]:='';
//        Grid2.Cells[3,i]:='';
//        Grid2.Cells[4,i]:='';
//        Grid2.Cells[5,i]:='';
//        Grid2.Cells[6,i]:='';
    end;

//
//    //isi grid
//
//    counter:=0;
//      if  spdata.RecordCount<=1 then
//      Grid2.RowCount:= 2
//    else
//      Grid2.RowCount:= spdata.RecordCount+1;
//
//
//    while not spdata.Eof do begin
//          Inc(counter);   //IntToStr(counter);
//          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
//          Grid2.Cells[1,counter]:=spdata.FieldByName('no_faktur').AsString;
//          Grid2.Cells[2,counter]:=spdata.FieldByName('tgl_pembelian').AsString;
//          Grid2.Cells[3,counter]:=spdata.FieldByName('nama_supp').AsString;
//          Grid2.Cells[4,counter]:=spdata.FieldByName('total_pembelian').AsString;
//          Grid2.Cells[5,counter]:=spdata.FieldByName('status_byr').AsString;
//          Grid2.Cells[6,counter]:=spdata.FieldByName('no_tranxp').AsString;
//
//          //Grid2.Cells[5,counter]:=spdata.FieldByName('gudang').AsString;
//          {
//          grid2.ShowSelection := True;
//          for i := 1 to grid2.RowCount - 1 do
//          grid2.AddCheckBox(4, i, false, false);
//           }
//          spdata.Next;
//    end;
//
    finally
//    spdata.Close;
//    end;
  end;
  end;

end.
