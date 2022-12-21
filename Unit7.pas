unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm7 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Timer1: TTimer;
    Panel2: TPanel;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Timer1Timer(Sender: TObject);
begin
Label1.Left:=Label1.Left - 25;
if Label1.Left <-110 then
Label1.Left:=400;
end;

end.
