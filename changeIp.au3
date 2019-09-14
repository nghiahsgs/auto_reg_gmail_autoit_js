#include<_HttpRequest.au3>
Func getCurrentIp()

	$kq=_HttpRequest(2,'https://api.ipify.org/?format=json')
	return $kq
EndFunc

Func off3g()
     ShellExecute('off.bat')
EndFunc
Func on3g()
     ShellExecute('on.bat')
EndFunc
Func changeIp()
	$currentIp=getCurrentIp()
	;MsgBox(0,0,$currentIp)
	ConsoleWrite('$currentIp'&$currentIp)
    while True
		off3g()
		;MsgBox(0,0,'off')
        sleep(5000)
        on3g()
		;MsgBox(0,0,'on')
        sleep(5000)
        $afterIp=getCurrentIp()
        ;MsgBox(0,0,$afterIp)
		ConsoleWrite('$afterIp'&$afterIp)
		if $afterIp <> $currentIp Then ExitLoop

	WEnd
EndFunc
