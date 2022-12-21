unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox2: TComboBox;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Edit5: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    Label9: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1['No']:= Edit1.Text;
ADOTable1['Nama']:= Edit2.Text;
ADOTable1['Alamat']:= Edit3.Text;
ADOTable1['Jenis Kelamin']:= ComboBox2.Text;
ADOTable1['Tanggal Lahir']:= DateTimePicker1.Time;
ADOTable1['Goldar']:= ComboBox1.Text;
ADOTable1['No HP']:= Edit4.Text;
ADOTable1.Refresh;

Application.MessageBox('Data berhasl disimpan','Sukses', MB_OK+MB_ICONINFORMATION);
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
ADOTable1.Edit;
ADOTable1['No']:= Edit1.Text;
ADOTable1['Nama']:= Edit2.Text;
ADOTable1['Alamat']:= Edit3.Text;
ADOTable1['Jenis Kelamin']:= ComboBox2.Text;
ADOTable1['Tanggal Lahir']:= DateTimePicker1.Time;
ADOTable1['Goldar']:= ComboBox1.Text;
ADOTable1['No HP']:= Edit4.Text;
ADOTable1.Refresh;

Application.MessageBox('Data berhasil diedit','Sukses', MB_OK+MB_ICONINFORMATION);
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
end;

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
if
(MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation,[mbYes,mbNo],0)=mryes) then

ADOTable1.Delete;
Application.MessageBox('Data sudah dihapus','Sukses', MB_OK+MB_ICONINFORMATION);
ADOTable1.Refresh;
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
if not ADOTable1.Locate('Nama', Edit5.Text,[]) then
Application.MessageBox('Maaf, Data tidak ditemukan','Perhatian', MB_OK+MB_ICONWARNING);
end;

end.
