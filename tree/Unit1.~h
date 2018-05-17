//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
#include <ComCtrls.hpp>
#include <Menus.hpp>
#include <ImgList.hpp>
#include <msxmldom.hpp>
#include <XMLDoc.hpp>
#include <xmldom.hpp>
#include <XMLIntf.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TTreeView *TreeView1;
        TButton *Button1;
        TButton *Button2;
        TButton *Button3;
        TImageList *ImageList1;
        TEdit *Edit1;
        TEdit *Edit2;
        TButton *Button5;
        TLabel *Label1;
        TLabel *Label2;
        TButton *Button4;
        TXMLDocument *XMLDocument1;
        TButton *Button6;
        TPanel *Panel1;
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button3Click(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Button5Click(TObject *Sender);
        void __fastcall Button4Click(TObject *Sender);
        void __fastcall Button6Click(TObject *Sender);
private:
        void CreateTreeNodes(IXMLNode *node_xml, TTreeNode *node);
	void CreateXMLNodes(TTreeNode *node, IXMLNode *node_xml);
        String GetNameButton(String s);
        String GetPathButton(String s);
        void ReadXMLFile(); 
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
        String StrPath;
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
