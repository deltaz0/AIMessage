#include <string.h>

CXmlLoader::CXmlLoader(){
	TiXmlDocument doc( "dialogue.xml" );
	doc.LoadFile();