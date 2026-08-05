chcp 1251
echo off
set date1=%date: =0%
set mytime=%TIME: =0%
set hh=%mytime:~0,2%
set mm=%mytime:~3,2%
set ss=%mytime:~6,2%
set /A mm5=(%mm% + 1)
if %mm5% GTR 9 goto :ten
if %mm5%==1 (set mmend=%mm5:1=01%)
if %mm5%==2 (set mmend=%mm5:2=02%)
if %mm5%==3 (set mmend=%mm5:3=03%)
if %mm5%==4 (set mmend=%mm5:4=04%)
if %mm5%==5 (set mmend=%mm5:5=05%)
if %mm5%==6 (set mmend=%mm5:6=06%)
if %mm5%==7 (set mmend=%mm5:7=07%)
if %mm5%==8 (set mmend=%mm5:8=08%)
if %mm5%==9 (set mmend=%mm5:9=09%)
goto :ten1
:ten
set mmend=%mm5%
:ten1
<nul set /p ""="[color=#008000]%date1%_[/color]%hh%:%mmend%" | CLIP"
exit
