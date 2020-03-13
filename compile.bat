@echo off
chcp 65001 >nul

set THESIS=main
set PACKAGE=hitszthesis

set flag=%1
if %flag%x == x (
	set flag=thesis
)

if %flag%x == thesisx (
	call :thesis
	if ERRORLEVEL 1 (
		echo Error! Please check the 'main.log' for more details...
		pause
	) else (
		echo Finished!
	)
	goto :EOF
)

if %flag%x == clsx (
	call :cls
	goto :EOF
)

if %flag%x == allx (
	echo Compile thesis and documentation...
	call :doc
	call :thesis
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

if %flag%x == devx (
	call :doc
	call :thesis
	call :cleanall
	goto :EOF
)

:help
	echo This is the compile batch script for hitszhesis.
	echo Usage:
	echo     compile.bat [option]
	echo options:
	echo   thesis    Compile the thesis (default)
	echo   doc       Compile the documentation
	echo   all       Compile the thesis and documentation
	echo   clean     Clean all work files
	echo   cleanall  Clean all work files and pdf files
	echo   wordcount Count words in main.pdf
	echo   help      Print this help message
goto :EOF

:thesis
	echo Compile thesis...
	latex %PACKAGE%.ins
	xelatex -shell-escape %THESIS%.tex
	bibtex %THESIS%
	xelatex -shell-escape %THESIS%.tex
	xelatex -shell-escape %THESIS%.tex
	splitindex %THESIS% -- -s hitszthesis.ist
	xelatex -shell-escape %THESIS%.tex
goto :EOF

:cls
	echo Split cls file...
	xetex %PACKAGE%.ins
goto :EOF

:doc
	echo Compile documentation...
	latex %PACKAGE%.ins
	xelatex %PACKAGE%.dtx
	makeindex -s gind.ist -o %PACKAGE%.ind %PACKAGE%.idx
	makeindex -s gglo.ist -o %PACKAGE%.gls %PACKAGE%.glo
	xelatex %PACKAGE%.dtx
	xelatex %PACKAGE%.dtx
goto :EOF

:clean
	echo Clean auxiliary files...
	latexmk -c %PACKAGE%.dtx
	latexmk -c %THESIS%
	del *.xdv *.hd *.aux front\*.aux body\*.aux back\*.aux >nul 2>nul
	del main-china.idx main-english.idx >nul 2>nul
goto :EOF

:cleanall
	echo Clean class files...
	del %PACKAGE%.cls %PACKAGE%.cfg dtx-style.sty >nul 2>nul
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
