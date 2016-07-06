#ifndef REPLYARRAY_H
#define REPLYARRAY_H
#include "tinyxml.h"
#include <string>

class CReplyArray
{
public:

	static TiXmlDocument replyDoc;
	static TiXmlElement* elem1;
	static char** replies;
	static bool loaded;

	static void initReplies();
	static void clearReplies();

	static char* getReplyByChar(char val);
};

#endif
