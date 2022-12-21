unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, RpCon, RpConDS,
  RpDefine, RpRave, DB, ADODB, ComCtrls, ExtDlgs;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Image2: TImage;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label7: TLabel;
    BitBtn4: TBitBtn;
    Edit5: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.BitBtn6Click(Sender: TObject);
begin;
ADOTable1.Open;
RvProject1.Execute;
RvProject1.ExecuteReport('Project1.rav')

end;

procedure TForm3.BitBtn2Click(Sender: TObject);
var
lokasi:string;
begin
ADOTable1.Edit;
ADOTable1['ID']:= Edit1.Text;
ADOTable1['Nama']:= Edit2.Text;
ADOTable1['Tanggal Lahir']:= DateTimePicker1.Time;
ADOTable1['Alamat']:= Edit4.Text;
ADOTable1['Jenis Kelamin']:= ComboBox1.Text;
ADOTable1['Golongan Darah']:= ComboBox2.Text;
ADOTable1['Foto']:=lokasi;
ADOTable1.Refresh;

Application.MessageBox('Data berhasil diedit','Sukses', MB_OK+MB_ICONINFORMATION);

end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
if
(MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation,[mbYes,mbNo],0)=mryes) then

ADOTable1.Delete;
Application.MessageBox('Data sudah dihapus','Sukses', MB_OK+MB_ICONINFORMATION);
ADOTable1.Refresh;
end;

procedure TForm3.BitBtn7Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit4.Clear;
Edit5.Clear;
end;

procedure TForm3.BitBtn5Click(Sender: TObject);
var
lokasi :string;
begin
if OpenPictureDialog1.Execute then
  lokasi:=OpenPictureDialog1.FileName;
Image1.Picture.LoadFromFile(lokasi);

end;

procedure TForm3.BitBtn1Click(Sender: TObject);
var
lokasi:string;
begin
ADOTable1.Append;
ADOTable1['ID']:= Edit1.Text;
ADOTable1['Nama']:= Edit2.Text;
ADOTable1['Tanggal Lahir']:= DateTimePicker1.Time;
ADOTable1['Alamat']:= Edit4.Text;
ADOTable1['Jenis Kelamin']:= ComboBox1.Text;
ADOTable1['Golongan Darah']:= ComboBox2.Text;
ADOTable1['Foto']:=lokasi;
ADOTable1.Refresh;

Application.MessageBox('Data berhasil disimpan','Sukses', MB_OK+MB_ICONINFORMATION);

end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
if not ADOTable1.Locate('ID', Edit5.Text,[]) then
Application.MessageBox('Maaf, Data tidak ditemukan','Perhatian', MB_OK+MB_ICONWARNING);
end;

end.
