/*
 * This file is part of the Marmalade SDK Code Samples.
 *
 * (C) 2001-2012 Marmalade. All Rights Reserved.
 *
 * This source code is intended only as a supplement to the Marmalade SDK.
 *
 * THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
 * PARTICULAR PURPOSE.
 */
#include "s3e.h"
#include "Iw2D.h"
#include "IwGx.h"
#include "IwGxFont.h"
#include "IwUI.h"
#include "game.h"
#include <time.h>
#include <string.h>
#include <string>
#include "IwResManager.h"
#include "xmlloader.h"
#include "npc.h"
using std::string;

int checkBox = 0;
bool flag = true;
bool flag2 = true;
CIwGxFont* Font;
CIw2DImage* txtButt;
CXmlLoader* g_cXml;
int whereAt;
int txtState;
int textsPrinted;
int scaleFactor;
int selectionMade;
int timeStart;
int timeMS;
bool timeFlag;
bool reply;
bool playerTop;
	char tempP[250];
	char tempR[250];
	char tempR2[250];
	char tempOp1[50];
	char tempOp2[50];
	char tempOp3[50];	
	char tempOp4[50];
CNpc* rick;
CGame::CGame()
{
	rick= new CNpc("rick");
	scaleFactor=1;
	whereAt=0;
	txtState=0;
	textsPrinted=0;
	selectionMade=4;
	reply=false;
	timeStart = 0;
	timeFlag = false;
	timeMS = 0;
	playerTop=false;
	
	IwGxInit();
	Iw2DInit();
    IwGetResManager()->LoadGroup("IwUIBasicLabelCode.group");

    //Get the example font and set it to be the current font
    CIwGxFont* pFont = (CIwGxFont*)IwGetResManager()->GetResNamed("times", "CIwGxFont");

    //clear to white
    IwGxSetColClear(0x55, 0x55, 0xff, 0xff);
    IwResManagerInit();
	IwGxFontInit();

	

    // Load the group containing the "arial14" font
    IwGetResManager()->LoadGroup("fonts.group");
	txtButt=Iw2DCreateImage("txtButton_small.png");
    // Prepare the iwgxfont resource for rendering using Iw2D
    Font = (CIwGxFont*)IwGetResManager()->GetResNamed("font","CIwGxFont");
    IwGxSetColClear(0x55, 0x55, 0xff, 0xff);


	
}


CGame::~CGame()
{
	delete txtButt;
	delete Font;
	IwResManagerTerminate();
	IwGxFontTerminate();
	Iw2DTerminate();
	IwGxTerminate();
	//delete g_cXml;
	delete rick;
}


void CGame::Update()
{
	if(s3ePointerGetState(S3E_POINTER_BUTTON_SELECT)&&whereAt==0)
	{	if(s3ePointerGetX()>(IwGxGetScreenWidth()/6)&&s3ePointerGetX()<((IwGxGetScreenWidth()/6)+txtButt->GetWidth())&&s3ePointerGetY()>(IwGxGetScreenHeight()/2)&&s3ePointerGetY()<((IwGxGetScreenHeight()/2)+txtButt->GetHeight()))
			whereAt=1;
	}
	else if(s3ePointerGetState(S3E_POINTER_BUTTON_SELECT)==S3E_POINTER_STATE_DOWN&&whereAt==1)
	{
		if(s3ePointerGetX()>(IwGxGetScreenWidth()*0.0f)&&s3ePointerGetX()<(IwGxGetScreenWidth()*1.0f)&&s3ePointerGetY()>(IwGxGetScreenHeight()*0.0f)&&s3ePointerGetY()<(IwGxGetScreenHeight()*0.075f))
			whereAt=0;
		else if(s3ePointerGetX()>(IwGxGetScreenWidth()*0.0f)&&s3ePointerGetX()<(IwGxGetScreenWidth()*1.0f)&&s3ePointerGetY()>(IwGxGetScreenHeight()*0.125f)&&s3ePointerGetY()<(IwGxGetScreenHeight()*0.2f))
			whereAt=2;
	}
	else if(s3ePointerGetState(S3E_POINTER_BUTTON_SELECT)==S3E_POINTER_STATE_DOWN&&whereAt==2)
	{
		if(s3ePointerGetX()>(IwGxGetScreenWidth()*0.0f)&&s3ePointerGetX()<(IwGxGetScreenWidth()*1.0f)&&s3ePointerGetY()>(IwGxGetScreenHeight()*0.0f)&&s3ePointerGetY()<(IwGxGetScreenHeight()*0.075f))
		{
			whereAt=1;
			txtState=0;
			selectionMade=0;
			reply=false;
			timeStart = 0;
			timeFlag = false;
			timeMS = 0;
		}
		
	}
		else if(txtState==0&&selectionMade==4&&s3ePointerGetState(S3E_POINTER_BUTTON_SELECT)==S3E_POINTER_STATE_RELEASED&&whereAt==2){
			if(s3ePointerGetX()>(IwGxGetScreenWidth()*0.0f)&&s3ePointerGetX()<(IwGxGetScreenWidth()*0.5f)&&s3ePointerGetY()>(IwGxGetScreenHeight()*0.85f)&&s3ePointerGetY()<(IwGxGetScreenHeight()*0.925f))
				selectionMade = 0;
			else if(s3ePointerGetX()>(IwGxGetScreenWidth()*0.5f)&&s3ePointerGetX()<(IwGxGetScreenWidth()*1.0f)&&s3ePointerGetY()>(IwGxGetScreenHeight()*0.85f)&&s3ePointerGetY()<(IwGxGetScreenHeight()*0.925f))
				selectionMade = 1;
			else if(s3ePointerGetX()>(IwGxGetScreenWidth()*0.0f)&&s3ePointerGetX()<(IwGxGetScreenWidth()*0.5f)&&s3ePointerGetY()>(IwGxGetScreenHeight()*0.925f)&&s3ePointerGetY()<(IwGxGetScreenHeight()*1.0f))
				selectionMade = 2;
			else if(s3ePointerGetX()>(IwGxGetScreenWidth()*0.5f)&&s3ePointerGetX()<(IwGxGetScreenWidth()*1.0f)&&s3ePointerGetY()>(IwGxGetScreenHeight()*0.925f)&&s3ePointerGetY()<(IwGxGetScreenHeight()*1.0f))
				selectionMade = 3;
			if(selectionMade!=4)
			{
				//Render();
			}
	}
}


void CGame::Render()
{

    // for example, clear to black (the order of components is ABGR)
    IwGxClear();
	
	IwGxFontSetScale(IW_FIXED(0.6f));

	if(timeFlag==true)
	{
		if((selectionMade>0&&selectionMade<5))
		{
			if(s3eTimerGetMs()>timeStart+timeMS)
			{
				txtState=selectionMade;
				selectionMade=5;
				timeStart=0;
				timeMS=0;
				timeFlag=false;
				waitTime(4000);
			}
		}
		else if(selectionMade==5)
		{
			if(s3eTimerGetMs()>timeStart+timeMS)
			{
				reply=true;
				selectionMade=0;
				timeStart=0;
				timeMS=0;
				timeFlag=false;
			}
		}
	}

	switch(whereAt){
		

	case 0: //Main Menu Render
		{
	    Iw2DSurfaceClear(0xff000000);
		IwGxSetColClear(0,0,0,0);
		time_t now = time(NULL);
		struct tm* local_tm = localtime(&now);
		char time[100];
		strftime (time, 100, "%I:%M%p",local_tm );
		IwGxFontSetFont(Font);
		IwGxLightingOn();
		IwGxLightingEmissive(true);
		IwGxFontSetRect(CIwRect(IwGxGetScreenWidth()/7.5,IwGxGetScreenHeight()/5,(int16)IwGxGetScreenWidth()-10,(int16)IwGxGetScreenHeight()-50));
		scaleFactor=(IwGxGetScreenHeight()*5)+(IwGxGetScreenWidth()*5);
		IwGxFontSetScale(scaleFactor);
		IwGxFontDrawText(time);
		Iw2DDrawImage(txtButt, CIwSVec2(IwGxGetScreenWidth()/6,IwGxGetScreenHeight()/2));
		IwGxFlush();Iw2DSurfaceShow();
		IwGxSwapBuffers();
		s3eDeviceYield(0);
		break;}
	case 1: 
		{IwGxSetColClear(20,20,20,0);

		IwGxFontSetFont(Font);
		IwGxLightingOn();
		IwGxLightingEmissive(true);

		CIwRect rectA = CIwRect(IwGxGetScreenWidth()*0.0f,IwGxGetScreenHeight()*0.0f,IwGxGetScreenWidth()*1.0f,IwGxGetScreenHeight()*0.075f);
		
		Iw2DSetColour(0xff222222);
		Iw2DFillRect(CIwSVec2(rectA.x,rectA.y),CIwSVec2(rectA.w,rectA.h));
		IwGxFlush();
		Iw2DSetColour(0xff444444);
		Iw2DDrawRect(CIwSVec2(rectA.x,rectA.y),CIwSVec2(rectA.w,rectA.h));
		IwGxFlush();
		Iw2DSetColour(0xffffffff);

		rectA.x += IwGxGetScreenWidth()*0.3f;
		
		IwGxFontSetRect(rectA);
		IwGxFontDrawText("GO BACK");
		IwGxFlush();

		CIwRect rectB = CIwRect(IwGxGetScreenWidth()*0.0f,IwGxGetScreenHeight()*0.125f,IwGxGetScreenWidth()*1.0f,IwGxGetScreenHeight()*0.075f);
		
		Iw2DSetColour(0xff332222);
		Iw2DFillRect(CIwSVec2(rectB.x,rectB.y),CIwSVec2(rectB.w,rectB.h));
		IwGxFlush();
		Iw2DSetColour(0xff444444);
		Iw2DDrawRect(CIwSVec2(rectB.x,rectB.y),CIwSVec2(rectB.w,rectB.h));
		IwGxFlush();
		Iw2DSetColour(0xffffffff);

		rectB.x += IwGxGetScreenWidth()*0.1f;
		
		IwGxFontSetRect(rectB);
		
		IwGxFontDrawText("NEW TEXT - RYAN");
		IwGxFlush();

		IwGxSwapBuffers();
		s3eDeviceYield(0);
		break;}
	case 2: 
		{
		drawCharacter(rick);
		break;
		}
	default:
			break;
	}

}
void CGame::drawCharacter(CNpc* name)
{
		if(name->getPlayerTurn())
			{
				if(selectionMade<4)
				{
					name->chooseReply(selectionMade);
					strcpy(tempP,name->sendText());
					textsPrinted++;
					selectionMade=4;
				}
	
				strcpy(tempOp1,name->getReplyA());
				strcpy(tempOp2,name->getReplyB());				
				strcpy(tempOp3,name->getReplyC());
				strcpy(tempOp4,name->getReplyD());

			}
			if(!name->getPlayerTurn())
			{
				textsPrinted++;
				
				if(textsPrinted>=2)
				{
					
				strcpy(tempR2,name->getText());
				if(textsPrinted>3&&selectionMade!=4)
					textsPrinted=1;
				}
				else	
					strcpy(tempR,name->getText());
			}

			selectionMade=4;
			if(textsPrinted<2)
			strcpy(tempR,name->getHist(name->getHistSize()-1));
			if(textsPrinted<2)
			CIwRect rectTest = createRect(tempR,true, IwGxGetScreenHeight()*0.01f);
			if(textsPrinted>1)
			{
			CIwRect rectTest2 = createRect(tempP,false, IwGxGetScreenHeight()*0.01f);
				if(textsPrinted>=2)
				{
				CIwRect rectTest3 = createRect(tempR2,true, rectTest2);
				}

			}
			//CIwRect rectTest4 = createRect(tempOp3,false, rectTest3);
					CIwRect rectD = CIwRect(IwGxGetScreenWidth()*0.0f,IwGxGetScreenHeight()*0.85f,IwGxGetScreenWidth()*0.495f,IwGxGetScreenHeight()*0.075f);
		
			Iw2DSetColour(0xff222222);
			Iw2DFillRect(CIwSVec2(rectD.x,rectD.y),CIwSVec2(rectD.w,rectD.h));
			IwGxFlush();
			Iw2DSetColour(0xff444444);
			Iw2DDrawRect(CIwSVec2(rectD.x,rectD.y),CIwSVec2(rectD.w,rectD.h));
			IwGxFlush();
			Iw2DSetColour(0xffffffff);

			rectD.x += IwGxGetScreenWidth()*0.025f;
			rectD.w -= IwGxGetScreenWidth()*0.025f;

			//IwGxFontSetScale(IW_FIXED(0.3f));	
			IwGxFontSetRect(rectD);
			IwGxFontDrawText(tempOp1);
			IwGxFlush();
			//IwGxFontSetScale(IW_FIXED(0.5f));

			rectD.x -= IwGxGetScreenWidth()*0.025f;
			rectD.w += IwGxGetScreenWidth()*0.025f;

			rectD.x += IwGxGetScreenWidth()*0.5f;
		
			Iw2DSetColour(0xff222222);
			Iw2DFillRect(CIwSVec2(rectD.x,rectD.y),CIwSVec2(rectD.w,rectD.h));
			IwGxFlush();
			Iw2DSetColour(0xff444444);
			Iw2DDrawRect(CIwSVec2(rectD.x,rectD.y),CIwSVec2(rectD.w,rectD.h));
			IwGxFlush();
			Iw2DSetColour(0xffffffff);

			rectD.x += IwGxGetScreenWidth()*0.025f;
			rectD.w -= IwGxGetScreenWidth()*0.025f;

			//IwGxFontSetScale(IW_FIXED(0.45f));	
			IwGxFontSetRect(rectD);
			IwGxFontDrawText(tempOp2);
			IwGxFlush();
			//IwGxFontSetScale(IW_FIXED(0.6f));

			rectD.x -= IwGxGetScreenWidth()*0.025f;
			rectD.w += IwGxGetScreenWidth()*0.035f;

			rectD.x -= IwGxGetScreenWidth()*0.5f;
			rectD.y += IwGxGetScreenHeight()*0.075f;
		
			Iw2DSetColour(0xff222222);
			Iw2DFillRect(CIwSVec2(rectD.x,rectD.y),CIwSVec2(rectD.w,rectD.h));
			IwGxFlush();
			Iw2DSetColour(0xff444444);
			Iw2DDrawRect(CIwSVec2(rectD.x,rectD.y),CIwSVec2(rectD.w,rectD.h));
			IwGxFlush();
			Iw2DSetColour(0xffffffff);

			rectD.x += IwGxGetScreenWidth()*0.025f;
			rectD.w -= IwGxGetScreenWidth()*0.025f;

			//IwGxFontSetScale(IW_FIXED(0.45f));	
			IwGxFontSetRect(rectD);
			IwGxFontDrawText(tempOp3);
			IwGxFlush();
			//IwGxFontSetScale(IW_FIXED(0.6f));

			rectD.x -= IwGxGetScreenWidth()*0.025f;
			rectD.w += IwGxGetScreenWidth()*0.0225f;

			rectD.x += IwGxGetScreenWidth()*0.505f;
		
			Iw2DSetColour(0xff222222);
			Iw2DFillRect(CIwSVec2(rectD.x,rectD.y),CIwSVec2(rectD.w,rectD.h));
			IwGxFlush();
			Iw2DSetColour(0xff444444);
			Iw2DDrawRect(CIwSVec2(rectD.x,rectD.y),CIwSVec2(rectD.w,rectD.h));
			IwGxFlush();
			Iw2DSetColour(0xffffffff);

			rectD.x += IwGxGetScreenWidth()*0.025f;
			rectD.w -= IwGxGetScreenWidth()*0.025f;

			//IwGxFontSetScale(IW_FIXED(0.45f));	
			IwGxFontSetRect(rectD);
			IwGxFontDrawText(tempOp4);
			IwGxFlush();
			//IwGxFontSetScale(IW_FIXED(0.6f));
		IwGxFlush();Iw2DSurfaceShow();
		IwGxSwapBuffers();
		s3eDeviceYield(0);
}

void CGame::waitTime(int ms){
	timeStart = s3eTimerGetMs();
	timeFlag = true;
	timeMS = ms; 
}
CIwRect createRect(char* stringToSize, bool LeftJustified, CIwRect pastRect)
{
	CIwRect tempRec;
	if(LeftJustified){
		tempRec=CIwRect(IwGxGetScreenWidth()*0.0f,((pastRect.h + pastRect.y) + IwGxGetScreenHeight()*0.05f),IwGxGetScreenWidth()*.45,((strlen(stringToSize)+(Font->GetHeight()/2.1))/(Font->GetHeight()/2.1))*IwGxGetScreenHeight()*0.084f);
		
		Iw2DSetColour(0xff006633);
		Iw2DFillRect(CIwSVec2(tempRec.x,tempRec.y),CIwSVec2(tempRec.w,tempRec.h));
		IwGxFlush();
		Iw2DSetColour(0xff444444);
		Iw2DDrawRect(CIwSVec2(tempRec.x,tempRec.y),CIwSVec2(tempRec.w,tempRec.h));
		IwGxFlush();
		Iw2DSetColour(0xffffffff);
		IwGxFontSetFont(Font);
		IwGxLightingOn();
		IwGxLightingEmissive(true);
		IwGxFontSetRect(tempRec);
		IwGxFontSetScale(.375*scaleFactor);
		IwGxFontDrawText((IwChar*)stringToSize);
		IwGxFlush();

	}
	else
	{
		tempRec=CIwRect((IwGxGetScreenWidth()*.55f),((pastRect.h + pastRect.y) + IwGxGetScreenHeight()*0.05f),IwGxGetScreenWidth()*.45,((strlen(stringToSize)+(Font->GetHeight()/2.1))/(Font->GetHeight()/2.1))*IwGxGetScreenHeight()*0.084f);
		
		Iw2DSetColour(0xff332222);
		Iw2DFillRect(CIwSVec2(tempRec.x,tempRec.y),CIwSVec2(tempRec.w,tempRec.h));
		IwGxFlush();
		Iw2DSetColour(0xff444444);
		Iw2DDrawRect(CIwSVec2(tempRec.x,tempRec.y),CIwSVec2(tempRec.w,tempRec.h));
		IwGxFlush();
		Iw2DSetColour(0xffffffff);
		IwGxFontSetFont(Font);
		IwGxLightingOn();
		IwGxLightingEmissive(true);
		IwGxFontSetRect(tempRec);
		IwGxFontSetScale(.375*scaleFactor);
		IwGxFontDrawText((IwChar*)stringToSize);
		IwGxFlush();
		
	}
	return tempRec;
}


CIwRect createRect(char* stringToSize, bool LeftJustified, int y)
{
	CIwRect tempRec;
	if(LeftJustified){
		tempRec=CIwRect(IwGxGetScreenWidth()*0.0f,y,IwGxGetScreenWidth()*.45,((strlen(stringToSize)+(Font->GetHeight()/2.1))/(Font->GetHeight()/2.1))*IwGxGetScreenHeight()*0.084f);
		
		Iw2DSetColour(0xff006633);
		Iw2DFillRect(CIwSVec2(tempRec.x,tempRec.y),CIwSVec2(tempRec.w,tempRec.h));
		IwGxFlush();
		Iw2DSetColour(0xff444444);
		Iw2DDrawRect(CIwSVec2(tempRec.x,tempRec.y),CIwSVec2(tempRec.w,tempRec.h));
		IwGxFlush();
		Iw2DSetColour(0xffffffff);
		IwGxFontSetFont(Font);
		IwGxLightingOn();
		IwGxLightingEmissive(true);
		IwGxFontSetRect(tempRec);
		IwGxFontSetScale(.375*scaleFactor);
		IwGxFontDrawText((IwChar*)stringToSize);
		IwGxFlush();

	}
	else
	{
		tempRec=CIwRect((IwGxGetScreenWidth()*.55f),y,IwGxGetScreenWidth()*.45,((strlen(stringToSize)+(Font->GetHeight()/2.1))/(Font->GetHeight()/2.1))*IwGxGetScreenHeight()*0.084f);
		
		Iw2DSetColour(0xff332222);
		Iw2DFillRect(CIwSVec2(tempRec.x,tempRec.y),CIwSVec2(tempRec.w,tempRec.h));
		IwGxFlush();
		Iw2DSetColour(0xff444444);
		Iw2DDrawRect(CIwSVec2(tempRec.x,tempRec.y),CIwSVec2(tempRec.w,tempRec.h));
		IwGxFlush();
		Iw2DSetColour(0xffffffff);
		IwGxFontSetFont(Font);
		IwGxLightingOn();
		IwGxLightingEmissive(true);
		IwGxFontSetRect(tempRec);
		IwGxFontSetScale(.375*scaleFactor);
		IwGxFontDrawText((IwChar*)stringToSize);
		IwGxFlush();
		
	}
	return tempRec;
}