unit MeeXL;

interface

uses Windows, ComObj, Dialogs, Db, umMain,variants;
//uses Windows, ComObj, Dialogs,variants;
type

  {TCellFormat}

  TCFAlignment = class
    private
      FHorizontalAlignment, FVerticalAlignment, FWrapText, FIndentLevel: Integer;
    published
      property HorizontalAlignment: Integer read FHorizontalAlignment write FHorizontalAlignment;
      property VerticalAlignment: Integer read FVerticalAlignment write FVerticalAlignment;
      property WrapText: Integer read FWrapText write FWrapText;
      property IndentLevel: Integer read FIndentLevel write FIndentLevel;
  end;

  TCFFont = class
    private
      FColor, FSize, FUnderline: Integer; FName, FFontStyle: string;
    published
      property Color: Integer read FColor write FColor;
      property Name: string read FName write FName;
      property Size: Integer read FSize write FSize;
      property FontStyle: string read FFontStyle write FFontStyle;
      property Underline: Integer read FUnderline write FUnderline;
  end;

  TCFABorder = class
    private
      FColor, FLineStyle, FWeight: Integer;
    published
      property Color: Integer read FColor write FColor;
      property LineStyle: Integer read FLineStyle write FLineStyle;
      property Weight: Integer read FWeight write FWeight;
  end;

  TCFBorder = class
    private
      FLeft, FTop, FRight, FBottom: TCFABorder;
    published
      property Left: TCFABorder read FLeft write FLeft;
      property Top: TCFABorder read FTop write FTop;
      property Right: TCFABorder read FRight write FRight;
      property Bottom: TCFABorder read FBottom write FBottom;
      constructor Create;
      destructor Destroy; override;
  end;

  TCFPattern = class
    private
      FPattern, FPatternColor, FColor: Integer;
    published
      property Pattern: Integer read FPattern write FPattern;
      property PatternColor: Integer read FPatternColor write FPatternColor;
      property Color: Integer read FColor write FColor;
  end;

  TCellFormat = class
    private
      FNumberFormat: string; FAlignment: TCFAlignment;
      FFont: TCFFont; FBorder: TCFBorder; FPattern: TCFPattern;
    public
      procedure Reset;
    published
      property NumberFormat: string read FNumberFormat write FNumberFormat;
      property Alignment: TCFAlignment read FAlignment write FAlignment;
      property Font: TCFFont read FFont write FFont;
      property Border: TCFBorder read FBorder write FBorder;
      property Pattern: TCFPattern read FPattern write FPattern;
      constructor Create;
      destructor Destroy; override;
  end;

  {TPageSetup}

  TPageSetup = class
    private
      FPaperSize, FOrientation: Integer;
      FLeftMargin, FTopMargin, FRightMargin, FBottomMargin, FHeaderMargin,
      FFooterMargin: Double; FCenterHorizontally, FCenterVertically: Boolean;
      FLeftHeader, FCenterHeader, FRightHeader, FLeftFooter, FCenterFooter,
      FRightFooter, FTitleRows, FTitleColumns: string;
    public
      procedure Reset;
    published
      property PaperSize: Integer read FPaperSize write FPaperSize;
      property Orientation: Integer read FOrientation write FOrientation;
      property LeftMargin: Double read FLeftMargin write FLeftMargin;
      property TopMargin: Double read FTopMargin write FTopMargin;
      property RightMargin: Double read FRightMargin write FRightMargin;
      property BottomMargin: Double read FBottomMargin write FBottomMargin;
      property HeaderMargin: Double read FHeaderMargin write FHeaderMargin;
      property FooterMargin: Double read FFooterMargin write FFooterMargin;
      property CenterHorizontally: Boolean read FCenterHorizontally write FCenterHorizontally;
      property CenterVertically: Boolean read FCenterVertically write FCenterVertically;
      property LeftHeader: string read FLeftHeader write FLeftHeader;
      property CenterHeader: string read FCenterHeader write FCenterHeader;
      property RightHeader: string read FRightHeader write FRightHeader;
      property LeftFooter: string read FLeftFooter write FLeftFooter;
      property CenterFooter: string read FCenterFooter write FCenterFooter;
      property RightFooter: string read FRightFooter write FRightFooter;
      property TitleRows: string read FTitleRows write FTitleRows;
      property TitleColumns: string read FTitleColumns write FTitleColumns;
  end;

  {TMeeXL}

  TOXLPicture = record
    FileName: string; Left, Top, Width, Height: Double;
  end;

  TOXLColumn = record
    Col: Integer; Width: Double;
  end;

  TMeeXL = class(TObject)
    private
      FPageSetup: TPageSetup;
      FCellFormat: TCellFormat;
      FColumns: array of TOXLColumn;
      FPictures: array of TOXLPicture;
      FPageBreak: Integer;
      FFileName: string;
      DColumnWidth: Double;
      DCellFormat: TCellFormat;
      DPageSetup: TPageSetup;
      FLastCol, FLastRow: Integer;
    public
      procedure SetColumn(Col: Integer; Width: Double);
      procedure AddPicture(FileName: string; Left, Top, Width, Height: Double);
      procedure AddText(Row, Col, RowSpan, ColSpan: Integer; Value: Variant);
      procedure Clear;
      procedure Open(Handle: HWND);
      procedure Print(Handle: HWND);
      function Execute: Boolean;
      function Generate(const FileName: string; Sheet: Integer): string;
    published
      property PageSetup: TPageSetup read FPageSetup write FPageSetup;
      property CellFormat: TCellFormat read FCellFormat write FCellFormat;
      property PageBreak: Integer read FPageBreak write FPageBreak;
      property FileName: string read FFileName write FFileName;
      constructor Create;
      destructor Destroy; override;
  end;

function MeeExcel: TMeeXL;
  var
   CurrencyString: string;
   CurrencyFormat: Byte;
   NegCurrFormat: Byte;
   ThousandSeparator: Char;
   DecimalSeparator: Char;
implementation

uses SysUtils, ShellApi, Clipbrd;

const TAB = ^I; ENTER = ^M^J;

{global}
function GetTempFile(const Extension: string): string;
var
  Buffer: array[0..MAX_PATH] of Char;
begin
  GetTempPath(SizeOf(Buffer) - 1, Buffer);
  GetTempFileName(Buffer, '~', 0, Buffer);
  Result := ChangeFileExt(Buffer, Extension);
  RenameFile(Buffer, Result);
end;

function FileExists(const FileName: string): Boolean;
begin
  if Trim(FileName) = '' then Result := False
  else Result := SysUtils.FileExists(FileName);
end;

function BoolToStr(Value: Boolean): string;
begin
  if Value then Result := 'True'
  else Result := 'False';
end;

function QuoteText(const Text: string): string;
var i: integer;
begin
  i := Pos('"', Text);
  if i = 0 then Result := Text
  else Result := '"' + StringReplace(Text, '"', '""', [rfReplaceAll]) + '"';
end;

function StringRepeat(const Text: string; Count: Integer): string;
var i: integer; sResult: string;
begin
  for i := 1 to Count do
    sResult := sResult + Text;
  Result := sResult;
end;

function CellName(Row, Col: Integer): string;
  function ColName(Col: Integer): string;
  var iDiv, iMod: Integer;
  begin
    iMod:=Col mod 26;
    if iMod=0 then iMod:=26;
    iDiv:=Round((Col-iMod)/26);
    if iDiv>0 then begin
      if iDiv>26 then Result:=ColName(iDiv)+Chr(64+iMod)
      else Result:=Chr(64+iDiv)+Chr(64+iMod)
    end else Result:=Chr(64+iMod);
  end;
begin
  Result:=ColName(Col);
  if Row>0 then Result:=Result+IntToStr(Row);
end;

{TCFBorder}

constructor TCFBorder.Create;
begin
  inherited;
  FLeft := TCFABorder.Create;
  FTop := TCFABorder.Create;
  FRight := TCFABorder.Create;
  FBottom := TCFABorder.Create;
end;
destructor TCFBorder.Destroy;
begin
  FreeAndNil(FLeft);
  FreeAndNil(FTop);
  FreeAndNil(FRight);
  FreeAndNil(FBottom);
  inherited;
end;

{TCellFormat}

constructor TCellFormat.Create;
begin
  inherited;
  FAlignment := TCFAlignment.Create;
  FFont := TCFFont.Create;
  FBorder := TCFBorder.Create;
  FPattern := TCFPattern.Create;
end;

destructor TCellFormat.Destroy;
begin
  FreeAndNil(FAlignment);
  FreeAndNil(FFont);
  FreeAndNil(FBorder);
  FreeAndNil(FPattern);
  inherited;
end;

procedure TCellFormat.Reset;
begin
  FNumberFormat := 'General';
  FAlignment.HorizontalAlignment := 1;
  FAlignment.VerticalAlignment := -4107;
  FAlignment.WrapText := 0;
  FAlignment.IndentLevel := 0;
  FFont.Color := -4105;
  FFont.Name := 'Arial';
  FFont.Size := 10;
  FFont.FontStyle := 'Regular';
  FFont.Underline := -4142;
  FBorder.Left.Color := -4142;
  FBorder.Left.LineStyle:= -4142;
  FBorder.Left.Weight := 2;
  FBorder.Top.Color := -4142;
  FBorder.Top.LineStyle:= -4142;
  FBorder.Top.Weight := 2;
  FBorder.Right.Color := -4142;
  FBorder.Right.LineStyle:= -4142;
  FBorder.Right.Weight := 2;
  FBorder.Bottom.Color := -4142;
  FBorder.Bottom.LineStyle:= -4142;
  FBorder.Bottom.Weight := 2;
  FPattern.Pattern := -4142;
  FPattern.PatternColor := -4142;
  FPattern.Color := -4142;
end;

{TPageSetup}

procedure TPageSetup.Reset;
begin
  FPaperSize := 9;
  FOrientation := 1;
  FLeftMargin := 54;
  FTopMargin := 72;
  FRightMargin := 54;
  FBottomMargin := 72;
  FHeaderMargin := 36;
  FFooterMargin := 36;
  FCenterHorizontally := False;
  FCenterVertically := False;
  FLeftHeader := '';
  FCenterHeader := '';
  FRightHeader := '';
  FLeftFooter := '';
  FCenterFooter := '';
  FRightFooter := '';
  FTitleRows := '';
  FTitleColumns := '';
end;

{TMeeXL}

constructor TMeeXL.Create;
begin
  inherited;
  DPageSetup := TPageSetup.Create;
  DCellFormat := TCellFormat.Create;
  FPageSetup := TPageSetup.Create;
  FCellFormat := TCellFormat.Create;
  DPageSetup.Reset;
  DCellFormat.Reset;
  DColumnWidth := 8.43;
  if mMain.dxMeeXL.State=dsInactive then
    mMain.dxMeeXL.Open;
  Self.Clear;
end;

destructor TMeeXL.Destroy;
begin
  FreeAndNil(DPageSetup);
  FreeAndNil(DCellFormat);
  FreeAndNil(FPageSetup);
  FreeAndNil(FCellFormat);
  FColumns := nil;
  FPictures := nil;
  //if mMain.dxMeeXL.State<>dsInactive then
    //mMain.dxMeeXL.Close;
  inherited;
end;

procedure TMeeXL.Clear;
begin
  FPageSetup.Reset;
  FCellFormat.Reset;
  FColumns := nil;
  FPictures := nil;
  mMain.dxMeeXL.Close;
  mMain.dxMeeXL.Open;
  FPageBreak := 0;
  FFileName := '';
end;

procedure TMeeXL.SetColumn(Col: Integer; Width: Double);
var
  i: integer;
begin
  i := High(FColumns) + 1;
  SetLength(FColumns, i + 1);
  FColumns[i].Col := Col;
  FColumns[i].Width := Width;
end;

procedure TMeeXL.AddPicture(FileName: string;
  Left, Top, Width, Height: Double);
var
  i: integer;
begin
  i := High(FPictures) + 1;
  SetLength(FPictures, i + 1);
  FPictures[i].FileName := FileName;
  FPictures[i].Left := Left;
  FPictures[i].Top := Top;
  FPictures[i].Width := Width;
  FPictures[i].Height := Height;
end;

procedure TMeeXL.AddText(Row, Col, RowSpan, ColSpan: Integer;
  Value: Variant);
begin
  mMain.dxMeeXL.Append;
  mMain.dxRow.AsInteger := Row;
  mMain.dxCol.AsInteger := Col;
  if FCellFormat.FNumberFormat='@' then Value:=''''+Value;
  mMain.dxValue.AsString := Value;
  mMain.dxRowSpan.AsInteger := RowSpan;
  mMain.dxColSpan.AsInteger := ColSpan;
  mMain.dxNumberFormat.AsString := FCellFormat.FNumberFormat;
  mMain.dxHAlignment.AsInteger := FCellFormat.FAlignment.HorizontalAlignment;
  mMain.dxVAlignment.AsInteger := FCellFormat.FAlignment.VerticalAlignment;
  mMain.dxWrapText.AsInteger := FCellFormat.FAlignment.WrapText;
  mMain.dxIndentLevel.AsInteger := FCellFormat.FAlignment.IndentLevel;
  mMain.dxFontColor.AsInteger := FCellFormat.FFont.Color;
  mMain.dxFontName.AsString := FCellFormat.FFont.Name;
  mMain.dxFontSize.AsInteger := FCellFormat.FFont.Size;
  mMain.dxFontStyle.AsString := FCellFormat.FFont.FontStyle;
  mMain.dxUnderline.AsInteger := FCellFormat.FFont.Underline;
  mMain.dxLBorderColor.AsInteger := FCellFormat.FBorder.Left.Color;
  mMain.dxLBorderStyle.AsInteger := FCellFormat.FBorder.Left.LineStyle;
  mMain.dxLBorderWeight.AsInteger := FCellFormat.FBorder.Left.Weight;
  mMain.dxTBorderColor.AsInteger := FCellFormat.FBorder.Top.Color;
  mMain.dxTBorderStyle.AsInteger := FCellFormat.FBorder.Top.LineStyle;
  mMain.dxTBorderWeight.AsInteger := FCellFormat.FBorder.Top.Weight;
  mMain.dxRBorderColor.AsInteger := FCellFormat.FBorder.Right.Color;
  mMain.dxRBorderStyle.AsInteger := FCellFormat.FBorder.Right.LineStyle;
  mMain.dxRBorderWeight.AsInteger := FCellFormat.FBorder.Right.Weight;
  mMain.dxBBorderColor.AsInteger := FCellFormat.FBorder.Bottom.Color;
  mMain.dxBBorderStyle.AsInteger := FCellFormat.FBorder.Bottom.LineStyle;
  mMain.dxBBorderWeight.AsInteger := FCellFormat.FBorder.Bottom.Weight;
  mMain.dxPattern.AsInteger := FCellFormat.FPattern.Pattern;
  mMain.dxPatternCIndex.AsInteger := FCellFormat.FPattern.PatternColor;
  mMain.dxColorIndex.AsInteger := FCellFormat.FPattern.Color;
  mMain.dxMeeXL.Post;
  if FLastCol < Col+ColSpan then FLastCol:=Col+ColSpan;
  if FLastRow < Row+RowSpan then FLastRow:=Row+RowSpan;
end;

procedure TMeeXL.Open(Handle: HWND);
begin
  if FileExists(FFileName) then
    ShellExecute(Handle, 'open', PChar(FFileName), nil, nil, SW_SHOWMAXIMIZED);
end;

procedure TMeeXL.Print(Handle: HWND);
begin
  if FileExists(FFileName) then
    ShellExecute(Handle, 'print', PChar(FFileName), nil, nil, SW_HIDE);
end;

function TMeeXL.Execute: Boolean;
var
  oExcel, oBook, oSheet, oQTable, QTColDataTypes, oRange, oRange2: Variant;
  i, j, c, r, ni, idx: Integer; Row, Col, mRow, mCol: Integer;
  LS, DS, TS: string; fName, Text, sRange, sFormat: string; MergeCells,
  Formats: array of string;
  Alignments: array of TCFAlignment; Fonts: array of TCFFont;
  Borders: array of TCFBorder; Patterns: array of TCFPattern;
  FormatCells, AlignmentCells, FontCells, BorderCells,
  PatternCells: array of array of string; isMerged: Boolean;
  tf: TextFile;
begin
  {Texts}
  fName:=GetTempFile('umee');
  AssignFile(tf, fName);
  Rewrite(tf);
  mRow := 1; mCol := 1; mMain.dxMeeXL.First;
  while not mMain.dxMeeXL.Eof do begin
    Text := '';
    Row := mMain.dxRow.AsInteger;
    Col := mMain.dxCol.AsInteger;
    if Row > mRow then begin
      Text := Text + StringRepeat(ENTER, Row - mRow);
      mCol := 1;
    end;
    if Col > mCol then begin
      Text := Text + StringRepeat(TAB, Col - mCol);
    end;
    Text := Text + QuoteText(mMain.dxValue.AsString);
    mCol := Col;
    mRow := Row;
    mMain.dxMeeXL.Next;
    Write(tf, Text);
  end; CloseFile(tf);

  {Excel}
  oExcel := CreateOleObject('Excel.Application');
  try
    {}
    oExcel.DisplayAlerts := 0;
    if oExcel.UseSystemSeparators=True then begin
      DS:=oExcel.International[3];
      TS:=oExcel.International[4];
    end else begin
      DS:=VarToStr(oExcel.DecimalSeparator);
      TS:=VarToStr(oExcel.ThousandsSeparator);
    end;
    LS:=oExcel.International[5];

    {Formats}
    mMain.dxMeeXL.First;
    //MergeCells
    r := -1;
    while not mMain.dxMeeXL.Eof do begin
      Row := mMain.dxRow.AsInteger;
      Col := mMain.dxCol.AsInteger;
      if (mMain.dxRowSpan.AsInteger > 1) or (mMain.dxColSpan.AsInteger > 1)
      then begin
        mRow := Row; mCol := Col;
        if mMain.dxRowSpan.AsInteger > 1 then
          mRow := Row + mMain.dxRowSpan.AsInteger - 1;
        if mMain.dxColSpan.AsInteger > 1 then
          mCol := Col + mMain.dxColSpan.AsInteger - 1;
        if r = -1 then begin
          Inc(r);
          SetLength(MergeCells, r + 1);
        end else if Length(MergeCells[r]) >= 240 then
        begin
          Inc(r);
          SetLength(MergeCells, r + 1);
        end;
        if MergeCells[r] = '' then
          MergeCells[r] := CellName(Row, Col) + ':' + CellName(mRow, mCol)
        else
          MergeCells[r] := MergeCells[r] + LS + CellName(Row, Col) + ':' + CellName(mRow, mCol);
      end;
      mMain.dxMeeXL.Next;
    end; mMain.dxMeeXL.First;
    //FormatCells
    while not mMain.dxMeeXL.Eof do begin
      if mMain.dxNumberFormat.AsString <> DCellFormat.NumberFormat then begin
        Row := mMain.dxRow.AsInteger;
        Col := mMain.dxCol.AsInteger;
        idx := -1;
        for j := 0 to High(Formats) do
          if mMain.dxNumberFormat.AsString = Formats[j] then begin
            idx := j;
            break;
          end;
        if idx = -1 then begin
          c := High(Formats) + 1; r := 0;
          SetLength(Formats, c + 1);
          SetLength(FormatCells, c + 1);
          SetLength(FormatCells[c], 1);
          Formats[c] := mMain.dxNumberFormat.AsString;
          FormatCells[c][r] := CellName(Row, Col);
        end else begin
          c := idx;
          r := High(FormatCells[c]);
          if Length(FormatCells[c][r]) >= 240 then begin
            Inc(r); SetLength(FormatCells[c], r + 1);
          end;
          if FormatCells[c][r] = '' then
            FormatCells[c][r] := CellName(Row, Col)
          else
            FormatCells[c][r] := FormatCells[c][r] + LS + CellName(Row, Col);
        end;
      end;
      mMain.dxMeeXL.Next;
    end; mMain.dxMeeXL.First;
    //AlignmentCells
    while not mMain.dxMeeXL.Eof do begin
      if not((mMain.dxHAlignment.AsInteger = DCellFormat.Alignment.HorizontalAlignment)
        and (mMain.dxVAlignment.AsInteger = DCellFormat.Alignment.VerticalAlignment)
        and (mMain.dxWrapText.AsInteger = DCellFormat.Alignment.WrapText)
        and (mMain.dxIndentLevel.AsInteger = DCellFormat.Alignment.IndentLevel)) then begin
        Row := mMain.dxRow.AsInteger;
        Col := mMain.dxCol.AsInteger;
        idx := -1;
        for j := 0 to High(Alignments) do
          if (mMain.dxHAlignment.AsInteger = Alignments[j].HorizontalAlignment)
          and (mMain.dxVAlignment.AsInteger = Alignments[j].VerticalAlignment)
          and (mMain.dxWrapText.AsInteger = Alignments[j].WrapText)
          and (mMain.dxIndentLevel.AsInteger = Alignments[j].IndentLevel) then begin
            idx := j;
            break;
          end;
        if idx = -1 then begin
          c := High(Alignments) + 1; r := 0;
          SetLength(Alignments, c + 1);
          SetLength(AlignmentCells, c + 1);
          SetLength(AlignmentCells[c], 1);
          Alignments[c] := TCFAlignment.Create;
          Alignments[c].HorizontalAlignment := mMain.dxHAlignment.AsInteger;
          Alignments[c].VerticalAlignment := mMain.dxVAlignment.AsInteger;
          Alignments[c].WrapText := mMain.dxWrapText.AsInteger;
          Alignments[c].IndentLevel := mMain.dxIndentLevel.AsInteger;
          AlignmentCells[c][r] := CellName(Row, Col);
        end else begin
          c := idx;
          r := High(AlignmentCells[c]);
          if Length(AlignmentCells[c][r]) >= 240 then begin
            Inc(r); SetLength(AlignmentCells[c], r + 1);
          end;
          if AlignmentCells[c][r] = '' then
            AlignmentCells[c][r] := CellName(Row, Col)
          else
            AlignmentCells[c][r] := AlignmentCells[c][r] + LS + CellName(Row, Col);
        end;
      end;
      mMain.dxMeeXL.Next;
    end; mMain.dxMeeXL.First;
    //FontCells
    while not mMain.dxMeeXL.Eof do begin
      if not((mMain.dxFontColor.AsInteger = DCellFormat.Font.Color)
        and (mMain.dxFontSize.AsInteger = DCellFormat.Font.Size)
        and (mMain.dxFontName.AsString = DCellFormat.Font.Name)
        and (mMain.dxFontStyle.AsString = DCellFormat.Font.FontStyle)
        and (mMain.dxUnderline.AsInteger = DCellFormat.Font.Underline)) then begin
        Row := mMain.dxRow.AsInteger;
        Col := mMain.dxCol.AsInteger;
        idx := -1;
        for j := 0 to High(Fonts) do
          if (mMain.dxFontColor.AsInteger = Fonts[j].Color)
          and (mMain.dxFontSize.AsInteger = Fonts[j].Size)
          and (mMain.dxFontName.AsString = Fonts[j].Name)
          and (mMain.dxFontStyle.AsString = Fonts[j].FontStyle)
          and (mMain.dxUnderline.AsInteger = Fonts[j].Underline) then begin
            idx := j;
            break;
          end;
        if idx = -1 then begin
          c := High(Fonts) + 1; r := 0;
          SetLength(Fonts, c + 1);
          SetLength(FontCells, c + 1);
          SetLength(FontCells[c], 1);
          Fonts[c] := TCFFont.Create;
          Fonts[c].Color := mMain.dxFontColor.AsInteger;
          Fonts[c].Size := mMain.dxFontSize.AsInteger;
          Fonts[c].Name := mMain.dxFontName.AsString;
          Fonts[c].FontStyle := mMain.dxFontStyle.AsString;
          Fonts[c].Underline := mMain.dxUnderline.AsInteger;
          FontCells[c][r] := CellName(Row, Col);
        end else begin
          c := idx;
          r := High(FontCells[c]);
          if Length(FontCells[c][r]) >= 240 then begin
            Inc(r); SetLength(FontCells[c], r + 1);
          end;
          if FontCells[c][r] = '' then
            FontCells[c][r] := CellName(Row, Col)
          else
            FontCells[c][r] := FontCells[c][r] + LS + CellName(Row, Col);
        end;
      end;
      mMain.dxMeeXL.Next;
    end; mMain.dxMeeXL.First;
    //BorderCells
    while not mMain.dxMeeXL.Eof do begin
      if not((mMain.dxLBorderColor.AsInteger = DCellFormat.Border.Left.Color)
        and (mMain.dxLBorderStyle.AsInteger = DCellFormat.Border.Left.LineStyle)
        and (mMain.dxLBorderWeight.AsInteger = DCellFormat.Border.Left.Weight)
        and (mMain.dxTBorderColor.AsInteger = DCellFormat.Border.Top.Color)
        and (mMain.dxTBorderStyle.AsInteger = DCellFormat.Border.Top.LineStyle)
        and (mMain.dxTBorderWeight.AsInteger = DCellFormat.Border.Top.Weight)
        and (mMain.dxRBorderColor.AsInteger = DCellFormat.Border.Right.Color)
        and (mMain.dxRBorderStyle.AsInteger = DCellFormat.Border.Right.LineStyle)
        and (mMain.dxRBorderWeight.AsInteger = DCellFormat.Border.Right.Weight)
        and (mMain.dxBBorderColor.AsInteger = DCellFormat.Border.Bottom.Color)
        and (mMain.dxBBorderStyle.AsInteger = DCellFormat.Border.Bottom.LineStyle)
        and (mMain.dxBBorderWeight.AsInteger = DCellFormat.Border.Bottom.Weight)) then begin
        Row := mMain.dxRow.AsInteger;
        Col := mMain.dxCol.AsInteger;
        isMerged := False;
        if (mMain.dxRowSpan.AsInteger > 1) or (mMain.dxColSpan.AsInteger > 1)
        then begin
          isMerged := True;
          mRow := Row; mCol := Col;
          if mMain.dxRowSpan.AsInteger > 1 then
            mRow := Row + mMain.dxRowSpan.AsInteger - 1;
          if mMain.dxColSpan.AsInteger > 1 then
            mCol := Col + mMain.dxColSpan.AsInteger - 1;
        end;
        idx := -1;
        for j := 0 to High(Borders) do
          if (mMain.dxLBorderColor.AsInteger = Borders[j].Left.Color)
          and (mMain.dxLBorderStyle.AsInteger = Borders[j].Left.LineStyle)
          and (mMain.dxLBorderWeight.AsInteger = Borders[j].Left.Weight)
          and (mMain.dxTBorderColor.AsInteger = Borders[j].Top.Color)
          and (mMain.dxTBorderStyle.AsInteger = Borders[j].Top.LineStyle)
          and (mMain.dxTBorderWeight.AsInteger = Borders[j].Top.Weight)
          and (mMain.dxRBorderColor.AsInteger = Borders[j].Right.Color)
          and (mMain.dxRBorderStyle.AsInteger = Borders[j].Right.LineStyle)
          and (mMain.dxRBorderWeight.AsInteger = Borders[j].Right.Weight)
          and (mMain.dxBBorderColor.AsInteger = Borders[j].Bottom.Color)
          and (mMain.dxBBorderStyle.AsInteger = Borders[j].Bottom.LineStyle)
          and (mMain.dxBBorderWeight.AsInteger = Borders[j].Bottom.Weight) then begin
            idx := j;
            break;
          end;
        if idx = -1 then begin
          c := High(Borders) + 1; r := 0;
          SetLength(Borders, c + 1);
          SetLength(BorderCells, c + 1);
          SetLength(BorderCells[c], 1);
          Borders[c] := TCFBorder.Create;
          Borders[c].Left.Color := mMain.dxLBorderColor.AsInteger;
          Borders[c].Left.LineStyle := mMain.dxLBorderStyle.AsInteger;
          Borders[c].Left.Weight := mMain.dxLBorderWeight.AsInteger;
          Borders[c].Top.Color := mMain.dxTBorderColor.AsInteger;
          Borders[c].Top.LineStyle := mMain.dxTBorderStyle.AsInteger;
          Borders[c].Top.Weight := mMain.dxTBorderWeight.AsInteger;
          Borders[c].Right.Color := mMain.dxRBorderColor.AsInteger;
          Borders[c].Right.LineStyle := mMain.dxRBorderStyle.AsInteger;
          Borders[c].Right.Weight := mMain.dxRBorderWeight.AsInteger;
          Borders[c].Bottom.Color := mMain.dxBBorderColor.AsInteger;
          Borders[c].Bottom.LineStyle := mMain.dxBBorderStyle.AsInteger;
          Borders[c].Bottom.Weight := mMain.dxBBorderWeight.AsInteger;
          BorderCells[c][r] := CellName(Row, Col);
          if isMerged then
            BorderCells[c][r] := BorderCells[c][r] + ':' + CellName(mRow, mCol);
        end else begin
          c := idx;
          r := High(BorderCells[c]);
          if Length(BorderCells[c][r]) >= 240 then begin
            Inc(r); SetLength(BorderCells[c], r + 1);
          end;
          if BorderCells[c][r] = '' then
            BorderCells[c][r] := CellName(Row, Col)
          else
            BorderCells[c][r] := BorderCells[c][r] + LS + CellName(Row, Col);
          if isMerged then
            BorderCells[c][r] := BorderCells[c][r] + ':' + CellName(mRow, mCol);
        end;
      end;
      mMain.dxMeeXL.Next;
    end; mMain.dxMeeXL.First;
    //PatternCells
    while not mMain.dxMeeXL.Eof do begin
      if not((mMain.dxPattern.AsInteger = DCellFormat.Pattern.Pattern)
        and (mMain.dxPatternCIndex.AsInteger = DCellFormat.Pattern.PatternColor)
        and (mMain.dxColorIndex.AsInteger = DCellFormat.Pattern.Color)) then begin
        Row := mMain.dxRow.AsInteger;
        Col := mMain.dxCol.AsInteger;
        idx := -1;
        for j := 0 to High(Patterns) do
          if (mMain.dxPattern.AsInteger = Patterns[j].Pattern)
          and (mMain.dxPatternCIndex.AsInteger = Patterns[j].PatternColor)
          and (mMain.dxColorIndex.AsInteger = Patterns[j].Color) then begin
            idx := j;
            break;
          end;
        if idx = -1 then begin
          c := High(Patterns) + 1; r := 0;
          SetLength(Patterns, c + 1);
          SetLength(PatternCells, c + 1);
          SetLength(PatternCells[c], 1);
          Patterns[c] := TCFPattern.Create;
          Patterns[c].Pattern := mMain.dxPattern.AsInteger;
          Patterns[c].PatternColor := mMain.dxPatternCIndex.AsInteger;
          Patterns[c].Color := mMain.dxColorIndex.AsInteger;
          PatternCells[c][r] := CellName(Row, Col);
        end else begin
          c := idx;
          r := High(PatternCells[c]);
          if Length(PatternCells[c][r]) >= 240 then begin
            Inc(r); SetLength(PatternCells[c], r + 1);
          end;
          if PatternCells[c][r] = '' then
            PatternCells[c][r] := CellName(Row, Col)
          else
            PatternCells[c][r] := PatternCells[c][r] + LS + CellName(Row, Col);
        end;
      end;
      mMain.dxMeeXL.Next;
    end; mMain.dxMeeXL.First;

    {Write}
    oBook := oExcel.Workbooks.Add;
    try
      //normal font office 2000/2003
      oBook.Styles['Normal'].Font.Name:='Arial';
      oBook.Styles['Normal'].Font.Size:='10';
      //remove unused sheet
      for i:=2 to oBook.Sheets.Count do oBook.Sheets[2].Delete;
      oSheet := oBook.Sheets[1];
      //resize column
      for i := 0 to High(FColumns) do begin
        Col := FColumns[i].Col;
        oSheet.Columns[Col].ColumnWidth := FColumns[i].Width;
      end;
      //link to temporary file (csv)
      oQTable:=oSheet.QueryTables.Add('TEXT;'+fName, oSheet.Range['A1']);
      oQTable.AdjustColumnWidth:=0;
      oQTable.TextFileParseType:=1; //xlDelimited
      oQTable.TextFileTabDelimiter:=True;
      oQTable.TextFileDecimalSeparator:=DecimalSeparator;
      oQTable.TextFileThousandsSeparator:=ThousandSeparator;
      //oQTable.TextFileColumnDataTypes:=QTColDataTypes;
      oQTable.Refresh;
      oQTable.Delete;
      oQTable:=Null;
      DeleteFile(fName);
      oSheet.Range[CellName(1,1)+':'+CellName(FLastRow,FLastCol)].Replace(#255,#10);
      oSheet.Range[CellName(1,1)+':'+CellName(FLastRow,FLastCol)].Replace(#39,#39);
	    oSheet.Range['A1'].Select;
      //FormatCells
      for i := 0 to High(Formats) do
        for j := 0 to High(FormatCells[i]) do begin
          sRange := FormatCells[i][j];
          sFormat := Formats[i];
          if TS <> ',' then sFormat := StringReplace(sFormat,',','ñ',[rfReplaceAll]);
          if DS <> '.' then sFormat := StringReplace(sFormat,'.',DS,[rfReplaceAll]);
          if TS <> ',' then sFormat := StringReplace(sFormat,'ñ',TS,[rfReplaceAll]);
          oSheet.Range[sRange].NumberFormat := sFormat;
        end;
      //MergeCells
      for i := 0 to High(MergeCells) do begin
        sRange := MergeCells[i];
        oSheet.Range[sRange].Merge;
      end;
      //AlignmentCells
      for i := 0 to High(Alignments) do
        for j := 0 to High(AlignmentCells[i]) do
        begin
          sRange := AlignmentCells[i][j];
          oSheet.Range[sRange].HorizontalAlignment := Alignments[i].HorizontalAlignment;
          oSheet.Range[sRange].VerticalAlignment := Alignments[i].VerticalAlignment;
          oSheet.Range[sRange].WrapText := Alignments[i].WrapText;
          oSheet.Range[sRange].IndentLevel := Alignments[i].IndentLevel;
        end;
      //FontCells
      for i := 0 to High(Fonts) do
        for j := 0 to High(FontCells[i]) do
        begin
          sRange := FontCells[i][j];
          oSheet.Range[sRange].Font.ColorIndex := Fonts[i].Color;
          oSheet.Range[sRange].Font.Name := Fonts[i].Name;
          oSheet.Range[sRange].Font.Size := Fonts[i].Size;
          oSheet.Range[sRange].Font.FontStyle := Fonts[i].FontStyle;
          oSheet.Range[sRange].Font.Underline := Fonts[i].Underline;
        end;
      //BorderCells
      for i := 0 to High(Borders) do
        for j := 0 to High(BorderCells[i]) do
        begin
          sRange := BorderCells[i][j];
          if (Borders[i].Left=Borders[i].Top) and (Borders[i].Left=Borders[i].Right)
          and (Borders[i].Left=Borders[i].Bottom) then begin
            oSheet.Range[sRange].BorderAround(Borders[i].Left.LineStyle,
              Borders[i].Left.Weight, Borders[i].Left.Color);
          end else begin
            oSheet.Range[sRange].Borders[7].Weight := Borders[i].Left.Weight;
            oSheet.Range[sRange].Borders[7].ColorIndex := Borders[i].Left.Color;
            oSheet.Range[sRange].Borders[7].LineStyle := Borders[i].Left.LineStyle;
            oSheet.Range[sRange].Borders[8].Weight := Borders[i].Top.Weight;
            oSheet.Range[sRange].Borders[8].ColorIndex := Borders[i].Top.Color;
            oSheet.Range[sRange].Borders[8].LineStyle := Borders[i].Top.LineStyle;
            oSheet.Range[sRange].Borders[10].Weight := Borders[i].Right.Weight;
            oSheet.Range[sRange].Borders[10].ColorIndex := Borders[i].Right.Color;
            oSheet.Range[sRange].Borders[10].LineStyle := Borders[i].Right.LineStyle;
            oSheet.Range[sRange].Borders[9].Weight := Borders[i].Bottom.Weight;
            oSheet.Range[sRange].Borders[9].ColorIndex := Borders[i].Bottom.Color;
            oSheet.Range[sRange].Borders[9].LineStyle := Borders[i].Bottom.LineStyle;
          end;
        end;
      //PatternCells
      for i := 0 to High(Patterns) do
        for j := 0 to High(PatternCells[i]) do
        begin
          sRange := PatternCells[i][j];
          oSheet.Range[sRange].Interior.Pattern := Patterns[i].Pattern;
          oSheet.Range[sRange].Interior.PatternColorIndex := Patterns[i].PatternColor;
          oSheet.Range[sRange].Interior.ColorIndex := Patterns[i].Color;
        end;
      //Pictures
      for i := 0 to High(FPictures) do begin
        with FPictures[i] do
          if FileExists(FileName) then
            oSheet.Shapes.AddPicture(FileName, -1, -1, Left, Top, Width, Height)
          else oSheet.Shapes.AddShape(5, Left, Top, Width, Height)
      end;
      //page setup (kalo ditarus atas kok lama)
      with FPageSetup do begin
        //if DPageSetup.PaperSize <> PaperSize then
        try oSheet.PageSetup.PaperSize := PaperSize; except end;
        //if DPageSetup.Orientation <> Orientation then
        try oSheet.PageSetup.Orientation := Orientation; except end;
        if DPageSetup.LeftMargin <> LeftMargin then
          try oSheet.PageSetup.LeftMargin := LeftMargin; except end;
        if DPageSetup.TopMargin <> TopMargin then
          try oSheet.PageSetup.TopMargin := TopMargin; except end;
        if DPageSetup.RightMargin <> RightMargin then
          try oSheet.PageSetup.RightMargin := RightMargin; except end;
        if DPageSetup.BottomMargin <> BottomMargin then
          try oSheet.PageSetup.BottomMargin := BottomMargin; except end;
        if DPageSetup.HeaderMargin <> HeaderMargin then
          try oSheet.PageSetup.HeaderMargin := HeaderMargin; except end;
        if DPageSetup.FooterMargin <> FooterMargin then
          try oSheet.PageSetup.FooterMargin := FooterMargin; except end;
        if DPageSetup.CenterHorizontally <> CenterHorizontally then
          try oSheet.PageSetup.CenterHorizontally := CenterHorizontally; except end;
        if DPageSetup.CenterVertically <> CenterVertically then
          try oSheet.PageSetup.CenterVertically := CenterVertically; except end;
        if DPageSetup.LeftHeader <> LeftHeader then
          try oSheet.PageSetup.LeftHeader := LeftHeader; except end;
        if DPageSetup.CenterHeader <> CenterHeader then
          try oSheet.PageSetup.CenterHeader := CenterHeader; except end;
        if DPageSetup.RightHeader <> RightHeader then
          try oSheet.PageSetup.RightHeader := RightHeader; except end;
        if DPageSetup.LeftFooter <> LeftFooter then
          try oSheet.PageSetup.LeftFooter := LeftFooter; except end;
        if DPageSetup.CenterFooter <> CenterFooter then
          try oSheet.PageSetup.CenterFooter := CenterFooter; except end;
        if DPageSetup.RightFooter <> RightFooter then
          try oSheet.PageSetup.RightFooter := RightFooter; except end;
        if DPageSetup.TitleRows <> TitleRows then
          try oSheet.PageSetup.PrintTitleRows := TitleRows; except end;
        if DPageSetup.TitleColumns <> TitleColumns then
          try oSheet.PageSetup.PrintTitleColumns := TitleColumns; except end;
      end;
      //
      if FPageBreak > 0 then begin
        i := oSheet.HPageBreaks.Count;
        if i > 0 then begin
          oExcel.ActiveWindow.View := 2;
          try
            if oSheet.HPageBreaks[i].Location.Row < FPageBreak then
              oSheet.HPageBreaks.Add(oSheet.Rows[FPageBreak]);
          except end;
          oExcel.ActiveWindow.View := 1;
        end;
      end;
      oSheet := null;
      //savetemp
      if FFileName = '' then begin
        Text := StringReplace(oExcel.Version, '.', DecimalSeparator, [rfReplaceAll]);
        if StrToFloat(Text) < 12 then FFileName := GetTempFile('.xls')
        else FFileName := GetTempFile('.xlsx');
      end;
      oBook.SaveAs(FFileName);
      FFileName := oBook.FullName;
      Result := True;
    finally
      oBook.Close(False);
      oBook := null;
    end;
  finally
    oExcel.Quit;
    oExcel := null;
    Formats := nil;
    Alignments := nil;
    Fonts := nil;
    Borders := nil;
    Patterns := nil;
    FormatCells := nil;
    AlignmentCells := nil;
    FontCells := nil;
    BorderCells := nil;
    PatternCells := nil;
  end;
end;

function TMeeXL.Generate(const FileName: string; Sheet: Integer): string;
var
  i, row, col, lrow, lcol, srow, scol: integer;
  oExcel, oBook, oSheet, oPage, oRange, oRange2: Variant;
  firstAddress: OleVariant; DS, TS, sResult: string;
  function VarToStrNum(const v: Variant): string;
  begin
    Result:=StringReplace(VarToStr(v), ',', '.', [rfReplaceAll]);
  end;
  function VarToStrFormat(const v: Variant): string;
  var s: string;
  begin
    s:=VarToStr(v);
    s:=StringReplace(s, DS, 'ñ', [rfReplaceAll]);
    s:=StringReplace(s, TS, ',', [rfReplaceAll]);
    s:=StringReplace(s, 'ñ', '.', [rfReplaceAll]);
    Result:=s;
  end;
begin
  FPageSetup.Reset;
  FCellFormat.Reset;
  oExcel := CreateOleObject('Excel.Application');
  try
    oExcel.DisplayAlerts := 0;
    if oExcel.UseSystemSeparators=True then begin
      DS:=oExcel.International[3];
      TS:=oExcel.International[4];
    end else begin
      DS:=VarToStr(oExcel.DecimalSeparator);
      TS:=VarToStr(oExcel.ThousandsSeparator);
    end;
    oBook := oExcel.Workbooks.Open(FileName);
    try
      if Sheet < 1 then Sheet := 1;
      if Sheet > oBook.Sheets.Count then Sheet := 1;
      oSheet := oBook.Sheets[Sheet];
      sResult :=                   '  Screen.Cursor := crHourGlass;';
      sResult := sResult + ENTER + '  with MeeExcel do begin';
      sResult := sResult + ENTER + '    Clear;';
      //text
      sResult := sResult + ENTER + '    //texts';
      lcol := 0;
      oRange := oSheet.Cells[1, 1];
      if oRange.Formula = '' then
        oRange := oSheet.Cells.Find('*');
      try
        firstAddress := oRange.Address;
        repeat
          row := oRange.Row;
          col := oRange.Column;
          if lcol < col then lcol := col;
          if oRange.MergeCells then begin
            oRange2 := oRange.MergeArea;
            srow := oRange2.Rows.Count;
            scol := oRange2.Columns.Count;
          end else begin
            srow := 1;
            scol := 1;
          end;
          //
          with FCellFormat do begin
            if oRange.NumberFormat <> NumberFormat then begin
              NumberFormat := oRange.NumberFormat;
              sResult := sResult + ENTER + '    CellFormat.NumberFormat := ''' + VarToStrFormat(NumberFormat) + ''';';
            end;
            //
            if oRange.HorizontalAlignment <> Alignment.HorizontalAlignment then begin
              Alignment.HorizontalAlignment := oRange.HorizontalAlignment;
              sResult := sResult + ENTER + '    CellFormat.Alignment.HorizontalAlignment := ' + VarToStr(Alignment.HorizontalAlignment) + ';';
            end;
            if oRange.VerticalAlignment <> Alignment.VerticalAlignment then begin
              Alignment.VerticalAlignment := oRange.VerticalAlignment;
              sResult := sResult + ENTER + '    CellFormat.Alignment.VerticalAlignment := ' + VarToStr(Alignment.VerticalAlignment) + ';';
            end;
            if oRange.WrapText <> Alignment.WrapText then begin
              Alignment.WrapText := oRange.WrapText;
              sResult := sResult + ENTER + '    CellFormat.Alignment.WrapText := ' + VarToStr(Alignment.WrapText) + ';';
            end;
            if oRange.IndentLevel <> Alignment.IndentLevel then begin
              Alignment.IndentLevel := oRange.IndentLevel;
              sResult := sResult + ENTER + '    CellFormat.Alignment.IndentLevel := ' + VarToStr(Alignment.IndentLevel) + ';';
            end;
            //
            if oRange.Font.ColorIndex <> Font.Color then begin
              Font.Color := oRange.Font.ColorIndex;
              sResult := sResult + ENTER + '    CellFormat.Font.Color := ' + VarToStr(Font.Color) + ';';
            end;
            if oRange.Font.Name <> Font.Name then begin
              Font.Name := oRange.Font.Name;
              sResult := sResult + ENTER + '    CellFormat.Font.Name := ''' + VarToStr(Font.Name) + ''';';
            end;
            if oRange.Font.Size <> Font.Size then begin
              Font.Size := oRange.Font.Size;
              sResult := sResult + ENTER + '    CellFormat.Font.Size := ' + VarToStr(Font.Size) + ';';
            end;
            if oRange.Font.FontStyle <> Font.FontStyle then begin
              Font.FontStyle := oRange.Font.FontStyle;
              sResult := sResult + ENTER + '    CellFormat.Font.FontStyle := ''' + VarToStr(Font.FontStyle) + ''';';
            end;
            if oRange.Font.Underline <> Font.Underline then begin
              Font.Underline := oRange.Font.Underline;
              sResult := sResult + ENTER + '    CellFormat.Font.Underline := ' + VarToStr(Font.Underline) + ';';
            end;
            //
            if oRange.Borders[7].ColorIndex <> Border.Left.Color then begin
              Border.Left.Color := oRange.Borders[7].ColorIndex;
              sResult := sResult + ENTER + '    CellFormat.Border.Left.Color := ' + VarToStr(Border.Left.Color) + ';';
            end;
            if oRange.Borders[7].LineStyle <> Border.Left.LineStyle then begin
              Border.Left.LineStyle := oRange.Borders[7].LineStyle;
              sResult := sResult + ENTER + '    CellFormat.Border.Left.LineStyle := ' + VarToStr(Border.Left.LineStyle) + ';';
            end;
            if oRange.Borders[7].Weight <> Border.Left.Weight then begin
              Border.Left.Weight := oRange.Borders[7].Weight;
              sResult := sResult + ENTER + '    CellFormat.Border.Left.Weight := ' + VarToStrNum(Border.Left.Weight) + ';';
            end;
            if oRange.Borders[8].ColorIndex <> Border.Top.Color then begin
              Border.Top.Color := oRange.Borders[8].ColorIndex;
              sResult := sResult + ENTER + '    CellFormat.Border.Top.Color := ' + VarToStr(Border.Top.Color) + ';';
            end;
            if oRange.Borders[8].LineStyle <> Border.Top.LineStyle then begin
              Border.Top.LineStyle := oRange.Borders[8].LineStyle;
              sResult := sResult + ENTER + '    CellFormat.Border.Top.LineStyle := ' + VarToStr(Border.Top.LineStyle) + ';';
            end;
            if oRange.Borders[8].Weight <> Border.Top.Weight then begin
              Border.Top.Weight := oRange.Borders[8].Weight;
              sResult := sResult + ENTER + '    CellFormat.Border.Top.Weight := ' + VarToStrNum(Border.Top.Weight) + ';';
            end;
            if scol > 1 then begin
              oRange2 := oSheet.Cells[row, col + scol - 1];
              if oRange2.Borders[10].ColorIndex <> Border.Right.Color then begin
                Border.Right.Color := oRange2.Borders[10].ColorIndex;
                sResult := sResult + ENTER + '    CellFormat.Border.Right.Color := ' + VarToStr(Border.Right.Color) + ';';
              end;
              if oRange2.Borders[10].LineStyle <> Border.Right.LineStyle then begin
                Border.Right.LineStyle := oRange2.Borders[10].LineStyle;
                sResult := sResult + ENTER + '    CellFormat.Border.Right.LineStyle := ' + VarToStr(Border.Right.LineStyle) + ';';
              end;
              if oRange2.Borders[10].Weight <> Border.Right.Weight then begin
                Border.Right.Weight := oRange2.Borders[10].Weight;
                sResult := sResult + ENTER + '    CellFormat.Border.Right.Weight := ' + VarToStrNum(Border.Right.Weight) + ';';
              end;
              oRange2 := Null;
            end else begin
              if oRange.Borders[10].ColorIndex <> Border.Right.Color then begin
                Border.Right.Color := oRange.Borders[10].ColorIndex;
                sResult := sResult + ENTER + '    CellFormat.Border.Right.Color := ' + VarToStr(Border.Right.Color) + ';';
              end;
              if oRange.Borders[10].LineStyle <> Border.Right.LineStyle then begin
                Border.Right.LineStyle := oRange.Borders[10].LineStyle;
                sResult := sResult + ENTER + '    CellFormat.Border.Right.LineStyle := ' + VarToStr(Border.Right.LineStyle) + ';';
              end;
              if oRange.Borders[10].Weight <> Border.Right.Weight then begin
                Border.Right.Weight := oRange.Borders[10].Weight;
                sResult := sResult + ENTER + '    CellFormat.Border.Right.Weight := ' + VarToStrNum(Border.Right.Weight) + ';';
              end;
            end;
            if srow > 1 then begin
              oRange2 := oSheet.Cells[row + srow - 1, col];
              if oRange2.Borders[9].ColorIndex <> Border.Bottom.Color then begin
                Border.Bottom.Color := oRange2.Borders[9].ColorIndex;
                sResult := sResult + ENTER + '    CellFormat.Border.Bottom.Color := ' + VarToStr(Border.Bottom.Color) + ';';
              end;
              if oRange2.Borders[9].LineStyle <> Border.Bottom.LineStyle then begin
                Border.Bottom.LineStyle := oRange2.Borders[9].LineStyle;
                sResult := sResult + ENTER + '    CellFormat.Border.Bottom.LineStyle := ' + VarToStr(Border.Bottom.LineStyle) + ';';
              end;
              if oRange2.Borders[9].Weight <> Border.Bottom.Weight then begin
                Border.Bottom.Weight := oRange2.Borders[9].Weight;
                sResult := sResult + ENTER + '    CellFormat.Border.Bottom.Weight := ' + VarToStrNum(Border.Bottom.Weight) + ';';
              end;
              oRange2 := Null;
            end else begin
              if oRange.Borders[9].ColorIndex <> Border.Bottom.Color then begin
                Border.Bottom.Color := oRange.Borders[9].ColorIndex;
                sResult := sResult + ENTER + '    CellFormat.Border.Bottom.Color := ' + VarToStr(Border.Bottom.Color) + ';';
              end;
              if oRange.Borders[9].LineStyle <> Border.Bottom.LineStyle then begin
                Border.Bottom.LineStyle := oRange.Borders[9].LineStyle;
                sResult := sResult + ENTER + '    CellFormat.Border.Bottom.LineStyle := ' + VarToStr(Border.Bottom.LineStyle) + ';';
              end;
              if oRange.Borders[9].Weight <> Border.Bottom.Weight then begin
                Border.Bottom.Weight := oRange.Borders[9].Weight;
                sResult := sResult + ENTER + '    CellFormat.Border.Bottom.Weight := ' + VarToStrNum(Border.Bottom.Weight) + ';';
              end;
            end;
            //
            if oRange.Interior.Pattern <> Pattern.Pattern then begin
              Pattern.Pattern := oRange.Interior.Pattern;
              sResult := sResult + ENTER + '    CellFormat.Pattern.Pattern := ' + VarToStr(Pattern.Pattern) + ';';
            end;
            if oRange.Interior.PatternColorIndex <> Pattern.PatternColor then begin
              Pattern.PatternColor := oRange.Interior.PatternColorIndex;
              sResult := sResult + ENTER + '    CellFormat.Pattern.PatternColor := ' + VarToStr(Pattern.PatternColor) + ';';
            end;
            if oRange.Interior.ColorIndex <> Pattern.Color then begin
              Pattern.Color := oRange.Interior.ColorIndex;
              sResult := sResult + ENTER + '    CellFormat.Pattern.Color := ' + VarToStr(Pattern.Color) + ';';
            end;
            sResult := sResult + ENTER + '    AddText(' + VarToStr(oRange.Row) + ', ' +
              VarToStr(oRange.Column) + ', ' + VarToStr(srow) + ', ' + VarToStr(scol) + ', ''' +
              VarToStr(oRange.Formula) + ''');';
          end;
          oRange := oSheet.Cells.Find('*', oSheet.Cells[row, col]);
        until oRange.Address = firstAddress;
      finally
        oRange := Null;
      end;
      //columns
      sResult := sResult + ENTER + '    //columns';
      for col := 1 to lcol do
        if oSheet.Columns[col].ColumnWidth <> DColumnWidth then
          sResult := sResult + ENTER + '    SetColumn(' + VarToStr(col) + ', ' +
            VarToStrNum(oSheet.Columns[col].ColumnWidth) + ');';
      //picture
      sResult := sResult + ENTER + '    //pictures';
      for i:= 1 to oSheet.Shapes.Count do
        sResult := sResult + ENTER + '    AddPicture(''Picture' + VarToStr(i) + ''', ' +
          VarToStrNum(oSheet.Shapes.Range[i].Left) + ', ' + VarToStrNum(oSheet.Shapes.Range[i].Top) + ', ' +
          VarToStrNum(oSheet.Shapes.Range[i].Width) + ', ' + VarToStrNum(oSheet.Shapes.Range[i].Height) + ');';
      //page setup
      oPage := oSheet.PageSetup;
      with FPageSetup do begin
        sResult := sResult + ENTER + '    //pagesetup';
        if oPage.PaperSize <> PaperSize then
          sResult := sResult + ENTER + '    PageSetup.PaperSize := '+ VarToStr(oPage.PaperSize) + ';';
        if oPage.Orientation <> Orientation then
          sResult := sResult + ENTER + '    PageSetup.Orientation := '+ VarToStr(oPage.Orientation) + ';';
        if oPage.LeftMargin <> LeftMargin then
          sResult := sResult + ENTER + '    PageSetup.LeftMargin := '+ VarToStrNum(oPage.LeftMargin) + ';';
        if oPage.TopMargin <> TopMargin then
          sResult := sResult + ENTER + '    PageSetup.TopMargin := '+ VarToStrNum(oPage.TopMargin) + ';';
        if oPage.RightMargin <> RightMargin then
          sResult := sResult + ENTER + '    PageSetup.RightMargin := '+ VarToStrNum(oPage.RightMargin) + ';';
        if oPage.BottomMargin <> BottomMargin then
          sResult := sResult + ENTER + '    PageSetup.BottomMargin := '+ VarToStrNum(oPage.BottomMargin) + ';';
        if oPage.HeaderMargin <> HeaderMargin then
          sResult := sResult + ENTER + '    PageSetup.HeaderMargin := '+ VarToStrNum(oPage.HeaderMargin) + ';';
        if oPage.FooterMargin <> FooterMargin then
          sResult := sResult + ENTER + '    PageSetup.FooterMargin := '+ VarToStrNum(oPage.FooterMargin) + ';';
        if oPage.CenterHorizontally <> CenterHorizontally then
          sResult := sResult + ENTER + '    PageSetup.CenterHorizontally := '+ BoolToStr(oPage.CenterHorizontally) + ';';
        if oPage.CenterVertically <> CenterVertically then
          sResult := sResult + ENTER + '    PageSetup.CenterVertically := '+ BoolToStr(oPage.CenterVertically) + ';';
        if oPage.LeftHeader <> LeftHeader then
          sResult := sResult + ENTER + '    PageSetup.LeftHeader := '''+ oPage.LeftHeader + ''';';
        if oPage.CenterHeader <> CenterHeader then
          sResult := sResult + ENTER + '    PageSetup.CenterHeader := '''+ oPage.CenterHeader + ''';';
        if oPage.RightHeader <> RightHeader then
          sResult := sResult + ENTER + '    PageSetup.RightHeader := '''+ oPage.RightHeader + ''';';
        if oPage.LeftFooter <> LeftFooter then
          sResult := sResult + ENTER + '    PageSetup.LeftFooter := '''+ oPage.LeftFooter + ''';';
        if oPage.CenterFooter <> CenterFooter then
          sResult := sResult + ENTER + '    PageSetup.CenterFooter := '''+ oPage.CenterFooter + ''';';
        if oPage.RightFooter <> RightFooter then
          sResult := sResult + ENTER + '    PageSetup.RightFooter := '''+ oPage.RightFooter + ''';';
        if oPage.PrintTitleRows <> TitleRows then
          sResult := sResult + ENTER + '    PageSetup.TitleRows := '''+ oPage.PrintTitleRows + ''';';
        if oPage.PrintTitleColumns <> TitleColumns then
          sResult := sResult + ENTER + '    PageSetup.TitleColumns := '''+ oPage.PrintTitleColumns + ''';';
      end;
      oSheet := Null;
      sResult := sResult + ENTER + '    //create';
      sResult := sResult + ENTER + '    if Execute then Open(Handle);';
      sResult := sResult + ENTER + '  end;';
      sResult := sResult + ENTER + '  Screen.Cursor := crDefault;';
    finally
      oBook.Close(false);
      oBook := null;
    end;
  finally
    oExcel.Quit;
    oExcel := null;
  end;
  Result := sResult;
end;


var
  FMeeExcel: TMeeXL;

function MeeExcel: TMeeXL;
begin
  if FMeeExcel = nil then
    FMeeExcel := TMeeXL.Create;
  Result := FMeeExcel;
end;

initialization
  FMeeExcel := nil;

finalization
  FMeeExcel.Free;

end.

