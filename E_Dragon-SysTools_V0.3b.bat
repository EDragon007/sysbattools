@echo off
mode con cols=101 lines=35
title E����������ϵͳ������V0.3b
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
echo E����������ϵͳ������V0.3b
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
echo [1]����ϵͳ�ռ�			[11]���������ݷ�ʽ��С��ͷ	[21]��ʱִ��ָ������
echo [2]�ر�Windows Defender		[12]ִ��chkdsk�������޸�����	[22]ȥ���������½Ǽ���ˮӡ
echo [3]����Windows Defender		[13]�޸�ָ����������		[23]�����������½Ǽ���ˮӡ
echo [4]�ر�����(���ͷŲ��ֿռ�)	[14]FAT32����תNTFS		[24]������������
echo [5]�رտͻ�������Ƽƻ�		[15]ɨ��ϵͳ�ļ��������Բ��޸�	[25]������������
echo [6]�رմ�����Ƭ����ƻ�		[16]ɨ��ָ���ļ��������Բ��޸�	[26]������������
echo [7]�����û��˻�����(UAC)����	[17]�༭hosts�ļ�		[27]�رտ�������
echo [8]�ر��û��˻�����(UAC)С����	[18]ˢ��DNS����			[28]���ó���Ԥ������
echo [9]�����û��˻�����(UAC)С����	[19]��ʱ�ػ�			[29]�����Զ���¼����¼ѡ��
echo [10]�ر������ݷ�ʽ��С��ͷ	[20]��ʱ����			
set /p choose=���������ѡ��:
goto choose

:choose
if /i "%choose%"=="1" cls&goto sysclean
if /i "%choose%"=="2" cls&goto wdoff
if /i "%choose%"=="3" cls&goto wdon
if /i "%choose%"=="4" cls&goto sleepoff
if /i "%choose%"=="5" cls&goto planoff
if /i "%choose%"=="6" cls&goto ddoff
if /i "%choose%"=="7" cls&goto uac
if /i "%choose%"=="8" cls&goto uacsoff
if /i "%choose%"=="9" cls&goto uacson
if /i "%choose%"=="10" cls&goto arrowoff
if /i "%choose%"=="11" cls&goto arrowon
if /i "%choose%"=="12" cls&goto chkdsk
if /i "%choose%"=="13" cls&goto bcdboot
if /i "%choose%"=="14" cls&goto fattontfs
if /i "%choose%"=="15" cls&goto sfc
if /i "%choose%"=="16" cls&goto sfcfile
if /i "%choose%"=="17" cls&goto edithosts
if /i "%choose%"=="18" cls&goto flushdns
if /i "%choose%"=="19" cls&goto timedshutdown
if /i "%choose%"=="20" cls&goto timedreboot
if /i "%choose%"=="21" cls&goto timedtasks
if /i "%choose%"=="22" cls&goto delwm
if /i "%choose%"=="23" cls&goto addwm
if /i "%choose%"=="24" cls&goto searchoff
if /i "%choose%"=="25" cls&goto searchon
if /i "%choose%"=="26" cls&goto hybridbooton
if /i "%choose%"=="27" cls&goto hybridbootoff
if /i "%choose%"=="28" cls&goto superfetch
if /i "%choose%"=="29" cls&goto loginsetting
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

:uac
cls
echo ���������û��˻�����(UAC)����
useraccountcontrolsettings
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

:sfcfile
cls
echo ������ʹ��Windows�Դ���sfc����ɨ��һ������ǰ����·����ϵͳ�ļ����������޸�����
echo �ʺϵ��Ա��������ź�ϵͳ�ļ��𻵵��µ�ϵͳ���ȶ����޸�
echo ��������Ҫ�޸����ļ�����·����(�磺C:\Windows\explorer.exe)
set /p sfcfilepath=
echo ����Ҫ�޸�"%sfcfilepath%"�Ƿ�Ҫ����ִ�У�[1]����	[2]���أ�
set /p sfcfile=
if /i "%sfcfile%"=="1" cls&goto sfcfilestart
if /i "%sfcfile%"=="2" cls&goto start
exit

:sfcfilestart
echo ����ִ��ϵͳɨ����޸�����
sfc /scanfile=%sfcfilepath%
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

:delwm
cls
echo ����ȥ�����½Ǽ���ˮӡ����
reg add "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /t REG_DWORD /d "0" /f
echo ���½Ǽ���ˮӡ��ȥ����
pause
goto start

:addwm
cls
echo ���ڿ������½Ǽ���ˮӡ����
reg delete "HKCU\Control Panel\Desktop" /v "PaintDesktopVersion" /f
echo ���½Ǽ���ˮӡ�ѿ�����
pause
goto start

:searchoff
cls
echo ����ֹͣ�������񡭡�
sc stop WMPNetworkSvc
sc stop wsearch
echo ��������ֹͣ��
echo ����������������Ϊ���á���
sc config WMPNetworkSvc start= disabled
sc config wsearch start= disabled
echo ��������������ɣ�
pause
goto start

:searchon
cls
echo ����������������Ϊ�Զ�����
sc config wsearch start= auto
sc config WMPNetworkSvc start= delayed-auto
echo ��������������ɣ�
echo ���������������񡭡�
sc start wsearch
sc start WMPNetworkSvc
echo ����������������
pause
goto start

:hybridbooton
echo ���ڿ���������������
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "HiberbootEnabled" /d 1 /t REG_DWORD /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
echo �������������ɹ���
pause
goto start

:hybridbootoff
echo ���ڹرտ�����������
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "HiberbootEnabled" /d 0 /t REG_DWORD /f
gpupdate /force
taskkill /f /im explorer.exe
start %systemroot%\explorer
echo ���������رճɹ���
pause
goto start

:superfetch
echo ��ѡ�񳬼�Ԥ������������ʽ��
echo [1]�Զ�(�ӳ�����)	[2]�Զ�	[3]�ֶ�	[4]����
set /p superfetchsetting=
if /i "%superfetchsetting%"=="1" cls&set sysmain=delayed-auto
if /i "%superfetchsetting%"=="2" cls&set sysmain=auto
if /i "%superfetchsetting%"=="3" cls&set sysmain=demand
if /i "%superfetchsetting%"=="4" cls&set sysmain=disabled
echo �������ó���Ԥ�����񡭡�
sc config "SysMain" start= %sysmain%
echo ����Ԥ������������ɣ�
pause
goto start

:loginsetting
echo ���������Զ���¼����¼ѡ���
C:\windows\system32\netplwiz
echo �Զ���¼����¼ѡ����������ɣ�
pause
goto start
