function addClubCheck() {
	if(frm.clubnumber.value.length == 0) {
		alert("동아리 코드가 입력되지 않았습니다.");
		frm.clubnumber.focus();
		return false;
	} else if(frm.clubname.value.length == 0) {
		alert("동아리명이 입력되지 않았습니다.");
		frm.clubname.focus();
		return false;
	} else if(frm.clubmajor.value.length == 0) {
		alert("동아리 전공이 입력되지 않았습니다.");
		frm.clubmajor.focus();
		return false;
	} else if(frm.clubdirector.length == 0) {
		alert("동아리 부장이 입력되지 않았습니다.");
		frm.clubdirector.focus();
		return false;
	} else {
		alert("동아리 등록이 완료되었습니다!");
		document.frm.submit();
	}
		
	return true;
}