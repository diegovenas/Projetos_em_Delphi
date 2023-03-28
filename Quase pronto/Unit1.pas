unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls ;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    function ComponentToString(Component: TComponent): string;
    function StringToComponent(Value: string): TComponent;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

//converte o componente em string!
//procedure TForm1.Button1Click(Sender: TObject);
//begin
//  Memo1.Lines.Add(ComponentToString(Edit1));
//end;





procedure TForm1.Button1Click(Sender: TObject);
var
  Componente: TComponent;
  ComponentesStr: TStringList;
  I: Integer;
  diego : string;

begin

  diego := ' nomeee';
  ComponentesStr := TStringList.Create;

  try
    // itera por todos os componentes do formulário
    for I := 0 to Self.ComponentCount - 1 do
    begin
      Componente := Self.Components[I];

      // converte o componente em uma string e adiciona à lista de strings
      ComponentesStr.Add(ComponentToString(Componente));
    end;

    // salva todas as strings em um arquivo
//    Memo1.Lines.Add((ComponentesStr));
    Memo1.Lines.Assign(ComponentesStr);

  finally
    ComponentesStr.Free;
  end;
end;






//converte o componente em string!
function TForm1.ComponentToString(Component: TComponent): string;
var
  BinStream: TMemoryStream;
  StrStream: TStringStream;
  s: string;
begin
  BinStream := TMemoryStream.Create;
  try
    StrStream := TStringStream.Create(s);
    try
      BinStream.WriteComponent(Component);
      BinStream.Seek(0, soFromBeginning);
      ObjectBinaryToText(BinStream, StrStream);
      StrStream.Seek(0, soFromBeginning);
      Result := StrStream.DataString;
    finally
      StrStream.Free;

    end;
  finally
    BinStream.Free
  end;
end;


//converte a string em componente
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

//converte a string em componente
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


initialization

RegisterClass(TForm);
RegisterClass(TLabel);
RegisterClass(TEdit);

end.
