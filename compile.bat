@echo off
chcp 65001 >nul

set THESIS=main
set PACKAGE=hitszthesis
set SPINE=spine

set flag=%1
if %flag%x == x (
	set flag=thesis
)

if %flag%x == thesisx (
	call :cleanall
	call :thesis
	if ERRORLEVEL 1 (
		echo Error! Please check the 'main.log' for more details...
		pause
	) else (
		call :clean
		echo Finished!
	)
	goto :EOF
)

if %flag%x == clsx (
	call :cls
	goto :EOF
)

if %flag%x == allx (
	call :all
	goto :EOF
)

if %flag%x == spinex (
	call :all
	goto :EOF
)

if %flag%x == docx (
	call :doc
	goto :EOF
)

if %flag%x == cleanx (
	call :clean
	goto :EOF
)

if %flag%x == cleanallx (
	call :cleanall
	goto :EOF
)

if %flag%x == wordcountx (
	call :wordcounty
	goto :EOF
)

:help
	echo This is the compile batch script for hitszhesis.
	echo Usage:
	echo     compile.bat [option]
	echo options:
	echo   thesis    Compile the thesis (default)
	echo   clean     Clean all work files
	echo   cleanall  Clean all work files and main.pdf
	echo   wordcount Count words in main.pdf
	echo   help      Print this help message
goto :EOF

:thesis
	echo Compile...
	latexmk -xelatex -file-line-error -halt-on-error -interaction=nonstopmode main >nul 2>nul
goto :EOF

:cls
	echo Split cls file...
	xetex %PACKAGE%.ins
goto :EOF

:spine
	echo Compile spine.tex file...
	latexmk -xelatex -file-line-error -halt-on-error -interaction=nonstopmode spine >nul 2>nul
goto :EOF

:all
	echo Compile thesis and spine...
	latexmk -xelatex -file-line-error -halt-on-error -interaction=nonstopmode main >nul 2>nul
	latexmk -xelatex -file-line-error -halt-on-error -interaction=nonstopmode spine >nul 2>nul
goto :EOF

:doc
	echo Compile documentation...
	xetex %PACKAGE%.ins
	latexmk -xelatex -file-line-error -halt-on-error -interaction=nonstopmode %PACKAGE%.dtx >nul 2>nul
goto :EOF

:clean
	echo Clean auxiliary files...
	latexmk -c -silent %PACKAGE%.dtx %THESIS% %SPINE% 2>nul
	del tex\*.aux >nul 2>nul
goto :EOF

:cleanall
	echo Clean pdf files...
	del /Q %PACKAGE%.pdf %THESIS%.pdf %SPINE%.pdf >nul 2>nul
	goto :clean
goto :EOF

:wordcountx
	set found=0
	setlocal enabledelayedexpansion

	findstr "\\documentclass\[[^\[]*english" %THESIS%.tex > nul
	if %errorlevel% equ 0 (
		for /f "delims=" %%i in ('texcount %THESIS%.tex -inc -char-only  2^>nul') do (
			if !found! equ 1 (
				echo 英文字符数:		!%%i!
				goto :total
			)
			echo %%i | findstr "total" > nul && set found=1
		)
	) else (
		for /f "delims=" %%i in ('texcount %THESIS%.tex -inc -ch-only  2^>nul') do (
			if !found! equ 1 (
				echo 纯中文字数:		!%%i!
				goto :total
			)
			echo %%i | findstr "total" > nul && set found=1
		)
	)

:total
	set found=0
	for /f "delims=" %%i in ('texcount %THESIS%.tex -inc -chinese 2^>nul') do (
		if !found! equ 1 (
			echo 总字数^(英文单词+中文字^):!%%i!
			goto :EOF
		)
		echo %%i | findstr "total" > nul && set found=1
	)
goto :EOF

:wordcounty
	texcount %THESIS%.tex -inc -chinese
goto :EOF
