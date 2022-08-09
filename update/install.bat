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
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/bin/losuc.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/bin/losu.cpp
g++ -std=c++11 -o losu.exe losu.cpp -ldl -lpthread
g++ -std=c++11 -o losuc.exe losuc.cpp
copy .\losu.exe C:\losu\bin\losu.exe
copy .\losuc.exe C:\losuc\bin\losuc.exe
del .\*.exe
del .\*.cpp
C:\losu\bin\losu.exe
C:\losu\bin\losuc.exe
::��װ��׼���
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/lib/losuvm_io.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/lib/losuvm_file.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/lib/losuvm_mark.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/lib/losuvm_math.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/lib/losuvm_md5.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/lib/losuvm_rand.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/lib/losuvm_string.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/lib/losuvm_time.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/lib/losuvm_gpio.cpp
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/lib/losuvm_webui.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_io.lsd losuvm_io.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_file.lsd losuvm_file.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_mark.lsd losuvm_mark.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_math.lsd losuvm_math.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_md5.lsd losuvm_md5.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_rand.lsd losuvm_rand.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_string.lsd losuvm_string.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_time.lsd losuvm_time.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_gpio.lsd losuvm_gpio.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_webui.lsd losuvm_webui.cpp
copy .\*.lsd C:\losu\lvm\*.lsd
del .\*.lsd
del .\*.cpp
::��װ������
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/MD5.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/MDת����.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/��׼��.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/ʱ��.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/��ѧ.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/����.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/�����.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/�ļ�.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/�߳�.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/�ַ���.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/������.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/����.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/ͨ������.losu
wget https://gitee.com/chen-chaochen/lpk/raw/release/losu0.4/windows/inc/��ҳ.losu
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
C:\losu\bin\losuc.exe ������
C:\losu\bin\losuc.exe ����
C:\losu\bin\losuc.exe ͨ������
C:\losu\bin\losuc.exe ��ҳ
copy .\*.lsc C:\losu\inc\����\*.lsc
del .\*.lsc
del .\*.losu
::������װ
C:\losu\bin\losu.exe
C:\losu\bin\losuc.exe
echo ���麺�������� ��װ����
echo �뽫C:\losu\bin Ŀ¼��ӵ�path����������
pause