unit Unit1;

interface

uses
  CTHelloWorld,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  xHW: Class1;
begin
  xHW := Class1.Create; try
    label1.Caption := xHW.Test(Edit1.Text)
  finally xHW.Free; end;
end;

end.
