#include "lpt_head.h"
using namespace std;
int main(int argc,const char** argv)
{
	main_argc = argc;
	main_argv = argv;
	if (_com_mod() == "-v" || _com_mod() == "")
    {
        cout<< "�����������"<<endl;
        cout<< "-s   ������������������"<<endl;       
		return 0; 
    }    
	if (_com_mod() == "-s")
    {
    	_lpt_scan(_com_pac());
    	return 0;
	}
	cout<< "�����������"<<endl;
	return 0;
}
