unit UnReturKonsiyansi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver,  dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, ComCtrls,
  AdvShapeButton, StdCtrls, Buttons, DB, DBAccess, MyAccess, Grids,
  BaseGrid, AdvGrid, MemDS, cxCalendar, cxMemo, AdvObj,nuest, AdvUtil, AdvEdit,
  AdvEdBtn, AdvDBLookupComboBox;

type
  TFrmReturKonsiyansi = class(TForm)
    pnl1: TPanel;
    cxlbl1: TcxLabel;
    Edkodetransaksi: TAdvShapeButton;
    cxLabel7: TcxLabel;
    cxNoRetur: TcxTextEdit;
    cxlbl10: TcxLabel;
    dtp_TglRetur: TDateTimePicker;
    pnl2: TPanel;
    dptTglFaktur: TDateTimePicker;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxNoFaktur: TcxTextEdit;
    cxLabel3: TcxLabel;
    mSupplier: TMemo;
    grid1: TAdvStringGrid;
    pnl3: TPanel;
    btnBtnHapus: TSpeedButton;
    btnsave: TSpeedButton;
    EdTotalRetur: TEdit;
    Label13: TLabel;
    SpeedButton3: TSpeedButton;
    btnCariFaktur: TSpeedButton;
    PnOperasi: TPanel;
    edJmlBarang: TEdit;
    cxcv: TcxTextEdit;
    pnlcari: TPanel;
    SpeedButton8: TSpeedButton;
    cxLabel9: TcxLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    btcari: TBitBtn;
    Grid2: TAdvStringGrid;
    cxLabel11: TcxLabel;
    chkgrid1: TCheckBox;
    EdCariSupplier: TEdit;
    SpeedButton7: TSpeedButton;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure btnCariFakturClick(Sender: TObject);
    procedure grid1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btnsaveClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure chkgrid1Click(Sender: TObject);
    procedure EdCariSupplierChange(Sender: TObject);
    procedure btcariClick(Sender: TObject);
    procedure Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure btnBtnHapusClick(Sender: TObject);
  private
    { Private declarations }
    Procedure aturgrid1;
    Procedure TampilData_FakturBeli;
    procedure Total;
    Function GetNoBBK:string;
    Function Lastkasir(s:string):string;
    Procedure KosongTex(Kunci:Boolean);
    procedure TampilDatacariTGL;
    Procedure aturgrid2;
    Procedure TampilData;
  public
    { Public declarations }
  end;

var
  FrmReturKonsiyansi: TFrmReturKonsiyansi;
  FCounter :integer;
  tambah: boolean;
  i1,i2,baris :Integer;
  i,counter,hapus_baris:integer;
	cek_baris:string;
	tgl:TDateTime;
	sql,sql1,sql2,sql3,m1,m2,m3,m4,m5,ppn: String;
  qty,jml,harga,total_harga,disk,total2 : real ; // :integer;
  hrgd,n_t1d,ddisk,n_diskd,n_t2d,n_pajakd,JML_BRG,Ntotal :real;
  a1,a2,a3,a4,a5 ,a6 : real;
  cek_inputan:boolean;

implementation

uses UnModul,UFunctions,UF_dbsql,UF_setting, UnCarisp,UnCarisp2, UnMenu,UncekSQL;

{$R *.dfm}

Procedure TFrmReturKonsiyansi.KosongTex(Kunci:Boolean);
//var
//j:Integer;
Begin
  if Kunci=True then
  begin
  Edkodetransaksi.Text:='';

  cxNoRetur.Text := '';
  cxNoRetur.Text:=GetNoBBK;
  dtp_TglRetur.date:= now;
  dptTglFaktur.date:= now;
  cxNoFaktur.Text := '';
  mSupplier.Text := '';
  edJmlBarang.Text := '0';
  EdTotalRetur.Text := '0';
  aturgrid1;


  //  edJmlBarang.Text := '0';
//  EdTotalRetur.Text := '0';

  //cbo_gudang.ItemIndex:=0;

 end;
end;

Procedure TFrmReturKonsiyansi.aturgrid1;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  Grid1.ColCount:=9;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;
  Grid1.Cells[0,0]:='No';
  Grid1.Cells[1,0]:='No. Urut';
  Grid1.Cells[2,0]:='Kode';
  Grid1.Cells[3,0]:='Nama';
  Grid1.Cells[4,0]:='Jumlah Faktur';
  Grid1.Cells[5,0]:='Jumlah Retur';
  Grid1.Cells[6,0]:='Satuan';
  Grid1.Cells[7,0]:='@Harga';
  Grid1.Cells[8,0]:='Total';
  Grid1.ColWidths[0]:=1;
  Grid1.ColWidths[1]:=30;
  Grid1.ColWidths[2]:=150;
  Grid1.ColWidths[3]:=380;
  Grid1.ColWidths[4]:=90;
  Grid1.ColWidths[5]:=90;
  Grid1.ColWidths[6]:=120;
  Grid1.ColWidths[7]:=90;
  Grid1.ColWidths[8]:=90;

//  //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);
  //rata kanan
  //RightEdit(ed_dtotal);



end;


procedure TFrmReturKonsiyansi.btcariClick(Sender: TObject);
begin
TampilDatacariTGL;
end;

procedure TFrmReturKonsiyansi.btnBtnHapusClick(Sender: TObject);
begin
PnOperasi.Caption := 'Hapus Data';
PnOperasi.Color := clred;
end;

procedure TFrmReturKonsiyansi.btnCariFakturClick(Sender: TObject);
begin
  FCarisp:=TFCarisp.Create(Application);
  FCarisp.Label4.Caption :='sp_GETCariKonsiyansi';
  LsvSetCol('No. Trans|tgl Faktur|No. Faktur|Nama Supplier|Nilai|id Supp|',
  '150|100|270|370|120|90|',FCarisp.LsCari);
  FCarisp.LsField.Items.Clear;
  FCarisp.LsField.Items.Add('xxx'); //sp
  //nama colom
  FCarisp.LsField.Items.Add('no_tranxkonsi');
  FCarisp.LsField.Items.Add('tgl_konsinasi');
  FCarisp.LsField.Items.Add('no_konsi');
  FCarisp.LsField.Items.Add('nama_supp');
  FCarisp.LsField.Items.Add('total_konsinasi');
  FCarisp.LsField.Items.Add('no_supplier');
  FCarisp.ShowModal;

  if nFieldCari[0]<>'' then
  begin
    Edkodetransaksi.Text:=nFieldCari[0];
    cxNoFaktur.Text:=nFieldCari[2];
    mSupplier.Text  :=nFieldCari[3];
    cxcv.Text  :=nFieldCari[5];
 //   btn_ruangan.Style.Color:=clMoneyGreen;
    cxNoRetur.SetFocus;
    TampilData_FakturBeli;
  end;
end;

procedure TFrmReturKonsiyansi.btnsaveClick(Sender: TObject);
var
//cbogudang,cbopetugas,cbostatusbayar,cekTtanfer,tgljatuhtempo:string;
//selisih :Real;
qvr : TMyQuery;
qr : TMyQuery;

begin
      if MessageDlg('Anda yakin ingin Simpan Return ...?'+cxNoRetur.Text,mtConfirmation,[mbYes,mbNo],0)=mryes then
          begin

   for i1:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i1]:=IntToStr(i1);
    Grid1.Cells[1,i1]:=IntToStr(i1);
   end;

   qvr := TMyQuery.Create(nil);
   qr := TMyQuery.Create(nil);

            //ShowMessage('Cetak ok :'+ btnnoreg.Text);
     If PnOperasi.Caption='Tambah Data' then
   begin

    qvr.Connection := DmModul.con1;
    qvr.SQL.Clear;
    qvr.SQL.Text := 'Select * from tbl_returkonsinasi where no_returkonsi = '+QuotedStr(cxNoRetur.Text)+'';
    qvr.Open;
    if qvr.RecordCount > 0 then
      begin

        if MessageDlg('Kode Sudah ada'+#13+#10+cxNoRetur.Text+#13+#10+
        'Buat Nomor Baru (Register Return ), ?????',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
  begin
       Edkodetransaksi.Text:=GetNoBBK;

       end;
        exit;
      end;
      try
         sql := 'insert into tbl_returkonsinasi (no_returkonsi,tgl_returkonsi,'+
        'id_cv,nm_cv,tgl_faktur,no_faktur,no_trans,total_returkonsi,tgl_create) Values('+
        QuotedStr(cxNoRetur.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_TglRetur.Date))+','+
        QuotedStr(cxcv.Text)+','+
        QuotedStr(mSupplier.Text)+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd',dptTglFaktur.Date))+','+
        QuotedStr(cxNoFaktur.Text)+','+
        QuotedStr(Edkodetransaksi.Text)+','+
        QuotedStr(clearDot(EdTotalRetur.Text))+','+
        QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss',now))+')';
        ExecSQL1(sql);
        //cekdataSQL(sql);
         except
        ShowMessage('Simpan baru Return Beli gagal :'+ cxNoRetur.Text);
        raise;
      end;


      //simpan Detail
      try
        for i1:=1 to Grid1.RowCount-1 do begin
             sql2:='INSERT INTO detail_returkonsinasi (no_trans_returkonsi,no,tgl_returkonsi,kode_brg,nama,jumlah,retur_konsi,satuan,harga_returkonsi,total)'+
             ' Values('+
             QuotedStr(cxNoRetur.Text)+','+
             QuotedStr(Grid1.Cells[1,i1])+','+ //No urut
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_TglRetur.Date))+','+
             QuotedStr(Grid1.Cells[2,i1])+','+ //kode
             QuotedStr(Grid1.Cells[3,i1])+','+ //nama
             //QuotedStr(RealFormat(StrToFloat(Grid1.Cells[4,i1])))+','+// jumlah 0,00
             QuotedStr(Grid1.Cells[4,i1])+','+  //jml Faktur
             QuotedStr(Grid1.Cells[5,i1])+','+  //jml retur
             QuotedStr(Grid1.Cells[6,i1])+','+  //satuan
             QuotedStr(Grid1.Cells[7,i1])+','+  //Harga
             QuotedStr(Grid1.Cells[8,i1])+')'; //total
             ExecSQL1(sql2);
             end;

    // cetakstruk(btnnoreg.Text);
     KosongTex(True);
     except
      ShowMessage('Simpan Detail Retur Konsi gagal ok :'+ Edkodetransaksi.Text);
        //m1 := 'simpan Baru Gagal';
        raise;
      end;



   end    //end tambah

   else if PnOperasi.Caption='Ubah Data' then
   begin

        try
      // ubah
      sql1 :='Update tbl_returkonsinasi set tgl_returkonsi='+QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_TglRetur.Date))+
      ',total_returkonsi='+QuotedStr(clearDot(EdTotalRetur.Text))+
      ' where no_returkonsi='+QuotedStr(cxNoRetur.Text);
      ExecSQL1(sql1);

      except
        ShowMessage('Simpan Edit / ubah Gagal :'+ cxNoRetur.Text);
        raise;
      end;

      //simpan Detail
      SQL := 'delete from detail_returkonsinasi where no_trans_returkonsi='+
        QuotedStr(cxNoRetur.Text)+'';
        ExecSQL1(sql); //Hapus

         try

           for i1:=1 to Grid1.RowCount-1 do begin
             sql2:='INSERT INTO detail_returkonsinasi (no_trans_returkonsi,no,tgl_returkonsi,kode_brg,nama,jumlah,retur_konsi,satuan,harga_returkonsi,total)'+
             ' Values('+
             QuotedStr(cxNoRetur.Text)+','+
             QuotedStr(Grid1.Cells[1,i1])+','+ //No urut
             QuotedStr(FormatDateTime('yyyy/mm/dd',dtp_TglRetur.Date))+','+
             QuotedStr(Grid1.Cells[2,i1])+','+ //kode
             QuotedStr(Grid1.Cells[3,i1])+','+ //nama
             //QuotedStr(RealFormat(StrToFloat(Grid1.Cells[4,i1])))+','+// jumlah 0,00
             QuotedStr(Grid1.Cells[4,i1])+','+  //jml Faktur
             QuotedStr(Grid1.Cells[5,i1])+','+  //jml retur
             QuotedStr(Grid1.Cells[6,i1])+','+  //satuan
             QuotedStr(Grid1.Cells[7,i1])+','+  //Harga
             QuotedStr(Grid1.Cells[8,i1])+')'; //total
             ExecSQL1(sql2);
             end;
     //--cetak
    // bayar_tran;

	//   ShowMessage('Simpan Perubahan ok :'+ btnnoreg.Text);
        //   cetakstruk(btnnoreg.Text);
           KosongTex(True);
        //   btcariClick(Sender);
         //  redt_Struk.Lines.Clear;
     except
        raise;
      end;

       //KosongTex(True);
   end //end Update
   else if PnOperasi.Caption='Hapus Data' then
   begin
      if MessageDlg('Data dengan'+#13+#10+cxNoRetur.Text+#13+#10+
        'akan di Hapus, lanjutkan?',
        mtWarning, [mbOK, mbCancel], 0) = mrOK then
        begin
      try
      // delete
        SQL := 'delete from tbl_returkonsinasi where no_returkonsi='+
        QuotedStr(cxNoRetur.Text)+'';
        ExecSQL1(sql); //Hapus

        SQL := 'delete from detail_returkonsinasi where no_trans_returkonsi='+
        QuotedStr(cxNoRetur.Text)+'';
        ExecSQL1(sql); //Hapus

//        sql:= 'delete from detail_returbeli'+
//        ' where no_penjualan='+QuotedStr(cxNoRetur.Text);
//        ExecSQL1(sql);


        ShowMessage('Hapus / :'+ cxNoRetur.Text);
        //KosongTex(True);
        //AktifControl(Self,PnInput,False);
      except
             ShowMessage('Hapus Keluar Gagal :'+ cxNoRetur.Text);
        raise;
      end;
        end;
    end; //selesai Proses

      KosongTex(True);
    //  TampilDatacari;
end; //end tanya

          end;


procedure TFrmReturKonsiyansi.chkgrid1Click(Sender: TObject);
begin
if chkgrid1.Checked   THEN
      BEGIN
      EdCariSupplier.Visible := True;
      END
    else
    BEGIN
     EdCariSupplier.Visible := False;
  end;
end;

procedure TFrmReturKonsiyansi.EdCariSupplierChange(Sender: TObject);
begin
if chkgrid1.checked then
    Grid2.NarrowDown(EdCariSupplier.Text,3)
  else
    Grid2.NarrowDown(EdCariSupplier.Text);
end;

procedure TFrmReturKonsiyansi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FrmReturkonsiyansi:=nil;
  Action:=caFree;
end;

procedure TFrmReturKonsiyansi.FormShow(Sender: TObject);
begin
aturgrid1;
dtp_TglRetur.Date := now;
dptTglFaktur.Date := now;
dtp1.date:= now;
dtp2.date:= now;
pnlcari.Visible:= false;
end;

procedure TFrmReturKonsiyansi.grid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
   for i:=2 to  Grid1.RowCount - 1 do
    if Grid1.Cells[5,i]='' then
      begin
        Grid1.Canvas.Brush.Color:=clRed;
        //grid1.Fonts.Color:=clGray;
          if ((ACol=5)and(ARow=i)) then
            begin
              Grid1.Canvas.FillRect(Rect);

            end;
      end;
end;

procedure TFrmReturKonsiyansi.grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    0,1: HAlign := taCenter;
    2,3,6: HAlign := taLeftJustify;
    4,5,7,8: HAlign := taRightJustify;
  end;
end;

procedure TFrmReturKonsiyansi.grid1GetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
// baris Kolom 1
    if ((ACol = 5) and (ARow > 0)) then
    begin

    if (Grid1.Cells[5, ARow] < '0') then
      begin
        ABrush.Color := clPurple;
        AFont.Color := clWhite;
        AFont.Style := [fsBold];
      end;


      if (Grid1.Cells[5, ARow] = '0') then
      begin
        ABrush.Color := clCream;
        AFont.Color := clred;
        AFont.Style := [fsBold];
      end;
end;
end;
procedure TFrmReturKonsiyansi.grid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: string);
begin
isFloat := Acol in [4,5,6,7,8];
case ACol of
  4,5,6,7,8: Floatformat :='%.0n';
end;
end;

  procedure TFrmReturKonsiyansi.grid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
  var
  input_box : string;
begin
hapus_baris:=ARow;
cek_baris:=Grid1.Cells[1,arow];

if not (Grid1.Cells[ACol,ARow]='') then begin

   //jumlah brg
    if ACol=5 then  begin
    if not (Grid1.RowCount=1) then begin
       input_box:=InputBox('qty','Jumlah Barang : '+Grid1.Cells[3,arow]+' -> '+Grid1.Cells[6,arow],Grid1.Cells[4,arow]);
       qty:=StrToFloat(input_box);

       if qty > strtofloat(Grid1.Cells[4,arow]) then
                  begin
                  //+'jumlah Return : ' + qty +''
                  ShowMessage( 'jumlah Retur Melebihi jumlah beli : ' + Grid1.Cells[4,arow]  );
                  exit;
                  qty:=StrToFloat(input_box);
                  end
                  else
                  begin
                  qty:=StrToFloat(input_box);
                  end;

       Grid1.Cells[ACol,ARow]:=FloatToStr(qty);
       jml:=StrToFloat(Grid1.Cells[5,arow]);
          harga:=StrToFloat(Grid1.Cells[7,arow]);
          total_harga:=jml*harga;
          Grid1.Cells[8,arow]:=FloatToStr(total_harga);
      Total;


      //    jml:=StrToFloat(Grid1.Cells[4,arow]);
      //harga:=StrToFloat(Grid1.Cells[5,arow]);
      //total_harga:=jml*harga;
      //Grid1.Cells[6,arow]:=FloatToStr(total_harga);


          Total;
      end;
      end;
 end;

end;

procedure TFrmReturKonsiyansi.Grid2DblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
    cxNoRetur.Text:=Grid2.Cells[6,AROW];
    //Edkodetransaksi.Style.Color:=clLtGray;
    TampilData;
    PnOperasi.Caption := 'Ubah Data';
    //Edkodetransaksi.Style.Color:=clcxLightGray;
    //cxNoBbk.SetFocus;
    //btnnoreg.Enabled:=False;
    pnlcari.Visible:= false;
end;

Procedure TFrmReturKonsiyansi.TampilData_FakturBeli;
  var
    q2p,q3f : TMyQuery;
    spdetailusul : TMyStoredProc;
    i2 : Integer;
  Begin

  dptTglFaktur.Enabled := False;
  cxNoFaktur.Enabled := False;
  mSupplier.Enabled := False;

  cxNoRetur.Text:=GetNoBBK;
  PnOperasi.Caption := 'Tambah Data';

    q2p := TMyQuery.Create(nil);
    q2p.Connection := DmModul.con1;
  try
  q2p.Active := false;
  q2p.SQL.Clear;
  q2p.SQL.Text :='select * from tbl_konsinasi where no_tranxkonsi='+QuotedStr(Edkodetransaksi.Text)+'';
  q2p.Open;

  if q2p.RecordCount > 0 then
  begin



  if PnOperasi.Caption='Tambah Data' then
   begin
    //    AktifControl(Self,PnInput,True);
    //    AktifControl(Self,Pn_list,True);
    //BtnProses.Enabled:=True;

    end;
    //KosongTex(True);
    //btnnoreg.Text:=q2p.FieldByName('no_trans_p').AsString;
    dptTglFaktur.date:=q2p.FieldByName('tgl_konsinasi').AsDateTime;
    //cxNoBbk.Text:=q2p.FieldByName('Pesanan_No').AsString;
    //btn_ruangan.Text:=q2p.FieldByName('kd_ruang').AsString;
    //cbbpetugas.EditValue:=q2p.FieldByName('kd_memberi').AsString;
    //btn_penerima.Text:=q2p.FieldByName('kd_menerima').AsString;
    //cbo_gudang.EditValue:=q2p.FieldByName('gudang').AsString;

  end
  else
    begin
    ShowMessage( 'data kosong permintaan / Tidak ADA : ' + Edkodetransaksi.Text );
    end;

  finally
    q2p.Close;
    q2p.Free;
  end;

  //tampil detail permintaan  SP
  //spdetailusul := TMyStoredProc.Create(nil);
  //spdetailusul.Connection := DmModul.con1;

    q3f := TMyQuery.Create(nil);
    q3f.Connection := DmModul.con1;

  try
    q3f.Active := false;
    q3f.SQL.Clear;
    q3f.SQL.Text :='SELECT * ' +
    ' FROM detail_konsinasi WHERE no_transkonsi LIKE'+
    QuotedStr(Edkodetransaksi.Text)+' ORDER BY no';
    q3f.Open;
//  spdetailusul.Close;
//  spdetailusul.StoredProcName := 'SP_ambilpermintaandetail' ;
//  spdetailusul.PrepareSQL;
//  spdetailusul.ParamByName('cari').AsString := Edkodetransaksi.Text;
//  spdetailusul.Open;
  //Execute;

    if q3f.Eof then
    begin
    //Total;
    //Edtotal.Text := '0';
    Exit;
    end;

    for i2:=1 to Grid1.RowCount-1 do begin
        Grid1.Cells[0,i2]:='';
        Grid1.Cells[1,i2]:='';
        Grid1.Cells[2,i2]:='';
        Grid1.Cells[3,i2]:='';
        Grid1.Cells[4,i2]:='';
        Grid1.Cells[5,i2]:='';
        Grid1.Cells[6,i2]:='';
        Grid1.Cells[7,i2]:='';
        Grid1.Cells[8,i2]:='';
    end;

    counter:=0;
    if  q3f.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= q3f.RecordCount+1;


	//no_transaksi,no,kode_brg,nama,qty,satuan,harga,total
    while not q3f.Eof do begin
          Inc(counter);
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=dataRow(q3f.FieldByName('no'),'');
          Grid1.Cells[2,counter]:=dataRow(q3f.FieldByName('kode_brg'),'-');
          Grid1.Cells[3,counter]:=dataRow(q3f.FieldByName('nama'),'-');
          Grid1.Cells[4,counter]:=dataRow(q3f.FieldByName('jumlah'),'0');
          Grid1.Cells[5,counter]:='0';
          Grid1.Cells[6,counter]:=dataRow(q3f.FieldByName('satuan'),'-');
          Grid1.Cells[7,counter]:=dataRow(q3f.FieldByName('hrga_konsinasi'),'0');
          Grid1.Cells[8,counter]:='0';
          q3f.Next;
    end;
   Total;
   //urut grid otomatis
   for i2:=1 to Grid1.RowCount-1 do begin
    Grid1.Cells[0,i2]:=IntToStr(i2);
    Grid1.Cells[1,i2]:=IntToStr(i2);
  end;

  finally
    q3f.Close;
    q3f.Free;
  end;
  //hitung_tran;
  end;

 procedure TFrmReturKonsiyansi.Total;
begin
JML_BRG:=0;
Ntotal:=0;

   for i:=1 to Grid1.RowCount-1 do begin
        JML_BRG:=JML_BRG+strtofloat(Grid1.Cells[4,i]);
        Ntotal:=Ntotal+strtofloat(Grid1.Cells[8,i]);
   end;
   edJmlBarang.Text:=floattostr(JML_BRG);
   EdTotalRetur.Text  :=floattostr(Ntotal);
   formatRupiah(edJmlBarang);
   formatRupiah(EdTotalRetur);


end;

Function TFrmReturKonsiyansi.GetNoBBK:string;
var nomor,faktur:string;
NO:integer;
begin
// nomor:='';
 nomor:=lastKASIR('RK'+formatdatetime('yymmdd',now())+'%');
 if nomor='' then
 faktur:='RK'+formatdatetime('yymmdd',now())+'-0001'
 else
 begin
   nomor:=copy(nomor,10,4);
   no:=strtoint(nomor);
   nomor:='0000'+inttostr(no+1);
   nomor:=copy(nomor,length(nomor)-3,4);
   faktur:='RK'+formatdatetime('yymmdd',now())+'-'+nomor;
 end;
result:=faktur;
end;

Function TFrmReturKonsiyansi.Lastkasir(s:string):string;
var QCari : TMyQuery;

begin
QCari := TMyQuery.Create(nil);
QCari.Close;
QCari.Connection:=DmModul.con1;
QCari.SQL.text:='SELECT MAX(no_returkonsi) AS NOTA'+
     ' FROM tbl_returkonsinasi'+
     ' WHERE no_returkonsi LIKE '+quotedstr(s);
QCari.Open;
if not QCari.IsEmpty then
result:=QCari.fieldbyname('NOTA').AsString
else
result:='';
end;



procedure TFrmReturKonsiyansi.SpeedButton7Click(Sender: TObject);
begin
pnlcari.Visible:= true;
end;

procedure TFrmReturKonsiyansi.SpeedButton8Click(Sender: TObject);
begin
pnlcari.Visible:= false;
end;

Procedure TFrmReturKonsiyansi.aturgrid2;
//var counter,hapus_baris : Integer;
begin
  counter:=0;
  hapus_baris:=0;
  Grid2.ColCount:=7;
  Grid2.RowCount:=1;
  Grid2.FixedRowAlways := True;
  //No|tgl.|No.BBK|Ruangan|Gudang|
  Grid2.Cells[0,0]:='No.';
  Grid2.Cells[1,0]:='No. Retur';
  Grid2.Cells[2,0]:='Tanggal.';
  Grid2.Cells[3,0]:='Penyedian';
  Grid2.Cells[4,0]:='Nilai';
  Grid2.Cells[5,0]:='Status';
  Grid2.Cells[6,0]:='No. tran';
  //Grid2.Cells[5,0]:='Gudang';
  Grid2.ColWidths[0]:=30;
  Grid2.ColWidths[1]:=120;
  Grid2.ColWidths[2]:=90;
  Grid2.ColWidths[3]:=220;
  Grid2.ColWidths[4]:=90;
  Grid2.ColWidths[5]:=60;
  Grid2.ColWidths[6]:=140;
  //Grid2.ColWidths[5]:=90;



end;

procedure TFrmReturKonsiyansi.TampilDatacariTGL;
var
  spdr : TMyStoredProc;
  i : integer;
  begin
   aturgrid2;
   KosongTex(True);
   spdr:= TMyStoredProc.Create(nil);
   spdr.Connection := DmModul.con1;
  try
    spdr.Close;
    spdr.StoredProcName := 'sp_GETReturkonsiTgl';
    spdr.PrepareSQL;
    spdr.ParamByName('dtgl1').AsString := FormatDateTime('yyyy-mm-dd',dtp1.date); //key ba
    spdr.ParamByName('dtgl2').AsString  := FormatDateTime('yyyy-mm-dd',dtp2.date); //key ba
    //spdata.ParamByName('cari2').AsString := FMenu.dxStatusBar1.Panels[2].Text;
    //spdata.ParamByName('cari').AsString := cxcariKeluar.text;
    spdr.Open;

    cxLabel11.Caption := inttostr(spdr.RecordCount) +' record ';


    if spdr.Eof then
    begin
    ShowMessage('data YANG DICARI tidak ada :');
    exit;
    end;


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
      if  spdr.RecordCount<=1 then
      Grid2.RowCount:= 2
    else
      Grid2.RowCount:= spdr.RecordCount+1;


    while not spdr.Eof do begin
          Inc(counter);   //IntToStr(counter);
          Grid2.Cells[0,counter]:=IntToStr(counter); //No.
          Grid2.Cells[1,counter]:=spdr.FieldByName('no_faktur').AsString;
          Grid2.Cells[2,counter]:=spdr.FieldByName('tgl_returkonsi').AsString;
          Grid2.Cells[3,counter]:=spdr.FieldByName('nama_supp').AsString;
          Grid2.Cells[4,counter]:=spdr.FieldByName('total_returkonsi').AsString;
          //Grid2.Cells[5,counter]:=spdr.FieldByName('status_byr').AsString;
          Grid2.Cells[6,counter]:=spdr.FieldByName('no_returkonsi').AsString;


          spdr.Next;
    end;

    finally
    spdr.Close;
    spdr.Free;
    end;



end;


Procedure TFrmReturKonsiyansi.TampilData;
  var
    q2r,qd2r : TMyQuery;
   // i2 : Integer;
  Begin
    q2r := TMyQuery.Create(nil);
    q2r.Connection := DmModul.con1;
  try
  q2r.Active := false;
  q2r.SQL.Clear;
  q2r.SQL.Text :='select * from tbl_returkonsinasi where no_returkonsi='+QuotedStr(cxNoRetur.Text)+'';
  q2r.Open;

  if q2r.RecordCount > 0 then
  begin



  if PnOperasi.Caption='Ubah Data' then
   begin

    end;
    KosongTex(True);
    //ambilRuang;
    Edkodetransaksi.Text:=q2r.FieldByName('no_trans').AsString;
    dptTglFaktur.date:=q2r.FieldByName('tgl_faktur').AsDateTime;
    dtp_TglRetur.date:=q2r.FieldByName('tgl_returkonsi').AsDateTime;
    cxNoRetur.Text:=q2r.FieldByName('no_returkonsi').AsString;
    cxNoFaktur.Text:=q2r.FieldByName('no_faktur').AsString;
    cxcv.Text:=q2r.FieldByName('id_cv').AsString;
    mSupplier.Text:=q2r.FieldByName('nm_cv').AsString;
//    cbbpetugas.EditValue:=q2r.FieldByName('id_peg').AsString;
//
//    edbayar.Text:=q2r.FieldByName('bayar').AsString;
//    edkembali.Text:=q2r.FieldByName('kembali').AsString;
//    cbb_statusbayar.EditValue:=q2r.FieldByName('status_bayar').AsString;

//    if q2.fieldbyname('tranfers').AsString='1' then
//      begin
//      chk_Tranfer.checked := true;
//      TranferTex(True);
//      cxPelanggan.Text:=q2.FieldByName('pelanggan').AsString;
//      cxNilaiTranfer.Text:=q2.FieldByName('total_transfer').AsString;
//      end
//      else
//      begin
//      chk_Tranfer.checked:=false;
//      lblPelanggan.Visible := False;
//      cxPelanggan.Visible := False;
//      cxNilaiTranfer.Visible := False;
//      end ;

      //tanggal SPK
//    if VarIsNull(q2['tgl_jatuh_tempo']) then
//      begin
//    dtp_jatuhtempo.ShowCheckbox :=true;
//    dtp_jatuhtempo.Checked := false;
//    dtp_jatuhtempo.Color := clred;
//    end
//   else
//      begin
//      dtp_jatuhtempo.Date:=q2.FieldByName('tgl_jatuh_tempo').AsDateTime;
//      dtp_jatuhtempo.Color := clMenu;
//    end;

  //  hitungTotal;
  //  btn_penerima.Text:=q2.FieldByName('kd_menerima').AsString;
  //  cbo_gudang.EditValue:=q2.FieldByName('gudang').AsString;

  end
  else
    begin
    ShowMessage( 'data kosong return / Tidak ADA : ' + cxNoRetur.Text );

    end;

  finally
    q2r.Close;
    q2r.Free;
  end;

  //tampil detail
  qd2r := TMyQuery.Create(nil);
  qd2r.Connection := DmModul.con1;

  try
    qd2r.Active := false;
    qd2r.SQL.Clear;
    qd2r.SQL.Text :='select * from detail_returkonsinasi WHERE no_trans_returkonsi ='+
    QuotedStr(cxNoRetur.Text)+' order by no';
    qd2r.Open;

    if qd2r.Eof then
    begin
   // Total;
    //Edtotal.Text := '0';
    Exit;
    end;

    for i2:=1 to Grid1.RowCount-1 do begin
        Grid1.Cells[0,i2]:='';
        Grid1.Cells[1,i2]:='';
        Grid1.Cells[2,i2]:='';
        Grid1.Cells[3,i2]:='';
        Grid1.Cells[4,i2]:='';
        Grid1.Cells[5,i2]:='';
        Grid1.Cells[6,i2]:='';
        Grid1.Cells[7,i2]:='';
        Grid1.Cells[8,i2]:='';
    end;

    counter:=0;
    if  qd2r.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= qd2r.RecordCount+1;


	//no_transaksi,no,kode_brg,nama,qty,satuan,harga,total
    while not qd2r.Eof do begin
          Inc(counter);
          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=dataRow(qd2r.FieldByName('no'),'');
          Grid1.Cells[2,counter]:=dataRow(qd2r.FieldByName('kode_brg'),'-');
          Grid1.Cells[3,counter]:=dataRow(qd2r.FieldByName('nama'),'-');
          Grid1.Cells[4,counter]:=dataRow(qd2r.FieldByName('jumlah'),'0');
          Grid1.Cells[5,counter]:=dataRow(qd2r.FieldByName('retur_konsi'),'0');
          Grid1.Cells[6,counter]:=dataRow(qd2r.FieldByName('satuan'),'-');
          Grid1.Cells[7,counter]:=dataRow(qd2r.FieldByName('harga_returkonsi'),'0');
          Grid1.Cells[8,counter]:=dataRow(qd2r.FieldByName('total'),'-');
          qd2r.Next;
    end;
   Total;

  finally
    qd2r.Close;
    qd2r.Free;
  end;
  //hitung_tran;
  end;

end.
