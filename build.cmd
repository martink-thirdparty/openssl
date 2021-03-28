set PATH=c:\Program Files (x86)\NASM;%PATH%

cd /d %MkBuildPath%
mkdir intermediate\openssl
cd intermediate\openssl

perl %~dp0\vanilla\configure VC-WIN32 --prefix="%MkBuildPath%\output\Release Lib\x86\openssl" --openssldir="%MkBuildPath%\output\Release Lib\x86\openssl\ssl" no-shared

nmake
nmake install

cd /d %~dp0