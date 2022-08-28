function check() {
	if (document.frm.custno.value.length == 0) {
		alert('회원번호가 입력되지 않았습니다.');
		document.frm.custno.focus();
		return false;
	} else if (document.frm.custname.value.length == 0) {
		alert('회원성명이 입력되지 않았습니다.');
		document.frm.custname.focus();
		return false;
	} else if (document.frm.phone.value.length == 0) {
		alert('회원전화가 입력되지 않았습니다.');
		document.frm.phone.focus();
		return false;
	} else if (document.frm.address.value.length == 0) {
		alert('회원주소가 입력되지 않았습니다.');
		document.frm.address.focus();
		return false;
	} else if (document.frm.joindate.value.length == 0) {
		alert('가입일자가 입력되지 않았습니다.');
		document.frm.joindate.focus();
		return false;
	} else if (document.frm.grade.value.length == 0) {
		alert('고객등급이 입력되지 않았습니다.');
		document.frm.grade.focus();
		return false;
	} else if (document.frm.city.value.length == 0) {
		alert('도시코드가 입력되지 않았습니다.');
		document.frm.city.focus();
		return false;
	} else {
		alert('회원등록이 완료되었습니다.');
		document.frm.submit();
		return true;
	}
}

function checkmodi() {
	alert('회원정보수정이 완료되었습니다.');
}

function modify() {
	window.location = 'list.jsp';
}