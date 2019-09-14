#include<ImageSearch.au3>
#include<changeip.au3>
#include<randomName.au3>

$F12_x=132
$F12_y=510

$F12_x=30
$F12_y=1017

;MsgBox(0,0,nameGen(1))
;MsgBox(0,0,randomUsername())



$lastName=random_choice($nm1)
$firstName=random_choice($nm2)
$username=randomUsername()
$username=StringReplace($username,'_','')

;MsgBox(0,0,$username)
$phone_number='0348074520'
;$file_path_chrome='C:\Nuoi Gmail\chrome5\GoogleChromePortable.exe'


ham_reg_nick('',$lastName,$firstName,$username,$phone_number)
Func ham_reg_nick($file_path_chrome,$lastName,$firstName,$username,$phone_number)

	;ShellExecute($file_path_chrome)
	;waitLoading()
	;MsgBox(0,0,'debug')

	changeIp()

	;B1:vao reg nick
	$url='https://accounts.google.com/signup/v2/webcreateaccount?service=mail&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F%3Fpc%3Dtopnav-about-n-en&flowName=GlifWebSignIn&flowEntry=SignUp'
	drive_nagetive($url)
	Sleep(500)
	waitLoading()
	;MsgBox(0,0,'debug')

	;B2: dien ho ten , username, pass
	$text="document.querySelector('#lastName').value='"&$lastName&"'"
	$text&=';'
	$text&="document.querySelector('#firstName').value='"&$firstName&"'"
	$text&=';'
	$text&="document.querySelector('#username').value='"&$username&"'"
	$text&=';'
	$text&=FileRead('pass.txt')
	$text&=';'


	SenTextToF12($text)
	Sleep(500)
	$text="document.querySelector('#accountDetailsNext').click()"
	$text&=';'
	SenTextToF12($text)
	Sleep(500)

	waitLoading()
	;MsgBox(0,0,'debug')

	;B3: dien so dien thoai
	$text="document.querySelector('#phoneNumberId').value='"&$phone_number&"'"
	$text&=';'
	SenTextToF12($text)
	Sleep(500)
	$text="document.querySelector('#gradsIdvPhoneNext').click()"
	$text&=';'
	SenTextToF12($text)
	Sleep(500)

	waitLoading()
	;MsgBox(0,0,'debug')

	;B4: dien ma xac minh
	$code_xac_minh=InputBox(0,0,0)
	$text="document.querySelector('#code').value='"&$code_xac_minh&"'"
	$text&=';'
	SenTextToF12($text)
	Sleep(500)
	$text="document.querySelector('#gradsIdvVerifyNext').click()"
	$text&=';'
	SenTextToF12($text)
	Sleep(500)

	waitLoading()
	;MsgBox(0,0,'debug')

	;B5: dien mail xac minh va ngay thang nam sinh
	$text=FileRead('mail_khoi_phuc.txt')
	$text&=';'
	$text&="document.querySelector('#day').value='14'"
	$text&=';'
	$text&="document.querySelector('#month').value='6'"
	$text&=';'
	$text&="document.querySelector('#year').value='1998'"
	$text&=';'
	$text&="document.querySelector('#gender').value=2"
	$text&=';'

	SenTextToF12($text)
	Sleep(500)
	$text="document.querySelector('#personalDetailsNext').click()"
	$text&=';'
	SenTextToF12($text)
	Sleep(500)

	waitLoading()
	MsgBox(0,0,'xong')




EndFunc



Func waitLoading()
	While 1
	Local $x=0,$y=0
	$search=_ImageSearch('load.PNG',1,$x,$y,0)
	;if $search=1 Then MsgBox(0,0,1)
	if $search=1 Then ExitLoop
	WEnd
	Sleep(1000)
EndFunc

Func SenTextToF12($text)
	MouseClick('main',$F12_x,$F12_y,1)
	ClipPut($text)
	Send('^v')
	Sleep(500)
	Send('{enter}')
EndFunc

Func reload()
	SenTextToF12('location.reload()')
EndFunc

Func drive_nagetive($url)
	SenTextToF12('location.href="'&$url&'"')
EndFunc


