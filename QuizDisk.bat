@echo off
color a
title QuizDisk - Floppy Disk - 64MB
:menu
cls
echo DOS GAMES
echo.
echo Floppy-Disk(64MB Storage) (Running)
echo Game version 1.2
echo Game Size: 4.9KB
echo interface CLI
echo Made by Joel Alex Joseph
echo x16-bit Script
echo.
echo.
echo   Quiz Game!

echo   1) New Game
echo   2) Tutorial
echo   3) Quit Game
set /p number=

if %number% ==  1 goto Start Game
if %number% ==  2 goto How to play
if %number% ==  3
if %number% ==  4 goto error
if %number% ==  5 goto LoadFPS

:Start Game
cls
echo Enter an existing username:
set /p name=
echo Do you want to start game %name%? (y/n)
set/p start=
if %start% == y goto level1
if%start% == n goto main menu
goto Start Game

:How to play
cls
echo Type the number of the answer then press the ENTER key. Watchout for few glitches.
echo Want to go back to the menu?(Y/N)
set /p menugoto=
if %menugoto% == Y goto menu
if %menugoto% == N goto How to play
goto How to play

:Exit
echo Thanks for playing {GltichErrorOccured}
goto Exit

:Setup
cls
echo {RunningFloppyDisk}Game version1.2 please restart the game to play
goto Setup

:LoadFPS
cls
echo 16
echo 12
echo 23
echo 34
echo 18
echo 4
echo 8
echo 2
echo 12
echo 9

:error
color 4
echo Your game is in unstable mode please restart the game
echo Loading...
echo Notification- Error Occured
goto error
 
:level1
cls
echo Lets start with the basics.
echo What is 20 + 10?
echo 1)  1
echo 2) 30
echo 3) 200

set /p answer1=
if %answer1% == 1 goto wrong1
if %answer1% == 2 goto correct1
if %answer1% == 3 goto wrong1
goto level1

:correct1
echo Finally I have someone smart with me Next Level?(y/n)
set /p NL1=

if  %NL1% == y goto level2
if  %NL1% == n goto menu
goto correct1

:wrong1
echo Sadly , you went wrong.  Retry? (y/n)
set /p WA1=
if %WA1% == y goto level1
if %WA1% == n goto menu
goto wrong1

:level2

cls
echo Who is the founder of Microsoft?
echo 1) Bill Gates and Steve Ballmer
echo 2) Tommy King 
echo 3) Ben Franklin
echo 4) Jeff Dunham
set /p command=
if %command% == 1 goto correct2
if %command% == 2 goto wrong2
if %command% == 3 goto wrong2
if %command% == 4 goto wrong2
goto  level2

:correct2
cls
echo Correct Next level(y/n)? 
command=
if %command% == y goto level3
if %command% == n goto level2
goto level3

:wrong2
cls 
echo You lost! %name% Do you want to play again?(y/n)
set /p retry=
if %retry% == y goto level2
if %retry% == n goto menu
goto wrong2

:level3
cls
echo Who made Linux?
echo 1) %name%
echo 2) Linus Tolvards
echo 3) Steve Jobs
echo 4) Bill Gates
set /p command2=
if %command2% == 1 goto wrong3
if %command2% == 2 goto correct3
if %command2% == 3 goto wrong3
if %command2% == 4 goto wrong3
goto level3

:correct3
cls
echo right answer Next Level?(y/n)
set /p CommanD=
if %CommanD% == y goto level4
if %CommanD% == n goto level3
goto correct3

:wrong3
cls 
echo No it is wrong answer!
echo Do you want to retry? (y/n)
set /p ry=
if %ry% == y goto level3
if %ry% == n goto menu
goto wrong3

:level4
cls
echo This is the last level %name%
echo When was windows invented?
echo 1) In 1985
echo 2) In 2015
echo 3) In 1995
echo 4) Never Invented
set /p aa=
if %aa% == 1 goto correct4
if %aa% == 2 goto wrong4
if %aa% == 3 goto wrong4
if %aa% == 4 goto wrong4
goto level4

:correct4
cls
echo Congratulations! You Won! %name%
title QuizDisk -UnstableError
goto exit

:wrong4
cls
echo Sorry you lost the game %name%
echo Do you want to restart the whole game? (y/n)
set /p restart=
if %restart% == y goto level1
if %restart% == n goto menu