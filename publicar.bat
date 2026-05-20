@echo off
echo ==========================================
echo Publicando libro de Estatica en GitHub...
echo ==========================================

echo.
echo 1. Renderizando libro en HTML...
quarto render --to html

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Fallo el renderizado de Quarto.
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo 2. Agregando archivos modificados...
git add .

echo.
echo 3. Creando commit...
git commit -m "Actualizar libro de Estatica"

echo.
echo 4. Subiendo cambios a GitHub...
git push

echo.
echo ==========================================
echo Proceso finalizado.
echo Revise la pagina web en unos minutos.
echo ==========================================
pause