unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    confirm: TButton;
    add_cost: TLabel;
    summ_all: TLabel;
    sum_all: TLabel;
    sum_all_text: TLabel;
    num_Maentel: TEdit;
    num_Hose: TEdit;
    num_Stiefel: TEdit;
    Text_Maentel: TLabel;
    Text_Skihosen: TLabel;
    Text_Stiefel: TLabel;
    procedure confirmClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  cost_Stiefel, cost_Hose, cost_Maentel: Double;
  amount_Stiefel, amount_Hose, amount_Maentel: Integer;

  summ: Double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  cost_Stiefel := 39.99;
  cost_Hose := 15.99;
  cost_Maentel := 12.99;
end;

procedure TForm1.confirmClick(Sender: TObject);
var
  temp_Stiefel, temp_Hose, temp_Maentel, temp_all, temp, summm: Double;

begin
  amount_Stiefel := StrToIntDef(num_Stiefel.text, 0);
  temp_Stiefel := cost_Stiefel*amount_Stiefel;
  amount_Hose := StrToIntDef(num_Hose.text, 0);
  temp_Hose := cost_Hose*amount_Hose;
  amount_Maentel := StrToIntDef(num_Maentel.text, 0);
  temp_Maentel := cost_Maentel*amount_Maentel;

  summ:=amount_Stiefel+amount_Hose+amount_Maentel;
  temp_all := temp_Stiefel+temp_Hose+temp_Maentel;

  sum_all.Caption := FloatToStr(temp_Stiefel+temp_Hose+temp_Maentel+5.95);

  if summ >7 then
  begin
    add_cost.Hide;
    sum_all.Caption := FloatToStr(temp_Stiefel+temp_Hose+temp_Maentel);
  end;

  if summ >11 then
  begin
    add_cost.Hide;
    summm := temp_all/100*5;
    sum_all.Caption := FloatToStr(temp_all-summm);
  end;

end;

end.

