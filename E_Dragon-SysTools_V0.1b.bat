@echo off
mode con cols=100 lines=35
title E����������ϵͳ������V0.1b
color F8

::��ȡ����ԱȨ��
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

:UAC
if '%errorlevel%' NEQ '0' (
    echo �������ԱȨ��...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\edragonwintoolsgetadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\edragonwintoolsgetadmin.vbs"
    "%temp%\edragonwintoolsgetadmin.vbs"
    exit /B
:gotAdmin
    if exist "%temp%\edragonwintoolsgetadmin.vbs" ( del "%temp%\edragonwintoolsgetadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
    goto start

:start
cls
echo E����������ϵͳ������V0.1b
echo �����������ڲ⣬���������в����ƣ������������ύ��edragon.sxl.cn��e_dragon007@qq.com
echo github��ַ����δ��ɣ���https://github.com/EDragon007/sysbattools
echo ���������GPL-3.0Э�鷢�У�ת������ϵ���ߣ����ý��ж���ת�أ�
echo ������С���򾫻��������ɵ�С��bat������ű�awa
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo �����������������������������������������������������������y�{������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo �����������������������������������������˵�����������������������������������������
echo [1]����ϵͳ�ռ�
echo [2]�ر�Windows Defender
echo [3]�ر�����(���ͷŲ��ֿռ�)
echo [4]�رտͻ�������Ƽƻ�
echo [5]�رմ�����Ƭ����ƻ�
echo [6]�ر��û��˻�����(UAC)
echo [7]�ر��û��˻�����(UAC)С����
echo [8]�ر������ݷ�ʽС��ͷ
echo [9]���������ݷ�ʽС��ͷ
set /p choose=���������ѡ��:
if /i "%choose%"=="1" cls&goto sysclean
if /i "%choose%"=="2" cls&goto wdoff
if /i "%choose%"=="3" cls&goto sleepoff
if /i "%choose%"=="4" cls&goto planoff
if /i "%choose%"=="5" cls&goto ddoff
if /i "%choose%"=="6" cls&goto uacoff
if /i "%choose%"=="7" cls&goto uacsoff
if /i "%choose%"=="8" cls&goto arrowoff
if /i "%choose%"=="9" cls&goto arrowon
exit

:sysclean
cls
echo ע�⣡�㽫Ҫ���������ļ���
echo [��ʱ�ļ�(*.tmp)]
echo [��ʱ�ļ�(*._mp)]
echo [��־�ļ�(*.log)]
echo [��ʱ�����ļ�(*.gid)]
echo [���̼���ļ�(*.chk)]
echo [��ʱ�����ļ�(*.old)]
echo [����վ]
echo [��ʱ�����ļ�(*.bak)]
echo [Ԥ��ȡ�����ļ���]
echo [��ʱ�ļ���]
echo [Cookies]
echo [IE��ʱ�ļ�]
echo [��ʱ�ļ��ļ���]
echo [�ļ�ʹ�ü�¼]
echo ��������չ�����ļ��н����������Ҳ���������վ����ɾ�ļ����߸Ų�����
set /p choose=���Ҫ������[1]����	[2]�رգ�
if /i "%choose%"=="1" goto cleansysstart
if /i "%choose%"=="2" goto start

:cleansysstart
cls
echo ׼������ϵͳ����...
echo ==================================
echo ��������[��ʱ�ļ�(*.tmp)](1 / 14)
del /f /s /q %systemdrive%\*.tmp
echo ��������[��ʱ�ļ�(*._mp)](2 / 14)
del /f /s /q %systemdrive%\*._mp
echo ��������[��־�ļ�(*.log)](3 / 14)
del /f /s /q %systemdrive%\*.log
echo ��������[��ʱ�����ļ�(*.gid)](4 / 14)
del /f /s /q %systemdrive%\*.gid
echo ��������[���̼���ļ�(*.chk)](5 / 14)
del /f /s /q %systemdrive%\*.chk
echo ��������[��ʱ�����ļ�(*.old)](6 / 14)
del /f /s /q %systemdrive%\*.old
echo ��������[����վ](7 / 14)
del /f /s /q %systemdrive%\recycled\*.*
echo ��������[��ʱ�����ļ�(*.bak)](8 / 14)
del /f /s /q %windir%\*.bak
echo ��������[Ԥ��ȡ�����ļ���](9 / 14)
del /f /s /q %windir%\prefetch\*.*
echo ��������[��ʱ�ļ��ļ���(Temp)](10 / 14)
del /f /s /q %windir%\temp\*.*
echo ��������[Cookies](11 / 14)
del /f /s /q %userprofile%\cookies\*.*
echo ��������[IE��ʱ�ļ�](12 / 14)
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
echo ��������[��ʱ�ļ��ļ���](13 / 14)
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
echo ��������[�ļ�ʹ�ü�¼](14/ 14)
del /f /s /q "%userprofile%\Recent\*.*"
echo ==================================
echo ����ϵͳ������ɣ�
pause
goto start

:wdoff
cls
echo ���ڹر�Windows Defender����
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 1 /t REG_DWORD /f
echo �ر�Windows Defender�ɹ���
pause
goto start

:sleepoff
cls
echo ���ڹر�Windows���߹��ܡ���
powercfg -h off
echo �ر�Windows���߳ɹ���
pause
goto start

:planoff
cls
echo ���ڹر�Windows�ͻ�������Ƽƻ�����
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /d 0 /t REG_DWORD /f
echo �رտͻ�������Ƽƻ��ɹ���
pause
goto start

:ddoff
cls
echo ���ڹرմ�����Ƭ����ƻ�����
schtasks /Change /DISABLE /TN "\Microsoft\Windows\Defrag\ScheduledDefrag"
echo �رմ�����Ƭ����ƻ��ɹ���
pause
goto start

:uacoff
cls
echo ���ڹر��û��˻�����(UAC)����
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /d 0 /t REG_DWORD /f
echo �ر��û��˻�����(UAC)�ɹ���
pause
goto start

:uacsoff
cls
echo ���ڹر��û��˻�����(UAC)С���ơ���
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 77 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
echo ���ڹر�Explorer����
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
echo �ر��û��˻�����(UAC)С���Ƴɹ���
echo ���ڿ���Explorer����
start explorer.exe
pause
goto start

:arrowoff
cls
echo ���ڹرտ�ݷ�ʽС��ͷ����
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,197" /t reg_sz /f
echo ���ڹر�Explorer����
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
echo �رտ�ݷ�ʽС��ͷ�ɹ���
echo ���ڿ���Explorer����
start explorer
pause

:arrowon
cls
echo ���ڿ�����ݷ�ʽС��ͷ����
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /f
echo ���ڹر�Explorer����
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
echo ������ݷ�ʽС��ͷ�ɹ���
echo ���ڿ���Explorer����
start explorer
pause