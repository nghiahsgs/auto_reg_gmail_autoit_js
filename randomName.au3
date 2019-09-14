#include<array.au3>

Local $nm1[143] = ["An","Uc","Uat","Dam","Dao","Dinh","Doan","An","Banh","Bach","Cao","Chau","Chu","Chu","Chung","Duu","Diep","Doan","Giang","Ha","Han","Kieu","Kim","Lam","Luong","Luu","Lac","Luc","La","Lieu","Ma","Mac","Mach","Mai","Ngu","Nghiem","Phi","Pho","Phung","Quach","Quang","Quyen","To","Ton","Ta","Tong","Thai","Sai","Than","Thach","Thao","Thuy","Thi","Tieu","Truong","Tram","Trinh","Trang","Trieu","Van","Vinh","Vuong","Vuu","Nguyen","Tran","Le","Pham","Huynh","Hoang","Phan","Vu","Vo","Dang","Bui","Do","Ho","Ngo","Duong","Ly","Nguyen","Tran","Le","Pham","Huynh","Hoang","Phan","Vu","Vo","Dang","Bui","Do","Ho","Ngo","Duong","Ly","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Nguyen","Tran","Le","Pham","Huynh","Hoang","Phan","Vu","Vo","Dang","Bui","Do","Ho","Ngo","Duong","Ly","Nguyen","Tran","Le","Pham","Huynh","Hoang","Phan","Vu","Vo","Dang","Bui","Do","Ho","Ngo","Duong","Ly"];
Local $nm2[187] = ["Bao An","Binh An","Сng An","Duy An","Khanh An","Nam An","Phuoc An","Thanh An","The An","Thien An","Truong An","Viet An","Xuan An","Cong An"," An","Gia An","Hoang An","Minh An","Phu An","Thanh An","Thien An","Thien An","Vinh An","Ngoc An","Chi Anh"," Anh","Duong Anh","Gia Anh","Hung Anh","Huy Anh","Minh Anh","Quang Anh","Quoc Anh","The Anh","Thieu Anh","Thuan Anh","Trung Anh","Tuan Anh","Tung Anh","Tuong Anh","Viet Anh","Vu Anh","Ho Bac","Hoai Bac","Gia Bach","Cong Bang"," Bang","Hai Bang","Yen Bang","Chi Bao"," Bao","Duy Bao","Gia Bao","Huu Bao","Nguyen Bao","Quoc Bao","Thieu Bao","Tieu Bao"," Binh","Gia Binh","Hai Binh","Hoa Binh","Huu Binh","Khanh Binh","Kien Binh","Kien Binh","Phu Binh","Quoc Binh","Tan Binh","Tat Binh","Thai Binh","The Binh","Xuan Binh","Yen Binh","Quang Buu","Thien Buu","Khai Ca","Gia Can","Duy Can","Gia Can","Huu Canh","Gia Canh","Huu Canh","Minh Canh","Ngoc Canh","Duc Cao","Xuan Cao","Bao Chan","Bao Chau","Huu Chau","Phong Chau","Thanh Chau","Tuan Chau","Tung Chau","Dinh Chien","Manh Chien","Minh Chien","Huu Chien","Huy Chieu","Truong Chinh"," Chinh","Trong Chinh","Trung Chinh","Viet Chinh","Щnh Chuong","Tuan Chuong","Minh Chuyen","An Co","Chi Cong","Thanh Cong","Xuan Cung","Huu Cuong","Manh Cuong","Duy Cuong","Viet Cuong","Ba Cuong"," Cuong","Щnh Cuong","Duy Cuong","Hung Cuong","Huu Cuong","Kien Cuong","Manh Cuong","Ngoc Cuong","Phi Cuong","Phuc Cuong","Thinh Cuong","Viet Cuong","Ngoc Dai","Quoc Сi","Minh Dan","The Dan","Minh Сn","Nguyen Сn","Sy Сn","Hai Сng","Hong Сng","Minh Danh","Ngoc Danh","Quang Danh","Thanh Danh","Hung Сo","Thanh Сo","Binh Сt","Сng Сt","Huu Сt","Minh Сt","Quang Сt","Quang Сt","Thanh Сt","Сc Di","Phuc Щen","Quoc Щen","Phi Щep","Щnh Dieu","Vinh Dieu","Manh Щnh","Bao Щnh","Huu Щnh","Ngoc Ran","Thanh Ran","Thanh Doanh","The Doanh","Щnh Rn","Quang Dong","Tu Rng","Vien Rng","Lam Rng","Bach Du","Thuy Du","Hong Duc","Anh ","Gia ","Kien ","Minh ","Quang ","Tai ","Thai ","Thien ","Thien ","Tien ","Trung ","Tuan ","Hoang Due","Anh Dung","Chi Dung","Hoang Dung"]
Local $nm3[200] = ["Dieu Ai","Kha Ai","Ngoc Ai","Hoai An","Hue An","Minh An","Phuong An","Thanh An","Hai An","Hue An","Bao Anh","Diep Anh","Dieu Anh","Hai Anh","Hong Anh","Huyen Anh","Kieu Anh","Kim Anh","Lan Anh","Mai Anh","Minh Anh","My Anh","Ngoc Anh","Nguyet Anh","Nhu Anh","Phuong Anh","Que Anh","Quynh Anh","Thuc Anh","Thuy Anh","Thuy Anh","Tram Anh","Trang Anh","Tu Anh","Tuyet Anh","Van Anh","Yen Anh","Kim Anh","Ngoc Anh","Nguyet Anh","Nhat Anh","Bang Bang","Le Bang","Tuyet Bang","Nhu Bao","Gia Bao","Xuan Bao","Ngoc Bich","An Binh","Thai Binh","Son Ca","Ngoc Cam","Nguyet Cam","Thi Cam","Bao Chau","Bich Chau","Diem Chau","Hai Chau","Hoan Chau","Hong Chau","Linh Chau","Loan Chau","Ly Chau","Mai Chau","Minh Chau","Tran Chau","Diep Chi","Diem Chi","Hanh Chi","Khanh Chi","Kim Chi","Lan Chi","Le Chi","Linh Chi","Mai Chi","Phuong Chi","Que Chi","Quynh Chi","Bich Chieu","Hoang Cuc","Kim Cuong","Trang Сi","Tam Dan","Thanh Dan","Linh Сn","Quynh Dao","Anh Сo","Bich Сo","Hong Сo","Ngoc Сo","Thuc Сo","Truc Сo","An Di","Thien Di","Hong Diem","Kieu Diem","Phuong Diem","Thuy Diem","Bich Diep","Hong Diep","Ngoc Diep","Bich Щep","Hong Щep","Mong Щep","Ngoc Щep","Huyen Dieu","Tam Ran","Thuc Ran","Hanh Dung","Kieu Dung","Kim Dung","My Dung","Nghi Dung","Ngoc Dung","Phuong Dung","Quynh Dung","Thuy Dung","Anh Duong","Chieu Duong","Thuy Duong","Hai еong","Bich Duyen","Ky Duyen","Linh Duyen","Minh Duyen","My Duyen","Thu Duyen","Ha Giang","Hoai Giang","Huong Giang","Kieu Giang","Linh Giang","Phuong Giang","Quynh Giang","Thanh Giang","Thien Giang","Thu Giang","Thuy Giang","Hong Giang","Tra Giang","Khanh Giao","Quynh Giao","Bao Ha","Bich Ha","Hoang Ha","Hong Ha","Khanh Ha","Lam Ha","Linh Ha","Mai Ha","Minh Ha","Ngan Ha","Ngoc Ha","Nguyet Ha","Nhat Ha","Quynh Ha","Thai Ha","Thanh Ha","Thu Ha","Thuy Ha","Van Ha","Viet Ha","An Ha","Mai Ha","Ngoc Ha","Nhat Ha","Bich Hai","Bao Han","Gia Han","Ngoc Han","Tuyet Han","Bich Hang","Diem Hang","Dieu Hang","Minh Hang","Thanh Hang","Thu Hang","Thuy Hang","Bich Hanh","Cam Hanh","Diem Hanh","Hieu Hanh","Hong Hanh","Kieu Hanh","Minh Hanh","My Hanh","Phuong Hanh","Thuy Hanh","Bich Hao","Thanh Hao","Bich Hau","Thu Hau","Bich Hien","Dieu Hien","Mai Hien","Minh Hien","Ngoc Hien","Phuong Hien","Tam Hien","Thanh Hien"]
;_ArrayDisplay($aArray_1)



Func random_choice($array_1)
	$index=Random(0,UBound($array_1)-1,1)

	Return $array_1[$index]
EndFunc


Func nameGen($type)
    $ho=random_choice($nm1)

    if $type=1 Then
		$ten = random_choice($nm2)
    Else
		$ten=random_choice($nm3)
	EndIf

	Return $ho&' '&$ten
EndFunc

Func randomUsername()
    $text=StringReplace(nameGen(1),' ','_')
	$number=Random(1000,9999,1)


	Return StringReplace($text&'_'&$number,'Ð','d')

EndFunc

;MsgBox(0,0,nameGen(1))
;MsgBox(0,0,randomUsername())
