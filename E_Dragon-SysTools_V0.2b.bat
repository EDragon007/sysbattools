@echo off
mode con cols=101 lines=35
title E����������ϵͳ������V0.2b
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
echo E����������ϵͳ������V0.2b
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
echo ����������������������������������������������������������������������������������������������������
echo ��������������������������������������������������������������������������������������������������
echo �������������������������������������������������˵�������������������������������������������������
echo [1]����ϵͳ�ռ�			[11]���������ݷ�ʽ��С��ͷ	
echo [2]�ر�Windows Defender		[12]ִ��chkdsk�������޸�����	
echo [3]����Windows Defender		[13]�޸�ָ����������		
echo [4]�ر�����(���ͷŲ��ֿռ�)	[14]FAT32����תNTFS		
echo [5]�رտͻ�������Ƽƻ�		[15]ɨ��ϵͳ�ļ��������Բ��޸�	
echo [6]�رմ�����Ƭ����ƻ�		[16]�༭hosts�ļ�		
echo [7]�����û��˻�����(UAC)����	[17]ˢ��DNS����			
echo [8]�ر��û��˻�����(UAC)С����	[18]��ʱ�ػ�(��ʱ)		
echo [9]�����û��˻�����(UAC)С����	[19]��ʱ����(��ʱ)		
echo [10]�ر������ݷ�ʽ��С��ͷ	[20]��ʱִ��ָ������		
set /p choose=���������ѡ��:
if /i "%choose%"=="1" cls&goto sysclean
if /i "%choose%"=="2" cls&goto wdoff
if /i "%choose%"=="3" cls&goto wdon
if /i "%choose%"=="4" cls&goto sleepoff
if /i "%choose%"=="5" cls&goto planoff
if /i "%choose%"=="6" cls&goto ddoff
if /i "%choose%"=="7" cls&goto uacsetting
if /i "%choose%"=="8" cls&goto uacsoff
if /i "%choose%"=="9" cls&goto uacson
if /i "%choose%"=="10" cls&goto arrowoff
if /i "%choose%"=="11" cls&goto arrowon
if /i "%choose%"=="12" cls&goto chkdsk
if /i "%choose%"=="13" cls&goto bcdboot
if /i "%choose%"=="14" cls&goto fattontfs
if /i "%choose%"=="15" cls&goto sfc
if /i "%choose%"=="16" cls&goto edithosts
if /i "%choose%"=="17" cls&goto flushdns
if /i "%choose%"=="18" cls&goto timedshutdown
if /i "%choose%"=="19" cls&goto timedreboot
if /i "%choose%"=="20" cls&goto timedtasks
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
echo [WinSxS�����ļ���]
echo ��������չ�����ļ��н����������Ҳ���������վ����ɾ�ļ����߸Ų�����
set /p choose=���Ҫ������[1]����	[2]���أ�
if /i "%choose%"=="1" goto cleansysstart
if /i "%choose%"=="2" goto start
exit

:cleansysstart
cls
echo ׼������ϵͳ����...
echo ==================================
echo ��������[��ʱ�ļ�(*.tmp)](1 / 15)
del /f /s /q %systemdrive%\*.tmp
echo ��������[��ʱ�ļ�(*._mp)](2 / 15)
del /f /s /q %systemdrive%\*._mp
echo ��������[��־�ļ�(*.log)](3 / 15)
del /f /s /q %systemdrive%\*.log
echo ��������[��ʱ�����ļ�(*.gid)](4 / 15)
del /f /s /q %systemdrive%\*.gid
echo ��������[���̼���ļ�(*.chk)](5 / 15)
del /f /s /q %systemdrive%\*.chk
echo ��������[��ʱ�����ļ�(*.old)](6 / 15)
del /f /s /q %systemdrive%\*.old
echo ��������[����վ](7 / 15)
del /f /s /q %systemdrive%\recycled\*.*
echo ��������[��ʱ�����ļ�(*.bak)](8 / 15)
del /f /s /q %windir%\*.bak
echo ��������[Ԥ��ȡ�����ļ���](9 / 15)
del /f /s /q %windir%\prefetch\*.*
echo ��������[��ʱ�ļ��ļ���(Temp)](10 / 15)
del /f /s /q %windir%\temp\*.*
echo ��������[Cookies](11 / 15)
del /f /s /q %userprofile%\cookies\*.*
echo ��������[IE��ʱ�ļ�](12 / 15)
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
echo ��������[��ʱ�ļ��ļ���](13 / 15)
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
echo ��������[�ļ�ʹ�ü�¼](14/ 15)
del /f /s /q "%userprofile%\Recent\*.*"
echo ��������[WinSxS�����ļ���](15/ 15)
del /f /s /q "%systemdrive%\Windows\winsxs\Backup\*.*"
echo ==================================
echo ����ϵͳ������ɣ�
pause
goto start

:wdoff
cls
echo ���ڹر�Windows Defender����
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 1 /t REG_DWORD /f
echo �ر�Windows Defender�ɹ�����������ĵ��ԣ�
pause
goto start

:wdon
cls
echo ���ڿ���Windows Defender����
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 0 /t REG_DWORD /f
echo ����Windows Defender�ɹ�����������ĵ��ԣ�
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

:uacsetting
cls
echo ���������û��˻�����(UAC)����
C:\windows\system32\useraccountcontrolsettings.exe
echo �����û��˻�����(UAC)�ɹ���
pause
goto start

:uacsoff
cls
echo ���ڹر��û��˻�����(UAC)С���ơ���
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

:uacson
cls
echo ���ڿ����û��˻�����(UAC)С���ơ���
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 77 /f
echo ���ڹر�Explorer����
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
echo �����û��˻�����(UAC)С���Ƴɹ���
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
goto start

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
goto start

:chkdsk
cls
echo ע�⣡ִ��chkdsk��ʱ����ܻ�ܳ�������������ʱ�䣡
echo ��������Ҫִ�д��̼��Ĵ����̷�(�磺C)
set /p chkdsk=
chkdsk %chkdsk%: /f
pause
goto start

:bcdboot
cls
echo ע�⣡������ʹ��Windows�Դ���bcdboot�����޸�����֧���޸�Windowsϵͳ
echo �������Զ��ж�ѡ��Legacy/UEFI������ʽ
echo ��������Ҫִ���޸������Ĵ����̷�(�磺C)
set /p bcdboot=
bcdboot %bcdboot%:/Windows /v
pause
goto start

:fattontfs
cls
echo ע�⣡������ʹ��Windows�Դ���convert����ת����ת��ǰ��ȷ�������޴���
echo ������Ϊ����ת�������ǲ���֤100%�������߸Ų�����
echo ��������Ҫִ��FAT32תNTFS�Ĵ����̷�(�磺C)
set /p fattontfs=
convert %fattontfs%: /fs:ntfs
pause
goto start

:sfc
cls
echo ������ʹ��Windows�Դ���sfc������ȫɨ��һ������ǰ����ϵͳ���������޸������ϵͳ�ļ�
echo ע�⣡��ʱ�����ر𳤣�����ǰ���������ʱ�䣡
echo �ʺϵ��Ա��������ź�ϵͳ�ļ��𻵵��µ�ϵͳ���ȶ����޸�
echo �Ƿ�Ҫ����ִ�У�[1]����	[2]���أ�
set /p sfc=
if /i "%sfc%"=="1" cls&goto sfcstart
if /i "%sfc%"=="2" cls&goto start
exit

:sfcstart
echo ����ִ��ϵͳɨ����޸�����
sfc /scannow
echo ɨ�貢�޸���ɣ�
pause
goto start

:edithosts
cls
echo ����ʹ�ü��±���hosts�ļ�����
notepad "%systemroot%/system32/drivers/etc/hosts"
echo hosts�ļ��ѱ༭��
pause
goto start

:flushdns
cls
echo ����ˢ��DNS���桭��
ipconfig /flushdns
echo DNS����ˢ�³ɹ���
pause
goto start

:timedshutdown
cls
echo ������ػ���ʱ�䣺(24Сʱ�ƣ���11:40��ð�ű���ΪӢ��ð�ţ�)
echo ���ػ�ʱ�䵽�󣬽�����ʾ�û������ļ����ȴ�1���Ӻ�ػ�
set /p shutdowntime=
at %shutdowntime% shutdown /s /t 60
echo ������ɣ�
pause
goto start

:timedreboot
cls
echo ������������ʱ�䣺(24Сʱ�ƣ���11:40��ð�ű���ΪӢ��ð�ţ�)
echo ������ʱ�䵽�󣬽�����ʾ�û������ļ����ȴ�1���Ӻ�����
set /p reboottime=
at %reboottime% shutdown /r /t 60
echo ������ɣ�
pause
goto start

:timedtasks
cls
echo ������ִ�������ʱ�䣺(24Сʱ�ƣ���11:40��ð�ű���ΪӢ��ð�ţ�)
echo ��ִ������󣬽���������һ�����������
set /p taskstime=
echo ��������%taskstime%ִ�е����
set /p timedtasks=
at %taskstime% %timedtasks%
echo ��������ɣ�
pause
goto start