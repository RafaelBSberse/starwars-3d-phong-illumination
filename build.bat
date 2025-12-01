@echo off
echo ========================================
echo  Compilando GLFW_Tie_Fighter
echo ========================================
echo.

REM Criar diretorios se nao existirem
if not exist "obj\Debug" mkdir obj\Debug
if not exist "bin\Debug" mkdir bin\Debug

REM Definir caminhos das bibliotecas
set GLFW_INC=C:/glfw-3.4.bin.WIN64/include
set GLFW_LIB=C:/glfw-3.4.bin.WIN64/lib-mingw-w64
set GLEW_INC=C:/glew-2.1.0/include
set GLEW_LIB=C:/glew-2.1.0/lib/Release/x64
set GLM_INC=C:/glm
set MINGW_LIB=C:/Program Files/CodeBlocks/MinGW/x86_64-w64-mingw32/lib

REM Flags de compilacao
set CFLAGS=-Wall -fexceptions -g -Iinclude -I"%GLFW_INC%" -I"%GLEW_INC%" -I"%GLM_INC%" -IC:/glfw-3.4/deps

REM Flags de linkagem (usando bibliotecas do MSYS2/MinGW64)
set LDFLAGS=-lglfw3 -lgdi32 -lopengl32 -lglew32

echo [1/16] Compilando main.cpp...
g++ %CFLAGS% -c main.cpp -o obj\Debug\main.o
if errorlevel 1 goto error

echo [2/16] Compilando Application.cpp...
g++ %CFLAGS% -c src\Application.cpp -o obj\Debug\Application.o
if errorlevel 1 goto error

echo [3/16] Compilando Cube.cpp...
g++ %CFLAGS% -c src\Cube.cpp -o obj\Debug\Cube.o
if errorlevel 1 goto error

echo [4/16] Compilando Cylinder.cpp...
g++ %CFLAGS% -c src\Cylinder.cpp -o obj\Debug\Cylinder.o
if errorlevel 1 goto error

echo [5/16] Compilando Hexagon.cpp...
g++ %CFLAGS% -c src\Hexagon.cpp -o obj\Debug\Hexagon.o
if errorlevel 1 goto error

echo [6/16] Compilando HexagonalPrism.cpp...
g++ %CFLAGS% -c src\HexagonalPrism.cpp -o obj\Debug\HexagonalPrism.o
if errorlevel 1 goto error

echo [7/16] Compilando Mesh.cpp...
g++ %CFLAGS% -c src\Mesh.cpp -o obj\Debug\Mesh.o
if errorlevel 1 goto error

echo [8/16] Compilando Plate.cpp...
g++ %CFLAGS% -c src\Plate.cpp -o obj\Debug\Plate.o
if errorlevel 1 goto error

echo [9/16] Compilando Skybox.cpp...
g++ %CFLAGS% -c src\Skybox.cpp -o obj\Debug\Skybox.o
if errorlevel 1 goto error

echo [10/16] Compilando Sphere.cpp...
g++ %CFLAGS% -c src\Sphere.cpp -o obj\Debug\Sphere.o
if errorlevel 1 goto error

echo [11/16] Compilando Texture.cpp...
g++ %CFLAGS% -c src\Texture.cpp -o obj\Debug\Texture.o
if errorlevel 1 goto error

echo [12/16] Compilando TieFighter.cpp...
g++ %CFLAGS% -c src\TieFighter.cpp -o obj\Debug\TieFighter.o
if errorlevel 1 goto error

echo [13/16] Compilando TieWing.cpp...
g++ %CFLAGS% -c src\TieWing.cpp -o obj\Debug\TieWing.o
if errorlevel 1 goto error

echo [14/16] Compilando XWing.cpp...
g++ %CFLAGS% -c src\XWing.cpp -o obj\Debug\XWing.o
if errorlevel 1 goto error

echo [15/16] Compilando XWingClosed.cpp...
g++ %CFLAGS% -c src\XWingClosed.cpp -o obj\Debug\XWingClosed.o
if errorlevel 1 goto error

echo [16/16] Compilando stb_image.cpp...
g++ %CFLAGS% -c src\stb_image.cpp -o obj\Debug\stb_image.o
if errorlevel 1 goto error

echo.
echo ========================================
echo  Linkando executavel...
echo ========================================
g++ -o bin\Debug\GLFW_Tie_Fighter.exe ^
    obj\Debug\main.o ^
    obj\Debug\Application.o ^
    obj\Debug\Cube.o ^
    obj\Debug\Cylinder.o ^
    obj\Debug\Hexagon.o ^
    obj\Debug\HexagonalPrism.o ^
    obj\Debug\Mesh.o ^
    obj\Debug\Plate.o ^
    obj\Debug\Skybox.o ^
    obj\Debug\Sphere.o ^
    obj\Debug\Texture.o ^
    obj\Debug\TieFighter.o ^
    obj\Debug\TieWing.o ^
    obj\Debug\XWing.o ^
    obj\Debug\XWingClosed.o ^
    obj\Debug\stb_image.o ^
    %LDFLAGS%

if errorlevel 1 goto error

echo.
echo ========================================
echo  Compilacao concluida com sucesso!
echo  Executavel: bin\Debug\GLFW_Tie_Fighter.exe
echo ========================================
echo.
goto end

:error
echo.
echo ========================================
echo  ERRO durante a compilacao!
echo ========================================
pause
exit /b 1

:end
pause
