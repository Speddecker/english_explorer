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
#include <Graphics.hpp>
#include <msxmldom.hpp>
#include <XMLDoc.hpp>
#include <xmldom.hpp>
#include <XMLIntf.hpp>
#include <Buttons.hpp>
#include <Mask.hpp>
#include <ImgList.hpp>
//---------------------------------------------------------------------------
const
   int start_pos = 100;
   int space_h_e = 10;
   int space_w_e = 20;
   int count_le = 3;
   int start_image_btn = 50;

class TForm1 : public TForm
{

protected:
        BEGIN_MESSAGE_MAP
        VCL_MESSAGE_HANDLER(WM_USER+1, TMessage, WM_USER_VIEW_PAGE)
        //VCL_MESSAGE_HANDLER(WM_USER+2, TMessage, WMUSER2)
        END_MESSAGE_MAP(TForm)
        void __fastcall WM_USER_VIEW_PAGE(TMessage & msg);
        //void __fastcall WMUSER2(TMessage & msg);

__published:	// IDE-managed Components
        TImage *Background;
        TImage *Exit;
        TXMLDocument *XMLDocument1;
        TLabel *Label1;
        TImage *Home;
        TImage *Backward;
        void __fastcall ExitClick(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormResize(TObject *Sender);
        void __fastcall Page_Click(TObject *Sender);
        void __fastcall Button_Click(TObject *Sender);
private:	// User declarations
        int H_e, W_e;
        IXMLNode *active_xml_node, *root_xml;
        TObject *active_panel;

        void view_page(IXMLNode *node_xml);
        TPanel* CreatePanel(IXMLNode *node_xml,int x,int y, int h, int w, TColor col);
        void CalculationPos();
        void DeleteAllPanel();
        void Position_Lable();
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
