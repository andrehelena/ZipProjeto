object Form_Compactador: TForm_Compactador
  Left = 0
  Top = 0
  Caption = 'Projeto - ZIP'
  ClientHeight = 602
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 25
  object PageControl1: TPageControl
    Left = 0
    Top = 66
    Width = 920
    Height = 430
    ActivePage = TabSheet2
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabPosition = tpLeft
    ExplicitWidth = 916
    ExplicitHeight = 455
    object TabSheet1: TTabSheet
      Caption = 'Compactar'
      ExplicitLeft = 40
      ExplicitTop = 2
      ExplicitHeight = 458
      object Label3: TLabel
        Left = 13
        Top = 16
        Width = 435
        Height = 25
        Caption = 'Informe os arquivos a serem compactados -> '
      end
      object Button_Compactar: TButton
        Left = 585
        Top = 342
        Width = 272
        Height = 57
        Caption = 'Compactar'
        TabOrder = 0
        OnClick = Button_CompactarClick
      end
      object ListBox_ArquivosParaCompactar: TListBox
        Left = 16
        Top = 57
        Width = 849
        Height = 269
        ItemHeight = 25
        TabOrder = 1
      end
      object Button_SelecionarArquivos: TButton
        Left = 454
        Top = 9
        Width = 408
        Height = 42
        Caption = 'Selecionar arquivos'
        TabOrder = 2
        OnClick = Button_SelecionarArquivosClick
      end
      inline Frame_Destino: TFrame2
        Left = 16
        Top = 328
        Width = 563
        Height = 86
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        ExplicitLeft = 16
        ExplicitTop = 328
        inherited Label1: TLabel
          Width = 161
          Caption = 'Diret'#243'rio destino '
          ExplicitWidth = 161
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Descompactar'
      ImageIndex = 1
      ExplicitWidth = 876
      ExplicitHeight = 445
      inline Frame_OrigemCompactado: TFrame2
        Left = 16
        Top = 24
        Width = 563
        Height = 86
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 16
        ExplicitTop = 24
        inherited Label1: TLabel
          Width = 453
          Caption = 'Diret'#243'rio origem -> (arquivos compactado *.zip)'
          ExplicitWidth = 453
        end
        inherited FileOpenDialog1: TFileOpenDialog
          FileName = ''
          FileNameLabel = ''
          OkButtonLabel = 'Selecionar'
          Title = 'Selecione o arquivo compactado'
        end
      end
      inline Frame_DestinoDescompactado: TFrame2
        Left = 16
        Top = 176
        Width = 563
        Height = 86
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitLeft = 16
        ExplicitTop = 176
        inherited Label1: TLabel
          Width = 446
          Caption = 'Diret'#243'rio destino -> (arquivos descompactados)'
          ExplicitWidth = 446
        end
        inherited FileOpenDialog1: TFileOpenDialog
          FileName = ''
          FileNameLabel = ''
          FileTypeIndex = 1
          OkButtonLabel = 'Salvar'
          Options = [fdoPickFolders]
          Title = 'Selecione o diret'#243'rio para salvar os arquivos descompactados'
        end
      end
      object Button_Descompactar: TButton
        Left = 616
        Top = 272
        Width = 201
        Height = 46
        Caption = 'Descompactar'
        TabOrder = 2
        OnClick = Button_DescompactarClick
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 66
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 916
    object Label2: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 912
      Height = 58
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Compactador/Descompactador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 8
      ExplicitTop = 8
      ExplicitWidth = 908
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 496
    Width = 920
    Height = 106
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 495
    object Label1: TLabel
      Left = 36
      Top = 6
      Width = 109
      Height = 25
      Caption = 'Progresso...'
    end
    object ProgressBar1: TProgressBar
      Left = 36
      Top = 37
      Width = 846
      Height = 36
      TabOrder = 0
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 856
    Top = 16
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    OkButtonLabel = 'Selecionar'
    Options = [fdoAllowMultiSelect]
    Title = 'Selecione multiplos arquivos para compactar'
    Left = 776
    Top = 16
  end
end
