unit Main;

interface

uses
  CTmscorlib,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    editSource: TEdit;
    memoOutput: TMemo;
    editPassword: TEdit;
    butnEncrypt: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure butnEncryptClick(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

procedure TForm1.butnEncryptClick(Sender: TObject);
// Loosely translated from C# example at:
// http://www.codeproject.com/KB/security/DotNetCrypto.aspx
var
  xBytes: ByteArray;
  xPDBBytes: ByteArray;
  xPDB: PasswordDeriveBytes;
  xCS: CryptoStream;
  xMS: MemoryStream;
  xAlg: Rijndael;
  xEncrypted: ByteArray;
begin
  xBytes := Encoding.Unicode.GetBytes(editSource.Text); try
    //TODO: Allow transfer from a Delphi array, and pass an open array
    xPDBBytes := ByteArray.Create(13); try
      xPDBBytes[0] := $49;
      xPDBBytes[1] := $76;
      xPDBBytes[2] := $61;
      xPDBBytes[3] := $6e;
      xPDBBytes[4] := $20;
      xPDBBytes[5] := $4d;
      xPDBBytes[6] := $65;
      xPDBBytes[7] := $64;
      xPDBBytes[8] := $76;
      xPDBBytes[9] := $65;
      xPDBBytes[10] := $64;
      xPDBBytes[11] := $65;
      xPDBBytes[12] := $76;
      xPDB := PasswordDeriveBytes.Create(editPassword.Text, xPDBBytes); try
        xMS := MemoryStream.Create(); try
          xAlg := Rijndael.Create1(); try
            xAlg.Key := xPDB.GetBytes(32);
            xAlg.IV := xPDB.GetBytes(16);
            //TODO: Document why we have to cast xMS
            //and why in the future it will go away
            xCS := CryptoStream.Create(Stream(xMS), xAlg.CreateEncryptor()
            , CryptoStreamMode.Write); try
              xCS.Write(xBytes, 0, xBytes.Length);
              xCS.Close();
            finally xCS.Free; end;
          finally xAlg.Free; end;
          xEncrypted := xMS.ToArray(); try
            memoOutput.Lines.Text := Convert.ToBase64String(xEncrypted);
          finally xEncrypted.Free; end;
        finally xMS.Free; end;
      finally xPDB.Free; end;
    finally xPDBBytes.Free; end;
  finally xBytes.Free; end;
end;

end.
