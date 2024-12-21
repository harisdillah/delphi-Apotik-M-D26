unit uMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, umMain, MeeXL;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    edt1: TEdit;
    btn1: TButton;
    dlgOpen1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var i, r,b: Integer;
begin
  with MeeExcel do begin
  //  Clear; FileName:='D:\Tes.xlsx'; r:=1;

   Clear; FileName:='Tes 2015.xlsx'; r:=1;

    //kop
    CellFormat.Alignment.HorizontalAlignment := 1;
    CellFormat.Alignment.VerticalAlignment := -4108;
    CellFormat.Font.Name := 'Arial Narrow';
    CellFormat.Font.FontStyle := 'Bold';
    CellFormat.Font.Size := 10;
    AddText(r, 1, 1, 1, 'Provinsi');
    AddText(r, 3, 1, 1, ': Jawa Timur'); Inc(r);
    AddText(r, 1, 1, 1, 'Satuan Kerja');
    AddText(r, 3, 1, 1, ': RSU BATU');
    Inc(r);
    //title
    CellFormat.Alignment.HorizontalAlignment := -4108;
    CellFormat.Font.Size := 12;
    AddText(r, 1, 1, 12, 'LAPORAN MUTASI BARANG PERSEDIAAN'); Inc(r);
    AddText(r, 1, 1, 12, 'Periode Tahun Anggaran 2015');
    Inc(r); Inc(r);
    //header
    CellFormat.Alignment.WrapText := -1;
    CellFormat.Font.Size := 10;
    CellFormat.Border.Left.Color := -4105;
    CellFormat.Border.Left.LineStyle := 1;
    CellFormat.Border.Top.Color := -4105;
    CellFormat.Border.Top.LineStyle := 1;
    CellFormat.Border.Right.Color := -4105;
    CellFormat.Border.Right.LineStyle := 1;
    CellFormat.Border.Bottom.Color := -4105;
    CellFormat.Border.Bottom.LineStyle := 1;
    AddText(r, 1, 2, 1, 'No');
    AddText(r, 2, 1, 2, 'Akun Neraca');
    AddText(r, 4, 2, 1, 'Saldo Awal Per 31 Januari 2015');
    AddText(r, 5, 1, 4, 'Mutasi Bertambah');
    AddText(r, 9, 1, 3, 'Mutasi Berkurang');
    AddText(r, 12, 2, 1, 'Saldo Akhir Per 31 Januari 2015'); Inc(r);
    AddText(r, 2, 1, 1, 'Kode');
    AddText(r, 3, 1, 1, 'Uraian');
    AddText(r, 5, 1, 1, 'Pembelian');
    AddText(r, 6, 1, 1, 'Hibah/Hadiah');
    AddText(r, 7, 1, 1, 'Reklasifikasi');
    AddText(r, 8, 1, 1, 'Total');
    AddText(r, 9, 1, 1, 'Pemakaian');
    AddText(r, 10, 1, 1, 'Pengembalian');
    AddText(r, 11, 1, 1, 'Reklasifikasi'); Inc(r);
    CellFormat.Font.Size := 8;

    //data header
    for i:=1 to 12 do AddText(r, i, 1, 1, IntToStr(i)); Inc(r);


    //DATA DARI DATABASE
     for i := 1 to 10 do begin
      CellFormat.Alignment.HorizontalAlignment := -4108;
      AddText(i-1+9, 1, 1, 1, IntToStr(i));
      CellFormat.Alignment.HorizontalAlignment := 1;
      AddText(i-1+9, 2, 1, 1, 'AAA');
      AddText(i-1+9, 3, 1, 1, 'Nama Barang');
      AddText(i-1+9, 4, 1, 1, '100');
      AddText(i-1+9, 5, 1, 1, '100');
      AddText(i-1+9, 6, 1, 1, 'Unit');
      CellFormat.NumberFormat := '#,##0';
      AddText(i-1+9, 7, 1, 1, '5000');
      CellFormat.NumberFormat := '#,##0';
      AddText(i-1+9, 8, 1, 1, '5000');
      CellFormat.NumberFormat := '#,##0';
      AddText(i-1+9, 9, 1, 1, '5000');
      CellFormat.NumberFormat := '#,##0';
      AddText(i-1+9, 10, 1, 1, '5000');
      CellFormat.NumberFormat := '#,##0';
      AddText(i-1+9, 11, 1, 1, '5000');
      CellFormat.NumberFormat := '#,##0';
      AddText(i-1+9, 12, 1, 1, '5000');
    end;
    i := 10;
    //TOTAL DATA    ( baris , kolom , data ,marger)
    CellFormat.Alignment.HorizontalAlignment := -4108; // CENTER
    //tambahan
    //Inc(i);
    AddText(i-1+10, 1, 1, 4, 'TOTAL DATA');
    CellFormat.Alignment.HorizontalAlignment := 1;
    CellFormat.NumberFormat := '#,##0';
    AddText(i-1+10, 5, 1, 1, '=SUM(e'+inttostr(i-1)+':e'+inttostr((i+1)-1)+')');
    CellFormat.NumberFormat := '#,##0';
    AddText(i-1+10, 6, 1, 1, '15000');
    CellFormat.NumberFormat := '#,##0';
    AddText(i-1+10, 7, 1, 1, '15000');
    CellFormat.NumberFormat := '#,##0';
    AddText(i-1+10, 8, 1, 1, '15000');
    CellFormat.NumberFormat := '#,##0';
    AddText(i-1+10, 9, 1, 1, '15000');
    CellFormat.NumberFormat := '#,##0';
    AddText(i-1+10, 10, 1, 1, '15000');
    CellFormat.NumberFormat := '#,##0';
    AddText(i-1+10, 11, 1, 1, '15000');
    CellFormat.NumberFormat := '#,##0';
    AddText(i-1+10, 12, 1, 1, '15000');


    //Tanda Tangan Bawah
    CellFormat.Alignment.HorizontalAlignment := -4108;
    CellFormat.Alignment.WrapText := 0;
    CellFormat.Border.Left.Color := -4142;
    CellFormat.Border.Left.LineStyle := -4142;
    CellFormat.Border.Top.Color := -4142;
    CellFormat.Border.Top.LineStyle := -4142;
    CellFormat.Border.Right.Color := -4142;
    CellFormat.Border.Right.LineStyle := -4142;
    CellFormat.Border.Bottom.Color := -4142;
    CellFormat.Border.Bottom.LineStyle := -4142;

    AddText(i-1+11, 8, 1, 1, 'Kota, Tanggal');
    CellFormat.Alignment.HorizontalAlignment := 1;
    AddText(i-1+12, 1, 1, 1, 'Catatan:');
    CellFormat.Alignment.HorizontalAlignment := -4108;
    AddText(i-1+13, 8, 1, 1, 'Jabatan');
    CellFormat.Alignment.HorizontalAlignment := 1;
    AddText(i-1+14, 1, 1, 1, '1.  Apabila dihibahkan ditulis dikolom Keterangan');
    AddText(i-1+15, 1, 1, 1, '2.  HPB hanya diperuntukan bagi barang-barang hasil  realisasi belanja modal DPA-SKPD,');
    AddText(i-1+16, 1, 1, 1, '     tidak termasuk barang-barang yang berasal dari pihak lain (hibah, APBN, Sumbangan, dll)');
    CellFormat.Alignment.HorizontalAlignment := -4108;
    CellFormat.Font.FontStyle := 'Bold';
    CellFormat.Font.Underline := 2;
    AddText(i-1+18, 8, 1, 1, 'NAMA TERANG');
    CellFormat.Font.Underline := -4142;
    AddText(i-1+19, 8, 1, 1, 'NIP');

    //

    //columns
    SetColumn(1, 3);
    SetColumn(2, 7);
    SetColumn(3, 26);
    SetColumn(4, 13);
    SetColumn(5, 13);
    SetColumn(6, 11);
    SetColumn(7, 11);
    SetColumn(8, 13);
    SetColumn(9, 13);
    SetColumn(10, 11);
    SetColumn(11, 11);
    SetColumn(12, 13);
    //pagesetup
    //PageSetup.PaperSize := 140;
    PageSetup.Orientation := 2;
    PageSetup.LeftMargin := 28.3464566929134;
    PageSetup.TopMargin := 22.6771653543307;
    PageSetup.RightMargin := 28.3464566929134;
    PageSetup.BottomMargin := 42.5196850393701;
    PageSetup.HeaderMargin := 0;
    PageSetup.FooterMargin := 22.6771653543307;
    PageSetup.CenterHorizontally := True;
    PageSetup.RightFooter := '&7Halaman &P / &N';
    PageSetup.TitleRows := '$5:$8';
    //create
    if Execute then Open(Application.Handle);
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
dlgOpen1.Filter := 'Microsoft Excel|*.xls;*.xlsx';
  if dlgOpen1.Execute then begin
    Screen.Cursor := crHourGlass;
    //Memo1.Text := TMeeXL.Generate(dlgOpen1.FileName,StrToInt(edt1.Text));
    Screen.Cursor := crDefault;
  end;
end;

end.
