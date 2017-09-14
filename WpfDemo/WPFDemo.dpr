program WPFDemo;
{$R *.res}

uses
  CTObject,
  CTSystem,
  CTMscorlib,
  CTCrossTalkWPF,
  CTWindowsBase;

type
  TWPFDemo = class
  protected
    FReader: FlowDocumentReader;
  public
    procedure Run(const aSender: TCTObject; const aE: CTmscorlib.EventArgs);
    procedure SetupWindow(AWin: Window);
    procedure ButtonClicked(const aSender: TCTObject; const aE: CTPresentationCore.RoutedEventArgs);
  end;

procedure TWPFDemo.ButtonClicked(const aSender: TCTObject; const aE: CTPresentationCore.RoutedEventArgs);
var
  LDoc: FlowDocument;
  s: string;
begin
  s := '<FlowDocument xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml">'
  + '<Section Background="Yellow">'
  + '<Paragraph FontSize="40">'
  + 'CrossTalk'
  + '</Paragraph>'
  + '<Paragraph>allows you to use WPF from Delphi</Paragraph>'
  + '<Paragraph FontSize="20" Foreground="Red">'
  + 'Like that!'
  + '</Paragraph>'
  + '</Section>'
  + '</FlowDocument>';
  LDoc := WPFUtils.ParseFlowDocument(s);
  FReader.Document := LDoc;
end;

procedure TWPFDemo.SetupWindow(AWin : Window);
var
  LButton : Button;
  LPanel1 : StackPanel;
  LPanel2 : StackPanel;
begin
  AWin.SizeToContent := 3;

  LPanel1 := StackPanel.Create;
  LPanel1.Orientation := 0;
  WPFUtils.SetWindowStackPanelContent(AWin,LPanel1);

  FReader := FlowDocumentReader.Create;
  WPFUtils.SetFlowDocumentReaderHeight(FReader, 300);
  WPFUtils.SetFlowDocumentReaderWidth(FReader,400);
  WPFUtils.AddFlowDocumentReaderToStackPanel(LPanel1, FReader);

  LPanel2 := StackPanel.Create;
  LPanel2.Orientation := 1;
  WPFUtils.AddStackPanelToStackPanel(LPanel1, LPanel2);

  LButton := Button.Create;
  WPFUtils.SetButtonStringContent(LButton, 'Load document');
  WPFUtils.AddButtonToStackPanel(LPanel2, LButton);
  LButton.OnClick := ButtonClicked;
end;

procedure TWPFDemo.Run(const aSender: TCTObject; const aE: CTmscorlib.EventArgs);
var
 LWin: Window;
 LApp: Application;
begin
  LWin := Window.Create;
  try
    LApp := Application.Create;
    try
      LWin.Visibility := 0;
      LApp.MainWindow := LWin;
      SetupWindow(LWin);
      LApp.Run;
    finally
      LApp.Free;
    end;
  finally
    LWin.Free;
  end;
end;

var
  LWPFDemo : TWPFDemo;
  LSTAThread : STAThread;
begin
  LWPFDemo := TWPFDemo.Create;
  
  try
    LSTAThread := STAThread.Create;  
    try
      LSTAThread.OnRun := LWPFDemo.Run;
      LSTAThread.Start(False);
      LSTAThread.Join;    
    finally
      LSTAThread.Free;
    end;
  finally
    LWPFDemo.Free;
  end;
end.
