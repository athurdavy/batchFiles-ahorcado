@echo off 
setlocal enabledelayedexpansion
title AHORCADO
echo ##################################
echo ##JUGUEMOS AL JUEGO DEL AHORCADO##
echo ##################################
echo.
color 9
set words[0]=MANZANA
set visible=_______

set adivinaPalabra=0
set errores=0
set palabravisible=_______

goto sinfallos



::::::::::::::::::::::::::::::::::::::::::::::::::
::        LOGICA AHORCADO
::::::::::::::::::::::::::::::::::::::::::::::::::

:ini
echo ::::::::::::::::::::::::::::::::::::::
echo PALABRA BUSCADA:
echo !visible!
echo ::::::::::::::::::::::::::::::::::::::
set/p letra=seleccione una letra:
echo LETRA SELECCIONADA: %letra%
echo ::::::::::::::::::::::::::::::::::::::
goto validation

:validation
set letraEncontrada=0
set nuevaPalabra=

for /L %%i in (0,1,6) do (
    set char=!words[0]:~%%i,1!
    set visibleChar=!palabravisible:~%%i,1!
    if /I !char!==!letra! (
        set nuevaPalabra=!nuevaPalabra!!char!
        set letraEncontrada=1
    ) else (
        set nuevaPalabra=!nuevaPalabra!!visibleChar!
    )
)

set palabravisible=!nuevaPalabra!
echo.

if "!letraEncontrada!"=="0" (
    set /a errores+=1
    goto checkErrores

) else (

    if !palabravisible!==!words[0]! (
		color 5
        echo ::::::::::::::::::::::::::::::::::::::
		echo              Felicidades
		echo        Has adivinado la palabra:
		echo               !words[0]!
		echo ::::::::::::::::::::::::::::::::::::::
        pause
        exit
    )
	goto checkErrores
	
)

:reset
echo ##################################
echo ##JUGUEMOS AL JUEGO DEL AHORCADO##
echo ##################################
echo.
color 9
set words[0]=MANZANA
set visible=_______

set adivinaPalabra=0
set errores=0
set palabravisible=_______

goto sinfallos

:pideLetra
echo ::::::::::::::::::::::::::::::::::::::
echo PALABRA BUSCADA:
echo !palabravisible! 
echo ::::::::::::::::::::::::::::::::::::::
echo Llevas %errores% Errores
set/p letra=seleccione una nueva letra:
echo ::::::::::::::::::::::::::::::::::::::
goto validation

:checkErrores
if "!errores!"=="0" goto cerofallos
if "!errores!"=="1" goto unfallo
if "!errores!"=="2" goto dosfallos
if "!errores!"=="3" goto tresfallos
if "!errores!"=="4" goto cuatrofallos
if "!errores!"=="5" goto cincofallos
if "!errores!"=="6" goto seisfallos

::::::::::::::::::::::::::::::::::::::::::::::::::
::        DIBUJOS AHORCADO
::::::::::::::::::::::::::::::::::::::::::::::::::
::cero fallos
:cerofallos
CLS
echo ::::::::::::::::::::::::::::::::::::::
echo CERO FALLOS
echo.
echo.                   # * * * * * *
echo                    #          *
echo                    #          *
echo                    #          *
echo                    #          *
echo              #######          *
echo                               *
echo                               *
echo                               *
echo                               *
echo                               *        
echo                               *
echo                   * * * * * * * 
echo.
echo ::::::::::::::::::::::::::::::::::::::
goto pideLetra


::un fallo
:unfallo
CLS
echo ::::::::::::::::::::::::::::::::::::::
echo UN FALLO
echo.
echo.                   # * * * * * *
echo          -----     #          *
echo         *     *    #          *
echo         *     *    #          *
echo          -----     #          *
echo              #######          *
echo                               *
echo                               *
echo                               *
echo                               *
echo                               *        
echo                               *
echo                   * * * * * * * 
echo.
echo ::::::::::::::::::::::::::::::::::::::
goto pideLetra

::dos fallos
:dosfallos
CLS
echo ::::::::::::::::::::::::::::::::::::::
echo DOS FALLOS
echo.
echo.                   # * * * * * *
echo          -----     #          *
echo         *     *    #          *
echo         *     *    #          *
echo          -----     #          *
echo            * #######          *
echo           * *                 *
echo            *                  *
echo            *                  *
echo                               *
echo                               *        
echo                               *
echo                   * * * * * * * 
echo.
echo ::::::::::::::::::::::::::::::::::::::
goto pideLetra

::tres fallos
:tresfallos
CLS
echo ::::::::::::::::::::::::::::::::::::::
echo TRES FALLOS
echo.
echo.                   # * * * * * *
echo          -----     #          *
echo         *     *    #          *
echo         *     *    #          *
echo          -----     #          *
echo            * #######          *
echo           * *                 *
echo            *                  *
echo            *                  *
echo           * *                 *
echo          *                    *
echo         *                     *
echo       __*                     *
echo                   * * * * * * *
echo.
echo ::::::::::::::::::::::::::::::::::::::
goto pideLetra

::cuatro fallos
:cuatrofallos
CLS
echo ::::::::::::::::::::::::::::::::::::::
echo CUATRO FALLOS
echo.
echo.                   # * * * * * *
echo          -----     #          *
echo         *     *    #          *
echo         *     *    #          *
echo          -----     #          *
echo            * #######          *
echo           * *                 *
echo            *                  *
echo            *                  *
echo           * *                 *
echo          *   *                *
echo         *     *               *
echo       __*     *__             *
echo                   * * * * * * * 
echo.
echo ::::::::::::::::::::::::::::::::::::::
goto pideLetra
					   
::cinco fallos
:cincofallos
CLS
echo ::::::::::::::::::::::::::::::::::::::
echo CINCO FALLOS
echo.
echo.                   # * * * * * *
echo          -----     #          *
echo         *     *    #          *
echo     _   *     *    #          *
echo       *  -----     #          *
echo       *    * #######          *
echo         * * *                 *
echo            *                  *
echo            *                  *
echo           * *                 *
echo          *   *                *
echo         *     *               *
echo       __*     *__             *
echo                   * * * * * * *
echo.
echo ::::::::::::::::::::::::::::::::::::::
goto pideLetra
					   
::seis fallos
:seisfallos
CLS
set respuesta=N
echo ::::::::::::::::::::::::::::::::::::::
echo SEIS FALLOS
echo.
echo.                   # * * * * * *
echo          -----     #          *
echo         *     *    #          *
echo     _   *     *    #          *
echo       *  -----     #          *
echo       *    * #######           *
echo         * * * *               *
echo            *    *             *
echo            *    *_            *
echo           * *                 *
echo          *   *                *
echo         *     *               *
echo       __*     *__             *
echo                   * * * * * * *
echo.
color 4
echo :::::::::::::::::::::::::::::::::::::
echo		HAS FALLADO
echo :::::::::::::::::::::::::::::::::::::
echo Deseas volver a intentarlo?
set/p respuesta=Pulsa S para volver a intentarlo:
if "!respuesta!"=="S" goto reset
pause
exit


:sinfallos
::sin fallos
echo.
echo.                   # * * * * * *
echo                    #          *
echo                    #          *
echo                    #          *
echo                    #          *
echo              #######          *
echo                               *
echo                               *
echo                               *
echo                               *
echo                               *        
echo                               *
echo                   * * * * * * *
echo.
goto pideLetra