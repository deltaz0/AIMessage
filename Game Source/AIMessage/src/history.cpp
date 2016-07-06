#include "history.h"
#include "tinyxml.h"
#include <string>
#include <iostream>

using namespace std;

char** histArray;
int size;
int location;
TiXmlDocument histDoc;
TiXmlElement* histElem;
bool playerTurn;
char* histFilename;

CHistory::CHistory(char* filename){
	location = 0;
	histArray = new char*[400];
	playerTurn = false;
	char buf[48];
	char* extension = "history.xml";
	strcpy(buf,filename);
	strcat(buf,extension);
	histFilename = new char[48];
	strcpy(histFilename,buf);
	if(!histDoc.LoadFile(histFilename))
			clearAndCreateHist();
	if(histDoc.RootElement()==NULL){
		size = 0;
	}
	else{
		histElem = histDoc.RootElement()->FirstChildElement();
		size = 2;
		while(histElem->Parent()->NextSiblingElement()!=0){
			size = size + 2;
			histElem = histElem->Parent()->NextSiblingElement()->FirstChildElement();
		}
		if(histElem->NextSiblingElement()->NextSiblingElement()==0)
			size--;
		for(int j=0;j<size;j++)
			histArray[j] = new char[250];
		histElem = histDoc.RootElement()->FirstChildElement();
		for(int i=0;i<size;i=i+2)
		{
			location = atoi(histElem->GetText());
			histElem = histElem->NextSiblingElement();
			strcpy(histArray[i],histElem->GetText());
			if(i<size-1)
			{
				histElem = histElem->NextSiblingElement();
				if(histElem->GetText()!=NULL)
					strcpy(histArray[i+1],histElem->GetText());
				else{
					char* bufnew = " \0";
					strcpy(histArray[i+1],bufnew);
				}
				histElem = histElem->NextSiblingElement();
				location = atoi(histElem->GetText());
				if(i<size-2)
					histElem = histElem->Parent()->NextSiblingElement()->FirstChildElement();
			}
		}
		if(size%2==1)
			playerTurn = true;
	}
}

CHistory::~CHistory(){
	for(int i=0;i<size;i++)
		delete[] histArray[i];
	delete[] histArray;
}

bool CHistory::addNpcTextToHist(int id, char text[250]){
	if(playerTurn==false){
		TiXmlElement* idElem = new TiXmlElement("id");
		char tempId[48];
		sprintf(tempId,"%d",id);
		TiXmlText* idText = new TiXmlText(tempId);
		TiXmlElement* textElem = new TiXmlElement("npcText");
		TiXmlText* textText = new TiXmlText(text);
		TiXmlElement* entryElem = new TiXmlElement("entry");
	
		histDoc.LinkEndChild(entryElem);
		entryElem->LinkEndChild(idElem);
		idElem->LinkEndChild(idText);
		entryElem->LinkEndChild(textElem);
		textElem->LinkEndChild(textText);

		histDoc.SaveFile();

		if(size==0)
			histElem = histDoc.RootElement()->FirstChildElement()->NextSiblingElement();
		else
			histElem = histElem->Parent()->NextSiblingElement()->FirstChildElement()->NextSiblingElement();

		histArray[size] = new char[250];
		strcpy(histArray[size],text);
		size++;
		location = id;
		playerTurn = true;
		return true;
	}
	else
		return false;
}

bool CHistory::addPlayerTextToHist(int id, char text[250]){
	if(playerTurn==true)
	{
		TiXmlElement* pidElem = new TiXmlElement("id");
		char ptempId[48];
		sprintf(ptempId,"%d",id);
		TiXmlText* pidText = new TiXmlText(ptempId);
		TiXmlElement* ptextElem = new TiXmlElement("playerText");
		TiXmlText* ptextText = new TiXmlText(text);
		histElem->Parent()->LinkEndChild(ptextElem);
		ptextElem->LinkEndChild(ptextText);
		histElem->Parent()->LinkEndChild(pidElem);
		pidElem->LinkEndChild(pidText);

		histDoc.SaveFile();

		histElem = histElem->NextSiblingElement()->NextSiblingElement();

		histArray[size] = new char[250];
		strcpy(histArray[size],text);
		size++;
		location = id;
		playerTurn = false;
		return true;
	}
	else
		return false;
}

void CHistory::clearAndCreateHist(){
	/*
	TiXmlDocument tempDoc;
	TiXmlDeclaration* dec1 = new TiXmlDeclaration("1.0","","");
	tempDoc.LinkEndChild(dec1);
	histDoc = tempDoc;
	histDoc.SaveFile(histFilename);
	for(int i=0;i<size;i++)
		delete[] histArray[i];
	size = 0;
	playerTurn = false;
	location = 0;
	histDoc.LoadFile(histFilename);
	*/
	TiXmlDeclaration *dec1 = new TiXmlDeclaration("1.0", "", "");
	histDoc.Clear();
	histDoc.LinkEndChild(dec1);
	histDoc.SaveFile(histFilename);
	for(int i=0;i<size;i++)
		delete[] histArray[i];
	size = 0;
	playerTurn = false;
	location = 0;
	histDoc.LoadFile(histFilename);
}