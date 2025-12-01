@echo off
echo ========================================
echo  Executando GLFW_Tie_Fighter
echo ========================================
echo.

if not exist "bin\Debug\GLFW_Tie_Fighter.exe" (
    echo ERRO: Executavel nao encontrado!
    echo Execute build.bat primeiro para compilar o projeto.
    echo.
    pause
    exit /b 1
)

bin\Debug\GLFW_Tie_Fighter.exe
