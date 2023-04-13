unit laundry2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckGroup1: TCheckGroup;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    harga: TLabel;
    Label5: TLabel;
    total: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
    harga.caption := '3000';
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
  harga.caption := '6000';
end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
  harga.Caption := '4000';
end;

procedure TForm1.RadioButton4Change(Sender: TObject);
begin
  harga.Caption := '10000';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  jum:integer;
begin
  try
    jum:= StrToInt(Edit1.text);

    if RadioButton1.Checked = true Then
    total.Caption := IntToStr(jum * 3000 - 3000)
    else if RadioButton2.Checked = true Then
    total.Caption := IntToStr(jum * 6000 - 3000)
    else if RadioButton3.Checked = true Then
    total.Caption := IntToStr(jum * 4000 - 3000)
    else if RadioButton4.Checked = true Then
    total.Caption := IntToStr(jum * 10000 - 3000)
    else
      ShowMessage('Pilih Paket Laundry');

    except
      ShowMessage('Jumlah yang di input harus angka');
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.text := '';
  harga.Caption := '';
  total.Caption := '';
  RadioButton1.Checked := false;
  RadioButton2.Checked := false;
  RadioButton3.Checked := false;
  RadioButton4.Checked := false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  close;
end;


end.

