object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 572
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 264
    Top = 8
    Width = 120
    Height = 15
    Caption = #1058#1072#1073#1083#1080#1094#1072' TABLE_NAME'
  end
  object Label2: TLabel
    Left = 264
    Top = 27
    Width = 188
    Height = 15
    Caption = #1055#1086#1083#1103' id, firstname, lastname, salary'
  end
  object Label3: TLabel
    Left = 104
    Top = 416
    Width = 75
    Height = 15
    Caption = #1055#1080#1096#1080' '#1079#1072#1087#1088#1086#1089
  end
  object Label4: TLabel
    Left = 48
    Top = 51
    Width = 54
    Height = 15
    Caption = 'FirstName'
  end
  object Label5: TLabel
    Left = 48
    Top = 80
    Width = 53
    Height = 15
    Caption = 'LastName'
  end
  object Label6: TLabel
    Left = 48
    Top = 109
    Width = 31
    Height = 15
    Caption = 'Salary'
  end
  object Button1: TButton
    Left = 264
    Top = 368
    Width = 75
    Height = 25
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 264
    Top = 48
    Width = 329
    Height = 314
    TabOrder = 1
  end
  object Button2: TButton
    Left = 104
    Top = 160
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object FirstName: TEdit
    Left = 104
    Top = 48
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object LastName: TEdit
    Left = 104
    Top = 77
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object Salary: TEdit
    Left = 104
    Top = 106
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object Button3: TButton
    Left = 288
    Top = 504
    Width = 75
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object Memo2: TMemo
    Left = 104
    Top = 432
    Width = 489
    Height = 58
    TabOrder = 7
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=asd'
      'DriverID=FB'
      
        'Database=C:\Program Files\Firebird\Firebird_4_0\examples\empbuil' +
        'd\TEST.FDB')
    Connected = True
    Left = 136
    Top = 296
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      #39'Select * from Table_Name'#39';')
    Left = 136
    Top = 344
  end
end
