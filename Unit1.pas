unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    FirstName: TEdit;
    LastName: TEdit;
    Salary: TEdit;
    Button3: TButton;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
FDConnection1.Connected := true;

FDQuery1.SQL.Text := 'SELECT * FROM Table_Name';

try
  FDQuery1.Open();

  Memo1.Clear;
  while not FDQuery1.Eof do
  begin
     Memo1.Lines.Add(FDQuery1.FieldByName('id').AsString + ' ' + FDQuery1.FieldByName('FIRSTNAME').AsString);
     FDQuery1.Next;
  end;
finally
  FDQuery1.Close;
end;

end;


procedure TForm1.Button2Click(Sender: TObject);
var Fname, Lname, Fsalary: string;

begin
try
  try
    FDQuery1.SQL.Text := 'SELECT * FROM Table_Name';
    FDQuery1.OpenOrExecute;
    Fname:= FirstName.Text;
    Lname:= LastName.Text;
    Fsalary:= Salary.Text;
  
    FDQuery1.SQL.Text := 'insert into TABLE_NAME (id, firstname, lastname, salary)' +
    ' values (' + IntToStr(FDQuery1.RecordCount + 1) + ' , ' + Fname  + ' , ' + Lname + ' , ' + Fsalary + ')';
    FDQuery1.Execute();
      
  except
    ShowMessage('Ошибка добавления');
  end;

finally
   FDQuery1.Close;
end;

end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  try
  
    try
       FDQuery1.SQL.Text := Memo2.Lines.Text;
       FDQuery1.OpenOrExecute;
    except
       ShowMessage('Ошибка выполнения');
    end;
    
  finally
    FDQuery1.Close;
  end;
end;

end.
