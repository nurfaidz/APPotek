unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Image2: TImage;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    Image3: TImage;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Image2Click(Sender: TObject);
begin
ADOTable1.Refresh;
ADOTable1.First;
while not ADOTable1.Eof do
begin
if(Edit1.Text=ADOTable1['Username']) and (Edit2.Text=ADOTable1['Password']) then
begin
  Form2.show;
  form1.Hide;
  Application.MessageBox('Berhasil Login','Sukses', MB_OK+MB_ICONINFORMATION);
  Edit1.Text:='Username ';
  Edit2.Text:='*******';
Exit;
end;
ADOTable1.Next;
if(Edit1.Text=ADOTable1['Username']) and (Edit2.Text=ADOTable1['Password']) then
begin
  Form2.show;
  form1.Hide;
  Application.MessageBox('Berhasil Login','Sukses', MB_OK+MB_ICONINFORMATION);
  Edit1.Text:='Username ';
  Edit2.Text:='*******';
Exit;
end;
if ADOTable1.Eof then
begin
  Application.MessageBox('Maaf, Username atau Password Anda Salah','Peringatan', MB_OK+MB_ICONERROR);
  Edit1.Text:='Username ';
  Edit2.Text:='*******';
Edit1.SetFocus;
end;
end;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
if
(MessageDlg('Tutup Aplikasi ?', mtConfirmation,[mbYes,mbNo],0)=mryes) then
Application.Terminate;
end;

end.
