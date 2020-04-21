:: Iterate through all of the Scoop .shim definition files and create
:: symlinks for the targets instead of the placeholder shim.exe
::
:: Requires the SeCreateSymbolicLinkPrivilege privilege, so running as
:: admin is your best bet.

@echo off

setlocal enabledelayedexpansion

for %%f in ("%USERPROFILE%\scoop\shims\*.shim") do (
    for /f "tokens=3" %%g in (%%f) do (
        if exist %%g ( 
            set ShimFile="%USERPROFILE%\scoop\shims\%%~nf.exe"
            del /q /f !ShimFile! 2> nul:
            mklink !ShimFile! %%g 
        )
    )
)

exit /b 0
