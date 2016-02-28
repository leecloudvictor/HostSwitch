@echo *****************
@echo * HOSTS 切换器  *
@echo * 1 -- 初始环境 *
@echo * 2 -- 科学上网 *
@echo * 3 -- 工作环境 *
@echo * 4 -- 开发环境 *
@echo *****************

cd C:\Windows\System32\drivers\etc

::备份当前hosts文件
copy /y hosts hosts.bak

@choice /c 1234

if errorlevel 4 goto DEVELOP
if errorlevel 3 goto WORK
if errorlevel 2 goto GOOGLE
if errorlevel 1 goto CLEAR

:CLEAR
copy /y hosts.original hosts
goto END

:GOOGLE
copy /y hosts.google hosts
goto END

:WORK
copy /y hosts.work hosts
goto END

:DEVELOP
copy /y hosts.develop hosts
goto END

:END
ipconfig /flushdns
pause
