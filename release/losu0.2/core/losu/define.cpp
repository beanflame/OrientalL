#define LS_PLAT 0
//1 = windows 2 = linux

//  Windows�±���ʱȡ������ע��
#include<windows.h>
string LS_ROOT = "C:/Losu/";
string LS_LIB_PATH = "C:/Losu/lib/";
string LS_LSI_PATH = "C:/Losu/lsi/";
string LS_VM_PATH  = "C:/Losu/lvm/";
//

// linux�±���ʱȡ������ע��
#include<dlfcn.h>
string LS_ROOT = "/usr/local/lib/losu/";
string LS_LIB_PATH = "/usr/local/lib/losu/lib/";
string LS_LSI_PATH = "/usr/local/lib/losu/lsi/";
string LS_VM_PATH  = "/usr/local/lib/losu/lvm/";
//
