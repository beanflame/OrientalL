#include<iostream>
#include<string>
#include<vector>
#define _ls_io const char*
typedef std::string ls_io;
using namespace std;

vector< vector<ls_io> > queue_ram;
vector<int> queue_size;

extern "C" ls_io losuvm_queue_new(_ls_io size);
extern "C" ls_io losuvm_queue_in(_ls_io num,_ls_io value);
extern "C" ls_io losuvm_queue_out(_ls_io num);
extern "C" ls_io losuvm_queue_size(_ls_io num);
extern "C" ls_io losuvm_queue_first(_ls_io num);
extern "C" ls_io losuvm_queue_last(_ls_io num);
extern "C" ls_io losuvm_queue_clear(_ls_io num);
extern "C" ls_io losuvm_queue_detach(_ls_io num);

extern "C" ls_io losuvm_queue_new(_ls_io size){
    try{
        queue_size.push_back(atoi(size));
        queue_ram.push_back(vector<ls_io>());
        return to_string(queue_ram.size()-1);
    }catch(_ls_io errinf){
        cout<<errinf;
        exit(-1);
    }
}
extern "C" ls_io losuvm_queue_in(_ls_io num,_ls_io value){
    try{
        int _num=atoi(num);
        if(queue_size[_num]>=0&&queue_ram[_num].size()==queue_size[_num]) throw "#### 错误 ####\n错误地对一个满队列进行入队操作,程序已终止\n";
        queue_ram[_num].push_back(value);
        return "";
    }catch(_ls_io errinf){
        cout<<errinf;
        exit(-1);
    }
}
extern "C" ls_io losuvm_queue_out(_ls_io num){
    try{
        int _num=atoi(num);
        if(queue_ram[_num].size()==0) throw "#### 错误 ####\n错误地对一个空队列进行出队操作,程序已终止\n";
        queue_ram[_num].erase(queue_ram[_num].begin()+0);
        return "";
    }catch(_ls_io errinf){
        cout<<errinf;
        exit(-1);
    }
}
extern "C" ls_io losuvm_queue_size(_ls_io num){
    try{
        int _num=atoi(num);
        return to_string(queue_ram[atoi(num)].size());
    }catch(_ls_io errinf){
        cout<<errinf;
        exit(-1);
    }
}
extern "C" ls_io losuvm_queue_first(_ls_io num){
    try{
        int _num=atoi(num);
        if(queue_ram[atoi(num)].size()==0) return "";
        return queue_ram[atoi(num)][0];
    }catch(_ls_io errinf){
        cout<<errinf;
        exit(-1);
    }
}
extern "C" ls_io losuvm_queue_last(_ls_io num){
    try{
        int _num=atoi(num);
        if(queue_ram[atoi(num)].size()==0) return "";
        return queue_ram[atoi(num)][queue_ram[atoi(num)].size()-1];
    }catch(_ls_io errinf){
        cout<<errinf;
        exit(-1);
    }
}
extern "C" ls_io losuvm_queue_clear(_ls_io num){
    try{
        queue_ram.erase(queue_ram.begin()+atoi(num));
        queue_ram.insert(queue_ram.begin()+atoi(num),vector<ls_io>());
        return "";
    }catch(_ls_io errinf){
        cout<<errinf;
        exit(-1);
    }
}
extern "C" ls_io losuvm_queue_detach(_ls_io num){
    try{
        queue_ram.erase(queue_ram.begin()+atoi(num));
        queue_ram.insert(queue_ram.begin()+atoi(num),vector<ls_io>());
        return "";
    }catch(_ls_io errinf){
        cout<<errinf;
        exit(-1);
    }
}

