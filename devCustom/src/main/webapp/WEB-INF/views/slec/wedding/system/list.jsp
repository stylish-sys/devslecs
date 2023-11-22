<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
<h2>Setting</h2>
<div class="tbl_st mgt30">
	<table>
		<thead>
			<tr>
				<th>
					SysId
				</th>
				<th>
					Name
				</th>
				<th>
					contents
				</th>
				<th>
					edit
				</th>
			</tr>
		</thead>
		<tbody class="viewTr">
		</tbody>
	</table>
</div>

<div class="btns ar">
	<a class="btn_bl" id="abutton">등록</a>
</div>

<div class="insertDiv" style="display:none;">
	<h2 class="tit2">시스템 등록하기</h2>
	<form name="systemSettingForm" id="systemSettingForm">
		<div class="BD_table" id="">
				<table>
					<tbody>
						<tr>
							<th>SysId</th>
							<td><input type="text" name="sysId" value="" id="sysId"/></td>
						</tr>
						<tr>
							<th>Name</th>
							<td><input type="text" name="sysName" value="" id="sysName"/></td>
						</tr>
						<tr>
							<th>Contents</th>
							<td><textArea name="sysCnt"></textArea></td>
						</tr>
					</tbody>
				</table>
		</div>
	</form>

	<div class="btns ar">
		<a class="btn_bl" id="systemButton">시스템 생성</a>
	</div>
</div>
<script>
	$(function(){
		
		listFunction();
		
		$("#abutton").on("click", function(){
			$(".insertDiv").show();
		});
		
		$("#systemButton").on("click", function(){
			if(confirm("시스템 등록하시겠습니까")){
				$.ajax({
					url : "/system/data/insert",
					type : "POST",
					data : $("#systemSettingForm").serialize(),
					success : function(result){
						listFunction();
						alert("완료");
						$(".insertDiv").hide();
					 },
		            error: function() {
		            	alert("error");
		            }
				})
			}
		});
	});
	
	function listFunction(){
		$(".viewTr").empty();
		
		$.ajax({
            url: "/system/data/list", 
            type: "POST",
            success: function(result) {
            	let stringResult = JSON.parse(result);
            	console.log(stringResult);

            	for (let i = 0; i < stringResult.length; i++) {
            	    let data = stringResult[i];
            	    
            	    let appendData = `
            	    	<tr>
            	    		<td>
            	    			<a href="/system/data/view?sysSn=\${data.sysSn}">
            	    				\${data.sysId}
            	    			</a>
            	    		</td>
            	    		<td>
            	    			\${data.sysName}
            	    		</td>
            	    		<td>
            	    			\${data.sysCnt}
            	    		</td>
            	    		<td>
	            	    		<a href="/system/data/delete?sysSn=\${data.sysSn}">
		    	    				삭제
		    	    			</a>
            	    		</td>
            	    	</tr>
            	    `;
            	    
	           	    $(".viewTr").append(appendData);
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