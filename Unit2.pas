unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit6, Unit7, Unit1, Unit5;

{$R *.dfm}

procedure TForm2.Image2Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm2.Image3Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm2.Image5Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm2.Image6Click(Sender: TObject);
begin
form7.showmodal;
end;

procedure TForm2.Image7Click(Sender: TObject);
begin
if
(MessageDlg('Yakin Ingin Log Out?', mtConfirmation,[mbYes,mbNo],0)=mryes) then begin
form1.Show;
begin
form2.Hide;
end;
end;
end;
procedure TForm2.Label1Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm2.Label4Click(Sender: TObject);
begin
form4.ShowModal;
end;

procedure TForm2.Label5Click(Sender: TObject);
begin
form5.showmodal;
end;

procedure TForm2.Label6Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm2.Label3Click(Sender: TObject);
begin
if
(MessageDlg('Yakin Ingin Log Out?', mtConfirmation,[mbYes,mbNo],0)=mryes) then begin
form1.Show;
begin
form2.Hide;
end;
end;
end;
procedure TForm2.Label2Click(Sender: TObject);
begin
Form7.ShowModal;

end;

procedure TForm2.Image8Click(Sender: TObject);
begin
if
(MessageDlg('Yakin Ingin Keluar ?', mtConfirmation,[mbYes,mbNo],0)=mryes) then
Application.Terminate;
end;

procedure TForm2.Image4Click(Sender: TObject);
begin
form5.showmodal;
end;

end.



