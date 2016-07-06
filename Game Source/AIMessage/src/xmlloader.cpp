#include "xmlLoader.h"
#include "tinyxml.h"
#include <string>

using namespace std;

TiXmlElement* elem;
char** rowCurr;
TiXmlDocument doc;


CXmlLoader::CXmlLoader(const char* filename) {
	doc.LoadFile(filename);
	elem = doc.RootElement()->FirstChildElement()->FirstChildElement();
	rowCurr = new char*[15];
    for (int i=0; i<15; i++)
    {
       rowCurr[i] = new char[250];
	}
}

CXmlLoader::~CXmlLoader(){
	for (int i=0; i<15; i++)
      delete [] rowCurr[i];
    delete [] rowCurr;
}

char** CXmlLoader::getNextRowArray(){
    for (int i=0; i<15; i++)
    {
	   const char* tempStr = elem->GetText();
	   strcpy(rowCurr[i],tempStr);
	   if(i<14)
		   elem = elem->NextSiblingElement();
    }
	if(elem->Parent()->NextSiblingElement()==0){
		rowCurr[0] = "-1";
		return rowCurr;
	}
	else
		elem = elem->Parent()->NextSiblingElement()->FirstChildElement();

	return rowCurr;
}