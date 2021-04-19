unit View.Frame.Directory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type
  TFrame2 = class(TFrame)
    oBE_Diretorio: TButtonedEdit;
    Label1: TLabel;
    ImageList1: TImageList;
    FileOpenDialog1: TFileOpenDialog;
    procedure oBE_DiretorioRightButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame2.oBE_DiretorioRightButtonClick(Sender: TObject);
begin
	if (FileOpenDialog1.Execute) then
  	oBE_Diretorio.Text := FileOpenDialog1.FileName;
end;

end.
