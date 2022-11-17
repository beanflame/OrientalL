//losuvm_stack.cpp
#include<string>
#include<cmath>
#include<vector>
#include<iostream>
using namespace std;
typedef string ls_io;
#define _ls_io const char*

vector<int> stack_size,stack_mod;
vector< vector<ls_io> > stack_ram;
extern "C" ls_io losuvm_stack_new(_ls_io size);
extern "C" ls_io losuvm_stack_push(_ls_io num,_ls_io value);
extern "C" ls_io losuvm_stack_pop(_ls_io num);
extern "C" ls_io losuvm_stack_top(_ls_io num);
extern "C" ls_io losuvm_stack_isempty(_ls_io num);
extern "C" ls_io losuvm_stack_size(_ls_io num);
extern "C" ls_io losuvm_stack_detach(_ls_io num);
int _losuvm_stack_freenum();

int _losuvm_stack_freenum(){
    for (int i = 0; i < stack_ram.size(); i++){
        if(stack_mod[i]==0) return i;
    }
    stack_ram.push_back( vector<ls_io>() );
    stack_mod.push_back(1);
    stack_size.push_back(0);
    return stack_ram.size() -1; 
}
extern "C" ls_io losuvm_stack_new(_ls_io size){
    int num =_losuvm_stack_freenum();
    stack_size[num] = atoi(size);
    stack_mod[num] = 1;
    return to_string(num);
}
extern "C" ls_io losuvm_stack_push(_ls_io num,_ls_io value){
    try{
        int _num = atoi(num);
        if( stack_size[_num] >= 0 &&stack_ram[_num].size()==stack_size[_num]) throw "#### 错误 ####\n发生了溢出错误,栈的大小已经超出预设值,程序已终止\n"; 
        stack_ram[_num].push_back(value);
        return "";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_stack_pop(_ls_io num){
    try{
        int _num = atoi(num);
        if(stack_ram[_num].size()==0) throw "#### 错误 ####\n错误地对一个空栈进行了弹栈,程序已终止\n";
        stack_ram[_num].pop_back();
        return "";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_stack_top(_ls_io num){
    return stack_ram[atoi(num)][stack_ram[atoi(num)].size()-1];
}
extern "C" ls_io losuvm_stack_isempty(_ls_io num){
    if(stack_ram[atoi(num)].size()==0) return "1";
    return "0";
}
extern "C" ls_io losuvm_stack_size(_ls_io num){
    return to_string(stack_ram[atoi(num)].size());
}
extern "C" ls_io losuvm_stack_detach(_ls_io num){
    int _num = atoi(num);
    stack_ram.erase(stack_ram.begin()+_num);
    stack_ram.insert(stack_ram.begin()+_num,vector<ls_io>());
    stack_mod[_num]=0;
    return "";
}

