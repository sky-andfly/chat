//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "server.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
Tmain *main;
//---------------------------------------------------------------------------
__fastcall Tmain::Tmain(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall Tmain::Button2Click(TObject *Sender)
{
ServerSocket1->Port = EditPort->Text.ToInt(); //�������� ���� � ������ �����
ServerSocket1->Active = true; //�������� ������

}
//---------------------------------------------------------------------------
void  Tmain::Messages(AnsiString Message){
  MemoMessages->Lines->Add(Message); //����� ��������� �� �����
  for(int i = 0; i < ServerSocket1->Socket->ActiveConnections; i++) //�������� ���� �������� ���� ������������
  {
	ServerSocket1->Socket->Connections[i]->SendText(Message); //�������� ���������
  }


}
void __fastcall Tmain::ServerSocket1ClientRead(TObject *Sender, TCustomWinSocket *Socket)

{
Messages(Socket->ReceiveText());
}
//---------------------------------------------------------------------------

void __fastcall Tmain::FormClose(TObject *Sender, TCloseAction &Action)
{
ServerSocket1->Active = false;
}
//---------------------------------------------------------------------------

