unit ULabel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, StdCtrls,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Grids,
  AdvObj, BaseGrid, AdvGrid, Buttons, ExtCtrls, DB, MemDS, DBAccess,
  MyAccess;

type
  TFrmLabel = class(TForm)
    pnl2: TPanel;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    lbl3: TLabel;
    lbl6: TLabel;
    Grid1: TAdvStringGrid;
    lst1: TListBox;
    lst2: TListBox;
    dtp1: TcxDateEdit;
    cxLabel1: TcxLabel;
    edtEd_t1: TEdit;
    edtEd_t2: TEdit;
    SpeedButton1: TSpeedButton;
    Egudang: TEdit;
    Ednama: TEdit;
    MyStoredProc1: TMyStoredProc;
    SpeedButton2: TSpeedButton;
    Qproses: TMyQuery;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    gridnofak: TAdvStringGrid;
    procedure Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure Grid1CheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure gridnofakCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure gridnofakCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure gridnofakDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure gridnofakGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLabel: TFrmLabel;

implementation
uses UnModul;
{$R *.dfm}

procedure TFrmLabel.Grid1CanEditCell(Sender: TObject; ARow, ACol: Integer;
  var CanEdit: Boolean);
begin
CanEdit := ACol = 1;
end;

procedure TFrmLabel.Grid1CheckBoxClick(Sender: TObject; ACol, ARow: Integer;
  State: Boolean);
begin
grid1.RowSelect[Arow] := State;
end;

procedure TFrmLabel.SpeedButton1Click(Sender: TObject);
var
 spbyr: TMyStoredProc;
 i,counter : Integer;
 begin
  Grid1.Cells[0,0]:='No.';
  Grid1.Cells[1,0]:='Kode';
  Grid1.Cells[2,0]:='Nama';
  Grid1.Cells[3,0]:='Satuan';
  Grid1.Cells[4,0]:='Stok';

  Grid1.ColWidths[0]:=30;
  Grid1.ColWidths[1]:=100; //1
  Grid1.ColWidths[2]:=140;
  Grid1.ColWidths[3]:=80;
  Grid1.ColWidths[4]:=90;

    spbyr:= TMyStoredProc.Create(nil);
    spbyr.Connection := DmModul.con1;

  try
    spbyr.Close;
    spbyr.StoredProcName := 'SP_AmbilBarang';
    spbyr.PrepareSQL;
    spbyr.ParamByName('cari2').AsString := Egudang.Text ;
    spbyr.ParamByName('cari').AsString := Ednama.text;
    spbyr.Execute;

    if spbyr.Eof then
    begin
    ShowMessage('data tidak ada...');
    //Clear
    Grid1.ClearRows(1, Grid1.RowCount - 1);
    Grid1.RowCount := 2;
    exit;
    end;
         for i:=1 to Grid1.RowCount-1 do begin
        Grid1.Cells[0,i]:='';
        Grid1.Cells[1,i]:='';
        Grid1.Cells[2,i]:='';
        Grid1.Cells[3,i]:='';
        Grid1.Cells[4,i]:='';

    end;
    //isi grid
    counter:=0;
    if  spbyr.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= spbyr.RecordCount+1;
    while not spbyr.Eof do begin
          Inc(counter);
        //cek
	      Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
        Grid1.AddCheckBox(1, i, false, false);

          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=spbyr.FieldByName('kode_brg').AsString; //No.
          Grid1.Cells[2,counter]:=spbyr.FieldByName('Nama_barang').AsString;
          Grid1.Cells[3,counter]:=spbyr.FieldByName('Satuan').AsString;
          Grid1.Cells[4,counter]:= spbyr.FieldByName('Stok').AsString;
          //Grid1.Cells[4,counter]:= formatRp(spbyr.FieldByName('KWITANSI').AsString);
          //Grid1.Cells[5,counter]:= formatRp(spbyr.FieldByName('spj').AsString);
          //Grid1.Cells[6,counter]:=spbyr.FieldByName('tglbayar').AsString;

          {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
          spbyr.Next;
    end;

    //Total;

    finally
    spbyr.Close;
    end;

end;

procedure TFrmLabel.btn2Click(Sender: TObject);

var
  i: Integer;
  state: boolean;
  sql: string;

begin
   {
  if trim(dtp1.Text) ='' then
      begin
         dtp1.SetFocus;
         ShowMessage('Tanggal Bayar Belum di isi...');
         //Result:=False;
         exit
      end;
  }
  if MessageDlg('Data dengan'+#13+#10+' Akan Di Proses'+#13+#10+
        'Pembayaran / spj , ?????',
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
        //updatebayar  : '+sel_kt_kunci+'
        {
          case cbb_pilih.ItemIndex of
        0:sel_Table:='i_pjbt';  //sp
        1:sel_Table:='i_header'; //spk
        2:sel_Table:='kwiu'; //kwi
        3:sel_Table:='kwimanual'; //kwi
        //2:sel_kt_kunci:='3'; //
        //3:sel_kt_kunci:='4'; //
          end;
        }
        {
        SQL := 'update '+sel_table+' set tglbayar = ' +
        //SQL := 'update i_pjbt set tglbayar = ' +
        QuotedStr(FormatDateTime('yyyy/mm/dd',dtp1.Date))+
        ' where no_peng = '+QuotedStr(grid1.Cells[1, i]);
        ExecSQL1(sql);
         }
        lst1.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i]+'-'+grid1.Cells[4, i]);
        //Tampildata;
        except
        lst2.Items.Add(grid1.Cells[1, i]+' - '+grid1.Cells[2, i] + ' gagal ' );
        end;
      end;
    end;
  end;
  Grid1.Invalidate;
  end;
end;



procedure TFrmLabel.SpeedButton2Click(Sender: TObject);
var s:string;
  Y,jml:INTEGER;
  kode,nama,hasil,sql:string;
begin
 // gridnofak.RandomFill(false);
 // gridnofak.AddCheckBoxColumn(3);


  gridnofak.Cells[0,0]:='No.';
  gridnofak.Cells[1,0]:='Cek';
  gridnofak.Cells[2,0]:='Nama';
  gridnofak.Cells[3,0]:='Satuan';
  //gridnofak.Cells[4,0]:='Stok';

  gridnofak.ColWidths[0]:=50;
  gridnofak.ColWidths[1]:=30; //1
  gridnofak.ColWidths[2]:=240;
  gridnofak.ColWidths[3]:=80;
  //gridnofak.ColWidths[4]:=90;
  //gridnofak.ShowSelection := false;
  //gridnofak.AddCheckBoxColumn(3);
  //gridnofak.Options := gridnofak.Options + [goEditing];
   sql:='SELECT * from m_barang order by nama_barang';
 Qproses.Close;
 Qproses.Connection:=DmModul.con1;
 Qproses.SQL.Text:=sql ;
 Qproses.open;

 gridnofak.RowCount:=Qproses.RecordCount+1;
 jml:=Qproses.RecordCount;
 Qproses.first;
 gridnofak.Rows[0].BeginUpdate;
 //frmprogres.mulai('Loading Data','T Penjualan');
 y:=1;
 while not Qproses.EOF do
 begin
//    frmprogres.ShowProg(y,Qproses.RecordCount,Qproses.FieldByName('namabrg').asstring);
	//application.ProcessMessages;
  gridnofak.AddCheckBox(1, y, false, false);
	gridnofak.Cells[0,y]:= inttostr(y);
	//gridnofak.Cells[1,y]:= '0';
	gridnofak.Cells[2,y]:= Qproses.fieldbyname('nama_barang').AsString;
  gridnofak.Cells[3,y]:= Qproses.fieldbyname('satuan').AsString;
        inc(y);
	Qproses.next;
 end; // akhir for

// frmprogres.selesai;
 gridnofak.Rows[0].EndUpdate;
end;

procedure TFrmLabel.gridnofakCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
CanEdit := ACol = 1;
end;

procedure TFrmLabel.gridnofakCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
gridnofak.RowSelect[Arow] := State;
end;

procedure TFrmLabel.SpeedButton4Click(Sender: TObject);
   var i,jml:INTEGER;
begin
for i:=0 to gridnofak.RowCount-1 do
   begin
     //gridnofak.Cells[1,i]:='1';
     gridnofak.SetCheckBoxState(1,i,true);
   end;
end;

procedure TFrmLabel.SpeedButton3Click(Sender: TObject);
 var i2:INTEGER;
begin
for i2:=0 to gridnofak.RowCount-1 do
   begin
     //gridnofak.Cells[1,i]:='1';
     gridnofak.SetCheckBoxState(1,i2,false);
   end;
end;

procedure TFrmLabel.gridnofakDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
  //var x:real;


begin


{

if (ARow>0) and (ACol=1) then
   begin
     //gridnofak.Canvas.FillRect(Rect);
     if SameText(gridnofak.Cells[ACol-1, ARow],'True') then
       DrawFrameControl(gridnofak.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED)
     else DrawFrameControl(gridnofak.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK)
   end
   else
   gridnofak.Canvas.TextRect(Rect, Rect.Left+2, Rect.Top+2, gridnofak.Cells[ACol, ARow]);
 }
  {
    if acol=2 then
   begin
    x:=gridnofak.AsFloat[acol,arow];
    if x<1 then
    gridnofak.Columns[2].Color:=clblue
    else
    gridnofak.Columns[2].Color:=clwhite;

   end;
   }
end;

procedure TFrmLabel.gridnofakGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
if odd(ARow) then
    ABrush.Color := clInfoBk;
end;

end.
