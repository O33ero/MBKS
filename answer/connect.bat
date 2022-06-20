@echo off


SET var=
SETLOCAL EnableDelayedExpansion


FOR /f %%i in (%1) DO (
   SET var=!var!%%i+
)
REM Remove last + sing
SET VAR=%var:~0,-1%


echo !var! 
copy %var% %2


ENDLOCAL