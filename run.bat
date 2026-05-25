@echo off
cls
title Minecraft Paper Server
set RAM_MAX=4G
set RAM_MIN=4G
set JAR_NAME=paper.jar

:start
cls
echo Dang khoi dong Minecraft Paper Server voi %RAM_MAX% RAM...
echo Su dung Aikar's Flags de toi uu hoa va giam giat lag Java...

"%APPDATA%\.minecraft\runtime\java-runtime-epsilon\windows\java-runtime-epsilon\bin\java.exe" -Xmx%RAM_MAX% -Xms%RAM_MIN% -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8m -XX:G1ReservePercent=15 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar %JAR_NAME% nogui

echo.
echo Server da dung. Tu dong khoi dong lai sau 5 giay...
echo Neu muon tat han server, hay bam Ctrl + C de ngat.
echo.
timeout /t 5

goto start