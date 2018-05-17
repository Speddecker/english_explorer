//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
  active_xml_node = NULL;
  active_panel = NULL;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ExitClick(TObject *Sender)
{
        //Application->MessageBoxA("Вы действительно хотите выйти?","Подтверждение закрытия программы",MB_YESNO);
        Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
  FormResize(this);
   try
   {
    XMLDocument1->LoadFromFile("map.xml");
    //<map>
    root_xml = XMLDocument1->DocumentElement;
    //<Корень>
    root_xml = root_xml->ChildNodes->Nodes[0];
   }
   catch(...)
   {
        Label1->Caption = "Error in file map.xml";
        ShowMessage("Файл map.xml не возможно открыть");
        return;
   }

   Home->Tag = (int)root_xml;

   CalculationPos();
   view_page(root_xml);

}
//---------------------------------------------------------------------------

void TForm1::view_page(IXMLNode *node_xml)
{
  String s;
  TPanel *p;
  int x, y, start_y;
  int count_panel;
  x = space_w_e;
  y = space_h_e;

  IXMLNode* tmp_xml, *parent_xml;


  DeleteAllPanel();
  active_xml_node = node_xml;
  Label1->Caption = node_xml->AttributeNodes->Nodes[0]->Text;
  Position_Lable();
  if (node_xml != root_xml)
  {
   Backward->Visible = true;
         //   node_xml->ParentNode
   parent_xml = node_xml->ParentNode;
   Backward->Tag =(int)(parent_xml);
  }
  else
   Backward->Visible = false;

  //вывод элементов перходящих на след страницы
  count_panel = 0;
  for (int i = 0;i < node_xml->ChildNodes->Count; i++)
  {
    tmp_xml = node_xml->ChildNodes->Nodes[i];
    s = tmp_xml->NodeName;
    if (s == "page")
    {
      x = space_w_e + (count_panel % count_le) * (space_w_e + W_e);
      y = start_pos + (count_panel / count_le) * (space_h_e + H_e);
      p =CreatePanel(tmp_xml,x,y,H_e,W_e, clYellow);
      p->OnClick = Page_Click;
      count_panel++;
    }
  }

  //вывод кнопок
  count_panel = 0;
  start_y = y + H_e + start_pos;
  for (int i = 0;i < node_xml->ChildNodes->Count; i++)
  {
    tmp_xml = node_xml->ChildNodes->Nodes[i];
    s = tmp_xml->NodeName;
    if (s == "button")
    {
      x = space_w_e + (count_panel % count_le) * (space_w_e + W_e);
      y = start_y + (count_panel / count_le) * (space_h_e + H_e);
      p = CreatePanel(tmp_xml,x,y,H_e,W_e, clGreen);
      p->OnClick = Button_Click;
      count_panel++;
    }
  }


}

void TForm1::DeleteAllPanel()
{
 bool b = false;
 int i = 0;
  TControl *c;
  while (Form1->ControlCount > 0)
  {
   b = false;
   c = Form1->Controls[i];
   if ((c->Tag != 0) && (c->Name != "Backward") && (c->Name != "Exit") && (c->Name != "Home"))
   {
        Form1->Controls[i]->Free();
        b = true;
   }
   if (!b)
    i++;
   else
    if (i >= Form1->ControlCount)
     break;
   if (i == Form1->ControlCount)
    break;
  }
}

TPanel* TForm1::CreatePanel(IXMLNode *node_xml,int x,int y, int h, int w, TColor col)
{
   TPanel* p;
   p = new TPanel(Form1);
   p->Top = y;
   p->Left = x;
   p->Width = w;
   p->Height = h;
   p->Caption = node_xml->AttributeNodes->Nodes[0]->Text;
   p->Color = col;
   p->Cursor = crHandPoint;
   p->Font->Name = "Arial";
   p->Font->Size = 18;
   p->Font->Style = TFontStyles() << fsBold << fsItalic;
   p->Parent = Form1;
   //Сохранение адреса ноды в тэг
   p->Tag = (int)node_xml;
   return p;
}

void TForm1::CalculationPos()
{
  W_e = ((Form1->Width - space_w_e) / count_le) - space_w_e;
  H_e = 50;
}

void TForm1::Position_Lable()
{
   Label1->Top = 0;
   Label1->Left = 50;
   Label1->Width = Form1->Width - 50;
}

void __fastcall TForm1::FormResize(TObject *Sender)
{
   Home->Top = start_image_btn;
   Home->Left = Form1->Width / 2 - Home->Width / 2;

   Backward->Top = start_image_btn;
   Backward->Left = Home->Left - start_image_btn - Backward->Width;

   Exit->Top = start_image_btn;
   Exit->Left = Home->Left + Home->Width + start_image_btn;


   CalculationPos();
   if (active_xml_node != NULL)
    view_page(active_xml_node);
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Page_Click(TObject *Sender)
{
   IXMLNode *tmp_xml;
   TPanel *panel;

   //преобразование панели из TObject к TPanel
   panel = ((TPanel *)Sender);
   //Преобразование значения тэга к IXMLNode
   tmp_xml = ((IXMLNode *)(panel->Tag));

   if (tmp_xml->ChildNodes->Count == 0)
   {
     ShowMessage("Пустая страница");
     return;
   }
   //Создание и установка сообщения в очередь к нашеиу окну типа WM_USER+1
   PostMessage(Form1->Handle,WM_USER+1,panel->Tag,0);
   active_panel = Sender;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button_Click(TObject *Sender)
{
         IXMLNode *tmp_xml;
         TPanel *panel;
         String s;

         panel = ((TPanel *)Sender);
         tmp_xml = ((IXMLNode *)(panel->Tag));
         s = "EXPLORER /e, " + tmp_xml->AttributeNodes->Nodes[1]->Text;
         WinExec(s.c_str(), SW_SHOW);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::WM_USER_VIEW_PAGE(TMessage & msg)
{
        IXMLNode *tmp_xml;
        tmp_xml = (IXMLNode *)msg.WParam;
        view_page(tmp_xml);
}

