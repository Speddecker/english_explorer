//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
TForm2 *Form2;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
  Form2 = new TForm2(this);


}
//---------------------------------------------------------------------------


//Добавление страниц
void __fastcall TForm1::Button1Click(TObject *Sender)
{
        TTreeNode* tree;

        if (Edit1->Text.IsEmpty())
        {
           ShowMessage("Введите название страницы");
        //   MessageBox(this, "Введите название страницы", "Ошибка", MB_OK);
           Edit1->SetFocus();
           return;
        }

         if (TreeView1->Selected != NULL)
        {
                tree = TreeView1->Selected;
                if (tree->ImageIndex != 1)
                {
                        tree = TreeView1->Items->AddChild(TreeView1->Selected, Edit1->Text);
                        tree->ImageIndex = 0;
                        tree->SelectedIndex = 0;
                }
                else
                {
                  Application->MessageBoxA("На кнопке нельзя создавать страницы","Ошибка",MB_OK);
                }
        }


        
}
//---------------------------------------------------------------------------

//Добавление кнопок
void __fastcall TForm1::Button3Click(TObject *Sender)
{
        TTreeNode* tree;

        if (Edit1->Text.IsEmpty())
        {
           ShowMessage("Введите название кнопки");
           Edit1->SetFocus();
           return;
        }

         if (Edit2->Text.IsEmpty())
        {
           ShowMessage("Введите путь кнопки");
           Edit2->SetFocus();
           return;
        }

        if (TreeView1->Selected != NULL)
        {
                tree = TreeView1->Selected;
                if (tree->SelectedIndex != 1)
                {
                        tree = TreeView1->Items->AddChild(TreeView1->Selected,  Edit1->Text + " | "+ Edit2->Text);
                        tree->ImageIndex = 1;
                        tree->SelectedIndex = 1;
                }
                else
                {
                  Application->MessageBoxA("На кнопке нельзя создавать кнопки","Ошибка",MB_OK);
                }
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{

        StrPath = ExtractFileDir(Application->ExeName);
        StrPath = StrPath + "\\map.xml";

        bool b = true;
        try
        {
          ReadXMLFile();
        }
        catch (...)
        {
          b = false;
        }
        if (!b)
           TreeView1->Items->Add(NULL, "Main");
}

void TForm1::ReadXMLFile()
{
  IXMLNode * root, *element;
  TTreeNode* tree;

  XMLDocument1->LoadFromFile("map.xml");

  String s;
  //<map>
  root = XMLDocument1->DocumentElement;
  //<Корень>
  root = root->ChildNodes->Nodes[0];
  //Создаём дерево
  CreateTreeNodes(root, NULL);
  return;
}

  //---------------------------------------------------------------------------
void TForm1::CreateTreeNodes(IXMLNode *node_xml, TTreeNode *node_tree)
{
        String s;
        TTreeNode *tmp_tree;
        s = node_xml->NodeName;
        if (s == "page")
        {
           tmp_tree = TreeView1->Items->AddChild(node_tree, node_xml->AttributeNodes->Nodes[0]->Text);
           tmp_tree->ImageIndex = 0;
           tmp_tree->SelectedIndex = 0;
           for (int i = 0;i < node_xml->ChildNodes->Count; i++)
              CreateTreeNodes(node_xml->ChildNodes->Nodes[i], tmp_tree);
           return;

        }

        s = node_xml->AttributeNodes->Nodes[0]->Text + " | " + node_xml->AttributeNodes->Nodes[1]->Text;
        tmp_tree = TreeView1->Items->AddChild(node_tree, s);
        tmp_tree->ImageIndex = 1;
        tmp_tree->SelectedIndex = 1;
}



//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
        TTreeNode* tree;
        if (TreeView1->Selected != NULL)
        {
                tree =  TreeView1->Selected;
                if (TreeView1->Items->Item[0] == TreeView1->Selected)
                {
                        Application->MessageBoxA("Нельзя удалять корень","Ошибка",MB_OK);
                        return;
                }

                TreeView1->Items->Delete(tree);


        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
        TTreeNode* tree;
        if (TreeView1->Selected != NULL)
        {
                tree = TreeView1->Selected;
                if (tree->SelectedIndex == 0)
                {
                        if (Edit1->Text.IsEmpty())
                        {
                        ShowMessage("Введите название кнопки");
                        //   MessageBox(this, "Введите название страницы", "Ошибка", MB_OK);
                        Edit1->SetFocus();
                        return;
                        }
                         tree->Text = Edit1->Text;
                }
                else
                {
                        if (Edit1->Text.IsEmpty())
                        {
                        ShowMessage("Введите название кнопки");
                        //   MessageBox(this, "Введите название страницы", "Ошибка", MB_OK);
                        Edit1->SetFocus();
                        return;
                        }

                        if (Edit2->Text.IsEmpty())
                        {
                        ShowMessage("Введите путь кнопки");
                        //   MessageBox(this, "Введите название страницы", "Ошибка", MB_OK);
                        Edit2->SetFocus();
                        return;
                        }
                        tree->Text = Edit1->Text + " | " + Edit2->Text; 
                }
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
        Form2->ShowModal();
        if (Form2->result_close == 1)
        {
          Edit2->Text = Form2->Label1->Caption;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button6Click(TObject *Sender)
{
        IXMLNode * root, *element;

        XMLDocument1->Active = false;
        XMLDocument1->FileName = "";
        XMLDocument1->XML->Text = "";
        XMLDocument1->Active = true;

        root = XMLDocument1->AddChild("map");

        CreateXMLNodes(TreeView1->Items->Item[0], root);

        try
        { 
          XMLDocument1->SaveToFile(StrPath);
        }
        catch (...)
        {
           Application->MessageBoxA("Не удалось сохранить файл map.xml","Ошибка",MB_OK);
        }
}
//---------------------------------------------------------------------------
void TForm1::CreateXMLNodes(TTreeNode *node, IXMLNode *node_xml)
{
        IXMLNode *tmp_xml;
        if (node->ImageIndex == 0)//Еслт нода - страница
        {
                tmp_xml = node_xml->AddChild("page");
                tmp_xml->Attributes["name"] = node->Text;
                for (int i = 0 ; i < node->Count; i++)
                  CreateXMLNodes(node->Item[i] , tmp_xml);
                return;
        }
        //Еслт нода - кнопка
          tmp_xml = node_xml->AddChild("button");
          tmp_xml->Attributes["name"] = GetNameButton(node->Text);
          tmp_xml->Attributes["path"] = GetPathButton(node->Text);
}
//-------------------------------------------------------------------------
String TForm1::GetNameButton(String s)
{
   String name;
   name = s;
   name.SetLength(name.Pos(" | "));

   return name;
}
//-------------------------------------------------------------------------

String TForm1::GetPathButton(String s)
{
   String path = s;
   char *ch;
   ch = s.c_str();
   ch = ch + path.Pos(" | ")+ 2;
   path = ch;
   return path;
}
