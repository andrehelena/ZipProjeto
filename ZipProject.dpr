program ZipProject;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form_Compactador},
  View.Frame.Directory in 'View.Frame.Directory.pas' {Frame2: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Compactador, Form_Compactador);
  Application.Run;
end.
