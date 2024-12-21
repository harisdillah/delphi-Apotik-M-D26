unit UnCari_com;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls, Buttons, ExtCtrls, ImgList,
  MemDS, DBAccess, MyAccess,IniFIles,mask,DBCtrls,PBNumEdit,StrUtils,Masks;

type
  TFCari_com = class(TForm)
    LsCari: TListView;
    LsField: TListBox;
    ImlGambar: TImageList;
    AdDsCari: TMyQuery;
    Panel1: TPanel;
    BtnCancel: TBitBtn;
    BtnOk: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSearchClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure LsCariDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LsCariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LsCariCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure LsCariKeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
    function BuatStrSql(nLsb:TListBox) :string;
  public
    { Public declarations }
  end;

var
  FCari_com: TFCari_com;
  StrCari:string;
  StrSql:string;
  Aktif:Boolean;
  CariSucces:Boolean;
//  nFieldCari:array of string;

implementation
uses UnModul;
{$R *.dfm}


procedure TFCari_com.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFCari_com.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFCari_com.FormShow(Sender: TObject);
var
  I:integer;
begin
{
  CmbField.Clear;
  for i:=0 to LsCari.Columns.Count-1 do
  begin
    CmbField.Items.Add(LsCari.Column[i].Caption);
  end;
  CmbField.ItemIndex:=0;
  //CmbFilter.ItemIndex:=0;  //Kata tengah
 }
  CariSucces:=False;
  BtnSearchClick(Sender);
  SetLength(nFieldCari,LsField.Items.Count);
  nFieldCari[0]:='';
end;


function TFCari_com.BuatStrSql(nLsb: TListBox): string;
var
  I:Integer;
  strSem:string;
  strTb:string;
begin
  strTb:=nLsb.Items[0];
  for i:=1 to nLsb.Items.Count-1 do
  begin
    if strSem='' then
      strSem:=nLsb.Items[I]
    else
      strSem:=strSem+', '+nLsb.Items[I];
  end;
  Result:=strSem + ' from '+ strTb;
end;

procedure TFCari_com.BtnSearchClick(Sender: TObject);
var
  I:integer;
  jumlah:integer;
  j:integer;
  //Jm:Integer;
  lis:TListItem;
begin

//jumlah:=1000;
//if jumlah<=0 then
//    Jm:=1
//  else
//    Jm:=1000;
  Screen.Cursor:=crAppStart;
  AdDsCari.Close;
  //data

    AdDsCari.SQL.Text:='select '+
    BuatStrSql(LsField);

  AdDsCari.Open;
//  Label1.Caption :='Jumlah Data : ' + inttostr(AdDsCari.RecordCount) +' record ';
  LsCari.Items.Clear;
  for I:=1 to AdDsCari.RecordCount do
  begin
    AdDsCari.RecNo:=I;
    lis:=LsCari.Items.Add;
    lis.Caption:=AdDsCari[LsField.Items[1]];
    for j:=2 to LsField.Items.Count -1 do
    begin
      if AdDsCari[LsField.Items[j]]<>Null then
        lis.SubItems.Add(AdDsCari[LsField.Items[j]]);
    end;
  end;
  Screen.Cursor:=crDefault;
end;



procedure TFCari_com.BtnOkClick(Sender: TObject);
var
  i:integer;
begin
  if (AdDsCari.RecNo>0) and (LsCari.ItemIndex>=0)  then
  begin
    nFieldCari[0]:=LsCari.Items[LsCari.ItemIndex].Caption;
    for i:=0 to LsCari.Items[LsCari.ItemIndex].SubItems.Count -1 do
    begin
      nFieldCari[i+1]:=LsCari.Items[LsCari.ItemIndex].SubItems[i];
    end;
    CariSucces:=True;
    Close;
  end;
end;

procedure TFCari_com.LsCariDblClick(Sender: TObject);
begin
  BtnOkClick(BtnOk);
end;

procedure TFCari_com.FormCreate(Sender: TObject);
begin
  Aktif:=False;
end;

procedure TFCari_com.LsCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=40)then  // panah bawah
    Lscari.SetFocus;

end;

procedure TFCari_com.LsCariCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  lst: TListView;
  i: integer;
  f1, f2, c1, c2: TColor;
begin
  if (TListView(Sender).ViewStyle = vsIcon) then
    Exit;
  lst := Sender as TListView;
  lst.Canvas.Brush.Style := bsSolid;
  i := lst.Items.Count;
  if (i mod 2) <> 0 then
  begin
    c1 := clWhite;
    c2 := $00F8F8F8;
    f1 := clBlue;
    f2 := clBlack;
  end else
  begin
    c1 := $00F8F8F8;
    c2 := clWhite;
    f1 := clBlack;
    f2 := clBlue;
  end;
  // Painting...
  if (Item.Index mod 2) = 0 then
  begin
    lst.Canvas.Brush.Color := c2;
    lst.Canvas.Font.Color := f2;
  end else
  begin
    lst.Canvas.Brush.Color := c1;
    lst.Canvas.Font.Color := f1;
  end;
end;

procedure TFCari_com.LsCariKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13)then  // panah bawah
     BtnOkClick(Sender);
end;

end.
