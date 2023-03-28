unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    function StringToComponent(Value: string): TComponent;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  MyStringList: TStringList;
  i: Integer;
  a: Tbytes;

begin

  MyStringList := TStringList.Create;
  try
    // Adicione itens ao seu TStringList aqui
//    myStringList.Add('object txt: TEdit Left = 176 Top =48 Width = 121 Height = 21 TabOrder = 0 Text = "tx"end');
    myStringList.Add('a');
//    myStringList.Add('object txt: TEdit Left = 176 Top =98 Width = 121 Height = 21 TabOrder = 0 Text = "b3"end');

    for i := 0 to MyStringList.Count - 1 do
    begin
      Memo1.Lines.Add(MyStringList[i]);
    end;
  finally
    MyStringList.Free; // Lembre-se de liberar a memória alocada pelo objeto
  end;
end;


function TForm1.StringToComponent(Value: string): TComponent;
var
  StrStream: TStringStream;
  BinStream: TMemoryStream;
begin
  StrStream := TStringStream.Create(Value);
  try
    BinStream := TMemoryStream.Create;
    try
      ObjectTextToBinary(StrStream, BinStream);
      BinStream.Seek(0, soFromBeginning);
      Result := BinStream.ReadComponent(nil);
    finally
      BinStream.Free;
    end;
  finally
    StrStream.Free;
  end;

end;




procedure TForm1.Button2Click(Sender: TObject);
var
  loObj: TComponent;

begin

  loObj := StringToComponent(Memo1.Lines.Text);

  if (loObj is TWinControl) then
    (loObj as TWinControl).Parent := Panel1

  else if (loObj is TEdit) then
    (loObj as TEdit).Parent := Panel1

  else if (loObj is TLabel) then
    (loObj as TLabel).Parent := Panel1

  else
    (loObj as TGraphicControl).Parent := Panel1;

  InsertComponent(loObj);

end;

initialization

RegisterClass(TPanel);
RegisterClass(TForm);
RegisterClass(TLabel);
RegisterClass(TEdit);
RegisterClass(TButton);


end.
