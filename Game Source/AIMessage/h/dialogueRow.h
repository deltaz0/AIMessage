#ifndef DIALOGUEROW_H
#define DIALOGUEROW_H
#include <string>

class CDialogueRow
{
public:

	CDialogueRow();

    ~CDialogueRow();

	void assignValues(char nt[250], char oA, char oB, char oC, char oD, 
	char rA[250], char rB[250], char rC[250], char rD[250], int pA, int pB, int pC, int pD, int tV);

	char* npcText;
	char replyOptionA;
	char replyOptionB;
	char replyOptionC;
	char replyOptionD;
	char* playerReplyA;
	char* playerReplyB;
	char* playerReplyC;
	char* playerReplyD;
	int pointerA;
	int pointerB;
	int pointerC;
	int pointerD;
	int timeVal;
	
};

#endif
