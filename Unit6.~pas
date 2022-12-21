unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, RpCon,
  RpConDS, RpDefine, RpRave;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label8: TLabel;
    BitBtn6: TBitBtn;
    BitBtn5: TBitBtn;
    RvProject2: TRvProject;
    RvDataSetConnection2: TRvDataSetConnection;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.BitBtn1Click(Sender: TObject);
var
Harga, THarga, Jumlah : integer;
begin
Jumlah:=StrToInt(Edit4.Text);
Harga:=StrToInt(Edit6.Text);
THarga:=Jumlah*Harga;
Edit7.Text:=IntToStr(THarga);
ADOTable1.Append;
ADOTable1['No Faktur']:= Edit1.Text;
ADOTable1['Kode Obat']:= Edit2.Text;
ADOTable1['Nama Obat']:= Edit3.Text;
ADOTable1['Jenis']:= Edit5.Text;
ADOTable1['Qty']:= Edit4.Text;
ADOTable1['Harga']:= Edit6.Text;
ADOTable1['Total']:= Edit7.Text;
ADOTable1.Refresh;

  Application.MessageBox('Data berhasil disimpan','Sukses', MB_OK+MB_ICONINFORMATION);
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
ADOTable1.Edit;
ADOTable1['No Faktur']:= Edit1.Text;
ADOTable1['Kode Obat']:= Edit2.Text;
ADOTable1['Nama Obat']:= Edit3.Text;
ADOTable1['Jenis']:= Edit5.Text;
ADOTable1['Qty']:= Edit4.Text;
ADOTable1['Harga']:= Edit6.Text;
ADOTable1['Total']:= Edit7.Text;
ADOTable1.Refresh;

  Application.MessageBox('Data berhasil diedit','Sukses', MB_OK+MB_ICONINFORMATION);
end;

procedure TForm6.BitBtn3Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
end;

procedure TForm6.BitBtn4Click(Sender: TObject);
begin
if
(MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation,[mbYes,mbNo],0)=mryes) then

ADOTable1.Delete;
  Application.MessageBox('Data sudah dihapus','Sukses', MB_OK+MB_ICONINFORMATION);
ADOTable1.Refresh;
end;

procedure TForm6.BitBtn5Click(Sender: TObject);
begin
ADOTable1.Open;
RvProject2.Execute;
RvProject2.ExecuteReport('Project2.rav');
end;

end.
