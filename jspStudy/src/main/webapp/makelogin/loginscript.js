function inputCheck() {
	if (document.regForm.id.value == "") {
		alert("아이디를 입력해 주세요.");
		document.regForm.id.focus();
		return;
	}
	if (document.regForm.pass.value == "") {
		alert("비밀번호를 입력해 주세요.");
		document.regForm.pass.focus();
		return;
	}
	if (document.regForm.repass.value == "") {
		alert("비밀번호를 확인해 주세요");
		document.regForm.repass.focus();
		return;
	}
	if (document.regForm.pass.value !=
		document.regForm.repass.value) {
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.repass.focus();
		return;
	}
	if (document.regForm.name.value == "") {
		alert("이름을 입력해 주세요.");
		document.regForm.name.focus();
		return;
	}
	if (document.regForm.phone1.value == "") {
		alert("통신사를 입력해 주세요.");
		document.regForm.phone1.focus();
		return;
	}
	if (document.regForm.phone2.value == "") {
		alert("전화번호을 입력해 주세요.");
		document.regForm.phone2.focus();
		return;
	}
	if (document.regForm.phone3.value == "") {
		alert("전화번호을 입력해 주세요.");
		document.regForm.phone3.focus();
		return;
	}
	if (document.regForm.email.value == "") {
		alert("이메일을 입력해 주세요.");
		document.regForm.email.focus();
		return;
	}
	var str = document.regForm.email.value;
	var atPos = str.indexOf('@');
	var atLastPos = str.lastIndexOf('@');
	var dotPos = str.indexOf('.');
	var spacePos = str.indexOf(' ');
	var commaPos = str.indexOf(',');
	var eMailSize = str.length;
	if (atPos > 1 && atPos == atLastPos &&
		dotPos > 3 && spacePos == -1 && commaPos == -1
		&& atPos + 1 < dotPos && dotPos + 1 < eMailSize);
	else {
		alert('E-mail주소 형식이 잘못되었습니다.\n\r다시 입력해 주세요!');
		document.regForm.email.focus();
		return;
	}
	if (document.regForm.zipcode.value == "") {
		alert("우편번호를 입력해 주세요.");
		document.regForm.zipcode.focus();
		return;
	}
	if (document.regForm.address1.value == "") {
		alert("주소를 입력해 주세요.");
		document.regForm.address1.focus();
		return;
	}
	if (document.regForm.address2.value == "") {
		alert("세부주소를 입력해 주세요.");
		document.regForm.address2.focus();
		return;
	}
	document.regForm.submit();
}

//아이디 체크
function idCheck(id) {
	let value = document.regForm.id.value;
	if (value === "") {
		alert("아이디를 입력해 주세요.");
		document.regForm.id.focus();
	} else {

		url = "idCheck.jsp?id=" + value;
		window.open(url, "post", "width=500,height=350");
	}


}

//주소체크
function zipCheck() {
	url = "zipCheck.jsp?check=y";
	window.open(url, "post", "toolbar=no ,width=500 ,height=300 ,directories = no, status = yes, scrollbars = yes, menubar = no");
}

//동 체크
function dongCheck() {
	let value = document.zipForm.dong.value;
	if (value === "") {
		alert("00동을 입력해주세요.");
		document.zipForm.dong.focus();
		return;
	}
	document.zipForm.submit();


}

//주소내영을 불러주는 윈도우창 각 요소에 저장
function sendAddress(zipcode, sido, gugun, dong, bunji) {
	var address = sido + " " + gugun + " " + dong + " " + bunji;
	opener.document.regForm.zipcode.value = zipcode;
	opener.document.regForm.address1.value = address;
	self.close();
}



function onLoad() {
	//패턴 검색 내용
	const idPattern = /^[\w]{3,}$/;//[\w]는 영문자, 숫자,_만 입력가능
	const pwdPattern = /^[\w]{6,10}$/;//영문자 숫자 _까지 6~10
	const namePattern = /^[가-힣]{2,4}|[A-Z]{1}[a-zA-Z\x20]{1,19}$/;//한글 2글자~4글자,영문자 2글지~20글자 첫글자는 대문자 공백가능
	const emialPattern = /^[a-z0-9_+.-]+@([a-z0-9-]+.)+[a-z0-9]{2,4}$/i;//공백없이 한글,영문,숫자,_만 입력 가능(4글자 이상)
	const datePattern = /^\d{4}-\d{2}-\d{2}$/;
	//객체 찾기
	const inputid = document.querySelector("#id");
	const inputpw1 = document.querySelector("#pwd");
	const inputpw2 = document.querySelector("#pwd2");
	const inputname = document.querySelector("#name");
	const emialinputname = document.querySelector("#email");

	//주소 객체
	const zipcode = document.querySelector("#zipcode");
	const addr1 = document.querySelector("#address1");
	//폼 객체찾기
	const myform = document.querySelector(".regForm");




	//이벤트 리스너 등록 및 처리
	inputid.addEventListener("blur", () => validate(inputid, idPattern, "영문자, 숫자, _만 입력 가능."));
	inputpw1.addEventListener("blur", () => validate(inputpw1, pwdPattern, "영문자 숫자 _까지 6~10 가능."));
	inputpw2.addEventListener("blur", () => {
		validate(inputpw2, pwdPattern, "영문자 숫자 _까지 6~10 가능.");
		if (inputpw1.value !== inputpw2.value) {
			inputpw2.nextSibling.textContent = "패스워드가 일치하지 않습니다"
			inputpw2.nextSibling.style.color = "red";
			inputpw1.value = "";
			inputpw2.value = "";
			inputpw1.focus();
			return;
		};
	});
	inputname.addEventListener("blur", () => validate(inputname, namePattern, "한글 2글자~4글자,영문자 2글지~20글자 첫글자는 대문자 공백가능."));
	emialinputname.addEventListener("blur", () => validate(emialinputname, emialPattern, "이메일 양식에 맞지 않음"));
	inputdate.addEventListener("blur", () => validate(inputdate, datePattern, "날짜 선택하세요"));
	btnsearch.addEventListener("click", () => {
		new daum.Postcode({
			oncomplete: function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드
				zipcode.value = data.zonecode;
				addr1.value = data.roadAddress;
			}
		}).open();
	});
	//폼 이벤트 등록 및 핸들러 처리
	myform.addEventListener("submit", (e) => {
		e.preventDefault();//서버에 전송하는 기본기능을 막는다.
		validate(inputid, idPattern, "영문자, 숫자, _만 입력 가능.");
		validate(inputpw1, pwdPattern, "영문자 숫자 _까지 6~10 가능.");
		validate(inputpw2, pwdPattern, "영문자 숫자 _까지 6~10 가능.")
		if (inputpw1.value !== inputpw2.value) {
			inputpw2.nextSibling.textContent = "패스워드가 일치하지 않습니다"
			inputpw2.nextSibling.style.color = "red";
			inputpw1.value = "";
			inputpw2.value = "";
			inputpw1.focus();
			return;
		}
		validate(inputname, namePattern, "한글 2글자~4글자,영문자 2글지~20글자 첫글자는 대문자 공백가능.");
		validate(emialinputname, emialPattern, "이메일 양식에 맞지 않음");
		validate(inputdate, datePattern, "날짜 선택하세요");
		if (zipcode.value === "" || addr1.value === "") {
			zipcode.nextSibling.textContent = "주소선택해주세요";
			zipcode.focus();
			return;
		}
		alert("서버로 전송하겠습니다.");
		myform.submit();

	});


	//핸들러 처리기능
	function validate(userInput, pattern, message) {
		if (userInput.value.match(pattern)) {
			userInput.nextSibling.innerHTML = "성공";
			userInput.nextSibling.style.color = "blue";
		} else {
			userInput.nextSibling.innerHTML = message;
			userInput.nextSibling.style.color = "red";
			userInput.value = "";
			userInput.focus();
			return;
		}
	}
}


/*function onLoad() {
	//객체 찾기
	const pwd = document.querySelector("#pwd");
	const pwd2 = document.querySelector("#pwd2");
	const id = document.querySelector("#id");

	//이벤트 리스너 등록 및 핸들러 처리
	pwd.addEventListener(click, () => {
		pwd.nextSibling.textContent = "영문자, 대소문자, 특수문자포함 8~32자";
	});
	id.addEventListener("blur", () => validate(id));
	pwd.addEventListener("blur", () => validate(pwd));
	pwd2.addEventListener("blur", () => validate(pwd2));

	function validate(obj) {
		if (obj.value.length <= 0) {
			obj.nextSibling.textContent = "필수 입력 항목입니다.";
		}
	}
}*/



