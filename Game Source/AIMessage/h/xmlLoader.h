#ifndef XMLLOADER_H
#define XMLLOADER_H
#include <string>
#include "tinyxml.h"

class CXmlLoader
{
public:

	CXmlLoader(const char* filename);

    ~CXmlLoader();

	char** getNextRowArray();

	TiXmlElement* elem;
	char** rowCurr;

};

#endif
