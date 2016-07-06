#include "ReplyArray.h"
#include "tinyxml.h"
#include <string>

using namespace std;

TiXmlDocument CReplyArray::replyDoc;
TiXmlElement* CReplyArray::elem1;
char** CReplyArray::replies = new char*[26];
bool CReplyArray::loaded = false;

void CReplyArray::initReplies() {
	if(loaded==false)
	{
		replyDoc.LoadFile("ReplyOptions.xml");
		elem1 = replyDoc.RootElement()->FirstChildElement();
		bool moreElements = true;
		for (int i=0; i<26; i++)
		{
		   if(moreElements==true){
			   CReplyArray::replies[i] = new char[48];
			   const char* tempStr = elem1->GetText();
			   strcpy(replies[i],tempStr);
			   if(elem1->NextSiblingElement()==0)
				   moreElements = false;
			   else
				   elem1 = elem1->NextSiblingElement();
		   }
		   else
			   CReplyArray::replies[i] = "No Entry";
		}
		loaded = true;
	}
}

void CReplyArray::clearReplies() {
	for(int i=0;i<26;i++)
		if(replies[i]!="No Entry")
			delete[] replies[i];
	delete[] replies;
}

char* CReplyArray::getReplyByChar(char cval)
{
	int ival = (int)cval - 97;
	return replies[ival];
}