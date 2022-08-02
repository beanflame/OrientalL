@echo off
echo ����������
echo ********************************
echo *       Losu Program Kits      *
echo *         Instaling...         *
echo *        Version  0.2.2        *
echo *           GPL_3.0            *
echo *               chen-chaochen  *
echo *                    2022/8/1  *
echo ********************************
mkdir C:\losu
mkdir C:\losu\lvm
mkdir C:\losu\bin
mkdir C:\losu\inc
mkdir C:\losu\inc\����

::��װ��ִ���ļ�
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/bin/losuc.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/bin/losu.cpp
g++ -o losu.exe losu.cpp -ldl -lpthread
g++ -o losuc.exe losuc.cpp
copy .\losu.exe C:\losu\bin\losu.exe
copy .\losuc.exe C:\losuc\bin\losuc.exe
del .\*.exe
del .\*.cpp
C:\losu\bin\losu.exe
C:\losu\bin\losuc.exe
::��װ��׼���
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/lib/losuvm_io.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/lib/losuvm_file.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/lib/losuvm_mark.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/lib/losuvm_math.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/lib/losuvm_md5.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/lib/losuvm_rand.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/lib/losuvm_string.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/lib/losuvm_time.cpp
g++ -shared -fPIC -o losuvm_io.lsd losuvm_io.cpp
g++ -shared -fPIC -o losuvm_file.lsd losuvm_file.cpp
g++ -shared -fPIC -o losuvm_mark.lsd losuvm_mark.cpp
g++ -shared -fPIC -o losuvm_math.lsd losuvm_math.cpp
g++ -shared -fPIC -o losuvm_md5.lsd losuvm_md5.cpp
g++ -shared -fPIC -o losuvm_rand.lsd losuvm_rand.cpp
g++ -shared -fPIC -o losuvm_string.lsd losuvm_string.cpp
g++ -shared -fPIC -o losuvm_time.lsd losuvm_time.cpp
copy .\*.lsd C:\losu\lvm\*.lsd
del .\*.lsd
del .\*.cpp
::��װ������
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/inc/MD5.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/inc/MDת����.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/inc/��׼��.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/inc/ʱ��.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/inc/��ѧ.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/inc/����.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/inc/�����.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/inc/�ļ�.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/inc/�߳�.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.2/linux/inc/�ַ���.losu
C:\losu\bin\losuc.exe MD5
C:\losu\bin\losuc.exe MDת����
C:\losu\bin\losuc.exe ��׼��
C:\losu\bin\losuc.exe ʱ��
C:\losu\bin\losuc.exe ��ѧ
C:\losu\bin\losuc.exe ����
C:\losu\bin\losuc.exe �����
C:\losu\bin\losuc.exe �ļ�
C:\losu\bin\losuc.exe �߳�
C:\losu\bin\losuc.exe �ַ���
copy .\*.lsc C:\losu\inc\����\*.lsc
del .\*.lsc
del .\*.losu
::������װ
C:\losu\bin\losu.exe
C:\losu\bin\losuc.exe
echo ���麺�������� ��װ����
echo �뽫C:\losu\bin Ŀ¼��ӵ�path����������
pause