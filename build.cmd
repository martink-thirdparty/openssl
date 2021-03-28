set PATH=c:\Program Files (x86)\NASM;%PATH%

cd /d %MkBuildPath%
mkdir intermediate\openssl
cd intermediate\openssl

perl %~dp0\vanilla\configure VC-WIN32 --prefix="%MkBuildPath%\output\Release Lib\x86\openssl" --openssldir="%MkBuildPath%\output\Release Lib\x86\openssl\ssl" no-shared

nmake
rem nmake install

move %MkBuildPath%\intermediate\openssl\libcrypto.lib "%MkBuildPath%\output\Release Lib\x86"
move %MkBuildPath%\intermediate\openssl\libssl.lib "%MkBuildPath%\output\Release Lib\x86"

cd /d %~dp0