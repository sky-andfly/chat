//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "client.h"
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
void __fastcall Tmain::Button1Click(TObject *Sender)
{
ClientSocket1->Port = EditPort->Text.ToInt(); //������ ������� ����
ClientSocket1->Host = EditHost->Text; //������ ������� ����
ClientSocket1->Active = true; //�������� �������

}
//---------------------------------------------------------------------------
void __fastcall Tmain::Button2Click(TObject *Sender)
{
ClientSocket1->Socket->SendText(EditName->Text + ": " + EditMessage->Text);
main->Caption="client - "+EditName->Text;
}
//---------------------------------------------------------------------------
void __fastcall Tmain::ClientSocket1Read(TObject *Sender, TCustomWinSocket *Socket)

{
MemoMessages->Lines->Add(Socket->ReceiveText());
}
//---------------------------------------------------------------------------
void __fastcall Tmain::FormClose(TObject *Sender, TCloseAction &Action)
{
ClientSocket1->Active = false;
}
//---------------------------------------------------------------------------
