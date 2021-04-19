unit Unit1;

interface

uses
	Winapi.Windows,
	Winapi.Messages,
	System.SysUtils,
	System.Variants,
	System.Classes,
	Vcl.Graphics,
	Vcl.Controls,
	Vcl.Forms,
	Vcl.Dialogs,
  System.Zip, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, View.Frame.Directory;

type
	TForm_Compactador = class(TForm)
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Button_Compactar: TButton;
    ListBox_ArquivosParaCompactar: TListBox;
    Button_SelecionarArquivos: TButton;
    Label3: TLabel;
    FileOpenDialog1: TFileOpenDialog;
    ProgressBar1: TProgressBar;
    Frame_Destino: TFrame2;
    Frame_OrigemCompactado: TFrame2;
    Panel2: TPanel;
    Frame_DestinoDescompactado: TFrame2;
    Button_Descompactar: TButton;
    procedure Button_CompactarClick(Sender: TObject);
    procedure Button_SelecionarArquivosClick(Sender: TObject);
    procedure Button_DescompactarClick(Sender: TObject);
		private
			procedure compactarArquivos();
      procedure progressoCompactacao(Sender: TObject; FileName: string; Header: TZipHeader; Position: Int64);

		public
			{ Public declarations }
	end;

var
	Form_Compactador : TForm_Compactador;

implementation

{$R *.dfm}

{ TForm_Compactador }

procedure TForm_Compactador.Button_CompactarClick(Sender: TObject);
begin
	compactarArquivos;
end;

procedure TForm_Compactador.Button_DescompactarClick(Sender: TObject);
var
	descompactador: TZipFile;
begin
	descompactador := TZipFile.Create;
  try
		descompactador.ExtractZipFile(Frame_OrigemCompactado.oBE_Diretorio.Text,
    				Frame_DestinoDescompactado.oBE_Diretorio.Text,
            progressoCompactacao);
  finally
    FreeAndNil(descompactador)
  end;

end;

procedure TForm_Compactador.Button_SelecionarArquivosClick(Sender: TObject);

begin
	if (FileOpenDialog1.Execute) then
  begin
  	var I: Integer;
    for I := 0 to Pred(FileOpenDialog1.Files.Count) do
    begin
      ListBox_ArquivosParaCompactar.Items.Add(FileOpenDialog1.Files[I]);
    end;
  end;
end;

procedure TForm_Compactador.compactarArquivos;
begin
  begin
    var compactador: TZipFile;
    compactador := TZipFile.Create;
    try
	    compactador.OnProgress := progressoCompactacao;
      compactador.Open(Frame_Destino.oBE_Diretorio.Text ,zmWrite);
      var I: Integer;
			for I := 0 to Pred(ListBox_ArquivosParaCompactar.Items.Count) do
			begin
	      compactador.Add(ListBox_ArquivosParaCompactar.Items[I]);
      end;

    finally
      FreeAndNil(compactador);
    end;
  end;

end;

procedure TForm_Compactador.progressoCompactacao(Sender: TObject; FileName: string; Header: TZipHeader; Position: Int64);
begin
	Application.ProcessMessages;

  Label1.Caption := FormatFloat('#,## %', Position / Header.UncompressedSize * 100);
  ProgressBar1.Position := Trunc(Position / Header.UncompressedSize * 100);
end;

end.
