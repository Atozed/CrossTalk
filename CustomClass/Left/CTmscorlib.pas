unit CTmscorlib;

interface

uses
  CTClient, CTObject, Windows;

type
  ByteArray = class;
  StringBuilder = class;
  DateTime = class;

  Calendar = class(TCTObject);

  ByteArray = class(TCTObject)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Integer;
    function LongLengthRead: Int64;
    function RankRead: Integer;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    //Address:Byte:Integer
    function Clone: TCTObject; overload;
    //CopyTo:TCTObject:TCTObject:Int64
    //CopyTo:TCTObject:TCTObject:Integer
    constructor Create(
      const a0: Integer); reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function Get(
      const a0: Integer): Byte; overload;
    function GetEnumerator: TCTObject {Interface: System.Collections.IEnumerator}; overload;
    function GetHashCode: Integer; reintroduce; overload;
    function GetLength(
      const aDimension: Integer): Integer; overload;
    function GetLongLength(
      const aDimension: Integer): Int64; overload;
    function GetLowerBound(
      const aDimension: Integer): Integer; overload;
    //GetType:Type2
    function GetUpperBound(
      const aDimension: Integer): Integer; overload;
    //GetValue:TCTObject:Int32Array
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    //GetValue:TCTObject:Int64Array
    function GetValue(
      const aIndex: Integer): TCTObject; overload;
    function GetValue(
      const aIndex1: Integer; 
      const aIndex2: Integer): TCTObject; overload;
    function GetValue(
      const aIndex1: Integer; 
      const aIndex2: Integer; 
      const aIndex3: Integer): TCTObject; overload;
    procedure Initialize; overload;
    procedure SetMethod(
      const a0: Integer; 
      const a1: Byte); overload;
    //SetValue:TCTObject:TCTObject:Int32Array
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    //SetValue:TCTObject:TCTObject:Int64Array
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Integer); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Integer; 
      const aIndex2: Integer); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Integer; 
      const aIndex2: Integer; 
      const aIndex3: Integer); overload;
    function ToString: string; reintroduce; overload;

    procedure CopyTo(aDest: array of byte);
    procedure CopyFrom(aSrc: array of byte);

    property Items[const aindex: Integer]: Byte read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Integer read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Integer read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  StringBuilder = class(TCTObject)
  private
    function CapacityRead: Integer;
    procedure CapacityWrite(
      const aValue: Integer);
    function CharsRead(
      const aIndex: Integer): Char;
    procedure CharsWrite(
      const aIndex: Integer; 
      const aValue: Char);
    function LengthRead: Integer;
    procedure LengthWrite(
      const aValue: Integer);
    function MaxCapacityRead: Integer;
  protected
    class function CTFullTypeName: string; override;
  public
    function Append(
      const aValue: Boolean): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: Byte): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: Cardinal): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: Char): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: Char; 
      const aRepeatCount: Integer): CTmscorlib.StringBuilder; overload;
    //Append:CTmscorlib.StringBuilder:CharArray
    //Append:CTmscorlib.StringBuilder:CharArray:Integer:Integer
    function Append(
      const aValue: Double): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: Extended): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: Int64): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: Integer): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: ShortInt): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: Single): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: SmallInt): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: string): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: string; 
      const aStartIndex: Integer; 
      const aCount: Integer): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: TCTObject): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: UInt64): CTmscorlib.StringBuilder; overload;
    function Append(
      const aValue: Word): CTmscorlib.StringBuilder; overload;
    //AppendFormat:CTmscorlib.StringBuilder:string:ObjectArray
    function AppendFormat(
      const aFormat: string; 
      const aArg0: TCTObject): CTmscorlib.StringBuilder; overload;
    function AppendFormat(
      const aFormat: string; 
      const aArg0: TCTObject; 
      const aArg1: TCTObject): CTmscorlib.StringBuilder; overload;
    function AppendFormat(
      const aFormat: string; 
      const aArg0: TCTObject; 
      const aArg1: TCTObject; 
      const aArg2: TCTObject): CTmscorlib.StringBuilder; overload;
    //AppendFormat:CTmscorlib.StringBuilder:TCTObject:string:ObjectArray
    function AppendLine: CTmscorlib.StringBuilder; overload;
    function AppendLine(
      const aValue: string): CTmscorlib.StringBuilder; overload;
    function Clear: CTmscorlib.StringBuilder; overload;
    //CopyTo:TCTObject:Integer:CharArray:Integer:Integer
    constructor Create; overload; override;
    constructor Create(
      const aCapacity: Integer); reintroduce; overload;
    constructor Create(
      const aCapacity: Integer; 
      const aMaxCapacity: Integer); reintroduce; overload;
    constructor Create(
      const aValue: string); reintroduce; overload;
    constructor Create(
      const aValue: string; 
      const aCapacity: Integer); reintroduce; overload;
    constructor Create(
      const aValue: string; 
      const aStartIndex: Integer; 
      const aLength: Integer; 
      const aCapacity: Integer); reintroduce; overload;
    function EnsureCapacity(
      const aCapacity: Integer): Integer; overload;
    function Equals(
      const aSb: CTmscorlib.StringBuilder): Boolean; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Integer; reintroduce; overload;
    //GetType:Type2
    function Insert(
      const aIndex: Integer; 
      const aValue: Boolean): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: Byte): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: Cardinal): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: Char): CTmscorlib.StringBuilder; overload;
    //Insert:CTmscorlib.StringBuilder:Integer:CharArray
    //Insert:CTmscorlib.StringBuilder:Integer:CharArray:Integer:Integer
    function Insert(
      const aIndex: Integer; 
      const aValue: Double): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: Extended): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: Int64): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: Integer): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: ShortInt): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: Single): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: SmallInt): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: string): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: string; 
      const aCount: Integer): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: TCTObject): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: UInt64): CTmscorlib.StringBuilder; overload;
    function Insert(
      const aIndex: Integer; 
      const aValue: Word): CTmscorlib.StringBuilder; overload;
    function Remove(
      const aStartIndex: Integer; 
      const aLength: Integer): CTmscorlib.StringBuilder; overload;
    function Replace(
      const aOldChar: Char; 
      const aNewChar: Char): CTmscorlib.StringBuilder; overload;
    function Replace(
      const aOldChar: Char; 
      const aNewChar: Char; 
      const aStartIndex: Integer; 
      const aCount: Integer): CTmscorlib.StringBuilder; overload;
    function Replace(
      const aOldValue: string; 
      const aNewValue: string): CTmscorlib.StringBuilder; overload;
    function Replace(
      const aOldValue: string; 
      const aNewValue: string; 
      const aStartIndex: Integer; 
      const aCount: Integer): CTmscorlib.StringBuilder; overload;
    function ToString: string; reintroduce; overload;
    function ToString(
      const aStartIndex: Integer; 
      const aLength: Integer): string; reintroduce; overload;

    property Capacity: Integer read CapacityRead write CapacityWrite;
    property Chars[const aIndex: Integer]: Char read CharsRead write CharsWrite;
    property Length: Integer read LengthRead write LengthWrite;
    property MaxCapacity: Integer read MaxCapacityRead;
  end;

  DateTime = class(TCTObject)
  private
    function DateRead: TCTObject {ValueType: 'System.DateTime};
    function DayRead: Integer;
    function DayOfWeekRead: Longword {Enum: 'System.DayOfWeek};
    function DayOfYearRead: Integer;
    function HourRead: Integer;
    function KindRead: Longword {Enum: 'System.DateTimeKind};
    function MillisecondRead: Integer;
    function MinuteRead: Integer;
    function MonthRead: Integer;
    class function NowRead: TCTObject {ValueType: 'System.DateTime}; static;
    function SecondRead: Integer;
    function TicksRead: Int64;
    function TimeOfDayRead: TCTObject {ValueType: 'System.TimeSpan};
    class function TodayRead: TCTObject {ValueType: 'System.DateTime}; static;
    class function UtcNowRead: TCTObject {ValueType: 'System.DateTime}; static;
    function YearRead: Integer;
    class function MaxValueRead: TCTObject {ValueType: 'System.DateTime}; static;
    class procedure MaxValueWrite(const aValue: TCTObject {ValueType: 'System.DateTime}); static;
    class function MinValueRead: TCTObject {ValueType: 'System.DateTime}; static;
    class procedure MinValueWrite(const aValue: TCTObject {ValueType: 'System.DateTime}); static;
  protected
    class function CTFullTypeName: string; override;
  public
    function Add(
      const aValue: TCTObject {ValueType: 'System.TimeSpan}): TCTObject {ValueType: 'System.DateTime}; overload;
    function AddDays(
      const aValue: Double): TCTObject {ValueType: 'System.DateTime}; overload;
    function AddHours(
      const aValue: Double): TCTObject {ValueType: 'System.DateTime}; overload;
    function AddMilliseconds(
      const aValue: Double): TCTObject {ValueType: 'System.DateTime}; overload;
    function AddMinutes(
      const aValue: Double): TCTObject {ValueType: 'System.DateTime}; overload;
    function AddMonths(
      const aMonths: Integer): TCTObject {ValueType: 'System.DateTime}; overload;
    function AddSeconds(
      const aValue: Double): TCTObject {ValueType: 'System.DateTime}; overload;
    function AddTicks(
      const aValue: Int64): TCTObject {ValueType: 'System.DateTime}; overload;
    function AddYears(
      const aValue: Integer): TCTObject {ValueType: 'System.DateTime}; overload;
    class function Compare(
      const aT1: TCTObject {ValueType: 'System.DateTime}; 
      const aT2: TCTObject {ValueType: 'System.DateTime}): Integer; overload;
    function CompareTo(
      const aValue: TCTObject): Integer; overload;
    function CompareTo2(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Integer; overload;
    constructor Create(
      const aTicks: Int64); reintroduce; overload;
    constructor Create(
      const aTicks: Int64; 
      const aKind: Longword {Enum: 'System.DateTimeKind}); reintroduce; overload;
    constructor Create(
      const aYear: Integer; 
      const aMonth: Integer; 
      const aDay: Integer); reintroduce; overload;
    constructor Create(
      const aYear: Integer; 
      const aMonth: Integer; 
      const aDay: Integer; 
      const aHour: Integer; 
      const aMinute: Integer; 
      const aSecond: Integer); reintroduce; overload;
    constructor Create(
      const aYear: Integer; 
      const aMonth: Integer; 
      const aDay: Integer; 
      const aHour: Integer; 
      const aMinute: Integer; 
      const aSecond: Integer; 
      const aMillisecond: Integer); reintroduce; overload;
    constructor Create(
      const aYear: Integer; 
      const aMonth: Integer; 
      const aDay: Integer; 
      const aHour: Integer; 
      const aMinute: Integer; 
      const aSecond: Integer; 
      const aMillisecond: Integer; 
      const aKind: Longword {Enum: 'System.DateTimeKind}); reintroduce; overload;
    constructor Create(
      const aYear: Integer; 
      const aMonth: Integer; 
      const aDay: Integer; 
      const aHour: Integer; 
      const aMinute: Integer; 
      const aSecond: Integer; 
      const aMillisecond: Integer; 
      const aCalendar: TCTObject {Class: System.Globalization.Calendar}); reintroduce; overload;
    constructor Create(
      const aYear: Integer; 
      const aMonth: Integer; 
      const aDay: Integer; 
      const aHour: Integer; 
      const aMinute: Integer; 
      const aSecond: Integer; 
      const aMillisecond: Integer; 
      const aCalendar: TCTObject {Class: System.Globalization.Calendar}; 
      const aKind: Longword {Enum: 'System.DateTimeKind}); reintroduce; overload;
    constructor Create(
      const aYear: Integer; 
      const aMonth: Integer; 
      const aDay: Integer; 
      const aHour: Integer; 
      const aMinute: Integer; 
      const aSecond: Integer; 
      const aKind: Longword {Enum: 'System.DateTimeKind}); reintroduce; overload;
    constructor Create(
      const aYear: Integer; 
      const aMonth: Integer; 
      const aDay: Integer; 
      const aHour: Integer; 
      const aMinute: Integer; 
      const aSecond: Integer; 
      const aCalendar: TCTObject {Class: System.Globalization.Calendar}); reintroduce; overload;
    constructor Create(
      const aYear: Integer; 
      const aMonth: Integer; 
      const aDay: Integer; 
      const aCalendar: TCTObject {Class: System.Globalization.Calendar}); reintroduce; overload;
    class function DaysInMonth(
      const aYear: Integer; 
      const aMonth: Integer): Integer; overload;
    function Equals(
      const aValue: TCTObject): Boolean; reintroduce; overload;
    function Equals2(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Boolean; reintroduce; overload;
    class function Equals(
      const aT1: TCTObject {ValueType: 'System.DateTime}; 
      const aT2: TCTObject {ValueType: 'System.DateTime}): Boolean; reintroduce; overload;
    class function FromBinary(
      const aDateData: Int64): TCTObject {ValueType: 'System.DateTime}; overload;
    class function FromFileTime(
      const aFileTime: Int64): TCTObject {ValueType: 'System.DateTime}; overload;
    class function FromFileTimeUtc(
      const aFileTime: Int64): TCTObject {ValueType: 'System.DateTime}; overload;
    class function FromOADate(
      const aD: Double): TCTObject {ValueType: 'System.DateTime}; overload;
    //GetDateTimeFormats:StringArray
    //GetDateTimeFormats:StringArray:Char
    //GetDateTimeFormats:StringArray:Char:TCTObject
    //GetDateTimeFormats:StringArray:TCTObject
    function GetHashCode: Integer; reintroduce; overload;
    //GetType:Type2
    function GetTypeCode: Longword {Enum: 'System.TypeCode}; overload;
    function IsDaylightSavingTime: Boolean; overload;
    class function IsLeapYear(
      const aYear: Integer): Boolean; overload;
    class function Parse(
      const a0: string): TCTObject {ValueType: 'System.DateTime}; overload;
    class function Parse(
      const a0: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): TCTObject {ValueType: 'System.DateTime}; overload;
    class function Parse(
      const a0: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}; 
      const aStyles: Longword {Enum: 'System.Globalization.DateTimeStyles}): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ParseExact(
      const a0: string; 
      const aFormat: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ParseExact(
      const a0: string; 
      const aFormat: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}; 
      const aStyle: Longword {Enum: 'System.Globalization.DateTimeStyles}): TCTObject {ValueType: 'System.DateTime}; overload;
    //ParseExact:TCTObject:string:StringArray:TCTObject:Longword
    class function SpecifyKind(
      const aValue: TCTObject {ValueType: 'System.DateTime}; 
      const aKind: Longword {Enum: 'System.DateTimeKind}): TCTObject {ValueType: 'System.DateTime}; overload;
    function Subtract(
      const aValue: TCTObject {ValueType: 'System.DateTime}): TCTObject {ValueType: 'System.TimeSpan}; overload;
    function Subtract2(
      const aValue: TCTObject {ValueType: 'System.TimeSpan}): TCTObject {ValueType: 'System.DateTime}; overload;
    function ToBinary: Int64; overload;
    function ToFileTime: Int64; overload;
    function ToFileTimeUtc: Int64; overload;
    function ToLocalTime: TCTObject {ValueType: 'System.DateTime}; overload;
    function ToLongDateString: string; overload;
    function ToLongTimeString: string; overload;
    function ToOADate: Double; overload;
    function ToShortDateString: string; overload;
    function ToShortTimeString: string; overload;
    function ToString: string; reintroduce; overload;
    function ToString(
      const aFormat: string): string; reintroduce; overload;
    function ToString(
      const aFormat: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    function ToString(
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    function ToUniversalTime: TCTObject {ValueType: 'System.DateTime}; overload;
    //TryParse:Boolean:string:TCTObject
    //TryParse:Boolean:string:TCTObject:Longword:TCTObject
    //TryParseExact:Boolean:string:string:TCTObject:Longword:TCTObject
    //TryParseExact:Boolean:string:StringArray:TCTObject:Longword:TCTObject

    property Date: TCTObject {ValueType: 'System.DateTime} read DateRead;
    property Day: Integer read DayRead;
    property DayOfWeek: Longword {Enum: 'System.DayOfWeek} read DayOfWeekRead;
    property DayOfYear: Integer read DayOfYearRead;
    property Hour: Integer read HourRead;
    property Kind: Longword {Enum: 'System.DateTimeKind} read KindRead;
    property Millisecond: Integer read MillisecondRead;
    property Minute: Integer read MinuteRead;
    property Month: Integer read MonthRead;
    class property Now: TCTObject {ValueType: 'System.DateTime} read NowRead;
    property Second: Integer read SecondRead;
    property Ticks: Int64 read TicksRead;
    property TimeOfDay: TCTObject {ValueType: 'System.TimeSpan} read TimeOfDayRead;
    class property Today: TCTObject {ValueType: 'System.DateTime} read TodayRead;
    class property UtcNow: TCTObject {ValueType: 'System.DateTime} read UtcNowRead;
    property Year: Integer read YearRead;
    class property MaxValue: TCTObject {ValueType: 'System.DateTime} read MaxValueRead write MaxValueWrite;
    class property MinValue: TCTObject {ValueType: 'System.DateTime} read MinValueRead write MinValueWrite;
  end;

implementation

uses
  SysUtils, CTException;

{ System.Byte[] }

class function ByteArray.CTFullTypeName: string;
begin
  Result := 'System.Byte[]'
end;


function ByteArray.IsFixedSizeRead: Boolean;
begin
  Result := Boolean(CTPropGet('IsFixedSize'));
end;

function ByteArray.IsReadOnlyRead: Boolean;
begin
  Result := Boolean(CTPropGet('IsReadOnly'));
end;

function ByteArray.IsSynchronizedRead: Boolean;
begin
  Result := Boolean(CTPropGet('IsSynchronized'));
end;

function ByteArray.LengthRead: Integer;
begin
  Result := Integer(CTPropGet('Length'));
end;

function ByteArray.LongLengthRead: Int64;
begin
  Result := Int64(CTPropGet('LongLength'));
end;

function ByteArray.RankRead: Integer;
begin
  Result := Integer(CTPropGet('Rank'));
end;

function ByteArray.SyncRootRead: TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTPropGet('SyncRoot')));
end;

function ByteArray.Clone: TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('Clone', 0, [], [])));
  CTClearResults;
end;

constructor ByteArray.Create(
  const a0: Integer);
begin
  CTCreateObject('System.Byte[]', -114835243, [a0], [CTptInt]);
end;

function ByteArray.Equals(
  const aObj: TCTObject): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 1226748890, [aObj], [CTptObj]));
  CTClearResults;
end;

function ByteArray.Get(
  const a0: Integer): Byte;
begin
  Result := Byte(CTMethodCall('Get', -114835243, [a0], [CTptInt]));
  CTClearResults;
end;

function ByteArray.GetEnumerator: TCTObject {Interface: System.Collections.IEnumerator};
begin
  Result := TCTObject {Interface: System.Collections.IEnumerator}(CTFindRef(TCTObject {Interface: System.Collections.IEnumerator}, CTMethodCall('GetEnumerator', 0, [], [])));
  CTClearResults;
end;

function ByteArray.GetHashCode: Integer;
begin
  Result := Integer(CTMethodCall('GetHashCode', 0, [], []));
  CTClearResults;
end;

function ByteArray.GetLength(
  const aDimension: Integer): Integer;
begin
  Result := Integer(CTMethodCall('GetLength', -114835243, [aDimension], [CTptInt]));
  CTClearResults;
end;

function ByteArray.GetLongLength(
  const aDimension: Integer): Int64;
begin
  Result := Int64(CTMethodCall('GetLongLength', -114835243, [aDimension], [CTptInt]));
  CTClearResults;
end;

function ByteArray.GetLowerBound(
  const aDimension: Integer): Integer;
begin
  Result := Integer(CTMethodCall('GetLowerBound', -114835243, [aDimension], [CTptInt]));
  CTClearResults;
end;

function ByteArray.GetUpperBound(
  const aDimension: Integer): Integer;
begin
  Result := Integer(CTMethodCall('GetUpperBound', -114835243, [aDimension], [CTptInt]));
  CTClearResults;
end;

function ByteArray.GetValue(
  const aIndex: Int64): TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('GetValue', 1459142863, [aIndex], [CTptInt64])));
  CTClearResults;
end;

function ByteArray.GetValue(
  const aIndex1: Int64; 
  const aIndex2: Int64): TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('GetValue', 360299681, [aIndex1, 
aIndex2], [CTptInt64, CTptInt64])));
  CTClearResults;
end;

function ByteArray.GetValue(
  const aIndex1: Int64; 
  const aIndex2: Int64; 
  const aIndex3: Int64): TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('GetValue', 1646024638, [aIndex1, 
aIndex2, 
aIndex3], [CTptInt64, CTptInt64, CTptInt64])));
  CTClearResults;
end;

function ByteArray.GetValue(
  const aIndex: Integer): TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('GetValue', -114835243, [aIndex], [CTptInt])));
  CTClearResults;
end;

function ByteArray.GetValue(
  const aIndex1: Integer; 
  const aIndex2: Integer): TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('GetValue', -2140566382, [aIndex1, 
aIndex2], [CTptInt, CTptInt])));
  CTClearResults;
end;

function ByteArray.GetValue(
  const aIndex1: Integer; 
  const aIndex2: Integer; 
  const aIndex3: Integer): TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('GetValue', -1865022468, [aIndex1, 
aIndex2, 
aIndex3], [CTptInt, CTptInt, CTptInt])));
  CTClearResults;
end;

procedure ByteArray.Initialize;
begin
  CTMethodCall('Initialize', 0, [], []);
  CTClearResults;
end;

procedure ByteArray.SetMethod(
  const a0: Integer; 
  const a1: Byte);
begin
  CTMethodCall('Set', 340346433, [a0, 
a1], [CTptInt, CTptByte]);
  CTClearResults;
end;

procedure ByteArray.SetValue(
  const aValue: TCTObject; 
  const aIndex: Int64);
begin
  CTMethodCall('SetValue', 963600931, [aValue, 
aIndex], [CTptObj, CTptInt64]);
  CTClearResults;
end;

procedure ByteArray.SetValue(
  const aValue: TCTObject; 
  const aIndex1: Int64; 
  const aIndex2: Int64);
begin
  CTMethodCall('SetValue', -57541273, [aValue, 
aIndex1, 
aIndex2], [CTptObj, CTptInt64, CTptInt64]);
  CTClearResults;
end;

procedure ByteArray.SetValue(
  const aValue: TCTObject; 
  const aIndex1: Int64; 
  const aIndex2: Int64; 
  const aIndex3: Int64);
begin
  CTMethodCall('SetValue', 1064737788, [aValue, 
aIndex1, 
aIndex2, 
aIndex3], [CTptObj, CTptInt64, CTptInt64, CTptInt64]);
  CTClearResults;
end;

procedure ByteArray.SetValue(
  const aValue: TCTObject; 
  const aIndex: Integer);
begin
  CTMethodCall('SetValue', 586423068, [aValue, 
aIndex], [CTptObj, CTptInt]);
  CTClearResults;
end;

procedure ByteArray.SetValue(
  const aValue: TCTObject; 
  const aIndex1: Integer; 
  const aIndex2: Integer);
begin
  CTMethodCall('SetValue', -1944711835, [aValue, 
aIndex1, 
aIndex2], [CTptObj, CTptInt, CTptInt]);
  CTClearResults;
end;

procedure ByteArray.SetValue(
  const aValue: TCTObject; 
  const aIndex1: Integer; 
  const aIndex2: Integer; 
  const aIndex3: Integer);
begin
  CTMethodCall('SetValue', -1315852342, [aValue, 
aIndex1, 
aIndex2, 
aIndex3], [CTptObj, CTptInt, CTptInt, CTptInt]);
  CTClearResults;
end;

function ByteArray.ToString: string;
begin
  Result := CTMethodCallStringResult('ToString', 0, [], []);
  CTClearResults;
end;

procedure ByteArray.CopyTo(aDest: array of byte);
var
  xThreadID: DWORD;
  xResult: Integer;
begin
  if (System.Length(aDest) < Length) then begin
    raise Exception.Create('Destination array is not large enough.');
  end;
  xThreadID := GetCurrentThreadID;
  xResult := CTArrayCopy(GetCurrentThreadID, Self, aDest, true);
  CTCheckResult(xThreadID, xResult);
end;

procedure ByteArray.CopyFrom(aSrc: array of byte);
var
  xThreadID: DWORD;
  xResult: Integer;
begin
  if (Length < System.Length(aSrc)) then begin
    raise Exception.Create('Destination array is not large enough.');
  end;
  xThreadID := GetCurrentThreadID;
  xResult := CTArrayCopy(GetCurrentThreadID, Self, aSrc, false);
  CTCheckResult(xThreadID, xResult);
end;

{ System.Text.StringBuilder }

class function StringBuilder.CTFullTypeName: string;
begin
  Result := 'System.Text.StringBuilder'
end;


function StringBuilder.CapacityRead: Integer;
begin
  Result := Integer(CTPropGet('Capacity'));
end;

procedure StringBuilder.CapacityWrite(
  const aValue: Integer);
begin
  CTPropSet1('Capacity', [aValue], [CTptInt]);
end;

function StringBuilder.CharsRead(
  const aIndex: Integer): Char;
begin
  Result := Char(CTPropGet('Chars', 1, [aIndex], 
[CTptInt]));
end;

procedure StringBuilder.CharsWrite(
  const aIndex: Integer; 
  const aValue: Char);
begin
  CTPropSet2('Chars', 1, [aIndex, aValue], [CTptInt, CTptChar], [aValue], [CTptChar]);
end;

function StringBuilder.LengthRead: Integer;
begin
  Result := Integer(CTPropGet('Length'));
end;

procedure StringBuilder.LengthWrite(
  const aValue: Integer);
begin
  CTPropSet1('Length', [aValue], [CTptInt]);
end;

function StringBuilder.MaxCapacityRead: Integer;
begin
  Result := Integer(CTPropGet('MaxCapacity'));
end;

function StringBuilder.Append(
  const aValue: Boolean): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 1961695790, [aValue], [CTptBool])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: Byte): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 130596736, [aValue], [CTptByte])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: Cardinal): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 2068024180, [aValue], [CTptUInt32])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: Char): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', -1596347522, [aValue], [CTptChar])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: Char; 
  const aRepeatCount: Integer): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', -521031712, [aValue, 
aRepeatCount], [CTptChar, CTptInt])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: Double): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 1374542863, [FloatToStr(aValue)], [CTptDouble])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: Extended): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 886549570, [FloatToStr(aValue)], [CTptDecimal])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: Int64): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 1459142863, [aValue], [CTptInt64])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: Integer): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', -114835243, [aValue], [CTptInt])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: ShortInt): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 1295826597, [aValue], [CTptObj])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: Single): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 246254431, [FloatToStr(aValue)], [CTptSingle])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: SmallInt): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 267501777, [aValue], [CTptInt16])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: string): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 1497808633, [aValue], [CTptStr])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: string; 
  const aStartIndex: Integer; 
  const aCount: Integer): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 1427336674, [aValue, 
aStartIndex, 
aCount], [CTptStr, CTptInt, CTptInt])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: TCTObject): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 1226748890, [aValue], [CTptObj])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: UInt64): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 2067630967, [aValue], [CTptUInt64])));
  CTClearResults;
end;

function StringBuilder.Append(
  const aValue: Word): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Append', 2067762034, [aValue], [CTptUInt16])));
  CTClearResults;
end;

function StringBuilder.AppendFormat(
  const aFormat: string; 
  const aArg0: TCTObject): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('AppendFormat', -998873039, [aFormat, 
aArg0], [CTptStr, CTptObj])));
  CTClearResults;
end;

function StringBuilder.AppendFormat(
  const aFormat: string; 
  const aArg0: TCTObject; 
  const aArg1: TCTObject): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('AppendFormat', 864049232, [aFormat, 
aArg0, 
aArg1], [CTptStr, CTptObj, CTptObj])));
  CTClearResults;
end;

function StringBuilder.AppendFormat(
  const aFormat: string; 
  const aArg0: TCTObject; 
  const aArg1: TCTObject; 
  const aArg2: TCTObject): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('AppendFormat', 1073512948, [aFormat, 
aArg0, 
aArg1, 
aArg2], [CTptStr, CTptObj, CTptObj, CTptObj])));
  CTClearResults;
end;

function StringBuilder.AppendLine: CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('AppendLine', 0, [], [])));
  CTClearResults;
end;

function StringBuilder.AppendLine(
  const aValue: string): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('AppendLine', 1497808633, [aValue], [CTptStr])));
  CTClearResults;
end;

function StringBuilder.Clear: CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Clear', 0, [], [])));
  CTClearResults;
end;

constructor StringBuilder.Create;
begin
  CTCreateObject('System.Text.StringBuilder', 0, [], []);
end;

constructor StringBuilder.Create(
  const aCapacity: Integer);
begin
  CTCreateObject('System.Text.StringBuilder', -114835243, [aCapacity], [CTptInt]);
end;

constructor StringBuilder.Create(
  const aCapacity: Integer; 
  const aMaxCapacity: Integer);
begin
  CTCreateObject('System.Text.StringBuilder', -2140566382, [aCapacity, aMaxCapacity], [CTptInt, CTptInt]);
end;

constructor StringBuilder.Create(
  const aValue: string);
begin
  CTCreateObject('System.Text.StringBuilder', 1497808633, [aValue], [CTptStr]);
end;

constructor StringBuilder.Create(
  const aValue: string; 
  const aCapacity: Integer);
begin
  CTCreateObject('System.Text.StringBuilder', -1490639855, [aValue, aCapacity], [CTptStr, CTptInt]);
end;

constructor StringBuilder.Create(
  const aValue: string; 
  const aStartIndex: Integer; 
  const aLength: Integer; 
  const aCapacity: Integer);
begin
  CTCreateObject('System.Text.StringBuilder', -378371269, [aValue, aStartIndex, aLength, aCapacity], [CTptStr, CTptInt, CTptInt, CTptInt]);
end;

function StringBuilder.EnsureCapacity(
  const aCapacity: Integer): Integer;
begin
  Result := Integer(CTMethodCall('EnsureCapacity', -114835243, [aCapacity], [CTptInt]));
  CTClearResults;
end;

function StringBuilder.Equals(
  const aSb: CTmscorlib.StringBuilder): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 525596373, [aSb], [CTptObj]));
  CTClearResults;
end;

function StringBuilder.Equals(
  const aObj: TCTObject): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 1226748890, [aObj], [CTptObj]));
  CTClearResults;
end;

function StringBuilder.GetHashCode: Integer;
begin
  Result := Integer(CTMethodCall('GetHashCode', 0, [], []));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: Boolean): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', 30007945, [aIndex, 
aValue], [CTptInt, CTptBool])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: Byte): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', 340346433, [aIndex, 
aValue], [CTptInt, CTptByte])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: Cardinal): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', 799390831, [aIndex, 
aValue], [CTptInt, CTptUInt32])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: Char): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', -1918567005, [aIndex, 
aValue], [CTptInt, CTptChar])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: Double): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', -1528389784, [aIndex, 
FloatToStr(aValue)], [CTptInt, CTptDouble])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: Extended): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', 909781081, [aIndex, 
FloatToStr(aValue)], [CTptInt, CTptDecimal])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: Int64): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', 1348028468, [aIndex, 
aValue], [CTptInt, CTptInt64])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: Integer): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', -2140566382, [aIndex, 
aValue], [CTptInt, CTptInt])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: ShortInt): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', -1301465340, [aIndex, 
aValue], [CTptInt, CTptObj])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: Single): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', 333569796, [aIndex, 
FloatToStr(aValue)], [CTptInt, CTptSingle])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: SmallInt): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', 184901374, [aIndex, 
aValue], [CTptInt, CTptInt16])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: string): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', 1649133742, [aIndex, 
aValue], [CTptInt, CTptStr])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: string; 
  const aCount: Integer): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', 1826098750, [aIndex, 
aValue, 
aCount], [CTptInt, CTptStr, CTptInt])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: TCTObject): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', -745175143, [aIndex, 
aValue], [CTptInt, CTptObj])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: UInt64): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', 422212968, [aIndex, 
aValue], [CTptInt, CTptUInt64])));
  CTClearResults;
end;

function StringBuilder.Insert(
  const aIndex: Integer; 
  const aValue: Word): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Insert', -1568103003, [aIndex, 
aValue], [CTptInt, CTptUInt16])));
  CTClearResults;
end;

function StringBuilder.Remove(
  const aStartIndex: Integer; 
  const aLength: Integer): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Remove', -2140566382, [aStartIndex, 
aLength], [CTptInt, CTptInt])));
  CTClearResults;
end;

function StringBuilder.Replace(
  const aOldChar: Char; 
  const aNewChar: Char): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Replace', -212137981, [aOldChar, 
aNewChar], [CTptChar, CTptChar])));
  CTClearResults;
end;

function StringBuilder.Replace(
  const aOldChar: Char; 
  const aNewChar: Char; 
  const aStartIndex: Integer; 
  const aCount: Integer): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Replace', -1811461268, [aOldChar, 
aNewChar, 
aStartIndex, 
aCount], [CTptChar, CTptChar, CTptInt, CTptInt])));
  CTClearResults;
end;

function StringBuilder.Replace(
  const aOldValue: string; 
  const aNewValue: string): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Replace', -1220068890, [aOldValue, 
aNewValue], [CTptStr, CTptStr])));
  CTClearResults;
end;

function StringBuilder.Replace(
  const aOldValue: string; 
  const aNewValue: string; 
  const aStartIndex: Integer; 
  const aCount: Integer): CTmscorlib.StringBuilder;
begin
  Result := CTmscorlib.StringBuilder(CTFindRef(CTmscorlib.StringBuilder, CTMethodCall('Replace', -1272328555, [aOldValue, 
aNewValue, 
aStartIndex, 
aCount], [CTptStr, CTptStr, CTptInt, CTptInt])));
  CTClearResults;
end;

function StringBuilder.ToString: string;
begin
  Result := CTMethodCallStringResult('ToString', 0, [], []);
  CTClearResults;
end;

function StringBuilder.ToString(
  const aStartIndex: Integer; 
  const aLength: Integer): string;
begin
  Result := CTMethodCallStringResult('ToString', -2140566382, [aStartIndex, 
aLength], [CTptInt, CTptInt]);
  CTClearResults;
end;

{ System.DateTime }

class function DateTime.CTFullTypeName: string;
begin
  Result := 'System.DateTime'
end;


function DateTime.DateRead: TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTPropGet('Date'));
end;

function DateTime.DayRead: Integer;
begin
  Result := Integer(CTPropGet('Day'));
end;

function DateTime.DayOfWeekRead: Longword {Enum: 'System.DayOfWeek};
begin
  Result := Longword {Enum: 'System.DayOfWeek}(CTPropGet('DayOfWeek'));
end;

function DateTime.DayOfYearRead: Integer;
begin
  Result := Integer(CTPropGet('DayOfYear'));
end;

function DateTime.HourRead: Integer;
begin
  Result := Integer(CTPropGet('Hour'));
end;

function DateTime.KindRead: Longword {Enum: 'System.DateTimeKind};
begin
  Result := Longword {Enum: 'System.DateTimeKind}(CTPropGet('Kind'));
end;

function DateTime.MillisecondRead: Integer;
begin
  Result := Integer(CTPropGet('Millisecond'));
end;

function DateTime.MinuteRead: Integer;
begin
  Result := Integer(CTPropGet('Minute'));
end;

function DateTime.MonthRead: Integer;
begin
  Result := Integer(CTPropGet('Month'));
end;

class function DateTime.NowRead: TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticPropGet('Now'));
end;

function DateTime.SecondRead: Integer;
begin
  Result := Integer(CTPropGet('Second'));
end;

function DateTime.TicksRead: Int64;
begin
  Result := Int64(CTPropGet('Ticks'));
end;

function DateTime.TimeOfDayRead: TCTObject {ValueType: 'System.TimeSpan};
begin
  Result := TCTObject {ValueType: 'System.TimeSpan}(CTPropGet('TimeOfDay'));
end;

class function DateTime.TodayRead: TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticPropGet('Today'));
end;

class function DateTime.UtcNowRead: TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticPropGet('UtcNow'));
end;

function DateTime.YearRead: Integer;
begin
  Result := Integer(CTPropGet('Year'));
end;

class function DateTime.MaxValueRead: TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticFieldGet('MaxValue'));
end;

class procedure DateTime.MaxValueWrite(const aValue: TCTObject {ValueType: 'System.DateTime});
begin
  CTStaticFieldSet('MaxValue', [aValue], [CTptObj]);
end;

class function DateTime.MinValueRead: TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticFieldGet('MinValue'));
end;

class procedure DateTime.MinValueWrite(const aValue: TCTObject {ValueType: 'System.DateTime});
begin
  CTStaticFieldSet('MinValue', [aValue], [CTptObj]);
end;

function DateTime.Add(
  const aValue: TCTObject {ValueType: 'System.TimeSpan}): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('Add', 1601475490, [aValue], [CTptObj]));
  CTClearResults;
end;

function DateTime.AddDays(
  const aValue: Double): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('AddDays', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

function DateTime.AddHours(
  const aValue: Double): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('AddHours', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

function DateTime.AddMilliseconds(
  const aValue: Double): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('AddMilliseconds', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

function DateTime.AddMinutes(
  const aValue: Double): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('AddMinutes', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

function DateTime.AddMonths(
  const aMonths: Integer): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('AddMonths', -114835243, [aMonths], [CTptInt]));
  CTClearResults;
end;

function DateTime.AddSeconds(
  const aValue: Double): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('AddSeconds', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

function DateTime.AddTicks(
  const aValue: Int64): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('AddTicks', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

function DateTime.AddYears(
  const aValue: Integer): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('AddYears', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function DateTime.Compare(
  const aT1: TCTObject {ValueType: 'System.DateTime}; 
  const aT2: TCTObject {ValueType: 'System.DateTime}): Integer;
begin
  Result := Integer(CTStaticMethodCall('Compare', -489409217, [aT1, 
aT2], [CTptObj, CTptObj]));
  CTClearResults;
end;

function DateTime.CompareTo(
  const aValue: TCTObject): Integer;
begin
  Result := Integer(CTMethodCall('CompareTo', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

function DateTime.CompareTo2(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Integer;
begin
  Result := Integer(CTMethodCall('CompareTo', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

constructor DateTime.Create(
  const aTicks: Int64);
begin
  CTCreateObject('System.DateTime', 1459142863, [aTicks], [CTptInt64]);
end;

constructor DateTime.Create(
  const aTicks: Int64; 
  const aKind: Longword {Enum: 'System.DateTimeKind});
begin
  CTCreateObject('System.DateTime', 1699869473, [aTicks, aKind], [CTptInt64, CTptInt]);
end;

constructor DateTime.Create(
  const aYear: Integer; 
  const aMonth: Integer; 
  const aDay: Integer);
begin
  CTCreateObject('System.DateTime', -1865022468, [aYear, aMonth, aDay], [CTptInt, CTptInt, CTptInt]);
end;

constructor DateTime.Create(
  const aYear: Integer; 
  const aMonth: Integer; 
  const aDay: Integer; 
  const aHour: Integer; 
  const aMinute: Integer; 
  const aSecond: Integer);
begin
  CTCreateObject('System.DateTime', -556112644, [aYear, aMonth, aDay, aHour, aMinute, aSecond], [CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt]);
end;

constructor DateTime.Create(
  const aYear: Integer; 
  const aMonth: Integer; 
  const aDay: Integer; 
  const aHour: Integer; 
  const aMinute: Integer; 
  const aSecond: Integer; 
  const aMillisecond: Integer);
begin
  CTCreateObject('System.DateTime', 47875033, [aYear, aMonth, aDay, aHour, aMinute, aSecond, aMillisecond], [CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt]);
end;

constructor DateTime.Create(
  const aYear: Integer; 
  const aMonth: Integer; 
  const aDay: Integer; 
  const aHour: Integer; 
  const aMinute: Integer; 
  const aSecond: Integer; 
  const aMillisecond: Integer; 
  const aKind: Longword {Enum: 'System.DateTimeKind});
begin
  CTCreateObject('System.DateTime', -123886506, [aYear, aMonth, aDay, aHour, aMinute, aSecond, aMillisecond, aKind], [CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt]);
end;

constructor DateTime.Create(
  const aYear: Integer; 
  const aMonth: Integer; 
  const aDay: Integer; 
  const aHour: Integer; 
  const aMinute: Integer; 
  const aSecond: Integer; 
  const aMillisecond: Integer; 
  const aCalendar: TCTObject {Class: System.Globalization.Calendar});
begin
  CTCreateObject('System.DateTime', 608447831, [aYear, aMonth, aDay, aHour, aMinute, aSecond, aMillisecond, aCalendar], [CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptObj]);
end;

constructor DateTime.Create(
  const aYear: Integer; 
  const aMonth: Integer; 
  const aDay: Integer; 
  const aHour: Integer; 
  const aMinute: Integer; 
  const aSecond: Integer; 
  const aMillisecond: Integer; 
  const aCalendar: TCTObject {Class: System.Globalization.Calendar}; 
  const aKind: Longword {Enum: 'System.DateTimeKind});
begin
  CTCreateObject('System.DateTime', 1154396741, [aYear, aMonth, aDay, aHour, aMinute, aSecond, aMillisecond, aCalendar, aKind], [CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptObj, CTptInt]);
end;

constructor DateTime.Create(
  const aYear: Integer; 
  const aMonth: Integer; 
  const aDay: Integer; 
  const aHour: Integer; 
  const aMinute: Integer; 
  const aSecond: Integer; 
  const aKind: Longword {Enum: 'System.DateTimeKind});
begin
  CTCreateObject('System.DateTime', 716359877, [aYear, aMonth, aDay, aHour, aMinute, aSecond, aKind], [CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt]);
end;

constructor DateTime.Create(
  const aYear: Integer; 
  const aMonth: Integer; 
  const aDay: Integer; 
  const aHour: Integer; 
  const aMinute: Integer; 
  const aSecond: Integer; 
  const aCalendar: TCTObject {Class: System.Globalization.Calendar});
begin
  CTCreateObject('System.DateTime', 1955627731, [aYear, aMonth, aDay, aHour, aMinute, aSecond, aCalendar], [CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptInt, CTptObj]);
end;

constructor DateTime.Create(
  const aYear: Integer; 
  const aMonth: Integer; 
  const aDay: Integer; 
  const aCalendar: TCTObject {Class: System.Globalization.Calendar});
begin
  CTCreateObject('System.DateTime', 1114715391, [aYear, aMonth, aDay, aCalendar], [CTptInt, CTptInt, CTptInt, CTptObj]);
end;

class function DateTime.DaysInMonth(
  const aYear: Integer; 
  const aMonth: Integer): Integer;
begin
  Result := Integer(CTStaticMethodCall('DaysInMonth', -2140566382, [aYear, 
aMonth], [CTptInt, CTptInt]));
  CTClearResults;
end;

function DateTime.Equals(
  const aValue: TCTObject): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

function DateTime.Equals2(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function DateTime.Equals(
  const aT1: TCTObject {ValueType: 'System.DateTime}; 
  const aT2: TCTObject {ValueType: 'System.DateTime}): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('Equals', -489409217, [aT1, 
aT2], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function DateTime.FromBinary(
  const aDateData: Int64): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('FromBinary', 1459142863, [aDateData], [CTptInt64]));
  CTClearResults;
end;

class function DateTime.FromFileTime(
  const aFileTime: Int64): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('FromFileTime', 1459142863, [aFileTime], [CTptInt64]));
  CTClearResults;
end;

class function DateTime.FromFileTimeUtc(
  const aFileTime: Int64): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('FromFileTimeUtc', 1459142863, [aFileTime], [CTptInt64]));
  CTClearResults;
end;

class function DateTime.FromOADate(
  const aD: Double): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('FromOADate', 1374542863, [FloatToStr(aD)], [CTptDouble]));
  CTClearResults;
end;

function DateTime.GetHashCode: Integer;
begin
  Result := Integer(CTMethodCall('GetHashCode', 0, [], []));
  CTClearResults;
end;

function DateTime.GetTypeCode: Longword {Enum: 'System.TypeCode};
begin
  Result := Longword {Enum: 'System.TypeCode}(CTMethodCall('GetTypeCode', 0, [], []));
  CTClearResults;
end;

function DateTime.IsDaylightSavingTime: Boolean;
begin
  Result := Boolean(CTMethodCall('IsDaylightSavingTime', 0, [], []));
  CTClearResults;
end;

class function DateTime.IsLeapYear(
  const aYear: Integer): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('IsLeapYear', -114835243, [aYear], [CTptInt]));
  CTClearResults;
end;

class function DateTime.Parse(
  const a0: string): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('Parse', 1497808633, [a0], [CTptStr]));
  CTClearResults;
end;

class function DateTime.Parse(
  const a0: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('Parse', 1182891347, [a0, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function DateTime.Parse(
  const a0: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}; 
  const aStyles: Longword {Enum: 'System.Globalization.DateTimeStyles}): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('Parse', 999402677, [a0, 
aProvider, 
aStyles], [CTptStr, CTptObj, CTptInt]));
  CTClearResults;
end;

class function DateTime.ParseExact(
  const a0: string; 
  const aFormat: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ParseExact', -579496889, [a0, 
aFormat, 
aProvider], [CTptStr, CTptStr, CTptObj]));
  CTClearResults;
end;

class function DateTime.ParseExact(
  const a0: string; 
  const aFormat: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}; 
  const aStyle: Longword {Enum: 'System.Globalization.DateTimeStyles}): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ParseExact', -427445698, [a0, 
aFormat, 
aProvider, 
aStyle], [CTptStr, CTptStr, CTptObj, CTptInt]));
  CTClearResults;
end;

class function DateTime.SpecifyKind(
  const aValue: TCTObject {ValueType: 'System.DateTime}; 
  const aKind: Longword {Enum: 'System.DateTimeKind}): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('SpecifyKind', 1013041071, [aValue, 
aKind], [CTptObj, CTptInt]));
  CTClearResults;
end;

function DateTime.Subtract(
  const aValue: TCTObject {ValueType: 'System.DateTime}): TCTObject {ValueType: 'System.TimeSpan};
begin
  Result := TCTObject {ValueType: 'System.TimeSpan}(CTMethodCall('Subtract', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

function DateTime.Subtract2(
  const aValue: TCTObject {ValueType: 'System.TimeSpan}): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('Subtract', 1601475490, [aValue], [CTptObj]));
  CTClearResults;
end;

function DateTime.ToBinary: Int64;
begin
  Result := Int64(CTMethodCall('ToBinary', 0, [], []));
  CTClearResults;
end;

function DateTime.ToFileTime: Int64;
begin
  Result := Int64(CTMethodCall('ToFileTime', 0, [], []));
  CTClearResults;
end;

function DateTime.ToFileTimeUtc: Int64;
begin
  Result := Int64(CTMethodCall('ToFileTimeUtc', 0, [], []));
  CTClearResults;
end;

function DateTime.ToLocalTime: TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('ToLocalTime', 0, [], []));
  CTClearResults;
end;

function DateTime.ToLongDateString: string;
begin
  Result := CTMethodCallStringResult('ToLongDateString', 0, [], []);
  CTClearResults;
end;

function DateTime.ToLongTimeString: string;
begin
  Result := CTMethodCallStringResult('ToLongTimeString', 0, [], []);
  CTClearResults;
end;

function DateTime.ToOADate: Double;
begin
  Result := StrToFloat(CTMethodCallStringResult('ToOADate', 0, [], []));
  CTClearResults;
end;

function DateTime.ToShortDateString: string;
begin
  Result := CTMethodCallStringResult('ToShortDateString', 0, [], []);
  CTClearResults;
end;

function DateTime.ToShortTimeString: string;
begin
  Result := CTMethodCallStringResult('ToShortTimeString', 0, [], []);
  CTClearResults;
end;

function DateTime.ToString: string;
begin
  Result := CTMethodCallStringResult('ToString', 0, [], []);
  CTClearResults;
end;

function DateTime.ToString(
  const aFormat: string): string;
begin
  Result := CTMethodCallStringResult('ToString', 1497808633, [aFormat], [CTptStr]);
  CTClearResults;
end;

function DateTime.ToString(
  const aFormat: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTMethodCallStringResult('ToString', 1182891347, [aFormat, 
aProvider], [CTptStr, CTptObj]);
  CTClearResults;
end;

function DateTime.ToString(
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTMethodCallStringResult('ToString', 133743994, [aProvider], [CTptObj]);
  CTClearResults;
end;

function DateTime.ToUniversalTime: TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTMethodCall('ToUniversalTime', 0, [], []));
  CTClearResults;
end;

end.
