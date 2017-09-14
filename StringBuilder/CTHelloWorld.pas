unit CTHelloWorld;

interface

uses
  CTmscorlib,
  CTClient, CTObject, Windows;

type
  Class1 = class;


  Class1 = class(TCTObject)
  private
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create; overload; override;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Integer; reintroduce; overload;
    //GetType:Type2
    function Test(
      const aAInput: string): string; overload;
    function ToString: string; reintroduce; overload;

  end;

implementation

uses
  SysUtils, CTException;

{ HelloWorld.Class1 }

class function Class1.CTFullTypeName: string;
begin
  Result := 'HelloWorld.Class1'
end;


constructor Class1.Create;
begin
  CTCreateObject('HelloWorld.Class1', 0, [], []);
end;

function Class1.Equals(
  const aObj: TCTObject): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 1226748890, [aObj], [CTptObj]));
  CTClearResults;
end;

function Class1.GetHashCode: Integer;
begin
  Result := Integer(CTMethodCall('GetHashCode', 0, [], []));
  CTClearResults;
end;

function Class1.Test(
  const aAInput: string): string;
begin
  Result := CTMethodCallStringResult('Test', 1497808633, [aAInput], [CTptStr]);
  CTClearResults;
end;

function Class1.ToString: string;
begin
  Result := CTMethodCallStringResult('ToString', 0, [], []);
  CTClearResults;
end;

initialization
  LoadAssembly('D:\Source\CrossTalk Demos\CustomClass\Right\obj\Debug\HelloWorld.dll');
end.
