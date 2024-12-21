unit UnCarisp;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls, Buttons, ExtCtrls, ImgList,
  MemDS, DBAccess, MyAccess,IniFIles,mask,DBCtrls,StrUtils,Masks;


type
  TFCarisp = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    EdSearch: TEdit;
    LsField: TListBox;
    ImlGambar: TImageList;
    BtnCancel: TBitBtn;
    BtnOk: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    BtnSearch: TSpeedButton;
    LsCari: TListView;
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
    procedure EdSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LsCariKeyPress(Sender: TObject; var Key: Char);
    
    procedure LsFieldDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);


  private
    { Private declarations }
   // function BuatStrSql(nLsb:TListBox) :string;
  public
    { Public declarations }
  end;

var
  FCarisp: TFCarisp;
  StrCari:string;
  StrSql:string;
  Aktif:Boolean;
  CariSucces:Boolean;
 // nFieldCari:array of string;

implementation
uses UnModul;
{$R *.dfm}


procedure TFCarisp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFCarisp.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFCarisp.FormShow(Sender: TObject);
var
  I:integer;
begin
  CariSucces:=False;
  BtnSearchClick(Sender);
  SetLength(nFieldCari,LsField.Items.Count);
  nFieldCari[0]:='';
  EdSearch.SetFocus;
end;

procedure TFCarisp.BtnSearchClick(Sender: TObject);
var
  I:integer;
  jumlah:integer;
  j:integer;
  lis:TListItem;
  AdDsCarisp : TMyStoredProc;
begin
  FCarisp.EdSearch.SetFocus;
  AdDsCarisp:= TMyStoredProc.Create(nil);
  AdDsCarisp.Connection := DmModul.con1;

  try
    AdDsCarisp.Close;
    AdDsCarisp.StoredProcName := Label4.Caption ;
    AdDsCarisp.PrepareSQL;
    AdDsCarisp.ParamByName('cari').AsString := EdSearch.text;
    AdDsCarisp.Execute;
    Label1.Caption :='Jumlah Data : ' + inttostr(AdDsCarisp.RecordCount) +' record ';
  LsCari.Items.Clear;
  for I:=1 to AdDsCarisp.RecordCount do
  begin
    AdDsCarisp.RecNo:=I;
    lis:=LsCari.Items.Add;
    //lis.Item.Caption:=Format('%d.%d',[i,1]);


    lis.Caption:=AdDsCarisp[LsField.Items[1]];
    for j:=2 to LsField.Items.Count -1 do
    begin
      if AdDsCarisp[LsField.Items[j]]<>Null then
        lis.SubItems.Add(AdDsCarisp[LsField.Items[j]]);
    end;
  end;
    finally
    AdDsCarisp.Close;
    LsCari.SetFocus;  
    end;


end;



procedure TFCarisp.BtnOkClick(Sender: TObject);
var
  i:integer;
begin
//  if (AdDsCarisp.RecNo>0) and (LsCari.ItemIndex>=0)  then
//  begin
    nFieldCari[0]:=LsCari.Items[LsCari.ItemIndex].Caption;
    for i:=0 to LsCari.Items[LsCari.ItemIndex].SubItems.Count -1 do
    begin
      nFieldCari[i+1]:=LsCari.Items[LsCari.ItemIndex].SubItems[i];
    end;
    CariSucces:=True;
    Close;
//  end;
end;

procedure TFCarisp.LsCariDblClick(Sender: TObject);
begin
  BtnOkClick(BtnOk);
end;

procedure TFCarisp.FormCreate(Sender: TObject);
begin
  Aktif:=False;
end;

procedure TFCarisp.LsCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=40)then  // panah bawah
    Lscari.SetFocus;

end;


procedure TFCarisp.LsCariCustomDrawItem(Sender: TCustomListView;
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

procedure TFCarisp.EdSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=Vk_Return then
  begin
    BtnSearchClick(Sender);
  end;

  if (Key=40)then
    LsCari.SetFocus;
  if (Key=13)then
    LsCari.SetFocus;
end;

procedure TFCarisp.LsCariKeyPress(Sender: TObject; var Key: Char);
begin
try
		if(Key=#13)then
	begin
     BtnOkClick(Sender);
     //ed_kode.Text:=ListView4.Selected.Caption;
     //ed_jml.SetFocus;
     //Pg_Show.Visible:=false;
	end;
		except
	end;
end;




procedure TFCarisp.LsFieldDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
  var Field: TField;
//begin
//  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
//  if Field.Name = 'FIELDNAME' then
//    TFloatField(Field).DisplayFormat := '#,##0.00';
end;

end.
