function voteCheck() {

    if(document.frm.jumin.value.length == 0){
        alert("주민번호가 입력되지 않았습니다!");
        frm.jumin.focus();
        return false;
    }
    if(document.frm.name.value.length == 0){
        alert("성명이 입력되지 않았습니다!");
        frm.name.focus();
        return false;
    }
    if(document.frm.no.value.length == 0){
        alert("투표번호가 입력되지 않았습니다!");
        frm.no.focus();
        return false;
    }
    if(document.frm.time.value.length == 0){
        alert("투표시간이 입력되지 않았습니다!");
        frm.time.focus();
        return false;
    }
    if(document.frm.area.value.length == 0){
        alert("투표장소가 입력되지 않았습니다!");
        frm.area.focus();
        return false;
    }
    //!document.querySelector('input[name="vote"]').checked || !document.querySelector('input[name="novote"]').checked
    if(!document.frm.vote.value){
        alert("유권자확인이 선택되지 않았습니다!");
        return false;
    }
    success();
    return true;
}

function success() {
	alert("투표하기 정보가 정상적으로 등록 되었습니다!");
	document.frm.submit();
}

function back(){
	window.location = 'vote.jsp';
}

function modify(){
	alert("회원정보수정이 왼료되었습니다.");
}