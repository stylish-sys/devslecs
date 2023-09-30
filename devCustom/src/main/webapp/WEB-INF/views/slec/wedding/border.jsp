<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="borderInsert mgt30">
	<form name="borderForm" id="borderForm">
		<div>
			<input type="text" name="borderName" id="borderName" placeholder="이름">
			<input type="password" name="borderPw" id="borderPw" placeholder="비밀번호">
			<input type="text" name="borderContents" id="borderContetns">
		</div>
		<button type="button" class="abutton">등록하기</button>
	</form>
</div>

<div class="borderList mgt30">
</div>

<script>
	$(function(){
		
		listFunction();
		
		$(".abutton").on("click", function(){
			if(confirm("방명록을 등록하시겠습니까")){
				$.ajax({
					url : "/cmmn/weddingBorder/insert",
					type : "POST",
					data : $("#borderForm").serialize(),
					success : function(result){
						listFunction();
						alert("방명록 등록 완료");
					 },
		            error: function() {
		            	alert("error");
		            }
				})
			}
		});
	});
	
	function listFunction(){
		$(".borderList").empty();
		$.ajax({
            url: "/cmmn/weddingBorder/list", 
            type: "POST",
            success: function(results) {
            	var stringResult = JSON.parse(results);
            	console.log(stringResult);

            	for (var i = 0; i < stringResult.length; i++) {
            	    var data = stringResult[i];
            	    
            	    var appendData = `
            	        <ul class="comment-list">
            	            <li class="list">
            	                <div class="tit">
            	                    <span class="name">\${data.borderName}</span>
            	                    <span class="date">\${data.updateDt}</span>
            	                </div>
            	                <p class="txt">
            	                    \${data.borderContents}
            	                </p>
            	                <a href="javascript:void(0);" class="delete-btn" onclick="popOpen('\${data.borderSn}')">댓글삭제</a>
            	            </li>
            	        </ul>
            	    `;
            	    
            	    $(".borderList").append(appendData);
            	}
            },
            error: function() {
            	alert("error");
            }
        });
	}
</script>