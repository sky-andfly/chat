object main: Tmain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Server'
  ClientHeight = 324
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 95
    Height = 21
    Caption = 'Connection: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object EditPort: TEdit
    Left = 133
    Top = 21
    Width = 124
    Height = 24
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '90'
  end
  object MemoMessages: TMemo
    Left = 32
    Top = 64
    Width = 337
    Height = 161
    BorderStyle = bsNone
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 32
    Top = 266
    Width = 273
    Height = 25
    BorderStyle = bsNone
    TabOrder = 2
  end
  object Button1: TButton
    Left = 320
    Top = 264
    Width = 49
    Height = 25
    Caption = 'send'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 263
    Top = 21
    Width = 74
    Height = 28
    Caption = 'On!'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 400
    Top = 32
  end
end
