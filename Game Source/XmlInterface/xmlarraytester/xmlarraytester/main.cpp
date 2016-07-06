#include "npc.h"
#include <iostream>

using namespace std;

int main(){

	CNpc* rick = new CNpc("Rick");
	int option = 0;
	int quit = 0;

	cout << endl << endl << "Load History..." << endl << endl;
	for(int j=0;j<rick->getHistSize();j++)
		cout << rick->getHist(j) << endl << endl;
	cout << "...(History Loaded)" << endl;

	while(quit!=1){
		if(!rick->getPlayerTurn()){
			cout << endl << endl << rick->getText() << endl;
		}
		else{
			cout << endl << "0 - " << rick->getReplyA() << endl;
			cout << "1 - " << rick->getReplyB() << endl;
			cout << "2 - " << rick->getReplyC() << endl;
			cout << "3 - " << rick->getReplyD() << endl << endl;
			cin >> option;
			rick->chooseReply(option);
			cout << endl << rick->sendText() << endl << endl;
		}
		cout << "Enter 1 to quit: ";
		cin >> quit;
		cout << endl << endl;
	}
	
	delete rick;

	system("Pause");

	return 0;
}