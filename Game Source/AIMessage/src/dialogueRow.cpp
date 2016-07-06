#include "dialogueRow.h"
#include <string>

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

CDialogueRow::CDialogueRow(){
	
	npcText = new char[250];
	playerReplyA = new char[250];
	playerReplyB = new char[250];
	playerReplyC = new char[250];
	playerReplyD = new char[250];
	assignValues("null",'z','z','z','z',"null","null","null","null",0,0,0,0,0);

}

CDialogueRow::~CDialogueRow(){
   delete[] npcText;
   delete[] playerReplyA;
   delete[] playerReplyB;
   delete[] playerReplyC;
   delete[] playerReplyD;
}

void CDialogueRow::assignValues(char nt[250], char oA, char oB, char oC, char oD, 
	char rA[250], char rB[250], char rC[250], char rD[250], int pA, int pB, int pC, int pD, int tV){

	strcpy(npcText,nt);
	replyOptionA = oA;
	replyOptionB = oB;
	replyOptionC = oC;
	replyOptionD = oD;
	strcpy(playerReplyA,rA);
	strcpy(playerReplyB,rB);
	strcpy(playerReplyC,rC);
	strcpy(playerReplyD,rD);
	pointerA = pA;
	pointerB = pB;
	pointerC = pC;
	pointerD = pD;
	timeVal = tV;

}