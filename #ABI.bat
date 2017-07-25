@echo off
color 0E

title Automatic Batch Inserter

if "%1" neq "" ( goto %1)
echo -------------------
echo - Automatic Batch Inserter -
echo -------------------
echo This inserts your Patches, Blocks, Music, Sprites.
echo -------------------
:Menu
echo What do you want to insert?
echo -------------------
REM echo (For SA-1 to work Graphics,ASM,Sprites)
:Main2
echo 1. Patches
echo 2. Blocks
echo 3. Music
echo 4. Sprites
echo 5. Overworld Sprites
echo 6. UberASM
echo 7. VWF Messages
echo 8. Hex Patches (ROM)
echo 9. Player Graphics (DMA)
echo 10. ALL
echo 11. "Currently Tested Patch"
echo .
set /p answer=  Type the number of your option and press enter.
if %answer%==1 goto ASM
if %answer%==2 goto Blocks
if %answer%==3 goto Music
if %answer%==4 goto Sprites
if %answer%==5 goto OS
if %answer%==6 goto UberASM
if %answer%==7 goto VWF_Messages
if %answer%==8 goto Hex_Patches 
if %answer%==9 goto GFX_32
if %answer%==10 goto Everything
if %answer%==11 goto CTP
if %answer%==0 goto InvalidMain
if %answer% gtr 0 goto InvalidMain
:InvalidMain
cls
echo -------------------------------
echo ERROR: An invalid input was entered. Please try again.
echo -------------------------------
goto Main2

:ASM
cls
REM ...CERTAIN FREERAM
Asar.exe AllPatches/othersprites.asm Blast.smc
Asar.exe AllPatches/Bobomb.asm Blast.smc
Asar.exe AllPatches/bg.asm Blast.smc
Asar.exe AllPatches/StartWith.asm Blast.smc
Asar.exe AllPatches/ssb.asm Blast.smc
Asar.exe AllPatches/100coinslot.asm Blast.smc
Asar.exe AllPatches/player.asm Blast.smc
Asar.exe AllPatches/upwardsfireballs.asm Blast.smc
Asar.exe AllPatches/montymole.asm Blast.smc


REM ...AUTO FREERAM
Asar.exe AllPatches/asarspritetiles.asm Blast.smc
Asar.exe AllPatches/bluedots.asm Blast.smc
Asar.exe AllPatches/timesafe.asm Blast.smc
Asar.exe AllPatches/slopepassfix.asm Blast.smc
Asar.exe AllPatches/revert.asm Blast.smc
Asar.exe AllPatches/PatchForTheBirdsOnYoshisHouse.asm Blast.smc
Asar.exe AllPatches/lmfix.asm Blast.smc
Asar.exe AllPatches/Scroll.asm Blast.smc
Asar.exe AllPatches/OWMusic.asm Blast.smc
Asar.exe AllPatches/proximitywrapfix.asm Blast.smc
Asar.exe AllPatches/pitfix.asm Blast.smc
Asar.exe AllPatches/owcount.asm Blast.smc
Asar.exe AllPatches/betterplatforms.asm Blast.smc
Asar.exe AllPatches/freeow.asm Blast.smc
REM goto h39485

REM **NOT COMPATIBLE WITH SA-1?
Asar.exe AllPatches/dsx.asm Blast.smc
Asar.exe AllPatches/100coinslot.asm Blast.smc
Asar.exe AllPatches/owcount.asm Blast.smc
Asar.exe AllPatches/lmfix.asm Blast.smc
Asar.exe AllPatches/slopepassfix.asm Blast.smc
Asar.exe AllPatches/revert.asm Blast.smc
:h39485
@echo - All Patches have been inserted! -
goto Menu

:CTP
cls
@echo It's all good... :)
@echo - The Currently Tested Patch been inserted! -
goto Menu


:Blocks
cls
GPS.exe Blast.smc
@echo - All Blocks have been inserted! -
goto Menu

:Music
cls
AddmusicK.exe Blast.smc
@echo - All Music has been inserted! -
goto Menu

:Sprites
cls
sprite_tool.exe Blast.smc spr.txt
@echo - All Sprites have been inserted! -
goto Menu

:OS
cls
owsptool.exe Blast.smc osprites.txt
@echo - All Overworld Sprites have been inserted! -
goto Menu


:UberASM
cls
Asar.exe asar_patch.asm Blast.smc
@echo - UberASM has been inserted! -
goto Menu

:VWF_Messages
cls
Asar.exe vwfdialogues.asm Blast.smc
@echo - VWF Messages Boxes have been updated! -
goto Menu

:Hex_Patches
cls
Asar.exe AllPatches/hexpatches.asm Blast.smc
@echo - Hex edits to the ROM have been updated! -
goto Menu

:GFX_32
cls
Asar.exe AllPatches/Mariogfxdma.asm Blast.smc
Asar.exe luigi.asm Blast.smc
REM Asar.exe AllPatches/cusmarpal.asm Blast.smc
@echo - Player Graphics have been inserted! -
goto Menu

:Everything
cls
echo Wait! Before doing this, make sure everything is working properly! 
echo .
echo 1. Yes
echo 2. No
echo .
set /p answer=  Are you sure you want to do this?
if %answer%==1 goto EverythingIns
if %answer%==2 goto MenuClr
:MenuClr
cls
goto Menu
:EverythingIns
cls

REM //These are Patches-----------------------------
REM 1...
REM ...CERTAIN FREERAM
Asar.exe AllPatches/othersprites.asm Blast.smc
Asar.exe AllPatches/Bobomb.asm Blast.smc
Asar.exe AllPatches/bg.asm Blast.smc
Asar.exe AllPatches/StartWith.asm Blast.smc
Asar.exe AllPatches/ssb.asm Blast.smc
Asar.exe AllPatches/100coinslot.asm Blast.smc
Asar.exe AllPatches/player.asm Blast.smc
Asar.exe AllPatches/upwardsfireballs.asm Blast.smc
Asar.exe AllPatches/montymole.asm Blast.smc


REM ...AUTO FREERAM
Asar.exe AllPatches/bluedots.asm Blast.smc
Asar.exe AllPatches/timesafe.asm Blast.smc
Asar.exe AllPatches/slopepassfix.asm Blast.smc
Asar.exe AllPatches/revert.asm Blast.smc
Asar.exe AllPatches/PatchForTheBirdsOnYoshisHouse.asm Blast.smc
Asar.exe AllPatches/lmfix.asm Blast.smc
Asar.exe AllPatches/Scroll.asm Blast.smc
Asar.exe AllPatches/OWMusic.asm Blast.smc
Asar.exe AllPatches/proximitywrapfix.asm Blast.smc
Asar.exe AllPatches/pitfix.asm Blast.smc
Asar.exe AllPatches/owcount.asm Blast.smc
Asar.exe AllPatches/betterplatforms.asm Blast.smc
Asar.exe AllPatches/freeow.asm Blast.smc

REM //These are Player Graphics----------------------
REM These two below are incompatible with SA-1
REM 9...
REM Asar.exe luigi.asm Blast.smc		
Asar.exe AllPatches/Mariogfxdma.asm Blast.smc
REM 8...
Asar.exe AllPatches/hexpatches.asm Blast.smc
REM 6...
Asar.exe asar_patch.asm Blast.smc
REM 7...
Asar.exe vwfdialogues.asm Blast.smc
REM 2...
GPS.exe Blast.smc
REM 3...
AddmusicK.exe Blast.smc
REM 5...
owsptool.exe Blast.smc osprites.txt
REM 4...
REM OUTDATED---- sprite_tool.exe Blast.smc spr.txt
REM 4...
Pixi.exe -d -l spr.txt Blast.smc
cls
@echo You're good to go!!!
goto Menu