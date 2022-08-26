function check() {
	if (document.frm.registmonth.value.length == 0) {
		alert('수강월이 입력되지 않았습니다.');
		frm.registmonth.focus();
	} else if (document.frm.name.value.length == 0) {
		alert('회원명이 입력되지 않았습니다.');
		frm.registmonth.focus();
	} else if (document.frm.num.value.length == 0) {
		alert('회원번호가 입력되지 않았습니다.');
		frm.registmonth.focus();
	} else if (document.frm.place.value.length == 0) {
		alert('강의장소가 입력되지 않았습니다.');
		frm.registmonth.focus();
	} else if (document.frm.classname.value.length == 0) {
		alert('강의명이 입력되지 않았습니다.');
		frm.registmonth.focus();
	} else if (document.frm.money.value.length == 0) {
		alert('수강료이 입력되지 않았습니다.');
		frm.registmonth.focus();
	} else {
		alert('수강신청이 정상적으로 완료되었습니다!');
		document.frm.submit();
	}
}

function restart() {
	alert('정보를 지우고 처음부터 다시 시작합니다.');
	document.frm.reset();
}

function onchange1() {
	document.frm.num.value = document.frm.name.value;
    document.frm.money.value = document.frm.name.value > 20000 ?
    document.frm.classname.value / 2 : document.frm.classname.value;
}

function onchange2() {
	if (document.frm.num.value >=20000) {
		document.frm.money.value = document.frm.classname.value / 2
	} else {	// 아님
		document.frm.money.value = document.frm.classname.value	
	}
	
	document.frm.classname.value
}