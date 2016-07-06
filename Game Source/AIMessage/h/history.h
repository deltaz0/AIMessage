#ifndef HISTORY_H
#define HISTORY_H
#include "tinyxml.h"
#include <string>

class CHistory
{
public:
	CHistory(char* filename);

	~CHistory();

	char** histArray;
	int size;
	int location;
	TiXmlDocument histDoc;
	TiXmlElement* histElem;
	bool playerTurn;
	char* histFilename;

	bool addNpcTextToHist(int id, char text[250]);
	bool addPlayerTextToHist(int id, char text[250]);
	void clearAndCreateHist();
};

#endif