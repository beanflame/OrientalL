@echo off
echo ���������� 1.0 LTS
echo ********************************
echo *       Losu Program Kits      *
echo *         Instaling...         *
echo *        Version  1.0          *
echo *           L  T  S            *
echo *               chen-chaochen  *
echo *                    2022/8/1  *
echo ********************************
mkdir C:\losu
mkdir C:\losu\lvm
mkdir C:\losu\bin
mkdir C:\losu\inc
mkdir C:\losu\inc\����

::��װ��ִ���ļ�
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/bin/losuc.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/bin/losu.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/bin/hetu.cpp
g++ -std=c++11 -static -o losu.exe losu.cpp -ldl -lpthread
g++ -std=c++11 -static -o losuc.exe losuc.cpp
g++ -std=c++11 -static -o hetu.exe hetu.cpp
copy .\losu.exe C:\losu\bin\losu.exe
copy .\losuc.exe C:\losuc\bin\losuc.exe
copy .\hetu.exe C:\losuc\bin\hetu.exe
copy .\hetu.exe C:\losuc\bin\��ͼ.exe
del .\*.exe
del .\*.cpp
::��װ��׼���
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/lib/losuvm_io.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/lib/losuvm_file.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/lib/losuvm_mark.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/lib/losuvm_math.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/lib/losuvm_md5.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/lib/losuvm_rand.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/lib/losuvm_string.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/lib/losuvm_time.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/lib/losuvm_gpio.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/lib/losuvm_webui.cpp
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
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/MD5.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/MDת����.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/��׼��.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/ʱ��.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/��ѧ.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/����.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/�����.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/�ļ�.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/�߳�.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/�ַ���.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/������.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/����.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/ͨ������.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/windows/inc/��ҳ.losu
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
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0lts/sources.tar
::������װ
C:\losu\bin\losu.exe
C:\losu\bin\losuc.exe
C:\losu\bin\hetu.exe
echo ���麺�������� ��װ����
echo �뽫C:\losu\bin Ŀ¼��ӵ�path����������
pause