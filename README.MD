# Managed Wifi API

This project is a .NET class library allowing you to control Wifi (802.11) network adapters installed in your Windows machine programmatically.  

The library uses the  [Native Wifi API](http://msdn2.microsoft.com/en-us/library/ms705969.aspx), available since Windows Vista and Windows XP SP2 (in a limited fashion, and only after applying a hotfix provided in [KB article 918997](http://support.microsoft.com/kb/918997)). Older versions of Windows are not supported.  

You can find sample code in the WifiExample directory.  

This code was developed as part of our work at Monfort Software Engineering.  

## Changes in expertmm fork
(forked from <https://github.com/garakutanokiseki/Managed-Wifi-API>)
* changed target framework to .NET 4.0 (every computer should have at least that if Windows is up to date and you have a supported version)
* changed target CPU to 32-bit so that core libs could be included
* signed with included key (aka "strongly named"):
	* tries to guarantee uniqueness in the GAC, but does not guarantee any kind of security (Microsoft recommends distibuting the private key with your software if code is public, and things can be decompiled and re-signed either way)
	* needed for installing Local System services, especially with uiAccess in manifest
	* needed for linking with programs which are signed