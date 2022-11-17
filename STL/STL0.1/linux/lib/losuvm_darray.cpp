//losuvm_darray.cpp
#include<iostream>
#include<string>
#include<vector>
#include<algorithm>
using namespace std;
#define _ls_io const char*
typedef string ls_io;

vector< vector<ls_io> > darray_ram;
//losuvm_darray.cpp
extern "C" ls_io losuvm_darray_new();
extern "C" ls_io losuvm_darray_write(_ls_io num,_ls_io pos,_ls_io value);
extern "C" ls_io losuvm_darray_read(_ls_io num,_ls_io pos);
extern "C" ls_io losuvm_darray_swap(_ls_io num,_ls_io pos1,_ls_io pos2);
extern "C" ls_io losuvm_darray_sort(_ls_io num,_ls_io mod);
extern "C" ls_io losuvm_darray_sortsituation(_ls_io num);
extern "C" ls_io losuvm_darray_search(_ls_io num,_ls_io value);
extern "C" ls_io losuvm_darray_insert(_ls_io num,_ls_io pos,_ls_io value);
extern "C" ls_io losuvm_darray_del(_ls_io num,_ls_io pos);
extern "C" ls_io losuvm_darray_clear(_ls_io num);
extern "C" ls_io losuvm_darray_detach(_ls_io num);


extern "C" ls_io losuvm_darray_new(){
    try{
        darray_ram.push_back(vector<ls_io>());
        return to_string(darray_ram.size()-1);
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_darray_write(_ls_io num,_ls_io pos,_ls_io value){
    try{
        int _pos=atoi(pos),_num=atoi(num);
        if(_pos<0) throw "#### 错误 ####\n数组脚标越界,程序运行已终止\n";
        if(_pos>= darray_ram[_num].size()) for(;_pos>=darray_ram[_num].size();) darray_ram[_num].push_back("");
        darray_ram[_num][_pos] = value;
        return "";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_darray_read(_ls_io num,_ls_io pos){
    try{
        int _pos=atoi(pos),_num=atoi(num);
        if(_pos<0) throw "#### 错误 ####\n数组脚标越界,程序运行已终止\n";
        if(_pos>= darray_ram[_num].size()) for(;_pos>=darray_ram[_num].size();) darray_ram[_num].push_back("");
        return darray_ram[_num][_pos];
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_darray_swap(_ls_io num,_ls_io pos1,_ls_io pos2){
    try{
        int _pos1=atoi(pos1),_pos2=atoi(pos2),_num=atoi(num);
        if(_pos1<0||_pos2<0) throw "#### 错误 ####\n数组脚标越界,程序运行已终止\n";
        if(_pos1>=darray_ram[_num].size()||_pos2>= darray_ram[_num].size()) for(;_pos1>=darray_ram[_num].size()||_pos2>=darray_ram[_num].size();) darray_ram[_num].push_back("");
        ls_io tmp=darray_ram[_num][_pos1];
        darray_ram[_num][_pos1] = darray_ram[_num][_pos2];
        darray_ram[_num][_pos2] = tmp; 
        return "";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    } 
}
extern "C" ls_io losuvm_darray_sort(_ls_io num,_ls_io mod){
    try{
        int _mod=atoi(mod),_num=atoi(num);
        vector<int> _darray_ram;
        for(int i=0;i<darray_ram[_num].size();i++) _darray_ram.push_back(atoi((darray_ram[_num][i]).c_str()));
        if(_mod==1) sort(_darray_ram.begin(),_darray_ram.end());
        else if (_mod==-1) sort(_darray_ram.rbegin(),_darray_ram.rend());
        else sort(_darray_ram.begin(),_darray_ram.end());
        for(int i=0;i<darray_ram[_num].size();i++) darray_ram[_num][i]=to_string(_darray_ram[i]);
        return "";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_darray_sortsituation(_ls_io num){
    try{
        int _num=atoi(num);
        int rt1=1,rt2=1;
        for(int i=0;i<darray_ram[_num].size()-1;i++){ if(atoi((darray_ram[_num][i]).c_str())<atoi((darray_ram[_num][i+1]).c_str())){ rt1=0;break;}}
        for(int i=0;i<darray_ram[_num].size()-1;i++){ if(atoi((darray_ram[_num][i]).c_str())>atoi((darray_ram[_num][i+1]).c_str())){ rt2=0;break;}}
        if(rt1==1&&rt2==0) return "-1";
        if(rt1==0&&rt2==1) return "1";
        return "0";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_darray_search(_ls_io num,_ls_io value){
    try{
        int _num = atoi(num);
        for(int i=0;i<darray_ram[_num].size();i++) if(darray_ram[_num][i]==value) return to_string(i);
        return "-1";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_darray_insert(_ls_io num,_ls_io pos,_ls_io value){
    try{
        int _pos=atoi(pos),_num=atoi(num);
        if(_pos<0) throw "#### 错误 ####\n数组脚标越界,程序运行已终止\n";
        if(_pos>= darray_ram[_num].size()) for(;_pos>=darray_ram[_num].size();) darray_ram[_num].push_back("");
        darray_ram[_num].insert(darray_ram[_num].begin()+_pos,value);
        return "";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_darray_del(_ls_io num,_ls_io pos){
    try{
        int _pos=atoi(pos),_num=atoi(num);
        if(_pos<0) throw "#### 错误 ####\n数组脚标越界,程序运行已终止\n";
        if(_pos>= darray_ram[_num].size()) for(;_pos>=darray_ram[_num].size();) darray_ram[_num].push_back("");
        darray_ram[_num].erase(darray_ram[_num].begin()+_pos);
        return "";
    }catch(const char* errinf){
        cout<<errinf;
        exit(1);
    }
}
extern "C" ls_io losuvm_darray_clear(_ls_io num){
    int _num = atoi(num);
    darray_ram.erase(darray_ram.begin()+_num);
    darray_ram.insert(darray_ram.begin()+_num,vector<ls_io>());
    return "";
}
extern "C" ls_io losuvm_darray_detach(_ls_io num){
    int _num = atoi(num);
    darray_ram.erase(darray_ram.begin()+_num);
    darray_ram.insert(darray_ram.begin()+_num,vector<ls_io>());
    return "";
}



