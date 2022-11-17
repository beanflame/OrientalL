//losuvm_array.cpp
#include<iostream>
#include<string>
#include<vector>
#include<algorithm>
using namespace std;
#define _ls_io const char*
typedef string ls_io;

vector< vector<ls_io> > array_ram;
extern "C" ls_io losuvm_array_new(_ls_io size);
extern "C" ls_io losuvm_array_write(_ls_io num,_ls_io pos,_ls_io value);
extern "C" ls_io losuvm_array_read(_ls_io num,_ls_io pos);
extern "C" ls_io losuvm_array_swap(_ls_io num,_ls_io pos1,_ls_io pos2);
extern "C" ls_io losuvm_array_sort(_ls_io num,_ls_io mod);
extern "C" ls_io losuvm_array_sortsituation(_ls_io num);
extern "C" ls_io losuvm_array_search(_ls_io num,_ls_io value);
extern "C" ls_io losuvm_array_clear(_ls_io num);

extern "C" ls_io losuvm_array_new(_ls_io size){
    try{
        if(atoi(size)<=0) throw "#### 错误 ####\n无效的数组大小,程序运行已终止\n";
        array_ram.push_back(vector<ls_io>());
        array_ram[array_ram.size()-1].insert(array_ram[array_ram.size()-1].begin(),atoi(size),"");
        return to_string(array_ram.size()-1);
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_array_write(_ls_io num,_ls_io pos,_ls_io value){
    try{
        int _pos=atoi(pos),_num=atoi(num);
        if(_pos<0||_pos>= array_ram[_num].size()) throw "#### 错误 ####\n数组脚标越界,程序运行已终止\n";
        array_ram[_num][_pos] = value;
        return "";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_array_read(_ls_io num,_ls_io pos){
    try{
        int _pos=atoi(pos),_num=atoi(num);
        if(_pos<0||_pos>= array_ram[_num].size()){ throw "#### 错误 ####\n数组脚标越界,程序运行已终止\n";}
        return array_ram[_num][_pos];
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_array_swap(_ls_io num,_ls_io pos1,_ls_io pos2){
    try{
        int _pos1=atoi(pos1),_pos2=atoi(pos2),_num=atoi(num);
        if(_pos1<0||_pos2<0||_pos1>=array_ram[_num].size()||_pos2>= array_ram[_num].size()) throw "#### 错误 ####\n数组脚标越界,程序运行已终止\n";
        ls_io tmp=array_ram[_num][_pos1];
        array_ram[_num][_pos1] = array_ram[_num][_pos2];
        array_ram[_num][_pos2] = tmp; 
        return "";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    } 
}
extern "C" ls_io losuvm_array_sort(_ls_io num,_ls_io mod){
    try{
        int _mod=atoi(mod),_num=atoi(num);
        vector<int> _array_ram;
        for(int i=0;i<array_ram[_num].size();i++) _array_ram.push_back(atoi((array_ram[_num][i]).c_str()));
        if(_mod==1) sort(_array_ram.begin(),_array_ram.end());
        else if (_mod==-1) sort(_array_ram.rbegin(),_array_ram.rend());
        else sort(_array_ram.begin(),_array_ram.end());
        for(int i=0;i<array_ram[_num].size();i++) array_ram[_num][i]=to_string(_array_ram[i]);
        return "";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_array_sortsituation(_ls_io num){
    try{
        int _num=atoi(num);
        int rt1=1,rt2=1;
        for(int i=0;i<array_ram[_num].size()-1;i++){ if(atoi((array_ram[_num][i]).c_str())<atoi((array_ram[_num][i+1]).c_str())){ rt1=0;break;}}
        for(int i=0;i<array_ram[_num].size()-1;i++){ if(atoi((array_ram[_num][i]).c_str())>atoi((array_ram[_num][i+1]).c_str())){ rt2=0;break;}}
        if(rt1==1&&rt2==0) return "-1";
        if(rt1==0&&rt2==1) return "1";
        return "0";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_array_search(_ls_io num,_ls_io value){
    try{
        int _num = atoi(num);
        for(int i=0;i<array_ram[_num].size();i++) if(array_ram[_num][i]==value) return to_string(i);
        return "-1";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_array_clear(_ls_io num){
    int _num = atoi(num);
    for(int i=0;i<array_ram[_num].size();i++) array_ram[_num][i]=="";
    return "";
}


