@echo off

:: Project's directory
C:
cd C:\Users\Satoshi\Desktop\Trinix\

:: Copy files
Tools\VMware\VDDK\VMware-mount Z: VMware\Disk.vmdk
xcopy /E /Y Root\* Z:\
Tools\VMware\VDDK\VMware-mount /d /f Z:

:: Run VMware
Tools\VMware\vmrun -T player start "VMware\Trinix.vmx"