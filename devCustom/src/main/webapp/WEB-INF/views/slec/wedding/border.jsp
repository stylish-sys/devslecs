<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<section class="message-section">
	<div class="sec-tit">" 축하해주세요 "</div>

	<div class="form">
		<form name="borderForm" id="borderForm">
			<div class="group col-2 first">
				<div>
					<input type="text" name="borderName" id="borderName" class="input" placeholder="이름">
				</div>
				<div>
					<input type="password" name="borderPw" id="borderPw" class="input" placeholder="비밀번호">
				</div>
			</div>
			<div class="group">
				<div>
					<textarea name="borderContents" id="borderContents" class="textarea"></textarea>
				</div>
			</div>
			<div class="buttons">
				<button type="button" class="btn abutton">등록하기</button>
			</div>
		</form>
	</div>

	<div class="comment borderList">
		<ul class="comment-list">
		</ul>
	</div>
</section>

<script>
	$(function(){
		
		listFunction();
		
		$(".abutton").on("click", function(){
			if(confirm("방명록을 등록하시겠습니까")){
				$.ajax({
					url : "/cmmn/weddingBorder/data/insert",
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
		$(".comment-list").empty();
		$.ajax({
            url: "/cmmn/weddingBorder/list", 
            type: "POST",
            success: function(results) {
            	let stringResult = JSON.parse(results);
            	console.log(stringResult);

            	for (let i = 0; i < stringResult.length; i++) {
            	    let data = stringResult[i];
            	    
            	    let appendData = `
            	            <li class="list">
            	                <div class="tit">
            	                    <span class="name">\${data.borderName}</span>
            	                    <span class="date">\${data.updateDt}</span>
            	                </div>
            	                <p class="txt">
            	                    \${data.borderContents}
            	                </p>
            	                <a href="javascript:void(0);" class="delete-btn" data-borderSn="\${data.borderSn}">댓글삭제</a>
            	            </li>
            	    `;
            	    
            	    $(".comment-list").append(appendData);
            	}

				$(".delete-btn").on("click", function(){
					let borderSn = $(this).attr("data-borderSn");

					$.ajax({
						url: "/cmmn/weddingBorder/confirm/deleteConfirm",
						type: "post",
						data : {borderSn : borderSn},
						success: function (data) {
							$.confirm({
								title: '방명록 삭제',
								useBootstrap : false,
								content: data,
								buttons: {
									예: {
										btnClass: 'btn-blue',
										action: function () {
											$.ajax({
												url: "/cmmn/weddingBorder/data/delete",
												type: "POST",
												data: { borderSn: $("#borderSnConfirm").val(),
														borderPw : $("#borderPwConfirm").val()
												},
												success: function (result) {
													let status = result.status;

													if(status == "success"){
														listFunction();
														alert('방명록 삭제 완료!!');
													}else{
														alert('패스워드가 틀립니다.');
													}
												},
												error: function () {
													alert("error");
												}
											});
										},
									},
									아니요: {
										btnClass: 'btn-red',
										action: function () {
											close();
										},
									},
								},
							});
						},
						error: function () {
							alert("error");
						},
					});
				});
            },
            error: function() {
            	alert("error");
            }
        });
	}
</script>