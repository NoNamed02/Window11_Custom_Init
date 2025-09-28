@echo off
:: CapsLock -> 한/영키 매핑 (Scancode Map 등록)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" ^
 /v "Scancode Map" /t REG_BINARY /f ^
 /d 00000000000000000200000072003A0000000000

:: 우클릭 메뉴 Windows 10 스타일로 복원
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

:: Explorer 재시작
taskkill /f /im explorer.exe
start explorer.exe

echo 설정 완료. CapsLock 매핑은 재부팅 후 적용됩니다.
pause
