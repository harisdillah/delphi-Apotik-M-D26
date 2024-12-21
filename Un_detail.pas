unit Un_detail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, AdvUtil, MemDS, DBAccess,
  MyAccess, Grids, AdvObj, BaseGrid, AdvGrid, StdCtrls, DB,
   Buttons;

type
  TFrm_detail = class(TForm)
    Grid1: TAdvStringGrid;
    SP_detailbrg: TMyStoredProc;
    Ed_cari: TEdit;
    Label1: TLabel;
    Ed_jml: TEdit;
    Label2: TLabel;
    btn1: TSpeedButton;
  //  exlrprt1: TEXLReport;
    procedure FormCreate(Sender: TObject);
    procedure Ed_cariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Grid1GetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: String);
    procedure Ed_jmlChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure exlrprt1GetFieldValue(Sender: TObject; const Field: String;
      var Value: OleVariant);
    procedure exlrprt1BeforeBuild(Sender: TObject);
    procedure Grid1DblClickCell(Sender: TObject; ARow, ACol: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Aturgrid1;
    procedure Total_detail;
  end;

var
  Frm_detail: TFrm_detail;

implementation

uses UF_terbilang, unModul,UnVariabel,UnBast,uconfig ;
{$R *.dfm}

procedure TFrm_detail.Total_detail;
var i :integer;
tot_t1,
tot_disk,tot_t2,tot_pjk,tot_bayar:real;
begin
tot_t1:=0;
tot_t2:=0;

   for i:=1 to Grid1.RowCount-1 do begin
        tot_t1:=tot_t1+strtofloat(clearDot(Grid1.Cells[4,i]));

   end;
   ed_jml.Text:=floattostr(tot_t1);

end;


Procedure TFrm_detail.Aturgrid1;
begin
  counter:=0;
  hapus_baris:=0;

  Grid1.ColCount:=9;
  Grid1.RowCount:=1;
  Grid1.FixedRowAlways := True;
  Grid1.Options := Grid1.Options + [goEditing];

  Grid1.Cells[0,0]:='No.';
  Grid1.Cells[1,0]:='NO.Peng';
  Grid1.Cells[2,0]:='TGl_bast';
  Grid1.Cells[3,0]:='Nama Barang';
  Grid1.Cells[4,0]:='Jumlah';
  Grid1.Cells[5,0]:='Satuan';
  Grid1.Cells[6,0]:='@Harga';
  Grid1.Cells[7,0]:='Diskon';
  Grid1.Cells[8,0]:='CV/PBF';

  Grid1.ColWidths[0]:=30;
  Grid1.ColWidths[1]:=80;
  Grid1.ColWidths[2]:=80; //1
  Grid1.ColWidths[3]:=240;
  Grid1.ColWidths[4]:=80;
  Grid1.ColWidths[5]:=90;
  Grid1.ColWidths[6]:=90;
  Grid1.ColWidths[7]:=90;
  Grid1.ColWidths[8]:=120;

  //clear grid
  //StringGrid1.ClearRows(1, StringGrid1.RowCount - 1);


  //rata kanan
  ///RightEdit(ed_t1);

end;


procedure TFrm_detail.Ed_cariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var i :integer;
begin
 if key = 13 then
    try
    Screen.cursor := crsqlWait;
    SP_detailbrg.Connection := DmModul.con1;
    SP_detailbrg.Close;
    SP_detailbrg.StoredProcName := 'SP_cari_bast_nmbarang';
    SP_detailbrg.PrepareSQL;             //lbl_nama_barang.Caption;
    SP_detailbrg.ParamByName('cari').AsString := ed_cari.Text; //key ba
    SP_detailbrg.Open;

    if SP_detailbrg.Eof then
    begin
    ShowMessage('data tidak ada...');
    Screen.cursor := crDefault;
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
        Grid1.Cells[5,i]:='';
        Grid1.Cells[6,i]:='';
        Grid1.Cells[7,i]:='';
        Grid1.Cells[8,i]:='';
    end;
    //isi grid
    counter:=0;
    if  SP_detailbrg.RecordCount<=1 then
      Grid1.RowCount:= 2
    else
      Grid1.RowCount:= SP_detailbrg.RecordCount+1;
    while not SP_detailbrg.Eof do begin
          Inc(counter);
        //cek
		    Grid1.ShowSelection := false;
        for i := 1 to Grid1.RowCount - 1 do
        //Grid2.AddCheckBox(1, i, false, false);

          Grid1.Cells[0,counter]:=IntToStr(counter);
          Grid1.Cells[1,counter]:=SP_detailbrg.FieldByName('no_peng').AsString; //No.
          Grid1.Cells[2,counter]:=SP_detailbrg.FieldByName('tgl_ba1').AsString;
          Grid1.Cells[3,counter]:=SP_detailbrg.FieldByName('nama').AsString;
          Grid1.Cells[4,counter]:=SP_detailbrg.FieldByName('jumlah').AsString;
          Grid1.Cells[5,counter]:=SP_detailbrg.FieldByName('satuan').AsString;
          Grid1.Cells[6,counter]:=SP_detailbrg.FieldByName('hrga_satuan').AsString;
          Grid1.Cells[7,counter]:=SP_detailbrg.FieldByName('n_disk').AsString;
          Grid1.Cells[8,counter]:=SP_detailbrg.FieldByName('NamaPerusahaan').AsString;
          {
          jml:=StrToInt(StringGrid3.Cells[2,counter]);
          harga:=StrToInt(StringGrid3.Cells[3,counter]);
          total_harga:=jml*harga;
          StringGrid3.Cells[6,counter]:=IntToStr(total_harga);
          }
          SP_detailbrg.Next;
    end;
    Total_detail;
    Screen.cursor := crDefault;
    //Ed_nomor_spk.Text := Grid1.Cells[2,ARow];
    //Ed_tglspk.Text := Grid1.Cells[3,ARow];
    //Ed_tgl_bast.Text := Grid1.Cells[4,ARow];
    //Ed_cv.Text := Grid1.Cells[8,ARow];
    //Ed_nilai.Text := Grid1.Cells[5,ARow];
    //label1.Caption := TitleCase(spell(Ed_nilai.text)+' Rupiah');
    //label2.Caption:= formatuang(Ed_nilai.Text);
    //Ed_rek.Text := Grid1.Cells[6,ARow]+'-'+Grid1.Cells[7,ARow];
    //Total;
      finally
    SP_detailbrg.Close;

    end;
end;

procedure TFrm_detail.FormCreate(Sender: TObject);
begin
   Aturgrid1;
   RightEdit(Ed_jml);
end;

procedure TFrm_detail.Grid1GetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TVAlignment);
begin
case ACol of
    1,2: HAlign := taCenter;
    3,5: HAlign := taLeftJustify;
    4,6,7: HAlign := taRightJustify;
  end;
end;

procedure TFrm_detail.Grid1GetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: String);
begin
isFloat := Acol in [5,6,7];
case ACol of
  5: Floatformat :='%.2n';
  6: Floatformat :='%.2n';
  7: Floatformat :='%.2n';
end;
end;

procedure TFrm_detail.Ed_jmlChange(Sender: TObject);
begin
//if Ed_jml.Text = '' then
  formatRupiah(Ed_jml);
end;

procedure TFrm_detail.btn1Click(Sender: TObject);
begin
try
     SP_detailbrg.Connection := DmModul.con1;
     SP_detailbrg.Close;
     SP_detailbrg.StoredProcName := 'SP_cari_bast_nmbarang';
     SP_detailbrg.PrepareSQL;
     SP_detailbrg.ParamByName('cari').AsString := ed_cari.Text; //key ba
	   SP_detailbrg.Open;
//     exlrprt1.template :=apdirxls +'detail_barang.xls';
//     exlrprt1.Dataset:=SP_detailbrg;
//     exlrprt1.TemplSheet :='detail';
//      //EXLReport1.Title := 'Cobak';
//     exlrprt1.Show();
      finally
        SP_detailbrg.Close;
      end;
end;

procedure TFrm_detail.exlrprt1GetFieldValue(Sender: TObject;
  const Field: String; var Value: OleVariant);
begin
if AnsiCompareText(Field, 'No') = 0 then
  begin
    Value := FCounter;
    Inc(FCounter);
  end;
end;

procedure TFrm_detail.exlrprt1BeforeBuild(Sender: TObject);
begin
FCounter := 1;
end;

procedure TFrm_detail.Grid1DblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
 Ed_cari.Text := Grid1.Cells[3,ARow];
end;

end.
