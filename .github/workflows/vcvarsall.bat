@echo off

@echo "OpenJDK 8u Github Actions environment setup"

rem tools dirs
set VSINSTALLDIR=C:/Program Files (x86)/Microsoft Visual Studio/2017/Community
set WindowsSdkDir=C:/Program Files (x86)/Windows Kits/10

rem set compiler environment manually
set DevEnvDir=%VSINSTALLDIR%/Common7/IDE/
set ExtensionSdkDir=%WindowsSdkDir%/ExtensionSDKs
set INCLUDE=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/include;%WindowsSdkDir%/include/10.0.17763.0/ucrt;
set INCLUDE=%INCLUDE%;%WindowsSdkDir%/include/10.0.17763.0/shared;%WindowsSdkDir%/include/10.0.17763.0/um;%WindowsSdkDir%/include/10.0.17763.0/winrt;
set VS_INCLUDE=%INCLUDE%
set LIB=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/lib/x64;%WindowsSdkDir%/lib/10.0.17763.0/ucrt/x64;%WindowsSdkDir%/lib/10.0.17763.0/um/x64;
set VS_LIB=%LIB%
set LIBPATH=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/lib/x64;%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/lib/x86/store/references;
set LIBPATH=%LIBPATH%;%WindowsSdkDir%/UnionMetadata;%WindowsSdkDir%/References;
set Platform=x64
set PROCESSOR_ARCHITECTURE=AMD64
set VCIDEInstallDir=%VSINSTALLDIR%/Common7/IDE/VC/
set VCINSTALLDIR=%VSINSTALLDIR%/VC/
set VCToolsInstallDir=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/
set VCToolsRedistDir=%VSINSTALLDIR%/VC/Redist/MSVC/14.16.27012/
set VCToolsVersion=14.16.27023
set VisualStudioVersion=15.0
set VS150COMNTOOLS=%VSINSTALLDIR%/Common7/Tools/
set VSCMD_ARG_app_plat=Desktop
set VSCMD_ARG_HOST_ARCH=x64
set VSCMD_ARG_TGT_ARCH=x64
set VSCMD_VER=15.0
set WindowsSdkBinPath=%WindowsSdkDir%/bin/
set WindowsSdkVerBinPath=%WindowsSdkDir%/bin/10.0.17763.0/
set WindowsSDKLibVersion=10.0.17763.0/
set WindowsSDKVersion=10.0.17763.0/

rem additional tools
set WINLD=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/bin/Hostx64/x64/link.exe
set MT=%WindowsSdkVerBinPath%/x64/mt.exe
set RC=%WindowsSdkVerBinPath%/x64/rc.exe
set WINAR=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/bin/Hostx64/x64/lib.exe
set DUMPBIN=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/bin/Hostx64/x64/dumpbin.exe

rem misc vars
set CYGWIN=nodosfilewarning
set OBJCOPY=NOT_NEEDED_ON_WINDOWS

rem set path
set PATH=%VSINSTALLDIR%/VC/Tools/MSVC/14.16.27023/bin/HostX64/x64
set PATH=%PATH%;%WindowsSdkDir%/bin/10.0.17763.0/x64;%VSINSTALLDIR%/Common7/Tools/;%VSINSTALLDIR%/VC/Redist/MSVC/14.16.27012/x64/Microsoft.VC141.CRT/
set PATH=%PATH%;%WindowsSdkDir%/Redist/10.0.17763.0/ucrt/DLLs/x64;%WindowsSdkDir%/Redist/10.0.17763.0/ucrt/DLLs/x86;
set PATH=%PATH%;C:/Windows/system32;C:/Windows;C:/Windows/System32/Wbem
set PATH=%PATH%;c:/Users/runneradmin/cygwin/cygwin64/bin