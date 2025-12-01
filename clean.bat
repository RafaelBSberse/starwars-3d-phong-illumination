@echo off
echo ========================================
echo  Limpando arquivos de compilacao
echo ========================================
echo.

if exist "obj\Debug\*.o" (
    echo Removendo arquivos objeto...
    del /Q obj\Debug\*.o
)

if exist "bin\Debug\GLFW_Tie_Fighter.exe" (
    echo Removendo executavel...
    del /Q bin\Debug\GLFW_Tie_Fighter.exe
)

echo.
echo ========================================
echo  Limpeza concluida!
echo ========================================
pause
