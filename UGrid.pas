unit UGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, StdCtrls, Buttons, ComCtrls,nuest,
  PBNumEdit, DBGrids, CRGrid;

type
  TFrmGrid = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    pnmBrg: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    DateTimePicker2: TDateTimePicker;
    CheckBox2: TCheckBox;
    lbterbilang: TLabel;
    lbtotal: TLabel;
    btHapus: TButton;
    bttotal: TButton;
    btsimpan: TButton;
    btbatal: TButton;
    btbaris: TButton;
    pbtotal: TPBNumEdit;
    tblebar: TBitBtn;
    sgkop: TStringGrid;
    CRDBGrid1: TCRDBGrid;
    sg: TStringGrid;
    procedure btHapusClick(Sender: TObject);
    procedure btbatalClick(Sender: TObject);
    procedure sgDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure sgKeyPress(Sender: TObject; var Key: Char);
    procedure btbarisClick(Sender: TObject);
    procedure bttotalClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure tblebarClick(Sender: TObject);


  private
    { Private declarations }
  public
    function ratakanan(max: integer; teks: string): string;
    procedure hapusBaris(no_baris: integer);
    { Public declarations }
  end;

var
  FrmGrid: TFrmGrid;
  i:integer;
implementation

uses UnMenu,UnModul,uCariBarang;

{$R *.dfm}

procedure TFrmGrid.hapusBaris(no_baris: integer);
var i:integer;
begin
for i:=1 to sg.ColCount-1 do
  begin
  sg.Cells[i,no_baris]:='';
  end;

end;

function TFrmGrid.ratakanan(max: integer; teks: string): string;
var pjtext,sisa:integer;
i:integer;
spasi:string;
begin
pjtext:=length(teks);
sisa:=max-pjtext;
for i:=0 to sisa  do
  begin
  spasi:=spasi+'#';
  end;
Result:=spasi+teks;
end;

procedure TFrmGrid.btHapusClick(Sender: TObject);
begin
hapusbaris(sg.row);
bttotalClick(Sender);
end;

procedure TFrmGrid.btbatalClick(Sender: TObject);
var i,j:integer;
w:word;
sh:TShiftState;
begin
w:=vk_return;
//CheckBox1Click(Sender);
Edit2.Text:='SP-001';
//Edit3.Text:='Umum';
//Edit2KeyDown(Sender,w,sh);
DateTimePicker1.Date:=Now;
for i:=1 to sg.RowCount-1 do
   begin
   hapusbaris(i);
   end;
bttotalClick(Sender);
sg.RowCount:=12;
Edit1.Enabled:=true;
CheckBox1.Enabled:=true;
btsimpan.Caption:='Simpan';
pnmBrg.Caption:='';

end;

procedure TFrmGrid.sgDblClick(Sender: TObject);
  var key:Word;
s:TShiftState;
begin
key:=VK_RETURN;
if (sg.Col=2) or (sg.Col=3) then
  begin
  sgKeyDown(Self,key,S);
  //ShowMessage('aaaa');
  end;
end;

procedure TFrmGrid.sgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var i,pRawal:integer;
  var a:string;
begin

if ((ssctrl in Shift)and(chr(Key)in['S','s']))
   OR (key=vk_f1)
   or ((ssctrl in Shift)and(chr(Key)in[#13]))then
  begin
  //btsimpanClick(Sender);
  exit;
  end;
if(ssctrl in Shift)and(chr(Key)in['B','b']) then
  begin
  //btbatalClick(Sender);
  exit;
  end;

if key=vk_tab then
  begin
  if (sg.Col=sg.ColCount-1)and(sg.Row=sg.RowCount-1) then
      btHapus.SetFocus;
  end;
if key=vk_down then
  begin
  if (sg.Row=sg.RowCount-1) then
      //bttbbarisClick(Sender);
  end;
if key=vk_delete then
  begin
  btHapusClick(Sender);
  end;

if key=vk_return then
    begin
    
    if sg.Col=1 then
        begin
        if sg.Cells[1,sg.Row]='' then exit;

        a:=sg.Cells[1,sg.Row];
        pRawal:=sg.Row;
        //cek jika ada data sama
        for i:=1 to sg.RowCount-1 do
            begin
            if i<>pRawal then
                begin
                if UpperCase(a)=UpperCase(sg.Cells[1,i]) then
                    begin
                    sg.Cells[5,i]:=FloatToStr(StrToFloat(sg.Cells[5,i])+1);
                    sg.Cells[1,prawal]:='';
                    {
                    sg.Cells[8,i]:=FormatUang(FloatToStr(
                                    StrToFloat(clearF(sg.Cells[5,i]))*
                                    StrToFloat(clearF(sg.Cells[6,i]))
                                    ));
                     }
                    exit;
                    Break;
                    end;
                end;
            end; // end cek

        if cari('select * from m_barang where kode_brg='+
            QuotedStr(sg.Cells[sg.Col,sg.row]))>0 then
            begin
            sg.Cells[1,sg.Row]:=DmModul.addscari['kode_brg'];
            sg.Cells[2,sg.Row]:=DmModul.addscari['nama_barang'];
            sg.Cells[3,sg.Row]:=DmModul.addscari['bidang_brg'];
            sg.Cells[4,sg.Row]:=DmModul.addscari['satuan'];
            sg.Cells[5,sg.Row]:='1';
            //sg.Cells[6,sg.Row]:=FormatUang(DmModul.addscari['hrg_beli']);
            //sg.Cells[7,sg.Row]:=FormatUang(DmModul.addscari['hrg_jual']);
            //sg.Cells[8,sg.Row]:=FormatUang(DmModul.addscari['hrg_beli']);
            if sg.Row=sg.RowCount-1 then sg.RowCount:=sg.RowCount+1;
            sg.Row:=sg.Row+1;
            pnmBrg.Caption:=DmModul.addscari['nama_barang'];//  +'    @Rp.'+FormatUang(DmModul.addscari['harga_beli']);
            end
            else // jika kolom 0 tidak diketemukan kode yang sesuai maka
            begin
            if MessageDlg('Kode Barang tidak ditemukan'+#13+
                'Tambahkan Data Baru ?',mtInformation,[mbYes]+[mbno],0)=mryes then
                begin
                {
                if fbarangin=nil then fbarangIn:=TfbarangIn.Create(Application);
                fbarangin.Edit2.Text:='';
                fbarangin.Edit3.Text:='0';
                fbarangin.Edit4.Text:='0';
                fbarangin.Edit5.Text:='';
                fbarangin.Edit6.Text:='0';
                fbarangin.ComboBox1.Text:='';
                fbarangin.ComboBox2.Text:='';
                fbarangIn.Edit1.Text:=sg.Cells[sg.Col,sg.row];
                fbarangIn.ShowModal;
                }
                end;
            end;
        end
        else
    if (sg.Col=2)or (sg.col=3) then
        begin

        if fcaribarang=nil then fcaribarang:=tfcaribarang.Create(Application);
        fcaribarang.pcontrol.Caption:='fbeliIn';
        fcaribarang.Edit1.Text:=sg.Cells[sg.Col,sg.row];
        fcaribarang.ShowModal;
         
        end
        else exit;
    end;
end;

procedure TFrmGrid.FormCreate(Sender: TObject);
begin

//    counter:=0;
//  hapus_baris:=0;

  sg.ColCount:=7;
  //Grid1.RowCount:=1;
  //sg.FixedRowAlways := True;

  sg.Cells[0,0]:='No';
  sg.Cells[1,0]:='Kode';
  sg.Cells[2,0]:='Nama';
  sg.Cells[3,0]:='bidang';
  sg.Cells[4,0]:='satuan';
  sg.Cells[5,0]:='jumlah';

  sg.ColWidths[0]:=30;
  sg.ColWidths[1]:=90;
  sg.ColWidths[2]:=290;
  sg.ColWidths[3]:=50;
  sg.ColWidths[4]:=50;
  sg.ColWidths[5]:=50;

{
sgkop.Cells[0,0]:='No';
sgkop.Cells[1,0]:='Kode barang';
sgkop.Cells[2,0]:='Nama barang';
sgkop.Cells[3,0]:='Bidang Barang';
sgkop.Cells[4,0]:='Satuan';
sgkop.Cells[5,0]:='Qty';
}
end;

procedure TFrmGrid.sgKeyPress(Sender: TObject; var Key: Char);
begin
if (sg.Col>=4) then
    begin
    if (sg.Cells[1,sg.Row]='') then key:=#0;
    end;
//if (sg.Col=5)or (sg.Col=6) or (sg.col=7)then
//    if not(key in['0'..'9','.',',',#13,#8]) then key:=#0;
 //if   (sg.col=8) then key:=#0;
end;

procedure TFrmGrid.btbarisClick(Sender: TObject);
begin
sg.RowCount:=sg.RowCount+1;
sg.Cells[0,sg.RowCount-1]:=FloatToStr(sg.RowCount-1);
end;

procedure TFrmGrid.bttotalClick(Sender: TObject);
var
//i:integer;
total:Double;

begin
for i:=1 to sg.RowCount-1 do
  begin
  sg.Cells[0,i]:=' '+FloatToStr(i);
  if (sg.Cells[8,i]<>'') then
  total:=total+StrToFloat(clearF(sg.Cells[8,i]));
  end;
  lbtotal.Caption:='Total Rp.'+FormatUang(FloatToStr(total));
  if total>=2130000000 then
      begin
      lbterbilang.Caption:='-';
      lbterbilang.Font.Size:=15;
      end
      else
  if total>0 then
  lbterbilang.Caption:=terbilang(round(total))
  else  lbterbilang.Caption:='======================';
  pbtotal.Value:=total;
end;

procedure TFrmGrid.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked=true then
    begin
    Edit1.Text:=TampilOto(DmModul.addscari,'no_trans','select no_trans from beli','F',Date,3);
    Edit2.SetFocus;
    //fbeli.ActiveControl:=Edit1;
    Edit1.ParentColor:=true;
    //tblebarClick(Sender);
    end
    else
    begin
    Edit1.SetFocus;
    //fbeli.ActiveControl:=Edit1;
    Edit1.ParentColor:=false;
    Edit1.Color:=clWhite;
    Edit1.Text:='';
    end;
end;


procedure TFrmGrid.tblebarClick(Sender: TObject);
var lebarF,lebaSG:real;
a,b,c,d,e,f,g,h:integer;
begin
lebarF:=fbeliIn.Width;
a:=round(10/100*lebarF);
b:=round(40/100*lebarF);
c:=round(13/100*lebarF);
d:=round(10/100*lebarF);
e:=round(8/100*lebarF);

//f:=round(11/100*lebarF);
//g:=round(11/100*lebarF);
//h:=round(13/100*lebarF);
sg.ColWidths[1]:=a;
sg.ColWidths[2]:=b;
sg.ColWidths[3]:=c;
sg.ColWidths[4]:=d;
sg.ColWidths[5]:=e;
//sg.ColWidths[6]:=f;
//sg.ColWidths[7]:=g;
//sg.ColWidths[8]:=h;
sg.RowHeights[0]:=0;

//sgkop.ColWidths[1]:=a;
//sgkop.ColWidths[2]:=b;
//sgkop.ColWidths[3]:=c;
//sgkop.ColWidths[4]:=d;
//sgkop.ColWidths[5]:=e;
//sgkop.ColWidths[6]:=f;
//sgkop.ColWidths[7]:=g;
//sgkop.ColWidths[8]:=h;
//sgkop.RowHeights[1]:=0;
//sgkop.Height:=sgkop.RowHeights[0];

end;

end.
