function addCheck() {
	if(frm.studentno.value.length == 0) {
		alert("학생 코드가 입력되지 않았습니다.");
		frm.studentno.focus();
		return false;
	} else if(frm.name.value.length == 0) {
		alert("학생명이 입력되지 않았습니다.");
		frm.name.focus();
		return false;
	} else if(frm.club.value.length == 0) {
		alert("등록하고 싶은 동아리가 입력되지 않았습니다.");
		frm.club.focus();
		return false;
	} else if(frm.major.length == 0) {
		alert("전공이 입력되지 않았습니다.");
		frm.major.focus();
		return false;
	} else {
		alert("동아리 신청이 완료되었습니다!");
		document.frm.submit();
	}
		
	return true;
}