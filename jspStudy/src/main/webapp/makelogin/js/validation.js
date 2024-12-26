function CheckAddProduct() {
	let name = document.getElementById("name");
	let price = document.getElementById("price");
	let stock = document.getElementById("stock");

	// 유니폼 체크
	if (name.value.length < 5 || name.value.length > 25) {
		alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	// 유니폼 가격 체크
	if (price.value.length == 0 || isNaN(price.value)) {
		alert("[가격]\n숫자만 입력하세요");
		price.select();
		price.focus();
		return false;
	}

	if (price.value < 0) {
		alert("[가격]\n음수를 입력할 수 없습니다");
		price.select();
		price.focus();
		return false;
	} else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, price,
		"[가격]\n소수점 둘째 자리까지만 입력하세요"))
		return false;

	// 재고 수 체크
	if (isNaN(stock.value)) {
		alert("[재고 수]\n숫자만 입력하세요");
		stock.select();
		stock.focus();
		return false;
	}

	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	document.newProduct.submit()

}