unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label7: TLabel;
    Label4: TLabel;
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
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
ADOTable1.Append;
ADOTable1['Kode']:= Edit1.Text;
ADOTable1['Nama Obat']:= Edit2.Text;
ADOTable1['Satuan/Jenis']:= Edit3.Text;
ADOTable1['Harga Awal']:= Edit4.Text;
ADOTable1['Harga Jual']:= Edit5.Text;
ADOTable1.Refresh;

  Application.MessageBox('Data berhasil disimpan','Sukses', MB_OK+MB_ICONINFORMATION);
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
ADOTable1.Edit;
ADOTable1['Kode']:= Edit1.Text;
ADOTable1['Nama Obat']:= Edit2.Text;
ADOTable1['Jenis Obat']:= Edit3.Text;
ADOTable1['Stok Awal']:= Edit4.Text;
ADOTable1['Harga Jual']:= Edit5.Text;
ADOTable1.Refresh;

  Application.MessageBox('Data berhasil diedit','Sukses', MB_OK+MB_ICONINFORMATION);
end;

procedure TForm5.BitBtn3Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
end;

procedure TForm5.BitBtn4Click(Sender: TObject);
begin
if
(MessageDlg('Anda Yakin Ingin Menghapus Data?', mtConfirmation,[mbYes,mbNo],0)=mryes) then

ADOTable1.Delete;
  Application.MessageBox('Data sudah dihapus','Sukses', MB_OK+MB_ICONINFORMATION);
ADOTable1.Refresh;
end;

procedure TForm5.BitBtn5Click(Sender: TObject);
begin
if not ADOTable1.Locate('Kode', Edit6.Text,[]) then
Application.MessageBox('Maaf, Data tidak ditemukan','Perhatian', MB_OK+MB_ICONWARNING);
end;

end.
