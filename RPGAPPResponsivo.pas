unit RPGAPPResponsivo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit,IniFiles,System.IOUtils, FMX.Layouts,
  FMX.Effects, FMX.Memo, FMX.ListBox,  FMX.Objects;
type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button2: TButton;
    Timer1: TTimer;
    ScrollBox1: TScrollBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label10: TLabel;
    Edit8: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label3: TLabel;
    Label27: TLabel;
    BevelEffect1: TBevelEffect;
    ShadowEffect1: TShadowEffect;
    Label28: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    ProgressBar2: TProgressBar;
    MainLayout1: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle4: TRectangle;
    Brush1: TBrushObject;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Rectangle3: TRectangle;
    Button7: TButton;
    Label20: TLabel;
    Button6: TButton;
    Label17: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormFocusChanged(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
  private
    { Private declarations }
        FKBBounds: TRectF;
    FNeedOffset: Boolean;
    procedure CalcContentBoundsProc(Sender: TObject;
                                    var ContentBounds: TRectF);
    procedure RestorePosition;
    procedure UpdateKBBounds;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    AppPath, CardPath: string;





implementation
 uses System.Math;
{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.iPhone55in.fmx IOS}

procedure TForm1.Button1Click(Sender: TObject);
Var
D,F,Oa,Pl,El,rand,i,Df1,Df2,Df,d8,s:integer;
begin
F:= StrToInt(edit1.Text);
D:= StrToInt(edit2.Text);
I:= StrToInt(edit3.Text);
S:= StrToInt(edit4.Text);
Oa:= StrToInt(edit5.Text);
Pl:= StrToInt(edit6.Text);
El:= StrToInt(edit7.Text);
randomize;
for rand := 1 to 8 do
begin
  d8 := Random(7);
end;
df1:= Round(d8*(F+D) / (5*Oa));
df2:= Round(Pl/El);
df:= df1*df2;
label1.Text:= 'Dano de '+InttoStr(df);
label2.Text:= 'Dado caiu '+InttoStr(d8);









end;

procedure TForm1.Button2Click(Sender: TObject);
 var
 meuini: TIniFile;
begin

 meuini := TIniFile.Create(GetHomePath + PathDelim + 'rpg.ini');
meuini.WriteString('rpg.ini', 'level', edit6.Text);
 meuini.WriteString('rpg.ini', 'Forca', edit1.Text);
  meuini.WriteString('rpg.ini', 'Destreza', edit2.Text);
   meuini.WriteString('rpg.ini', 'Inteligencia', edit3.Text);
    meuini.WriteString('rpg.ini', 'Sorte', edit4.Text);
    meuini.Free;
    application.Terminate;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
rectangle2.Visible:=false;
rectangle3.Visible:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
rectangle3.Visible:=false;
rectangle4.Visible:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
rectangle3.Visible:=false;
rectangle2.Visible:=true;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
rectangle1.Visible:=false;
rectangle3.Visible:=true;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
rectangle4.Visible:=false;
rectangle3.Visible:=true;
end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
edit2.SetFocus;
end;

procedure TForm1.Edit2Exit(Sender: TObject);
begin
edit3.SetFocus;
end;

procedure TForm1.Edit3Exit(Sender: TObject);
begin
edit4.SetFocus;
end;

procedure TForm1.Edit4Exit(Sender: TObject);
begin
edit5.SetFocus;
end;

procedure TForm1.Edit5Enter(Sender: TObject);
begin
edit5.SetFocus;
end;

procedure TForm1.Edit5Exit(Sender: TObject);
begin
edit6.SetFocus;
end;

procedure TForm1.Edit6Enter(Sender: TObject);
begin
edit6.SetFocus;
end;

procedure TForm1.Edit6Exit(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TForm1.Edit7Exit(Sender: TObject);
begin
edit7.SetFocus;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);

 var
 meuini: TIniFile;
begin

 meuini := TIniFile.Create(GetHomePath + PathDelim + 'rpg.ini');
 meuini.WriteString('rpg.ini', 'nome', edit8.Text);
meuini.WriteString('rpg.ini', 'level', edit6.Text);
meuini.WriteString('rpg.ini', 'Forca', edit1.Text);
  meuini.WriteString('rpg.ini', 'Destreza', edit2.Text);
   meuini.WriteString('rpg.ini', 'Inteligencia', edit3.Text);
    meuini.WriteString('rpg.ini', 'Sorte', edit4.Text);
    meuini.Free;


end;

procedure TForm1.FormCreate(Sender: TObject);
var
 meuini: TIniFile;
begin
rectangle2.Visible:=true;
ScrollBox1.OnCalcContentBounds := CalcContentBoundsProc;

     if not FileExists (GetHomePath + PathDelim + 'rpg.ini') then
    begin
   meuini := TIniFile.Create(GetHomePath + PathDelim + 'rpg.ini');
   meuini.WriteString('rpg.ini', 'nome', edit8.Text);
meuini.WriteString('rpg.ini', 'level', edit6.Text);
 meuini.WriteString('rpg.ini', 'Forca', edit1.Text);
  meuini.WriteString('rpg.ini', 'Destreza', edit2.Text);
   meuini.WriteString('rpg.ini', 'Inteligencia', edit3.Text);
    meuini.WriteString('rpg.ini', 'Sorte', edit4.Text);
    meuini.Free;
    end;


 if FileExists (GetHomePath + PathDelim + 'rpg.ini') then
 begin
 meuini := TIniFile.Create(GetHomePath + PathDelim + 'rpg.ini');
 edit8.Text := meuini.ReadString('rpg.ini', 'nome', '');
 edit6.Text := meuini.ReadString('rpg.ini', 'level', '');
 edit1.Text := meuini.ReadString('rpg.ini', 'Forca', '');
 edit2.Text := meuini.ReadString('rpg.ini', 'Destreza', '');
 edit3.Text := meuini.ReadString('rpg.ini', 'Inteligencia', '');
 edit4.Text := meuini.ReadString('rpg.ini', 'Sorte', '');
 meuini.Free;
 end;

end;

procedure TForm1.CalcContentBoundsProc(Sender: TObject;
var ContentBounds: TRectF);
begin
  if FNeedOffset and (FKBBounds.Top > 0) then
  begin
    ContentBounds.Bottom := Max(ContentBounds.Bottom, 2 * ClientHeight - FKBBounds.Top);
  end;
end;

procedure TForm1.RestorePosition;
begin
  Scrollbox1.ViewportPosition := PointF(ScrollBox1.ViewportPosition.X, 0);
  MainLayout1.Align := TAlignLayout.Client;
  ScrollBox1.RealignContent;
end;

procedure TForm1.UpdateKBBounds;
var
  LFocused : TControl;
  LFocusRect: TRectF;
begin
  FNeedOffset := False;
  if Assigned(Focused) then
  begin
    LFocused := TControl(Focused.GetObject);
    LFocusRect := LFocused.AbsoluteRect;
    LFocusRect.Offset(Scrollbox1.ViewportPosition);
    if (LFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and
       (LFocusRect.Bottom > FKBBounds.Top) then
    begin
      FNeedOffset := True;
      MainLayout1.Align := TAlignLayout.Horizontal;
      Scrollbox1.RealignContent;
      Application.ProcessMessages;
      Scrollbox1.ViewportPosition :=
        PointF(Scrollbox1.ViewportPosition.X,
               LFocusRect.Bottom - FKBBounds.Top);
    end;
  end;
  if not FNeedOffset then
    RestorePosition;
end;


procedure TForm1.FormDestroy(Sender: TObject);
var
 meuini: TIniFile;
begin
   meuini := TIniFile.Create(GetHomePath + PathDelim + 'rpg.ini');
   meuini.WriteString('rpg.ini', 'nome', edit8.Text);
meuini.WriteString('rpg.ini', 'level', edit6.Text);
 meuini.WriteString('rpg.ini', 'Forca', edit1.Text);
  meuini.WriteString('rpg.ini', 'Destreza', edit2.Text);
   meuini.WriteString('rpg.ini', 'Inteligencia', edit3.Text);
    meuini.WriteString('rpg.ini', 'Sorte', edit4.Text);
    meuini.Free;
end;

procedure TForm1.FormFocusChanged(Sender: TObject);
begin
  UpdateKBBounds;
end;

procedure TForm1.FormShow(Sender: TObject);
var
 meuini: TIniFile;
begin
 meuini.Free;

 if FileExists (GetHomePath + PathDelim + 'rpg.ini') then
 begin
 meuini := TIniFile.Create(GetHomePath + PathDelim + 'rpg.ini');
 edit8.Text := meuini.ReadString('rpg.ini', 'nome', '');
 edit6.Text := meuini.ReadString('rpg.ini', 'level', '');
 edit1.Text := meuini.ReadString('rpg.ini', 'Forca', '');
 edit2.Text := meuini.ReadString('rpg.ini', 'Destreza', '');
 edit3.Text := meuini.ReadString('rpg.ini', 'Inteligencia', '');
 edit4.Text := meuini.ReadString('rpg.ini', 'Sorte', '');
 meuini.Free;
end;
end;
procedure TForm1.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds.Create(0, 0, 0, 0);
  FNeedOffset := False;
  RestorePosition;
end;

procedure TForm1.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds := TRectF.Create(Bounds);
  FKBBounds.TopLeft := ScreenToClient(FKBBounds.TopLeft);
  FKBBounds.BottomRight := ScreenToClient(FKBBounds.BottomRight);
  UpdateKBBounds;
end;

procedure TForm1.Label20Click(Sender: TObject);
begin
rectangle3.Visible:=false;
rectangle1.Visible:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
 var
 meuini: TIniFile;
begin
meuini := TIniFile.Create(GetHomePath + PathDelim + 'rpg.ini');
     label20.Text := meuini.ReadString('rpg.ini', 'nome', '');
     label21.Text := 'Level '+' '+ meuini.ReadString('rpg.ini', 'level', '');
     label26.Text := 'Força '+' '+ meuini.ReadString('rpg.ini', 'Força', '');
     label23.Text := 'Destreza '+' '+ meuini.ReadString('rpg.ini', 'Destreza', '');
     label24.Text := 'Inteligencia '+' '+ meuini.ReadString('rpg.ini', 'Inteligencia', '');
     label25.Text := 'Sorte '+' '+ meuini.ReadString('rpg.ini', 'Sorte', '');
     meuini.Free;

end ;

end.
