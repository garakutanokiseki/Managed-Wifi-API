@echo off
REM see https://www.codeguru.com/csharp/.net/net_general/article.php/c4643/Giving-a-NET-Assembly-a-Strong-Name.htm

REM "C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.7.1 Tools\sn.exe" –k PublicPrivateKeyFile.snk
IF EXIST "PublicPrivateKeyFile.snk" echo Using existing PublicPrivateKeyFile.snk...
IF NOT EXIST "PublicPrivateKeyFile.snk" "C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.7.1 Tools\x64\sn.exe" -k PublicPrivateKeyFile.snk
IF EXIST "PublicKeyFile.snk" echo using existing PublicKeyFile file (you don't have to keep running this batch file)...
IF NOT EXIST "PublicKeyFile.snk" "C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.7.1 Tools\x64\sn.exe" -p PublicPrivateKeyFile.snk PublicKeyFile.snk
REM sn is from visual studio such as Community (free version), or Windows SDK
REM and explained at: https://docs.microsoft.com/en-us/dotnet/framework/tools/sn-exe-strong-name-tool




pause