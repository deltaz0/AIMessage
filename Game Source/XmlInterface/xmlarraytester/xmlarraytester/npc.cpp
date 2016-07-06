#include "npc.h"
#include "dialogueManager.h"
#include "ReplyArray.h"
#include "history.h"
#include <string>
#include <iostream>

using namespace std;

int CNpc::activeNpcs = 0;

CDialogueManager* dialMan;
CReplyArray* replyArray;
CHistory* hist;
int index;
int replyOption;
bool pTurn;

CNpc::CNpc(char* npcName) {
	activeNpcs++;
	index = 0;
	replyOption = 0;
	pTurn = false;

	char buf[80];
	char* extension = ".xml";
	strcpy(buf,npcName);
	strcat(buf,extension);
	const char* filename = buf;

	dialMan = new CDialogueManager(filename);
	if(replyArray->loaded==false)
		replyArray->initReplies();

	hist = new CHistory(npcName);
	index = hist->location;
	pTurn = hist->playerTurn;
	if(pTurn==true){
		if(((dialMan->dialogueArray[index].replyOptionA=='z')
			&&(dialMan->dialogueArray[index].replyOptionB=='z'))
			&&((dialMan->dialogueArray[index].replyOptionC=='z')
			&&(dialMan->dialogueArray[index].replyOptionD=='z'))){
				index = dialMan->dialogueArray[index].pointerA;
				hist->addPlayerTextToHist(index," \0");
				pTurn = false;
		}
	}
}

CNpc::~CNpc(){
	delete hist;
	delete dialMan;
	activeNpcs--;
	if(activeNpcs==0)
		replyArray->clearReplies();
}

void CNpc::printArray(){
	cout << dialMan->dialogueArray[2].npcText << endl << endl;
	cout << dialMan->dialogueArray[2].playerReplyC << endl << endl;
	cout << dialMan->dialogueArray[2].pointerB << endl << endl;
	cout << dialMan->dialogueArray[2].replyOptionC << endl << endl;
}

char* CNpc::getText(){
	pTurn = true;
	if(hist->addNpcTextToHist(index,dialMan->dialogueArray[index].npcText))
	{
		if(((dialMan->dialogueArray[index].replyOptionA=='z')
			&&(dialMan->dialogueArray[index].replyOptionB=='z'))
			&&((dialMan->dialogueArray[index].replyOptionC=='z')
			&&(dialMan->dialogueArray[index].replyOptionD=='z'))){
				int tmp = index;
				index = dialMan->dialogueArray[index].pointerA;
				hist->addPlayerTextToHist(index," \0");
				pTurn = false;
				return dialMan->dialogueArray[tmp].npcText;
		}
		else
			return dialMan->dialogueArray[index].npcText;
	}
	else{
		pTurn = false;
		return "null";
	}
}

char* CNpc::getReplyA(){
	return replyArray->getReplyByChar(dialMan->dialogueArray[index].replyOptionA);
}

char* CNpc::getReplyB(){
	return replyArray->getReplyByChar(dialMan->dialogueArray[index].replyOptionB);
}

char* CNpc::getReplyC(){
	return replyArray->getReplyByChar(dialMan->dialogueArray[index].replyOptionC);
}

char* CNpc::getReplyD(){
	return replyArray->getReplyByChar(dialMan->dialogueArray[index].replyOptionD);
}

bool CNpc::chooseReply(int option){
	if(option>3||option<0)
		return false;
	else{
		replyOption = option;
		return true;
	}
}

char* CNpc::sendText(){
	pTurn = false;
	int tmp = index;
	switch(replyOption){
	case 0:{
		index = dialMan->dialogueArray[index].pointerA;
		if(hist->addPlayerTextToHist(index,dialMan->dialogueArray[tmp].playerReplyA))
			return dialMan->dialogueArray[tmp].playerReplyA;
		break;
		   }
	case 1:{
		index = dialMan->dialogueArray[index].pointerB;
		if(hist->addPlayerTextToHist(index,dialMan->dialogueArray[tmp].playerReplyB))
			return dialMan->dialogueArray[tmp].playerReplyB;
		break;
		   }
	case 2:{
		index = dialMan->dialogueArray[index].pointerC;
		if(hist->addPlayerTextToHist(index,dialMan->dialogueArray[tmp].playerReplyC))
			return dialMan->dialogueArray[tmp].playerReplyC;
		break;
		   }
	case 3:{
		index = dialMan->dialogueArray[index].pointerD;
		if(hist->addPlayerTextToHist(index,dialMan->dialogueArray[tmp].playerReplyD))
			return dialMan->dialogueArray[tmp].playerReplyD;
		break;
		   }
	default:
		break;
	}
	pTurn = true;
	return "null";
}

char* CNpc::getHist(int id){
	return hist->histArray[id];
}

bool CNpc::getPlayerTurn(){
	//returns true if it is the player's turn
	//getText() should only be called when this is false
	//sendText() should only be called when this is true
	return pTurn;
}

int CNpc::getHistSize(){
	return hist->size;
}