@echo off
echo ==============================================
echo  Thiet lap tuong lua: CHI CHO PHEP LAN NETWORK
echo ==============================================
echo.
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [LOI] Vui long nhan chuot phai vao file nay va chon "Run as administrator"
    pause
    exit
)

echo Dang ap dung luat tuong lua (Firewall)...
powershell -Command "Remove-NetFirewallRule -DisplayName 'Block Minecraft External' -ErrorAction SilentlyContinue"
powershell -Command "New-NetFirewallRule -DisplayName 'Block Minecraft External' -Direction Inbound -LocalPort 25565 -Protocol TCP -Action Block -RemoteAddress 1.0.0.0-9.255.255.255,11.0.0.0-126.255.255.255,128.0.0.0-172.15.255.255,172.32.0.0-192.167.255.255,192.169.0.0-255.255.255.255 -Profile Any"

echo.
echo Hoan tat! Server bay gio da bi chan hoan toan khoi Internet ben ngoai.
echo Chi co cac may trong cung mang LAN (cung Wi-Fi) moi co the vao duoc.
pause
