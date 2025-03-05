@echo off

cls
rem Replace the IP with your router IP
ping -n 1 192.168.1.1 | find "TTL"

if not errorlevel 1 GOTO adapter_ok
if errorlevel 1 GOTO adapter_fail

:adapter_ok
echo "Ethernet adapter ok"
GOTO end

:adapter_fail
echo "Ethernet adapter fail"
GOTO restart_adapter

:restart_adapter
echo "Restarting adapter..."
echo "Disabling ethernet adapter..."
rem Replace the interface name with your ethernet interface name
netsh interface set interface "Ethernet" disable
echo "Ethernet adapter disabled"
echo "Enabling ethernet adapter..."
netsh interface set interface "Ethernet" enable
echo "Ethernet adapter enabled"
GOTO end



:end
echo "End check ethernet adapter"
