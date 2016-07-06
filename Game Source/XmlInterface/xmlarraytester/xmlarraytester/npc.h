#ifndef NPC_H
#define NPC_H

#include "dialogueManager.h"
#include "ReplyArray.h"
#include "history.h"

class CNpc
{
public:

	CNpc(char* npcName);

    ~CNpc();

	CDialogueManager* dialMan;
	CReplyArray* replyArray;
	int index;
	bool pTurn;

	CHistory* hist;

	void printArray();

	char* getText();
	char* getReplyA();
	char* getReplyB();
	char* getReplyC();
	char* getReplyD();
	bool chooseReply(int option);
	char* sendText();

	char* getHist(int id);
	int getHistSize();

	static int activeNpcs;

	bool getPlayerTurn();
};

#endif
