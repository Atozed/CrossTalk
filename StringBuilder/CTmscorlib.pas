unit CTmscorlib;

interface

uses
  CTClient, CTObject, Windows;

type
  ByteArray = class;
  StringBuilder = class;
  DateTime = class;
  PasswordDeriveBytes = class;
  Encoding = class;
  MemoryStream = class;
  CryptoStream = class;
  Rijndael = class;
  Convert = class;
  CryptoStreamMode = class;

  Calendar = class(TCTObject);
  CspParameters = class(TCTObject);
  DecoderFallback = class(TCTObject);
  EncoderFallback = class(TCTObject);
  Decoder = class(TCTObject);
  Encoder = class(TCTObject);
  Stream = class(TCTObject);
  Task = class(TCTObject);

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

  PasswordDeriveBytes = class(TCTObject)
  private
    function HashNameRead: string;
    procedure HashNameWrite(
      const aValue: string);
    function IterationCountRead: Integer;
    procedure IterationCountWrite(
      const aValue: Integer);
    function SaltRead: ByteArray;
    procedure SaltWrite(
      const aValue: ByteArray);
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const aPassword: ByteArray; 
      const aSalt: ByteArray); reintroduce; overload;
    constructor Create(
      const aPassword: ByteArray; 
      const aSalt: ByteArray; 
      const aHashName: string; 
      const aIterations: Integer); reintroduce; overload;
    constructor Create(
      const aPassword: ByteArray; 
      const aSalt: ByteArray; 
      const aHashName: string; 
      const aIterations: Integer; 
      const aCspParams: TCTObject {Class: System.Security.Cryptography.CspParameters}); reintroduce; overload;
    constructor Create(
      const aPassword: ByteArray; 
      const aSalt: ByteArray; 
      const aCspParams: TCTObject {Class: System.Security.Cryptography.CspParameters}); reintroduce; overload;
    constructor Create(
      const aStrPassword: string; 
      const aRgbSalt: ByteArray); reintroduce; overload;
    constructor Create(
      const aStrPassword: string; 
      const aRgbSalt: ByteArray; 
      const aStrHashName: string; 
      const aIterations: Integer); reintroduce; overload;
    constructor Create(
      const aStrPassword: string; 
      const aRgbSalt: ByteArray; 
      const aStrHashName: string; 
      const aIterations: Integer; 
      const aCspParams: TCTObject {Class: System.Security.Cryptography.CspParameters}); reintroduce; overload;
    constructor Create(
      const aStrPassword: string; 
      const aRgbSalt: ByteArray; 
      const aCspParams: TCTObject {Class: System.Security.Cryptography.CspParameters}); reintroduce; overload;
    function CryptDeriveKey(
      const aAlgname: string; 
      const aAlghashname: string; 
      const aKeySize: Integer; 
      const aRgbIV: ByteArray): ByteArray; overload;
    procedure Dispose; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetBytes(
      const aCb: Integer): ByteArray; overload;
    function GetHashCode: Integer; reintroduce; overload;
    //GetType:Type2
    procedure Reset; overload;
    function ToString: string; reintroduce; overload;

    property HashName: string read HashNameRead write HashNameWrite;
    property IterationCount: Integer read IterationCountRead write IterationCountWrite;
    property Salt: ByteArray read SaltRead write SaltWrite;
  end;

  Encoding = class(TCTObject)
  private
    class function ASCIIRead: CTmscorlib.Encoding; static;
    class function BigEndianUnicodeRead: CTmscorlib.Encoding; static;
    function BodyNameRead: string;
    function CodePageRead: Integer;
    function DecoderFallbackRead: TCTObject {Class: System.Text.DecoderFallback};
    procedure DecoderFallbackWrite(
      const aValue: TCTObject {Class: System.Text.DecoderFallback});
    class function DefaultRead: CTmscorlib.Encoding; static;
    function EncoderFallbackRead: TCTObject {Class: System.Text.EncoderFallback};
    procedure EncoderFallbackWrite(
      const aValue: TCTObject {Class: System.Text.EncoderFallback});
    function EncodingNameRead: string;
    function HeaderNameRead: string;
    function IsBrowserDisplayRead: Boolean;
    function IsBrowserSaveRead: Boolean;
    function IsMailNewsDisplayRead: Boolean;
    function IsMailNewsSaveRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSingleByteRead: Boolean;
    class function UnicodeRead: CTmscorlib.Encoding; static;
    class function UTF32Read: CTmscorlib.Encoding; static;
    class function UTF7Read: CTmscorlib.Encoding; static;
    class function UTF8Read: CTmscorlib.Encoding; static;
    function WebNameRead: string;
    function WindowsCodePageRead: Integer;
  protected
    class function CTFullTypeName: string; override;
  public
    function Clone: TCTObject; overload;
    class function Convert(
      const aSrcEncoding: CTmscorlib.Encoding; 
      const aDstEncoding: CTmscorlib.Encoding; 
      const aBytes: ByteArray): ByteArray; overload;
    class function Convert(
      const aSrcEncoding: CTmscorlib.Encoding; 
      const aDstEncoding: CTmscorlib.Encoding; 
      const aBytes: ByteArray; 
      const aIndex: Integer; 
      const aCount: Integer): ByteArray; overload;
    function Equals(
      const aValue: TCTObject): Boolean; reintroduce; overload;
    //GetByteCount:Integer:CharArray
    //GetByteCount:Integer:CharArray:Integer:Integer
    function GetByteCount(
      const a0: string): Integer; overload;
    //GetByteCount:Integer:TCTObject:Integer
    //GetBytes:ByteArray:CharArray
    //GetBytes:ByteArray:CharArray:Integer:Integer
    function GetBytes(
      const a0: string): ByteArray; overload;
    //GetBytes:Integer:CharArray:Integer:Integer:ByteArray:Integer
    function GetBytes(
      const a0: string; 
      const aCharIndex: Integer; 
      const aCharCount: Integer; 
      const aBytes: ByteArray; 
      const aByteIndex: Integer): Integer; overload;
    //GetBytes:Integer:TCTObject:Integer:TCTObject:Integer
    function GetCharCount(
      const aBytes: ByteArray): Integer; overload;
    function GetCharCount(
      const aBytes: ByteArray; 
      const aIndex: Integer; 
      const aCount: Integer): Integer; overload;
    //GetCharCount:Integer:TCTObject:Integer
    //GetChars:CharArray:ByteArray
    //GetChars:CharArray:ByteArray:Integer:Integer
    //GetChars:Integer:ByteArray:Integer:Integer:CharArray:Integer
    //GetChars:Integer:TCTObject:Integer:TCTObject:Integer
    function GetDecoder: TCTObject {Class: System.Text.Decoder}; overload;
    function GetEncoder: TCTObject {Class: System.Text.Encoder}; overload;
    class function GetEncoding(
      const aCodepage: Integer): CTmscorlib.Encoding; overload;
    class function GetEncoding(
      const aCodepage: Integer; 
      const aEncoderFallback: TCTObject {Class: System.Text.EncoderFallback}; 
      const aDecoderFallback: TCTObject {Class: System.Text.DecoderFallback}): CTmscorlib.Encoding; overload;
    class function GetEncoding(
      const aName: string): CTmscorlib.Encoding; overload;
    class function GetEncoding(
      const aName: string; 
      const aEncoderFallback: TCTObject {Class: System.Text.EncoderFallback}; 
      const aDecoderFallback: TCTObject {Class: System.Text.DecoderFallback}): CTmscorlib.Encoding; overload;
    //GetEncodings:EncodingInfoArray
    function GetHashCode: Integer; reintroduce; overload;
    function GetMaxByteCount(
      const aCharCount: Integer): Integer; overload;
    function GetMaxCharCount(
      const aByteCount: Integer): Integer; overload;
    function GetPreamble: ByteArray; overload;
    function GetString(
      const aBytes: ByteArray): string; overload;
    function GetString(
      const aBytes: ByteArray; 
      const aIndex: Integer; 
      const aCount: Integer): string; overload;
    //GetType:Type2
    function IsAlwaysNormalized: Boolean; overload;
    function IsAlwaysNormalized(
      const aForm: Longword {Enum: 'System.Text.NormalizationForm}): Boolean; overload;
    function ToString: string; reintroduce; overload;

    class property ASCII: CTmscorlib.Encoding read ASCIIRead;
    class property BigEndianUnicode: CTmscorlib.Encoding read BigEndianUnicodeRead;
    property BodyName: string read BodyNameRead;
    property CodePage: Integer read CodePageRead;
    property DecoderFallback: TCTObject {Class: System.Text.DecoderFallback} read DecoderFallbackRead write DecoderFallbackWrite;
    class property Default: CTmscorlib.Encoding read DefaultRead;
    property EncoderFallback: TCTObject {Class: System.Text.EncoderFallback} read EncoderFallbackRead write EncoderFallbackWrite;
    property EncodingName: string read EncodingNameRead;
    property HeaderName: string read HeaderNameRead;
    property IsBrowserDisplay: Boolean read IsBrowserDisplayRead;
    property IsBrowserSave: Boolean read IsBrowserSaveRead;
    property IsMailNewsDisplay: Boolean read IsMailNewsDisplayRead;
    property IsMailNewsSave: Boolean read IsMailNewsSaveRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSingleByte: Boolean read IsSingleByteRead;
    class property Unicode: CTmscorlib.Encoding read UnicodeRead;
    class property UTF32: CTmscorlib.Encoding read UTF32Read;
    class property UTF7: CTmscorlib.Encoding read UTF7Read;
    class property UTF8: CTmscorlib.Encoding read UTF8Read;
    property WebName: string read WebNameRead;
    property WindowsCodePage: Integer read WindowsCodePageRead;
  end;

  MemoryStream = class(TCTObject)
  private
    function CanReadRead: Boolean;
    function CanSeekRead: Boolean;
    function CanTimeoutRead: Boolean;
    function CanWriteRead: Boolean;
    function CapacityRead: Integer;
    procedure CapacityWrite(
      const aValue: Integer);
    function LengthRead: Int64;
    function PositionRead: Int64;
    procedure PositionWrite(
      const aValue: Int64);
    function ReadTimeoutRead: Integer;
    procedure ReadTimeoutWrite(
      const aValue: Integer);
    function WriteTimeoutRead: Integer;
    procedure WriteTimeoutWrite(
      const aValue: Integer);
  protected
    class function CTFullTypeName: string; override;
  public
    //BeginRead:TCTObject:ByteArray:Integer:Integer:TCTObject:TCTObject
    //BeginWrite:TCTObject:ByteArray:Integer:Integer:TCTObject:TCTObject
    procedure Close; overload;
    procedure CopyTo(
      const aDestination: TCTObject {Class: System.IO.Stream}); overload;
    procedure CopyTo(
      const aDestination: TCTObject {Class: System.IO.Stream}; 
      const aBufferSize: Integer); overload;
    function CopyToAsync(
      const aDestination: TCTObject {Class: System.IO.Stream}): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    function CopyToAsync(
      const aDestination: TCTObject {Class: System.IO.Stream}; 
      const aBufferSize: Integer): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    function CopyToAsync(
      const aDestination: TCTObject {Class: System.IO.Stream}; 
      const aBufferSize: Integer; 
      const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    constructor Create; overload; override;
    constructor Create(
      const aBuffer: ByteArray); reintroduce; overload;
    constructor Create(
      const aBuffer: ByteArray; 
      const aWritable: Boolean); reintroduce; overload;
    constructor Create(
      const aBuffer: ByteArray; 
      const aIndex: Integer; 
      const aCount: Integer); reintroduce; overload;
    constructor Create(
      const aBuffer: ByteArray; 
      const aIndex: Integer; 
      const aCount: Integer; 
      const aWritable: Boolean); reintroduce; overload;
    constructor Create(
      const aBuffer: ByteArray; 
      const aIndex: Integer; 
      const aCount: Integer; 
      const aWritable: Boolean; 
      const aPubliclyVisible: Boolean); reintroduce; overload;
    constructor Create(
      const aCapacity: Integer); reintroduce; overload;
    //CreateObjRef:TCTObject:Type2
    procedure Dispose; overload;
    function EndRead(
      const aAsyncResult: TCTObject {Interface: System.IAsyncResult}): Integer; overload;
    procedure EndWrite(
      const aAsyncResult: TCTObject {Interface: System.IAsyncResult}); overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    procedure Flush; overload;
    function FlushAsync: TCTObject {Class: System.Threading.Tasks.Task}; overload;
    function FlushAsync(
      const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    function GetBuffer: ByteArray; overload;
    function GetHashCode: Integer; reintroduce; overload;
    function GetLifetimeService: TCTObject; overload;
    //GetType:Type2
    function InitializeLifetimeService: TCTObject; overload;
    function Read(
      aBuffer: ByteArray; 
      const aOffset: Integer; 
      const aCount: Integer): Integer; overload;
    //ReadAsync:TCTObject:ByteArray:Integer:Integer
    //ReadAsync:TCTObject:ByteArray:Integer:Integer:TCTObject
    function ReadByte: Integer; overload;
    function Seek(
      const aOffset: Int64; 
      const aLoc: Longword {Enum: 'System.IO.SeekOrigin}): Int64; overload;
    procedure SetLength(
      const aValue: Int64); overload;
    function ToArray: ByteArray; overload;
    function ToString: string; reintroduce; overload;
    procedure Write(
      const aBuffer: ByteArray; 
      const aOffset: Integer; 
      const aCount: Integer); overload;
    function WriteAsync(
      const aBuffer: ByteArray; 
      const aOffset: Integer; 
      const aCount: Integer): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    function WriteAsync(
      const aBuffer: ByteArray; 
      const aOffset: Integer; 
      const aCount: Integer; 
      const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    procedure WriteByte(
      const aValue: Byte); overload;
    procedure WriteTo(
      const aStream: TCTObject {Class: System.IO.Stream}); overload;

    property CanRead: Boolean read CanReadRead;
    property CanSeek: Boolean read CanSeekRead;
    property CanTimeout: Boolean read CanTimeoutRead;
    property CanWrite: Boolean read CanWriteRead;
    property Capacity: Integer read CapacityRead write CapacityWrite;
    property Length: Int64 read LengthRead;
    property Position: Int64 read PositionRead write PositionWrite;
    property ReadTimeout: Integer read ReadTimeoutRead write ReadTimeoutWrite;
    property WriteTimeout: Integer read WriteTimeoutRead write WriteTimeoutWrite;
  end;

  CryptoStream = class(TCTObject)
  private
    function CanReadRead: Boolean;
    function CanSeekRead: Boolean;
    function CanTimeoutRead: Boolean;
    function CanWriteRead: Boolean;
    function HasFlushedFinalBlockRead: Boolean;
    function LengthRead: Int64;
    function PositionRead: Int64;
    procedure PositionWrite(
      const aValue: Int64);
    function ReadTimeoutRead: Integer;
    procedure ReadTimeoutWrite(
      const aValue: Integer);
    function WriteTimeoutRead: Integer;
    procedure WriteTimeoutWrite(
      const aValue: Integer);
  protected
    class function CTFullTypeName: string; override;
  public
    //BeginRead:TCTObject:ByteArray:Integer:Integer:TCTObject:TCTObject
    //BeginWrite:TCTObject:ByteArray:Integer:Integer:TCTObject:TCTObject
    procedure Clear; overload;
    procedure Close; overload;
    procedure CopyTo(
      const aDestination: TCTObject {Class: System.IO.Stream}); overload;
    procedure CopyTo(
      const aDestination: TCTObject {Class: System.IO.Stream}; 
      const aBufferSize: Integer); overload;
    function CopyToAsync(
      const aDestination: TCTObject {Class: System.IO.Stream}): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    function CopyToAsync(
      const aDestination: TCTObject {Class: System.IO.Stream}; 
      const aBufferSize: Integer): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    function CopyToAsync(
      const aDestination: TCTObject {Class: System.IO.Stream}; 
      const aBufferSize: Integer; 
      const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    constructor Create(
      const aStream: TCTObject {Class: System.IO.Stream}; 
      const aTransform: TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}; 
      const aMode: Longword {Enum: 'System.Security.Cryptography.CryptoStreamMode}); reintroduce; overload;
    //CreateObjRef:TCTObject:Type2
    procedure Dispose; overload;
    function EndRead(
      const aAsyncResult: TCTObject {Interface: System.IAsyncResult}): Integer; overload;
    procedure EndWrite(
      const aAsyncResult: TCTObject {Interface: System.IAsyncResult}); overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    procedure Flush; overload;
    function FlushAsync: TCTObject {Class: System.Threading.Tasks.Task}; overload;
    function FlushAsync(
      const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    procedure FlushFinalBlock; overload;
    function GetHashCode: Integer; reintroduce; overload;
    function GetLifetimeService: TCTObject; overload;
    //GetType:Type2
    function InitializeLifetimeService: TCTObject; overload;
    function Read(
      aBuffer: ByteArray; 
      const aOffset: Integer; 
      const aCount: Integer): Integer; overload;
    //ReadAsync:TCTObject:ByteArray:Integer:Integer
    //ReadAsync:TCTObject:ByteArray:Integer:Integer:TCTObject
    function ReadByte: Integer; overload;
    function Seek(
      const aOffset: Int64; 
      const aOrigin: Longword {Enum: 'System.IO.SeekOrigin}): Int64; overload;
    procedure SetLength(
      const aValue: Int64); overload;
    function ToString: string; reintroduce; overload;
    procedure Write(
      const aBuffer: ByteArray; 
      const aOffset: Integer; 
      const aCount: Integer); overload;
    function WriteAsync(
      const aBuffer: ByteArray; 
      const aOffset: Integer; 
      const aCount: Integer): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    function WriteAsync(
      const aBuffer: ByteArray; 
      const aOffset: Integer; 
      const aCount: Integer; 
      const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task}; overload;
    procedure WriteByte(
      const aValue: Byte); overload;

    property CanRead: Boolean read CanReadRead;
    property CanSeek: Boolean read CanSeekRead;
    property CanTimeout: Boolean read CanTimeoutRead;
    property CanWrite: Boolean read CanWriteRead;
    property HasFlushedFinalBlock: Boolean read HasFlushedFinalBlockRead;
    property Length: Int64 read LengthRead;
    property Position: Int64 read PositionRead write PositionWrite;
    property ReadTimeout: Integer read ReadTimeoutRead write ReadTimeoutWrite;
    property WriteTimeout: Integer read WriteTimeoutRead write WriteTimeoutWrite;
  end;

  Rijndael = class(TCTObject)
  private
    function BlockSizeRead: Integer;
    procedure BlockSizeWrite(
      const aValue: Integer);
    function FeedbackSizeRead: Integer;
    procedure FeedbackSizeWrite(
      const aValue: Integer);
    function IVRead: ByteArray;
    procedure IVWrite(
      const aValue: ByteArray);
    function KeyRead: ByteArray;
    procedure KeyWrite(
      const aValue: ByteArray);
    function KeySizeRead: Integer;
    procedure KeySizeWrite(
      const aValue: Integer);
    function ModeRead: Longword {Enum: 'System.Security.Cryptography.CipherMode};
    procedure ModeWrite(
      const aValue: Longword {Enum: 'System.Security.Cryptography.CipherMode});
    function PaddingRead: Longword {Enum: 'System.Security.Cryptography.PaddingMode};
    procedure PaddingWrite(
      const aValue: Longword {Enum: 'System.Security.Cryptography.PaddingMode});
  protected
    class function CTFullTypeName: string; override;
  public
    procedure Clear; overload;
    class function Create1: CTmscorlib.Rijndael; overload;
    class function Create1(
      const aAlgName: string): CTmscorlib.Rijndael; overload;
    function CreateDecryptor: TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}; overload;
    function CreateDecryptor(
      const aRgbKey: ByteArray; 
      const aRgbIV: ByteArray): TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}; overload;
    function CreateEncryptor: TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}; overload;
    function CreateEncryptor(
      const aRgbKey: ByteArray; 
      const aRgbIV: ByteArray): TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}; overload;
    procedure Dispose; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    procedure GenerateIV; overload;
    procedure GenerateKey; overload;
    function GetHashCode: Integer; reintroduce; overload;
    //GetType:Type2
    function ToString: string; reintroduce; overload;
    function ValidKeySize(
      const aBitLength: Integer): Boolean; overload;

    property BlockSize: Integer read BlockSizeRead write BlockSizeWrite;
    property FeedbackSize: Integer read FeedbackSizeRead write FeedbackSizeWrite;
    property IV: ByteArray read IVRead write IVWrite;
    property Key: ByteArray read KeyRead write KeyWrite;
    property KeySize: Integer read KeySizeRead write KeySizeWrite;
    property Mode: Longword {Enum: 'System.Security.Cryptography.CipherMode} read ModeRead write ModeWrite;
    property Padding: Longword {Enum: 'System.Security.Cryptography.PaddingMode} read PaddingRead write PaddingWrite;
  end;

  Convert = class(TCTObject)
  private
    class function DBNullRead: TCTObject; static;
    class procedure DBNullWrite(const aValue: TCTObject); static;
  protected
    class function CTFullTypeName: string; override;
  public
    class function ChangeType(
      const aValue: TCTObject; 
      const aTypeCode: Longword {Enum: 'System.TypeCode}): TCTObject; overload;
    class function ChangeType(
      const aValue: TCTObject; 
      const aTypeCode: Longword {Enum: 'System.TypeCode}; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): TCTObject; overload;
    //ChangeType:TCTObject:TCTObject:Type2
    //ChangeType:TCTObject:TCTObject:Type2:TCTObject
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    //FromBase64CharArray:ByteArray:CharArray:Integer:Integer
    class function FromBase64String(
      const a0: string): ByteArray; overload;
    function GetHashCode: Integer; reintroduce; overload;
    //GetType:Type2
    class function GetTypeCode(
      const aValue: TCTObject): Longword {Enum: 'System.TypeCode}; overload;
    class function IsDBNull(
      const aValue: TCTObject): Boolean; overload;
    //ToBase64CharArray:Integer:ByteArray:Integer:Integer:CharArray:Integer
    //ToBase64CharArray:Integer:ByteArray:Integer:Integer:CharArray:Integer:Longword
    class function ToBase64String(
      const aInArray: ByteArray): string; overload;
    class function ToBase64String(
      const aInArray: ByteArray; 
      const aOffset: Integer; 
      const aLength: Integer): string; overload;
    class function ToBase64String(
      const aInArray: ByteArray; 
      const aOffset: Integer; 
      const aLength: Integer; 
      const aOptions: Longword {Enum: 'System.Base64FormattingOptions}): string; overload;
    class function ToBase64String(
      const aInArray: ByteArray; 
      const aOptions: Longword {Enum: 'System.Base64FormattingOptions}): string; overload;
    class function ToBoolean(
      const aValue: Boolean): Boolean; overload;
    class function ToBoolean(
      const aValue: Byte): Boolean; overload;
    class function ToBoolean(
      const aValue: Cardinal): Boolean; overload;
    class function ToBoolean(
      const aValue: Char): Boolean; overload;
    class function ToBoolean(
      const aValue: Double): Boolean; overload;
    class function ToBoolean(
      const aValue: Extended): Boolean; overload;
    class function ToBoolean(
      const aValue: Int64): Boolean; overload;
    class function ToBoolean(
      const aValue: Integer): Boolean; overload;
    class function ToBoolean(
      const aValue: ShortInt): Boolean; overload;
    class function ToBoolean(
      const aValue: Single): Boolean; overload;
    class function ToBoolean(
      const aValue: SmallInt): Boolean; overload;
    class function ToBoolean(
      const aValue: string): Boolean; overload;
    class function ToBoolean(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Boolean; overload;
    class function ToBoolean(
      const aValue: TCTObject): Boolean; overload;
    class function ToBoolean2(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Boolean; overload;
    class function ToBoolean(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Boolean; overload;
    class function ToBoolean(
      const aValue: UInt64): Boolean; overload;
    class function ToBoolean(
      const aValue: Word): Boolean; overload;
    class function ToByte(
      const aValue: Boolean): Byte; overload;
    class function ToByte(
      const aValue: Byte): Byte; overload;
    class function ToByte(
      const aValue: Cardinal): Byte; overload;
    class function ToByte(
      const aValue: Char): Byte; overload;
    class function ToByte(
      const aValue: Double): Byte; overload;
    class function ToByte(
      const aValue: Extended): Byte; overload;
    class function ToByte(
      const aValue: Int64): Byte; overload;
    class function ToByte(
      const aValue: Integer): Byte; overload;
    class function ToByte(
      const aValue: ShortInt): Byte; overload;
    class function ToByte(
      const aValue: Single): Byte; overload;
    class function ToByte(
      const aValue: SmallInt): Byte; overload;
    class function ToByte(
      const aValue: string): Byte; overload;
    class function ToByte(
      const aValue: string; 
      const aFromBase: Integer): Byte; overload;
    class function ToByte(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Byte; overload;
    class function ToByte(
      const aValue: TCTObject): Byte; overload;
    class function ToByte2(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Byte; overload;
    class function ToByte(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Byte; overload;
    class function ToByte(
      const aValue: UInt64): Byte; overload;
    class function ToByte(
      const aValue: Word): Byte; overload;
    class function ToChar(
      const aValue: Boolean): Char; overload;
    class function ToChar(
      const aValue: Byte): Char; overload;
    class function ToChar(
      const aValue: Cardinal): Char; overload;
    class function ToChar(
      const aValue: Char): Char; overload;
    class function ToChar(
      const aValue: Double): Char; overload;
    class function ToChar(
      const aValue: Extended): Char; overload;
    class function ToChar(
      const aValue: Int64): Char; overload;
    class function ToChar(
      const aValue: Integer): Char; overload;
    class function ToChar(
      const aValue: ShortInt): Char; overload;
    class function ToChar(
      const aValue: Single): Char; overload;
    class function ToChar(
      const aValue: SmallInt): Char; overload;
    class function ToChar(
      const aValue: string): Char; overload;
    class function ToChar(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Char; overload;
    class function ToChar(
      const aValue: TCTObject): Char; overload;
    class function ToChar2(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Char; overload;
    class function ToChar(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Char; overload;
    class function ToChar(
      const aValue: UInt64): Char; overload;
    class function ToChar(
      const aValue: Word): Char; overload;
    class function ToDateTime(
      const aValue: Boolean): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: Byte): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: Cardinal): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: Char): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: Double): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: Extended): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: Int64): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: Integer): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: ShortInt): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: Single): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: SmallInt): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: string): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: TCTObject {ValueType: 'System.DateTime}): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime2(
      const aValue: TCTObject): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: UInt64): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDateTime(
      const aValue: Word): TCTObject {ValueType: 'System.DateTime}; overload;
    class function ToDecimal(
      const aValue: Boolean): Extended; overload;
    class function ToDecimal(
      const aValue: Byte): Extended; overload;
    class function ToDecimal(
      const aValue: Cardinal): Extended; overload;
    class function ToDecimal(
      const aValue: Char): Extended; overload;
    class function ToDecimal(
      const aValue: Double): Extended; overload;
    class function ToDecimal(
      const aValue: Extended): Extended; overload;
    class function ToDecimal(
      const aValue: Int64): Extended; overload;
    class function ToDecimal(
      const aValue: Integer): Extended; overload;
    class function ToDecimal(
      const aValue: ShortInt): Extended; overload;
    class function ToDecimal(
      const aValue: Single): Extended; overload;
    class function ToDecimal(
      const aValue: SmallInt): Extended; overload;
    class function ToDecimal(
      const aValue: string): Extended; overload;
    class function ToDecimal(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Extended; overload;
    class function ToDecimal(
      const aValue: TCTObject): Extended; overload;
    class function ToDecimal2(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Extended; overload;
    class function ToDecimal(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Extended; overload;
    class function ToDecimal(
      const aValue: UInt64): Extended; overload;
    class function ToDecimal(
      const aValue: Word): Extended; overload;
    class function ToDouble(
      const aValue: Boolean): Double; overload;
    class function ToDouble(
      const aValue: Byte): Double; overload;
    class function ToDouble(
      const aValue: Cardinal): Double; overload;
    class function ToDouble(
      const aValue: Char): Double; overload;
    class function ToDouble(
      const aValue: Double): Double; overload;
    class function ToDouble(
      const aValue: Extended): Double; overload;
    class function ToDouble(
      const aValue: Int64): Double; overload;
    class function ToDouble(
      const aValue: Integer): Double; overload;
    class function ToDouble(
      const aValue: ShortInt): Double; overload;
    class function ToDouble(
      const aValue: Single): Double; overload;
    class function ToDouble(
      const aValue: SmallInt): Double; overload;
    class function ToDouble(
      const aValue: string): Double; overload;
    class function ToDouble(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Double; overload;
    class function ToDouble(
      const aValue: TCTObject): Double; overload;
    class function ToDouble2(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Double; overload;
    class function ToDouble(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Double; overload;
    class function ToDouble(
      const aValue: UInt64): Double; overload;
    class function ToDouble(
      const aValue: Word): Double; overload;
    class function ToInt16(
      const aValue: Boolean): SmallInt; overload;
    class function ToInt16(
      const aValue: Byte): SmallInt; overload;
    class function ToInt16(
      const aValue: Cardinal): SmallInt; overload;
    class function ToInt16(
      const aValue: Char): SmallInt; overload;
    class function ToInt16(
      const aValue: Double): SmallInt; overload;
    class function ToInt16(
      const aValue: Extended): SmallInt; overload;
    class function ToInt16(
      const aValue: Int64): SmallInt; overload;
    class function ToInt16(
      const aValue: Integer): SmallInt; overload;
    class function ToInt16(
      const aValue: ShortInt): SmallInt; overload;
    class function ToInt16(
      const aValue: Single): SmallInt; overload;
    class function ToInt16(
      const aValue: SmallInt): SmallInt; overload;
    class function ToInt16(
      const aValue: string): SmallInt; overload;
    class function ToInt16(
      const aValue: string; 
      const aFromBase: Integer): SmallInt; overload;
    class function ToInt16(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): SmallInt; overload;
    class function ToInt16(
      const aValue: TCTObject): SmallInt; overload;
    class function ToInt162(
      const aValue: TCTObject {ValueType: 'System.DateTime}): SmallInt; overload;
    class function ToInt16(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): SmallInt; overload;
    class function ToInt16(
      const aValue: UInt64): SmallInt; overload;
    class function ToInt16(
      const aValue: Word): SmallInt; overload;
    class function ToInt32(
      const aValue: Boolean): Integer; overload;
    class function ToInt32(
      const aValue: Byte): Integer; overload;
    class function ToInt32(
      const aValue: Cardinal): Integer; overload;
    class function ToInt32(
      const aValue: Char): Integer; overload;
    class function ToInt32(
      const aValue: Double): Integer; overload;
    class function ToInt32(
      const aValue: Extended): Integer; overload;
    class function ToInt32(
      const aValue: Int64): Integer; overload;
    class function ToInt32(
      const aValue: Integer): Integer; overload;
    class function ToInt32(
      const aValue: ShortInt): Integer; overload;
    class function ToInt32(
      const aValue: Single): Integer; overload;
    class function ToInt32(
      const aValue: SmallInt): Integer; overload;
    class function ToInt32(
      const aValue: string): Integer; overload;
    class function ToInt32(
      const aValue: string; 
      const aFromBase: Integer): Integer; overload;
    class function ToInt32(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Integer; overload;
    class function ToInt32(
      const aValue: TCTObject): Integer; overload;
    class function ToInt322(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Integer; overload;
    class function ToInt32(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Integer; overload;
    class function ToInt32(
      const aValue: UInt64): Integer; overload;
    class function ToInt32(
      const aValue: Word): Integer; overload;
    class function ToInt64(
      const aValue: Boolean): Int64; overload;
    class function ToInt64(
      const aValue: Byte): Int64; overload;
    class function ToInt64(
      const aValue: Cardinal): Int64; overload;
    class function ToInt64(
      const aValue: Char): Int64; overload;
    class function ToInt64(
      const aValue: Double): Int64; overload;
    class function ToInt64(
      const aValue: Extended): Int64; overload;
    class function ToInt64(
      const aValue: Int64): Int64; overload;
    class function ToInt64(
      const aValue: Integer): Int64; overload;
    class function ToInt64(
      const aValue: ShortInt): Int64; overload;
    class function ToInt64(
      const aValue: Single): Int64; overload;
    class function ToInt64(
      const aValue: SmallInt): Int64; overload;
    class function ToInt64(
      const aValue: string): Int64; overload;
    class function ToInt64(
      const aValue: string; 
      const aFromBase: Integer): Int64; overload;
    class function ToInt64(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Int64; overload;
    class function ToInt64(
      const aValue: TCTObject): Int64; overload;
    class function ToInt642(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Int64; overload;
    class function ToInt64(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Int64; overload;
    class function ToInt64(
      const aValue: UInt64): Int64; overload;
    class function ToInt64(
      const aValue: Word): Int64; overload;
    class function ToSByte(
      const aValue: Boolean): ShortInt; overload;
    class function ToSByte(
      const aValue: Byte): ShortInt; overload;
    class function ToSByte(
      const aValue: Cardinal): ShortInt; overload;
    class function ToSByte(
      const aValue: Char): ShortInt; overload;
    class function ToSByte(
      const aValue: Double): ShortInt; overload;
    class function ToSByte(
      const aValue: Extended): ShortInt; overload;
    class function ToSByte(
      const aValue: Int64): ShortInt; overload;
    class function ToSByte(
      const aValue: Integer): ShortInt; overload;
    class function ToSByte(
      const aValue: ShortInt): ShortInt; overload;
    class function ToSByte(
      const aValue: Single): ShortInt; overload;
    class function ToSByte(
      const aValue: SmallInt): ShortInt; overload;
    class function ToSByte(
      const aValue: string): ShortInt; overload;
    class function ToSByte(
      const aValue: string; 
      const aFromBase: Integer): ShortInt; overload;
    class function ToSByte(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): ShortInt; overload;
    class function ToSByte(
      const aValue: TCTObject): ShortInt; overload;
    class function ToSByte2(
      const aValue: TCTObject {ValueType: 'System.DateTime}): ShortInt; overload;
    class function ToSByte(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): ShortInt; overload;
    class function ToSByte(
      const aValue: UInt64): ShortInt; overload;
    class function ToSByte(
      const aValue: Word): ShortInt; overload;
    class function ToSingle(
      const aValue: Boolean): Single; overload;
    class function ToSingle(
      const aValue: Byte): Single; overload;
    class function ToSingle(
      const aValue: Cardinal): Single; overload;
    class function ToSingle(
      const aValue: Char): Single; overload;
    class function ToSingle(
      const aValue: Double): Single; overload;
    class function ToSingle(
      const aValue: Extended): Single; overload;
    class function ToSingle(
      const aValue: Int64): Single; overload;
    class function ToSingle(
      const aValue: Integer): Single; overload;
    class function ToSingle(
      const aValue: ShortInt): Single; overload;
    class function ToSingle(
      const aValue: Single): Single; overload;
    class function ToSingle(
      const aValue: SmallInt): Single; overload;
    class function ToSingle(
      const aValue: string): Single; overload;
    class function ToSingle(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Single; overload;
    class function ToSingle(
      const aValue: TCTObject): Single; overload;
    class function ToSingle2(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Single; overload;
    class function ToSingle(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Single; overload;
    class function ToSingle(
      const aValue: UInt64): Single; overload;
    class function ToSingle(
      const aValue: Word): Single; overload;
    function ToString: string; reintroduce; overload;
    class function ToString(
      const aValue: Boolean): string; reintroduce; overload;
    class function ToString(
      const aValue: Boolean; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: Byte): string; reintroduce; overload;
    class function ToString(
      const aValue: Byte; 
      const aToBase: Integer): string; reintroduce; overload;
    class function ToString(
      const aValue: Byte; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: Cardinal): string; reintroduce; overload;
    class function ToString(
      const aValue: Cardinal; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: Char): string; reintroduce; overload;
    class function ToString(
      const aValue: Char; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: Double): string; reintroduce; overload;
    class function ToString(
      const aValue: Double; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: Extended): string; reintroduce; overload;
    class function ToString(
      const aValue: Extended; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: Int64): string; reintroduce; overload;
    class function ToString(
      const aValue: Int64; 
      const aToBase: Integer): string; reintroduce; overload;
    class function ToString(
      const aValue: Int64; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: Integer): string; reintroduce; overload;
    class function ToString(
      const aValue: Integer; 
      const aToBase: Integer): string; reintroduce; overload;
    class function ToString(
      const aValue: Integer; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: ShortInt): string; reintroduce; overload;
    class function ToString(
      const aValue: ShortInt; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: Single): string; reintroduce; overload;
    class function ToString(
      const aValue: Single; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: SmallInt): string; reintroduce; overload;
    class function ToString(
      const aValue: SmallInt; 
      const aToBase: Integer): string; reintroduce; overload;
    class function ToString(
      const aValue: SmallInt; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: string): string; reintroduce; overload;
    class function ToString(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: TCTObject): string; reintroduce; overload;
    class function ToString2(
      const aValue: TCTObject {ValueType: 'System.DateTime}): string; reintroduce; overload;
    class function ToString(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString2(
      const aValue: TCTObject {ValueType: 'System.DateTime}; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: UInt64): string; reintroduce; overload;
    class function ToString(
      const aValue: UInt64; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToString(
      const aValue: Word): string; reintroduce; overload;
    class function ToString(
      const aValue: Word; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): string; reintroduce; overload;
    class function ToUInt16(
      const aValue: Boolean): Word; overload;
    class function ToUInt16(
      const aValue: Byte): Word; overload;
    class function ToUInt16(
      const aValue: Cardinal): Word; overload;
    class function ToUInt16(
      const aValue: Char): Word; overload;
    class function ToUInt16(
      const aValue: Double): Word; overload;
    class function ToUInt16(
      const aValue: Extended): Word; overload;
    class function ToUInt16(
      const aValue: Int64): Word; overload;
    class function ToUInt16(
      const aValue: Integer): Word; overload;
    class function ToUInt16(
      const aValue: ShortInt): Word; overload;
    class function ToUInt16(
      const aValue: Single): Word; overload;
    class function ToUInt16(
      const aValue: SmallInt): Word; overload;
    class function ToUInt16(
      const aValue: string): Word; overload;
    class function ToUInt16(
      const aValue: string; 
      const aFromBase: Integer): Word; overload;
    class function ToUInt16(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Word; overload;
    class function ToUInt16(
      const aValue: TCTObject): Word; overload;
    class function ToUInt162(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Word; overload;
    class function ToUInt16(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Word; overload;
    class function ToUInt16(
      const aValue: UInt64): Word; overload;
    class function ToUInt16(
      const aValue: Word): Word; overload;
    class function ToUInt32(
      const aValue: Boolean): Cardinal; overload;
    class function ToUInt32(
      const aValue: Byte): Cardinal; overload;
    class function ToUInt32(
      const aValue: Cardinal): Cardinal; overload;
    class function ToUInt32(
      const aValue: Char): Cardinal; overload;
    class function ToUInt32(
      const aValue: Double): Cardinal; overload;
    class function ToUInt32(
      const aValue: Extended): Cardinal; overload;
    class function ToUInt32(
      const aValue: Int64): Cardinal; overload;
    class function ToUInt32(
      const aValue: Integer): Cardinal; overload;
    class function ToUInt32(
      const aValue: ShortInt): Cardinal; overload;
    class function ToUInt32(
      const aValue: Single): Cardinal; overload;
    class function ToUInt32(
      const aValue: SmallInt): Cardinal; overload;
    class function ToUInt32(
      const aValue: string): Cardinal; overload;
    class function ToUInt32(
      const aValue: string; 
      const aFromBase: Integer): Cardinal; overload;
    class function ToUInt32(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Cardinal; overload;
    class function ToUInt32(
      const aValue: TCTObject): Cardinal; overload;
    class function ToUInt322(
      const aValue: TCTObject {ValueType: 'System.DateTime}): Cardinal; overload;
    class function ToUInt32(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): Cardinal; overload;
    class function ToUInt32(
      const aValue: UInt64): Cardinal; overload;
    class function ToUInt32(
      const aValue: Word): Cardinal; overload;
    class function ToUInt64(
      const aValue: Boolean): UInt64; overload;
    class function ToUInt64(
      const aValue: Byte): UInt64; overload;
    class function ToUInt64(
      const aValue: Cardinal): UInt64; overload;
    class function ToUInt64(
      const aValue: Char): UInt64; overload;
    class function ToUInt64(
      const aValue: Double): UInt64; overload;
    class function ToUInt64(
      const aValue: Extended): UInt64; overload;
    class function ToUInt64(
      const aValue: Int64): UInt64; overload;
    class function ToUInt64(
      const aValue: Integer): UInt64; overload;
    class function ToUInt64(
      const aValue: ShortInt): UInt64; overload;
    class function ToUInt64(
      const aValue: Single): UInt64; overload;
    class function ToUInt64(
      const aValue: SmallInt): UInt64; overload;
    class function ToUInt64(
      const aValue: string): UInt64; overload;
    class function ToUInt64(
      const aValue: string; 
      const aFromBase: Integer): UInt64; overload;
    class function ToUInt64(
      const aValue: string; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): UInt64; overload;
    class function ToUInt64(
      const aValue: TCTObject): UInt64; overload;
    class function ToUInt642(
      const aValue: TCTObject {ValueType: 'System.DateTime}): UInt64; overload;
    class function ToUInt64(
      const aValue: TCTObject; 
      const aProvider: TCTObject {Interface: System.IFormatProvider}): UInt64; overload;
    class function ToUInt64(
      const aValue: UInt64): UInt64; overload;
    class function ToUInt64(
      const aValue: Word): UInt64; overload;

    class property DBNull: TCTObject read DBNullRead write DBNullWrite;
  end;

  CryptoStreamMode = class
  public
    class function Read: Longword;
    class function Write: Longword;
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

{ System.Security.Cryptography.PasswordDeriveBytes }

class function PasswordDeriveBytes.CTFullTypeName: string;
begin
  Result := 'System.Security.Cryptography.PasswordDeriveBytes'
end;


function PasswordDeriveBytes.HashNameRead: string;
begin
  Result := CTPropGetStringResult('HashName');
end;

procedure PasswordDeriveBytes.HashNameWrite(
  const aValue: string);
begin
  CTPropSet1('HashName', [aValue], [CTptStr]);
end;

function PasswordDeriveBytes.IterationCountRead: Integer;
begin
  Result := Integer(CTPropGet('IterationCount'));
end;

procedure PasswordDeriveBytes.IterationCountWrite(
  const aValue: Integer);
begin
  CTPropSet1('IterationCount', [aValue], [CTptInt]);
end;

function PasswordDeriveBytes.SaltRead: ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTPropGet('Salt')));
end;

procedure PasswordDeriveBytes.SaltWrite(
  const aValue: ByteArray);
begin
  CTPropSet1('Salt', [aValue], [CTptObj]);
end;

constructor PasswordDeriveBytes.Create(
  const aPassword: ByteArray; 
  const aSalt: ByteArray);
begin
  CTCreateObject('System.Security.Cryptography.PasswordDeriveBytes', 1774529738, [aPassword, aSalt], [CTptObj, CTptObj]);
end;

constructor PasswordDeriveBytes.Create(
  const aPassword: ByteArray; 
  const aSalt: ByteArray; 
  const aHashName: string; 
  const aIterations: Integer);
begin
  CTCreateObject('System.Security.Cryptography.PasswordDeriveBytes', -189238307, [aPassword, aSalt, aHashName, aIterations], [CTptObj, CTptObj, CTptStr, CTptInt]);
end;

constructor PasswordDeriveBytes.Create(
  const aPassword: ByteArray; 
  const aSalt: ByteArray; 
  const aHashName: string; 
  const aIterations: Integer; 
  const aCspParams: TCTObject {Class: System.Security.Cryptography.CspParameters});
begin
  CTCreateObject('System.Security.Cryptography.PasswordDeriveBytes', 529929814, [aPassword, aSalt, aHashName, aIterations, aCspParams], [CTptObj, CTptObj, CTptStr, CTptInt, CTptObj]);
end;

constructor PasswordDeriveBytes.Create(
  const aPassword: ByteArray; 
  const aSalt: ByteArray; 
  const aCspParams: TCTObject {Class: System.Security.Cryptography.CspParameters});
begin
  CTCreateObject('System.Security.Cryptography.PasswordDeriveBytes', -1666564167, [aPassword, aSalt, aCspParams], [CTptObj, CTptObj, CTptObj]);
end;

constructor PasswordDeriveBytes.Create(
  const aStrPassword: string; 
  const aRgbSalt: ByteArray);
begin
  CTCreateObject('System.Security.Cryptography.PasswordDeriveBytes', 610232235, [aStrPassword, aRgbSalt], [CTptStr, CTptObj]);
end;

constructor PasswordDeriveBytes.Create(
  const aStrPassword: string; 
  const aRgbSalt: ByteArray; 
  const aStrHashName: string; 
  const aIterations: Integer);
begin
  CTCreateObject('System.Security.Cryptography.PasswordDeriveBytes', -1368957186, [aStrPassword, aRgbSalt, aStrHashName, aIterations], [CTptStr, CTptObj, CTptStr, CTptInt]);
end;

constructor PasswordDeriveBytes.Create(
  const aStrPassword: string; 
  const aRgbSalt: ByteArray; 
  const aStrHashName: string; 
  const aIterations: Integer; 
  const aCspParams: TCTObject {Class: System.Security.Cryptography.CspParameters});
begin
  CTCreateObject('System.Security.Cryptography.PasswordDeriveBytes', 2108442663, [aStrPassword, aRgbSalt, aStrHashName, aIterations, aCspParams], [CTptStr, CTptObj, CTptStr, CTptInt, CTptObj]);
end;

constructor PasswordDeriveBytes.Create(
  const aStrPassword: string; 
  const aRgbSalt: ByteArray; 
  const aCspParams: TCTObject {Class: System.Security.Cryptography.CspParameters});
begin
  CTCreateObject('System.Security.Cryptography.PasswordDeriveBytes', -1271670770, [aStrPassword, aRgbSalt, aCspParams], [CTptStr, CTptObj, CTptObj]);
end;

function PasswordDeriveBytes.CryptDeriveKey(
  const aAlgname: string; 
  const aAlghashname: string; 
  const aKeySize: Integer; 
  const aRgbIV: ByteArray): ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTMethodCall('CryptDeriveKey', -594719400, [aAlgname, 
aAlghashname, 
aKeySize, 
aRgbIV], [CTptStr, CTptStr, CTptInt, CTptObj])));
  CTClearResults;
end;

procedure PasswordDeriveBytes.Dispose;
begin
  CTMethodCall('Dispose', 0, [], []);
  CTClearResults;
end;

function PasswordDeriveBytes.Equals(
  const aObj: TCTObject): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 1226748890, [aObj], [CTptObj]));
  CTClearResults;
end;

function PasswordDeriveBytes.GetBytes(
  const aCb: Integer): ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTMethodCall('GetBytes', -114835243, [aCb], [CTptInt])));
  CTClearResults;
end;

function PasswordDeriveBytes.GetHashCode: Integer;
begin
  Result := Integer(CTMethodCall('GetHashCode', 0, [], []));
  CTClearResults;
end;

procedure PasswordDeriveBytes.Reset;
begin
  CTMethodCall('Reset', 0, [], []);
  CTClearResults;
end;

function PasswordDeriveBytes.ToString: string;
begin
  Result := CTMethodCallStringResult('ToString', 0, [], []);
  CTClearResults;
end;

{ System.Text.Encoding }

class function Encoding.CTFullTypeName: string;
begin
  Result := 'System.Text.Encoding'
end;


class function Encoding.ASCIIRead: CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticPropGet('ASCII')));
end;

class function Encoding.BigEndianUnicodeRead: CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticPropGet('BigEndianUnicode')));
end;

function Encoding.BodyNameRead: string;
begin
  Result := CTPropGetStringResult('BodyName');
end;

function Encoding.CodePageRead: Integer;
begin
  Result := Integer(CTPropGet('CodePage'));
end;

function Encoding.DecoderFallbackRead: TCTObject {Class: System.Text.DecoderFallback};
begin
  Result := TCTObject {Class: System.Text.DecoderFallback}(CTFindRef(TCTObject {Class: System.Text.DecoderFallback}, CTPropGet('DecoderFallback')));
end;

procedure Encoding.DecoderFallbackWrite(
  const aValue: TCTObject {Class: System.Text.DecoderFallback});
begin
  CTPropSet1('DecoderFallback', [aValue], [CTptObj]);
end;

class function Encoding.DefaultRead: CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticPropGet('Default')));
end;

function Encoding.EncoderFallbackRead: TCTObject {Class: System.Text.EncoderFallback};
begin
  Result := TCTObject {Class: System.Text.EncoderFallback}(CTFindRef(TCTObject {Class: System.Text.EncoderFallback}, CTPropGet('EncoderFallback')));
end;

procedure Encoding.EncoderFallbackWrite(
  const aValue: TCTObject {Class: System.Text.EncoderFallback});
begin
  CTPropSet1('EncoderFallback', [aValue], [CTptObj]);
end;

function Encoding.EncodingNameRead: string;
begin
  Result := CTPropGetStringResult('EncodingName');
end;

function Encoding.HeaderNameRead: string;
begin
  Result := CTPropGetStringResult('HeaderName');
end;

function Encoding.IsBrowserDisplayRead: Boolean;
begin
  Result := Boolean(CTPropGet('IsBrowserDisplay'));
end;

function Encoding.IsBrowserSaveRead: Boolean;
begin
  Result := Boolean(CTPropGet('IsBrowserSave'));
end;

function Encoding.IsMailNewsDisplayRead: Boolean;
begin
  Result := Boolean(CTPropGet('IsMailNewsDisplay'));
end;

function Encoding.IsMailNewsSaveRead: Boolean;
begin
  Result := Boolean(CTPropGet('IsMailNewsSave'));
end;

function Encoding.IsReadOnlyRead: Boolean;
begin
  Result := Boolean(CTPropGet('IsReadOnly'));
end;

function Encoding.IsSingleByteRead: Boolean;
begin
  Result := Boolean(CTPropGet('IsSingleByte'));
end;

class function Encoding.UnicodeRead: CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticPropGet('Unicode')));
end;

class function Encoding.UTF32Read: CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticPropGet('UTF32')));
end;

class function Encoding.UTF7Read: CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticPropGet('UTF7')));
end;

class function Encoding.UTF8Read: CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticPropGet('UTF8')));
end;

function Encoding.WebNameRead: string;
begin
  Result := CTPropGetStringResult('WebName');
end;

function Encoding.WindowsCodePageRead: Integer;
begin
  Result := Integer(CTPropGet('WindowsCodePage'));
end;

function Encoding.Clone: TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('Clone', 0, [], [])));
  CTClearResults;
end;

class function Encoding.Convert(
  const aSrcEncoding: CTmscorlib.Encoding; 
  const aDstEncoding: CTmscorlib.Encoding; 
  const aBytes: ByteArray): ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTStaticMethodCall('Convert', 1639879003, [aSrcEncoding, 
aDstEncoding, 
aBytes], [CTptObj, CTptObj, CTptObj])));
  CTClearResults;
end;

class function Encoding.Convert(
  const aSrcEncoding: CTmscorlib.Encoding; 
  const aDstEncoding: CTmscorlib.Encoding; 
  const aBytes: ByteArray; 
  const aIndex: Integer; 
  const aCount: Integer): ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTStaticMethodCall('Convert', -1096444848, [aSrcEncoding, 
aDstEncoding, 
aBytes, 
aIndex, 
aCount], [CTptObj, CTptObj, CTptObj, CTptInt, CTptInt])));
  CTClearResults;
end;

function Encoding.Equals(
  const aValue: TCTObject): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

function Encoding.GetByteCount(
  const a0: string): Integer;
begin
  Result := Integer(CTMethodCall('GetByteCount', 1497808633, [a0], [CTptStr]));
  CTClearResults;
end;

function Encoding.GetBytes(
  const a0: string): ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTMethodCall('GetBytes', 1497808633, [a0], [CTptStr])));
  CTClearResults;
end;

function Encoding.GetBytes(
  const a0: string; 
  const aCharIndex: Integer; 
  const aCharCount: Integer; 
  const aBytes: ByteArray; 
  const aByteIndex: Integer): Integer;
begin
  Result := Integer(CTMethodCall('GetBytes', 1026608983, [a0, 
aCharIndex, 
aCharCount, 
aBytes, 
aByteIndex], [CTptStr, CTptInt, CTptInt, CTptObj, CTptInt]));
  CTClearResults;
end;

function Encoding.GetCharCount(
  const aBytes: ByteArray): Integer;
begin
  Result := Integer(CTMethodCall('GetCharCount', 525597343, [aBytes], [CTptObj]));
  CTClearResults;
end;

function Encoding.GetCharCount(
  const aBytes: ByteArray; 
  const aIndex: Integer; 
  const aCount: Integer): Integer;
begin
  Result := Integer(CTMethodCall('GetCharCount', 2049934059, [aBytes, 
aIndex, 
aCount], [CTptObj, CTptInt, CTptInt]));
  CTClearResults;
end;

function Encoding.GetDecoder: TCTObject {Class: System.Text.Decoder};
begin
  Result := TCTObject {Class: System.Text.Decoder}(CTFindRef(TCTObject {Class: System.Text.Decoder}, CTMethodCall('GetDecoder', 0, [], [])));
  CTClearResults;
end;

function Encoding.GetEncoder: TCTObject {Class: System.Text.Encoder};
begin
  Result := TCTObject {Class: System.Text.Encoder}(CTFindRef(TCTObject {Class: System.Text.Encoder}, CTMethodCall('GetEncoder', 0, [], [])));
  CTClearResults;
end;

class function Encoding.GetEncoding(
  const aCodepage: Integer): CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticMethodCall('GetEncoding', -114835243, [aCodepage], [CTptInt])));
  CTClearResults;
end;

class function Encoding.GetEncoding(
  const aCodepage: Integer; 
  const aEncoderFallback: TCTObject {Class: System.Text.EncoderFallback}; 
  const aDecoderFallback: TCTObject {Class: System.Text.DecoderFallback}): CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticMethodCall('GetEncoding', -674068629, [aCodepage, 
aEncoderFallback, 
aDecoderFallback], [CTptInt, CTptObj, CTptObj])));
  CTClearResults;
end;

class function Encoding.GetEncoding(
  const aName: string): CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticMethodCall('GetEncoding', 1497808633, [aName], [CTptStr])));
  CTClearResults;
end;

class function Encoding.GetEncoding(
  const aName: string; 
  const aEncoderFallback: TCTObject {Class: System.Text.EncoderFallback}; 
  const aDecoderFallback: TCTObject {Class: System.Text.DecoderFallback}): CTmscorlib.Encoding;
begin
  Result := CTmscorlib.Encoding(CTFindRef(CTmscorlib.Encoding, CTStaticMethodCall('GetEncoding', -1279051556, [aName, 
aEncoderFallback, 
aDecoderFallback], [CTptStr, CTptObj, CTptObj])));
  CTClearResults;
end;

function Encoding.GetHashCode: Integer;
begin
  Result := Integer(CTMethodCall('GetHashCode', 0, [], []));
  CTClearResults;
end;

function Encoding.GetMaxByteCount(
  const aCharCount: Integer): Integer;
begin
  Result := Integer(CTMethodCall('GetMaxByteCount', -114835243, [aCharCount], [CTptInt]));
  CTClearResults;
end;

function Encoding.GetMaxCharCount(
  const aByteCount: Integer): Integer;
begin
  Result := Integer(CTMethodCall('GetMaxCharCount', -114835243, [aByteCount], [CTptInt]));
  CTClearResults;
end;

function Encoding.GetPreamble: ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTMethodCall('GetPreamble', 0, [], [])));
  CTClearResults;
end;

function Encoding.GetString(
  const aBytes: ByteArray): string;
begin
  Result := CTMethodCallStringResult('GetString', 525597343, [aBytes], [CTptObj]);
  CTClearResults;
end;

function Encoding.GetString(
  const aBytes: ByteArray; 
  const aIndex: Integer; 
  const aCount: Integer): string;
begin
  Result := CTMethodCallStringResult('GetString', 2049934059, [aBytes, 
aIndex, 
aCount], [CTptObj, CTptInt, CTptInt]);
  CTClearResults;
end;

function Encoding.IsAlwaysNormalized: Boolean;
begin
  Result := Boolean(CTMethodCall('IsAlwaysNormalized', 0, [], []));
  CTClearResults;
end;

function Encoding.IsAlwaysNormalized(
  const aForm: Longword {Enum: 'System.Text.NormalizationForm}): Boolean;
begin
  Result := Boolean(CTMethodCall('IsAlwaysNormalized', 76626733, [aForm], [CTptInt]));
  CTClearResults;
end;

function Encoding.ToString: string;
begin
  Result := CTMethodCallStringResult('ToString', 0, [], []);
  CTClearResults;
end;

{ System.IO.MemoryStream }

class function MemoryStream.CTFullTypeName: string;
begin
  Result := 'System.IO.MemoryStream'
end;


function MemoryStream.CanReadRead: Boolean;
begin
  Result := Boolean(CTPropGet('CanRead'));
end;

function MemoryStream.CanSeekRead: Boolean;
begin
  Result := Boolean(CTPropGet('CanSeek'));
end;

function MemoryStream.CanTimeoutRead: Boolean;
begin
  Result := Boolean(CTPropGet('CanTimeout'));
end;

function MemoryStream.CanWriteRead: Boolean;
begin
  Result := Boolean(CTPropGet('CanWrite'));
end;

function MemoryStream.CapacityRead: Integer;
begin
  Result := Integer(CTPropGet('Capacity'));
end;

procedure MemoryStream.CapacityWrite(
  const aValue: Integer);
begin
  CTPropSet1('Capacity', [aValue], [CTptInt]);
end;

function MemoryStream.LengthRead: Int64;
begin
  Result := Int64(CTPropGet('Length'));
end;

function MemoryStream.PositionRead: Int64;
begin
  Result := Int64(CTPropGet('Position'));
end;

procedure MemoryStream.PositionWrite(
  const aValue: Int64);
begin
  CTPropSet1('Position', [aValue], [CTptInt64]);
end;

function MemoryStream.ReadTimeoutRead: Integer;
begin
  Result := Integer(CTPropGet('ReadTimeout'));
end;

procedure MemoryStream.ReadTimeoutWrite(
  const aValue: Integer);
begin
  CTPropSet1('ReadTimeout', [aValue], [CTptInt]);
end;

function MemoryStream.WriteTimeoutRead: Integer;
begin
  Result := Integer(CTPropGet('WriteTimeout'));
end;

procedure MemoryStream.WriteTimeoutWrite(
  const aValue: Integer);
begin
  CTPropSet1('WriteTimeout', [aValue], [CTptInt]);
end;

procedure MemoryStream.Close;
begin
  CTMethodCall('Close', 0, [], []);
  CTClearResults;
end;

procedure MemoryStream.CopyTo(
  const aDestination: TCTObject {Class: System.IO.Stream});
begin
  CTMethodCall('CopyTo', -1190871296, [aDestination], [CTptObj]);
  CTClearResults;
end;

procedure MemoryStream.CopyTo(
  const aDestination: TCTObject {Class: System.IO.Stream}; 
  const aBufferSize: Integer);
begin
  CTMethodCall('CopyTo', 1313646496, [aDestination, 
aBufferSize], [CTptObj, CTptInt]);
  CTClearResults;
end;

function MemoryStream.CopyToAsync(
  const aDestination: TCTObject {Class: System.IO.Stream}): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('CopyToAsync', -1190871296, [aDestination], [CTptObj])));
  CTClearResults;
end;

function MemoryStream.CopyToAsync(
  const aDestination: TCTObject {Class: System.IO.Stream}; 
  const aBufferSize: Integer): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('CopyToAsync', 1313646496, [aDestination, 
aBufferSize], [CTptObj, CTptInt])));
  CTClearResults;
end;

function MemoryStream.CopyToAsync(
  const aDestination: TCTObject {Class: System.IO.Stream}; 
  const aBufferSize: Integer; 
  const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('CopyToAsync', -318359682, [aDestination, 
aBufferSize, 
aCancellationToken], [CTptObj, CTptInt, CTptObj])));
  CTClearResults;
end;

constructor MemoryStream.Create;
begin
  CTCreateObject('System.IO.MemoryStream', 0, [], []);
end;

constructor MemoryStream.Create(
  const aBuffer: ByteArray);
begin
  CTCreateObject('System.IO.MemoryStream', 525597343, [aBuffer], [CTptObj]);
end;

constructor MemoryStream.Create(
  const aBuffer: ByteArray; 
  const aWritable: Boolean);
begin
  CTCreateObject('System.IO.MemoryStream', 1898073604, [aBuffer, aWritable], [CTptObj, CTptBool]);
end;

constructor MemoryStream.Create(
  const aBuffer: ByteArray; 
  const aIndex: Integer; 
  const aCount: Integer);
begin
  CTCreateObject('System.IO.MemoryStream', 2049934059, [aBuffer, aIndex, aCount], [CTptObj, CTptInt, CTptInt]);
end;

constructor MemoryStream.Create(
  const aBuffer: ByteArray; 
  const aIndex: Integer; 
  const aCount: Integer; 
  const aWritable: Boolean);
begin
  CTCreateObject('System.IO.MemoryStream', 2064950754, [aBuffer, aIndex, aCount, aWritable], [CTptObj, CTptInt, CTptInt, CTptBool]);
end;

constructor MemoryStream.Create(
  const aBuffer: ByteArray; 
  const aIndex: Integer; 
  const aCount: Integer; 
  const aWritable: Boolean; 
  const aPubliclyVisible: Boolean);
begin
  CTCreateObject('System.IO.MemoryStream', -1806446678, [aBuffer, aIndex, aCount, aWritable, aPubliclyVisible], [CTptObj, CTptInt, CTptInt, CTptBool, CTptBool]);
end;

constructor MemoryStream.Create(
  const aCapacity: Integer);
begin
  CTCreateObject('System.IO.MemoryStream', -114835243, [aCapacity], [CTptInt]);
end;

procedure MemoryStream.Dispose;
begin
  CTMethodCall('Dispose', 0, [], []);
  CTClearResults;
end;

function MemoryStream.EndRead(
  const aAsyncResult: TCTObject {Interface: System.IAsyncResult}): Integer;
begin
  Result := Integer(CTMethodCall('EndRead', 1952466224, [aAsyncResult], [CTptObj]));
  CTClearResults;
end;

procedure MemoryStream.EndWrite(
  const aAsyncResult: TCTObject {Interface: System.IAsyncResult});
begin
  CTMethodCall('EndWrite', 1952466224, [aAsyncResult], [CTptObj]);
  CTClearResults;
end;

function MemoryStream.Equals(
  const aObj: TCTObject): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 1226748890, [aObj], [CTptObj]));
  CTClearResults;
end;

procedure MemoryStream.Flush;
begin
  CTMethodCall('Flush', 0, [], []);
  CTClearResults;
end;

function MemoryStream.FlushAsync: TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('FlushAsync', 0, [], [])));
  CTClearResults;
end;

function MemoryStream.FlushAsync(
  const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('FlushAsync', 1949902288, [aCancellationToken], [CTptObj])));
  CTClearResults;
end;

function MemoryStream.GetBuffer: ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTMethodCall('GetBuffer', 0, [], [])));
  CTClearResults;
end;

function MemoryStream.GetHashCode: Integer;
begin
  Result := Integer(CTMethodCall('GetHashCode', 0, [], []));
  CTClearResults;
end;

function MemoryStream.GetLifetimeService: TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('GetLifetimeService', 0, [], [])));
  CTClearResults;
end;

function MemoryStream.InitializeLifetimeService: TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('InitializeLifetimeService', 0, [], [])));
  CTClearResults;
end;

function MemoryStream.Read(
  aBuffer: ByteArray; 
  const aOffset: Integer; 
  const aCount: Integer): Integer;
begin
  Result := Integer(CTMethodCall('Read', 2049934059, [aBuffer, 
aOffset, 
aCount], [CTptObj, CTptInt, CTptInt]));
  CTClearResults;
end;

function MemoryStream.ReadByte: Integer;
begin
  Result := Integer(CTMethodCall('ReadByte', 0, [], []));
  CTClearResults;
end;

function MemoryStream.Seek(
  const aOffset: Int64; 
  const aLoc: Longword {Enum: 'System.IO.SeekOrigin}): Int64;
begin
  Result := Int64(CTMethodCall('Seek', -1558456036, [aOffset, 
aLoc], [CTptInt64, CTptInt]));
  CTClearResults;
end;

procedure MemoryStream.SetLength(
  const aValue: Int64);
begin
  CTMethodCall('SetLength', 1459142863, [aValue], [CTptInt64]);
  CTClearResults;
end;

function MemoryStream.ToArray: ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTMethodCall('ToArray', 0, [], [])));
  CTClearResults;
end;

function MemoryStream.ToString: string;
begin
  Result := CTMethodCallStringResult('ToString', 0, [], []);
  CTClearResults;
end;

procedure MemoryStream.Write(
  const aBuffer: ByteArray; 
  const aOffset: Integer; 
  const aCount: Integer);
begin
  CTMethodCall('Write', 2049934059, [aBuffer, 
aOffset, 
aCount], [CTptObj, CTptInt, CTptInt]);
  CTClearResults;
end;

function MemoryStream.WriteAsync(
  const aBuffer: ByteArray; 
  const aOffset: Integer; 
  const aCount: Integer): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('WriteAsync', 2049934059, [aBuffer, 
aOffset, 
aCount], [CTptObj, CTptInt, CTptInt])));
  CTClearResults;
end;

function MemoryStream.WriteAsync(
  const aBuffer: ByteArray; 
  const aOffset: Integer; 
  const aCount: Integer; 
  const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('WriteAsync', -1310072841, [aBuffer, 
aOffset, 
aCount, 
aCancellationToken], [CTptObj, CTptInt, CTptInt, CTptObj])));
  CTClearResults;
end;

procedure MemoryStream.WriteByte(
  const aValue: Byte);
begin
  CTMethodCall('WriteByte', 130596736, [aValue], [CTptByte]);
  CTClearResults;
end;

procedure MemoryStream.WriteTo(
  const aStream: TCTObject {Class: System.IO.Stream});
begin
  CTMethodCall('WriteTo', -1190871296, [aStream], [CTptObj]);
  CTClearResults;
end;

{ System.Security.Cryptography.CryptoStream }

class function CryptoStream.CTFullTypeName: string;
begin
  Result := 'System.Security.Cryptography.CryptoStream'
end;


function CryptoStream.CanReadRead: Boolean;
begin
  Result := Boolean(CTPropGet('CanRead'));
end;

function CryptoStream.CanSeekRead: Boolean;
begin
  Result := Boolean(CTPropGet('CanSeek'));
end;

function CryptoStream.CanTimeoutRead: Boolean;
begin
  Result := Boolean(CTPropGet('CanTimeout'));
end;

function CryptoStream.CanWriteRead: Boolean;
begin
  Result := Boolean(CTPropGet('CanWrite'));
end;

function CryptoStream.HasFlushedFinalBlockRead: Boolean;
begin
  Result := Boolean(CTPropGet('HasFlushedFinalBlock'));
end;

function CryptoStream.LengthRead: Int64;
begin
  Result := Int64(CTPropGet('Length'));
end;

function CryptoStream.PositionRead: Int64;
begin
  Result := Int64(CTPropGet('Position'));
end;

procedure CryptoStream.PositionWrite(
  const aValue: Int64);
begin
  CTPropSet1('Position', [aValue], [CTptInt64]);
end;

function CryptoStream.ReadTimeoutRead: Integer;
begin
  Result := Integer(CTPropGet('ReadTimeout'));
end;

procedure CryptoStream.ReadTimeoutWrite(
  const aValue: Integer);
begin
  CTPropSet1('ReadTimeout', [aValue], [CTptInt]);
end;

function CryptoStream.WriteTimeoutRead: Integer;
begin
  Result := Integer(CTPropGet('WriteTimeout'));
end;

procedure CryptoStream.WriteTimeoutWrite(
  const aValue: Integer);
begin
  CTPropSet1('WriteTimeout', [aValue], [CTptInt]);
end;

procedure CryptoStream.Clear;
begin
  CTMethodCall('Clear', 0, [], []);
  CTClearResults;
end;

procedure CryptoStream.Close;
begin
  CTMethodCall('Close', 0, [], []);
  CTClearResults;
end;

procedure CryptoStream.CopyTo(
  const aDestination: TCTObject {Class: System.IO.Stream});
begin
  CTMethodCall('CopyTo', -1190871296, [aDestination], [CTptObj]);
  CTClearResults;
end;

procedure CryptoStream.CopyTo(
  const aDestination: TCTObject {Class: System.IO.Stream}; 
  const aBufferSize: Integer);
begin
  CTMethodCall('CopyTo', 1313646496, [aDestination, 
aBufferSize], [CTptObj, CTptInt]);
  CTClearResults;
end;

function CryptoStream.CopyToAsync(
  const aDestination: TCTObject {Class: System.IO.Stream}): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('CopyToAsync', -1190871296, [aDestination], [CTptObj])));
  CTClearResults;
end;

function CryptoStream.CopyToAsync(
  const aDestination: TCTObject {Class: System.IO.Stream}; 
  const aBufferSize: Integer): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('CopyToAsync', 1313646496, [aDestination, 
aBufferSize], [CTptObj, CTptInt])));
  CTClearResults;
end;

function CryptoStream.CopyToAsync(
  const aDestination: TCTObject {Class: System.IO.Stream}; 
  const aBufferSize: Integer; 
  const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('CopyToAsync', -318359682, [aDestination, 
aBufferSize, 
aCancellationToken], [CTptObj, CTptInt, CTptObj])));
  CTClearResults;
end;

constructor CryptoStream.Create(
  const aStream: TCTObject {Class: System.IO.Stream}; 
  const aTransform: TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}; 
  const aMode: Longword {Enum: 'System.Security.Cryptography.CryptoStreamMode});
begin
  CTCreateObject('System.Security.Cryptography.CryptoStream', -1870873717, [aStream, aTransform, aMode], [CTptObj, CTptObj, CTptInt]);
end;

procedure CryptoStream.Dispose;
begin
  CTMethodCall('Dispose', 0, [], []);
  CTClearResults;
end;

function CryptoStream.EndRead(
  const aAsyncResult: TCTObject {Interface: System.IAsyncResult}): Integer;
begin
  Result := Integer(CTMethodCall('EndRead', 1952466224, [aAsyncResult], [CTptObj]));
  CTClearResults;
end;

procedure CryptoStream.EndWrite(
  const aAsyncResult: TCTObject {Interface: System.IAsyncResult});
begin
  CTMethodCall('EndWrite', 1952466224, [aAsyncResult], [CTptObj]);
  CTClearResults;
end;

function CryptoStream.Equals(
  const aObj: TCTObject): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 1226748890, [aObj], [CTptObj]));
  CTClearResults;
end;

procedure CryptoStream.Flush;
begin
  CTMethodCall('Flush', 0, [], []);
  CTClearResults;
end;

function CryptoStream.FlushAsync: TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('FlushAsync', 0, [], [])));
  CTClearResults;
end;

function CryptoStream.FlushAsync(
  const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('FlushAsync', 1949902288, [aCancellationToken], [CTptObj])));
  CTClearResults;
end;

procedure CryptoStream.FlushFinalBlock;
begin
  CTMethodCall('FlushFinalBlock', 0, [], []);
  CTClearResults;
end;

function CryptoStream.GetHashCode: Integer;
begin
  Result := Integer(CTMethodCall('GetHashCode', 0, [], []));
  CTClearResults;
end;

function CryptoStream.GetLifetimeService: TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('GetLifetimeService', 0, [], [])));
  CTClearResults;
end;

function CryptoStream.InitializeLifetimeService: TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTMethodCall('InitializeLifetimeService', 0, [], [])));
  CTClearResults;
end;

function CryptoStream.Read(
  aBuffer: ByteArray; 
  const aOffset: Integer; 
  const aCount: Integer): Integer;
begin
  Result := Integer(CTMethodCall('Read', 2049934059, [aBuffer, 
aOffset, 
aCount], [CTptObj, CTptInt, CTptInt]));
  CTClearResults;
end;

function CryptoStream.ReadByte: Integer;
begin
  Result := Integer(CTMethodCall('ReadByte', 0, [], []));
  CTClearResults;
end;

function CryptoStream.Seek(
  const aOffset: Int64; 
  const aOrigin: Longword {Enum: 'System.IO.SeekOrigin}): Int64;
begin
  Result := Int64(CTMethodCall('Seek', -1558456036, [aOffset, 
aOrigin], [CTptInt64, CTptInt]));
  CTClearResults;
end;

procedure CryptoStream.SetLength(
  const aValue: Int64);
begin
  CTMethodCall('SetLength', 1459142863, [aValue], [CTptInt64]);
  CTClearResults;
end;

function CryptoStream.ToString: string;
begin
  Result := CTMethodCallStringResult('ToString', 0, [], []);
  CTClearResults;
end;

procedure CryptoStream.Write(
  const aBuffer: ByteArray; 
  const aOffset: Integer; 
  const aCount: Integer);
begin
  CTMethodCall('Write', 2049934059, [aBuffer, 
aOffset, 
aCount], [CTptObj, CTptInt, CTptInt]);
  CTClearResults;
end;

function CryptoStream.WriteAsync(
  const aBuffer: ByteArray; 
  const aOffset: Integer; 
  const aCount: Integer): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('WriteAsync', 2049934059, [aBuffer, 
aOffset, 
aCount], [CTptObj, CTptInt, CTptInt])));
  CTClearResults;
end;

function CryptoStream.WriteAsync(
  const aBuffer: ByteArray; 
  const aOffset: Integer; 
  const aCount: Integer; 
  const aCancellationToken: TCTObject {ValueType: 'System.Threading.CancellationToken}): TCTObject {Class: System.Threading.Tasks.Task};
begin
  Result := TCTObject {Class: System.Threading.Tasks.Task}(CTFindRef(TCTObject {Class: System.Threading.Tasks.Task}, CTMethodCall('WriteAsync', -1310072841, [aBuffer, 
aOffset, 
aCount, 
aCancellationToken], [CTptObj, CTptInt, CTptInt, CTptObj])));
  CTClearResults;
end;

procedure CryptoStream.WriteByte(
  const aValue: Byte);
begin
  CTMethodCall('WriteByte', 130596736, [aValue], [CTptByte]);
  CTClearResults;
end;

{ System.Security.Cryptography.Rijndael }

class function Rijndael.CTFullTypeName: string;
begin
  Result := 'System.Security.Cryptography.Rijndael'
end;


function Rijndael.BlockSizeRead: Integer;
begin
  Result := Integer(CTPropGet('BlockSize'));
end;

procedure Rijndael.BlockSizeWrite(
  const aValue: Integer);
begin
  CTPropSet1('BlockSize', [aValue], [CTptInt]);
end;

function Rijndael.FeedbackSizeRead: Integer;
begin
  Result := Integer(CTPropGet('FeedbackSize'));
end;

procedure Rijndael.FeedbackSizeWrite(
  const aValue: Integer);
begin
  CTPropSet1('FeedbackSize', [aValue], [CTptInt]);
end;

function Rijndael.IVRead: ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTPropGet('IV')));
end;

procedure Rijndael.IVWrite(
  const aValue: ByteArray);
begin
  CTPropSet1('IV', [aValue], [CTptObj]);
end;

function Rijndael.KeyRead: ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTPropGet('Key')));
end;

procedure Rijndael.KeyWrite(
  const aValue: ByteArray);
begin
  CTPropSet1('Key', [aValue], [CTptObj]);
end;

function Rijndael.KeySizeRead: Integer;
begin
  Result := Integer(CTPropGet('KeySize'));
end;

procedure Rijndael.KeySizeWrite(
  const aValue: Integer);
begin
  CTPropSet1('KeySize', [aValue], [CTptInt]);
end;

function Rijndael.ModeRead: Longword {Enum: 'System.Security.Cryptography.CipherMode};
begin
  Result := Longword {Enum: 'System.Security.Cryptography.CipherMode}(CTPropGet('Mode'));
end;

procedure Rijndael.ModeWrite(
  const aValue: Longword {Enum: 'System.Security.Cryptography.CipherMode});
begin
  CTPropSet1('Mode', [aValue], [CTptInt]);
end;

function Rijndael.PaddingRead: Longword {Enum: 'System.Security.Cryptography.PaddingMode};
begin
  Result := Longword {Enum: 'System.Security.Cryptography.PaddingMode}(CTPropGet('Padding'));
end;

procedure Rijndael.PaddingWrite(
  const aValue: Longword {Enum: 'System.Security.Cryptography.PaddingMode});
begin
  CTPropSet1('Padding', [aValue], [CTptInt]);
end;

procedure Rijndael.Clear;
begin
  CTMethodCall('Clear', 0, [], []);
  CTClearResults;
end;

class function Rijndael.Create1: CTmscorlib.Rijndael;
begin
  Result := CTmscorlib.Rijndael(CTFindRef(CTmscorlib.Rijndael, CTStaticMethodCall('Create', 0, [], [])));
  CTClearResults;
end;

class function Rijndael.Create1(
  const aAlgName: string): CTmscorlib.Rijndael;
begin
  Result := CTmscorlib.Rijndael(CTFindRef(CTmscorlib.Rijndael, CTStaticMethodCall('Create', 1497808633, [aAlgName], [CTptStr])));
  CTClearResults;
end;

function Rijndael.CreateDecryptor: TCTObject {Interface: System.Security.Cryptography.ICryptoTransform};
begin
  Result := TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}(CTFindRef(TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}, CTMethodCall('CreateDecryptor', 0, [], [])));
  CTClearResults;
end;

function Rijndael.CreateDecryptor(
  const aRgbKey: ByteArray; 
  const aRgbIV: ByteArray): TCTObject {Interface: System.Security.Cryptography.ICryptoTransform};
begin
  Result := TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}(CTFindRef(TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}, CTMethodCall('CreateDecryptor', 1774529738, [aRgbKey, 
aRgbIV], [CTptObj, CTptObj])));
  CTClearResults;
end;

function Rijndael.CreateEncryptor: TCTObject {Interface: System.Security.Cryptography.ICryptoTransform};
begin
  Result := TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}(CTFindRef(TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}, CTMethodCall('CreateEncryptor', 0, [], [])));
  CTClearResults;
end;

function Rijndael.CreateEncryptor(
  const aRgbKey: ByteArray; 
  const aRgbIV: ByteArray): TCTObject {Interface: System.Security.Cryptography.ICryptoTransform};
begin
  Result := TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}(CTFindRef(TCTObject {Interface: System.Security.Cryptography.ICryptoTransform}, CTMethodCall('CreateEncryptor', 1774529738, [aRgbKey, 
aRgbIV], [CTptObj, CTptObj])));
  CTClearResults;
end;

procedure Rijndael.Dispose;
begin
  CTMethodCall('Dispose', 0, [], []);
  CTClearResults;
end;

function Rijndael.Equals(
  const aObj: TCTObject): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 1226748890, [aObj], [CTptObj]));
  CTClearResults;
end;

procedure Rijndael.GenerateIV;
begin
  CTMethodCall('GenerateIV', 0, [], []);
  CTClearResults;
end;

procedure Rijndael.GenerateKey;
begin
  CTMethodCall('GenerateKey', 0, [], []);
  CTClearResults;
end;

function Rijndael.GetHashCode: Integer;
begin
  Result := Integer(CTMethodCall('GetHashCode', 0, [], []));
  CTClearResults;
end;

function Rijndael.ToString: string;
begin
  Result := CTMethodCallStringResult('ToString', 0, [], []);
  CTClearResults;
end;

function Rijndael.ValidKeySize(
  const aBitLength: Integer): Boolean;
begin
  Result := Boolean(CTMethodCall('ValidKeySize', -114835243, [aBitLength], [CTptInt]));
  CTClearResults;
end;

{ System.Convert }

class function Convert.CTFullTypeName: string;
begin
  Result := 'System.Convert'
end;


class function Convert.DBNullRead: TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTStaticFieldGet('DBNull')));
end;

class procedure Convert.DBNullWrite(const aValue: TCTObject);
begin
  CTStaticFieldSet('DBNull', [aValue], [CTptObj]);
end;

class function Convert.ChangeType(
  const aValue: TCTObject; 
  const aTypeCode: Longword {Enum: 'System.TypeCode}): TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTStaticMethodCall('ChangeType', 775828595, [aValue, 
aTypeCode], [CTptObj, CTptInt])));
  CTClearResults;
end;

class function Convert.ChangeType(
  const aValue: TCTObject; 
  const aTypeCode: Longword {Enum: 'System.TypeCode}; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): TCTObject;
begin
  Result := TCTObject(CTFindRef(TCTObject, CTStaticMethodCall('ChangeType', -715810307, [aValue, 
aTypeCode, 
aProvider], [CTptObj, CTptInt, CTptObj])));
  CTClearResults;
end;

function Convert.Equals(
  const aObj: TCTObject): Boolean;
begin
  Result := Boolean(CTMethodCall('Equals', 1226748890, [aObj], [CTptObj]));
  CTClearResults;
end;

class function Convert.FromBase64String(
  const a0: string): ByteArray;
begin
  Result := ByteArray(CTFindRef(ByteArray, CTStaticMethodCall('FromBase64String', 1497808633, [a0], [CTptStr])));
  CTClearResults;
end;

function Convert.GetHashCode: Integer;
begin
  Result := Integer(CTMethodCall('GetHashCode', 0, [], []));
  CTClearResults;
end;

class function Convert.GetTypeCode(
  const aValue: TCTObject): Longword {Enum: 'System.TypeCode};
begin
  Result := Longword {Enum: 'System.TypeCode}(CTStaticMethodCall('GetTypeCode', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.IsDBNull(
  const aValue: TCTObject): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('IsDBNull', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToBase64String(
  const aInArray: ByteArray): string;
begin
  Result := CTStaticMethodCallStringResult('ToBase64String', 525597343, [aInArray], [CTptObj]);
  CTClearResults;
end;

class function Convert.ToBase64String(
  const aInArray: ByteArray; 
  const aOffset: Integer; 
  const aLength: Integer): string;
begin
  Result := CTStaticMethodCallStringResult('ToBase64String', 2049934059, [aInArray, 
aOffset, 
aLength], [CTptObj, CTptInt, CTptInt]);
  CTClearResults;
end;

class function Convert.ToBase64String(
  const aInArray: ByteArray; 
  const aOffset: Integer; 
  const aLength: Integer; 
  const aOptions: Longword {Enum: 'System.Base64FormattingOptions}): string;
begin
  Result := CTStaticMethodCallStringResult('ToBase64String', -734722733, [aInArray, 
aOffset, 
aLength, 
aOptions], [CTptObj, CTptInt, CTptInt, CTptInt]);
  CTClearResults;
end;

class function Convert.ToBase64String(
  const aInArray: ByteArray; 
  const aOptions: Longword {Enum: 'System.Base64FormattingOptions}): string;
begin
  Result := CTStaticMethodCallStringResult('ToBase64String', -1993850327, [aInArray, 
aOptions], [CTptObj, CTptInt]);
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: Boolean): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: Byte): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: Cardinal): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: Char): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: Double): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: Extended): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: Int64): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: Integer): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: ShortInt): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: Single): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: SmallInt): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: string): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: TCTObject): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToBoolean2(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: UInt64): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToBoolean(
  const aValue: Word): Boolean;
begin
  Result := Boolean(CTStaticMethodCall('ToBoolean', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: Boolean): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: Byte): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: Cardinal): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: Char): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: Double): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: Extended): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: Int64): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: Integer): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: ShortInt): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: Single): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: SmallInt): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: string): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: string; 
  const aFromBase: Integer): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', -1490639855, [aValue, 
aFromBase], [CTptStr, CTptInt]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: TCTObject): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToByte2(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: UInt64): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToByte(
  const aValue: Word): Byte;
begin
  Result := Byte(CTStaticMethodCall('ToByte', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: Boolean): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: Byte): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: Cardinal): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: Char): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: Double): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: Extended): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: Int64): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: Integer): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: ShortInt): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: Single): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: SmallInt): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: string): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: TCTObject): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToChar2(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: UInt64): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToChar(
  const aValue: Word): Char;
begin
  Result := Char(CTStaticMethodCall('ToChar', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: Boolean): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: Byte): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: Cardinal): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: Char): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: Double): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: Extended): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: Int64): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: Integer): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: ShortInt): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: Single): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: SmallInt): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: string): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: TCTObject {ValueType: 'System.DateTime}): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToDateTime2(
  const aValue: TCTObject): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: UInt64): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToDateTime(
  const aValue: Word): TCTObject {ValueType: 'System.DateTime};
begin
  Result := TCTObject {ValueType: 'System.DateTime}(CTStaticMethodCall('ToDateTime', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: Boolean): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: Byte): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: Cardinal): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: Char): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: Double): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: Extended): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: Int64): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: Integer): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: ShortInt): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: Single): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: SmallInt): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: string): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: TCTObject): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToDecimal2(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: UInt64): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToDecimal(
  const aValue: Word): Extended;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDecimal', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: Boolean): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: Byte): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: Cardinal): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: Char): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: Double): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: Extended): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: Int64): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: Integer): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: ShortInt): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: Single): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: SmallInt): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: string): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: TCTObject): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToDouble2(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: UInt64): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToDouble(
  const aValue: Word): Double;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToDouble', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: Boolean): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: Byte): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: Cardinal): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: Char): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: Double): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: Extended): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: Int64): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: Integer): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: ShortInt): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: Single): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: SmallInt): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: string): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: string; 
  const aFromBase: Integer): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', -1490639855, [aValue, 
aFromBase], [CTptStr, CTptInt]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: TCTObject): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt162(
  const aValue: TCTObject {ValueType: 'System.DateTime}): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: UInt64): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToInt16(
  const aValue: Word): SmallInt;
begin
  Result := SmallInt(CTStaticMethodCall('ToInt16', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: Boolean): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: Byte): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: Cardinal): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: Char): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: Double): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: Extended): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: Int64): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: Integer): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: ShortInt): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: Single): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: SmallInt): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: string): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: string; 
  const aFromBase: Integer): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', -1490639855, [aValue, 
aFromBase], [CTptStr, CTptInt]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: TCTObject): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt322(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: UInt64): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToInt32(
  const aValue: Word): Integer;
begin
  Result := Integer(CTStaticMethodCall('ToInt32', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: Boolean): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: Byte): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: Cardinal): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: Char): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: Double): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: Extended): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: Int64): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: Integer): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: ShortInt): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: Single): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: SmallInt): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: string): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: string; 
  const aFromBase: Integer): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', -1490639855, [aValue, 
aFromBase], [CTptStr, CTptInt]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: TCTObject): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt642(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: UInt64): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToInt64(
  const aValue: Word): Int64;
begin
  Result := Int64(CTStaticMethodCall('ToInt64', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: Boolean): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: Byte): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: Cardinal): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: Char): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: Double): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: Extended): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: Int64): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: Integer): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: ShortInt): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: Single): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: SmallInt): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: string): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: string; 
  const aFromBase: Integer): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', -1490639855, [aValue, 
aFromBase], [CTptStr, CTptInt]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: TCTObject): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToSByte2(
  const aValue: TCTObject {ValueType: 'System.DateTime}): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: UInt64): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToSByte(
  const aValue: Word): ShortInt;
begin
  Result := ShortInt(CTStaticMethodCall('ToSByte', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: Boolean): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: Byte): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: Cardinal): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: Char): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: Double): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: Extended): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: Int64): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: Integer): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: ShortInt): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: Single): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: SmallInt): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: string): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: TCTObject): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToSingle2(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: UInt64): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToSingle(
  const aValue: Word): Single;
begin
  Result := StrToFloat(CTStaticMethodCallStringResult('ToSingle', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

function Convert.ToString: string;
begin
  Result := CTMethodCallStringResult('ToString', 0, [], []);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Boolean): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1961695790, [aValue], [CTptBool]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Boolean; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -669559798, [aValue, 
aProvider], [CTptBool, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Byte): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 130596736, [aValue], [CTptByte]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Byte; 
  const aToBase: Integer): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 102373090, [aValue, 
aToBase], [CTptByte, CTptInt]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Byte; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -832186683, [aValue, 
aProvider], [CTptByte, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Cardinal): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 2068024180, [aValue], [CTptUInt32]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Cardinal; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1305456923, [aValue, 
aProvider], [CTptUInt32, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Char): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -1596347522, [aValue], [CTptChar]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Char; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -112988709, [aValue, 
aProvider], [CTptChar, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Double): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1374542863, [FloatToStr(aValue)], [CTptDouble]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Double; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 902639943, [FloatToStr(aValue), 
aProvider], [CTptDouble, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Extended): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 886549570, [FloatToStr(aValue)], [CTptDecimal]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Extended; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -1167869526, [FloatToStr(aValue), 
aProvider], [CTptDecimal, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Int64): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1459142863, [aValue], [CTptInt64]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Int64; 
  const aToBase: Integer): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1166672127, [aValue, 
aToBase], [CTptInt64, CTptInt]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Int64; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 955659286, [aValue, 
aProvider], [CTptInt64, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Integer): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -114835243, [aValue], [CTptInt]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Integer; 
  const aToBase: Integer): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -2140566382, [aValue, 
aToBase], [CTptInt, CTptInt]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Integer; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1936634446, [aValue, 
aProvider], [CTptInt, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: ShortInt): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1295826597, [aValue], [CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: ShortInt; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -2033287299, [aValue, 
aProvider], [CTptObj, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Single): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 246254431, [FloatToStr(aValue)], [CTptSingle]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Single; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -326410512, [FloatToStr(aValue), 
aProvider], [CTptSingle, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: SmallInt): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 267501777, [aValue], [CTptInt16]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: SmallInt; 
  const aToBase: Integer): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -1129083866, [aValue, 
aToBase], [CTptInt16, CTptInt]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: SmallInt; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1135283794, [aValue, 
aProvider], [CTptInt16, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: string): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1497808633, [aValue], [CTptStr]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: TCTObject): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 1226748890, [aValue], [CTptObj]);
  CTClearResults;
end;

class function Convert.ToString2(
  const aValue: TCTObject {ValueType: 'System.DateTime}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -1058015500, [aValue], [CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString2(
  const aValue: TCTObject {ValueType: 'System.DateTime}; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', -1953718234, [aValue, 
aProvider], [CTptObj, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: UInt64): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 2067630967, [aValue], [CTptUInt64]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: UInt64; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 322918390, [aValue, 
aProvider], [CTptUInt64, CTptObj]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Word): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 2067762034, [aValue], [CTptUInt16]);
  CTClearResults;
end;

class function Convert.ToString(
  const aValue: Word; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): string;
begin
  Result := CTStaticMethodCallStringResult('ToString', 742115905, [aValue, 
aProvider], [CTptUInt16, CTptObj]);
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: Boolean): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: Byte): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: Cardinal): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: Char): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: Double): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: Extended): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: Int64): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: Integer): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: ShortInt): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: Single): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: SmallInt): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: string): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: string; 
  const aFromBase: Integer): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', -1490639855, [aValue, 
aFromBase], [CTptStr, CTptInt]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: TCTObject): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt162(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: UInt64): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToUInt16(
  const aValue: Word): Word;
begin
  Result := Word(CTStaticMethodCall('ToUInt16', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: Boolean): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: Byte): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: Cardinal): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: Char): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: Double): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: Extended): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: Int64): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: Integer): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: ShortInt): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: Single): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: SmallInt): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: string): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: string; 
  const aFromBase: Integer): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', -1490639855, [aValue, 
aFromBase], [CTptStr, CTptInt]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: TCTObject): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt322(
  const aValue: TCTObject {ValueType: 'System.DateTime}): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: UInt64): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToUInt32(
  const aValue: Word): Cardinal;
begin
  Result := Cardinal(CTStaticMethodCall('ToUInt32', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: Boolean): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 1961695790, [aValue], [CTptBool]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: Byte): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 130596736, [aValue], [CTptByte]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: Cardinal): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 2068024180, [aValue], [CTptUInt32]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: Char): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', -1596347522, [aValue], [CTptChar]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: Double): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 1374542863, [FloatToStr(aValue)], [CTptDouble]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: Extended): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 886549570, [FloatToStr(aValue)], [CTptDecimal]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: Int64): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 1459142863, [aValue], [CTptInt64]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: Integer): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', -114835243, [aValue], [CTptInt]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: ShortInt): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 1295826597, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: Single): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 246254431, [FloatToStr(aValue)], [CTptSingle]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: SmallInt): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 267501777, [aValue], [CTptInt16]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: string): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 1497808633, [aValue], [CTptStr]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: string; 
  const aFromBase: Integer): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', -1490639855, [aValue, 
aFromBase], [CTptStr, CTptInt]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: string; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 1182891347, [aValue, 
aProvider], [CTptStr, CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: TCTObject): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 1226748890, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt642(
  const aValue: TCTObject {ValueType: 'System.DateTime}): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', -1058015500, [aValue], [CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: TCTObject; 
  const aProvider: TCTObject {Interface: System.IFormatProvider}): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', -1186157869, [aValue, 
aProvider], [CTptObj, CTptObj]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: UInt64): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 2067630967, [aValue], [CTptUInt64]));
  CTClearResults;
end;

class function Convert.ToUInt64(
  const aValue: Word): UInt64;
begin
  Result := UInt64(CTStaticMethodCall('ToUInt64', 2067762034, [aValue], [CTptUInt16]));
  CTClearResults;
end;

{ System.Security.Cryptography.CryptoStreamMode }

class function CryptoStreamMode.Read: Longword;
begin
   Result := 0;
end;

class function CryptoStreamMode.Write: Longword;
begin
   Result := 1;
end;

end.
