set PATH=c:\Program Files (x86)\NASM;%PATH%

cd /d %MkBuildPath%
mkdir intermediate\openssl\debug_lib
cd intermediate\openssl\debug_lib

perl %~dp0\vanilla\configure VC-WIN32 --debug --prefix="%MkBuildPath%\output\Debug Lib\x86\openssl" --openssldir="%MkBuildPath%\output\Debug Lib\x86\openssl\ssl" no-shared

nmake
nmake install

cd /d %~dp0