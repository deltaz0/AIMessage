#ifndef DIALOGUEMANAGER_H
#define DIALOGUEMANAGER_H
#include "dialogueRow.h"

class CDialogueManager
{
public:

	CDialogueManager(const char* filename);

    ~CDialogueManager();
	
	CDialogueRow* dialogueArray;

};

#endif
