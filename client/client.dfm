object main: Tmain
  Left = 0
  Top = 0
  Caption = 'client'
  ClientHeight = 416
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 32
    Height = 21
    Caption = 'Port'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 43
    Width = 36
    Height = 21
    Caption = 'Host'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 70
    Width = 35
    Height = 21
    Caption = 'User'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object EditPort: TEdit
    Left = 50
    Top = 18
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '90'
  end
  object EditHost: TEdit
    Left = 50
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '127.0.0.1'
  end
  object EditName: TEdit
    Left = 50
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'user'
  end
  object Button1: TButton
    Left = 224
    Top = 35
    Width = 105
    Height = 42
    Caption = 'Connect to server'
    TabOrder = 3
    OnClick = Button1Click
  end
  object MemoMessages: TMemo
    Left = 50
    Top = 99
    Width = 455
    Height = 238
    Lines.Strings = (
      '')
    TabOrder = 4
  end
  object EditMessage: TEdit
    Left = 50
    Top = 360
    Width = 391
    Height = 21
    TabOrder = 5
  end
  object Button2: TButton
    Left = 446
    Top = 360
    Width = 59
    Height = 48
    Caption = 'Send'
    TabOrder = 6
    OnClick = Button2Click
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnRead = ClientSocket1Read
    Left = 480
    Top = 24
  end
end
