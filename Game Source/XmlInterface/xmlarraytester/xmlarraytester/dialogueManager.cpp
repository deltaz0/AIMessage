#include "dialogueManager.h"
#include "dialogueRow.h"
#include "xmlLoader.h"
#include <string>

CDialogueRow* dialogueArray;

CDialogueManager::CDialogueManager(const char* filename){
	dialogueArray = new CDialogueRow[200];
	CXmlLoader* tempXmlLoader = new CXmlLoader(filename);
	char** tempStr;
	tempStr = tempXmlLoader->getNextRowArray();
	int i = 0;
	while(atoi(tempStr[0])!=-1){
		char* a = tempStr[1];
		char b = tempStr[2][0];
		char c = tempStr[3][0];
		char d = tempStr[4][0];
		char e = tempStr[5][0];
		char* f = tempStr[6];
		char* g = tempStr[7];
		char* h = tempStr[8];
		char* k = tempStr[9];
		int l = atoi(tempStr[10]);
		int m = atoi(tempStr[11]);
		int n = atoi(tempStr[12]);
		int o = atoi(tempStr[13]);
		dialogueArray[i].assignValues(a,b,c,d,e,f,g,h,k,l,m,n,o);
		i++;
		tempStr = tempXmlLoader->getNextRowArray();
	}
	char* a = tempStr[1];
	char b = tempStr[2][0];
	char c = tempStr[3][0];
	char d = tempStr[4][0];
	char e = tempStr[5][0];
	char* f = tempStr[6];
	char* g = tempStr[7];
	char* h = tempStr[8];
	char* k = tempStr[9];
	int l = atoi(tempStr[10]);
	int m = atoi(tempStr[11]);
	int n = atoi(tempStr[12]);
	int o = atoi(tempStr[13]);
	dialogueArray[i].assignValues(a,b,c,d,e,f,g,h,k,l,m,n,o);
}



CDialogueManager::~CDialogueManager()
{
	delete[] dialogueArray;
}