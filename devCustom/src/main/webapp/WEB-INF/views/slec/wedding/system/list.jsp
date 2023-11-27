<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<input type="hidden" name="copyData" id="copyData"/>
	
<h2 class="mgt30">Setting</h2>
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
					URL
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
	<h2 class="tit3">시스템 등록하기</h2>
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
							<td><textArea name="sysCnt" id="sysCnt" style=" height: 500px; border: 1px solid #cfcfcf;"></textArea></td>
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
			var text = $("#sysCnt").val();
			text = text.replace(/(?:\r\n|\r|\n)/g, '<br>');
			$("#sysCnt").val(text);
			
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

            	for (let i = 0; i < stringResult.length; i++) {
            	    let data = stringResult[i];
            	    
            	    let appendData = `
            	    	<tr>
            	    		<td>
           	    				\${data.sysId}
            	    		</td>
            	    		<td>
            	    			\${data.sysName}
            	    		</td>
            	    		<td>
            	    			<a href="javascript:" onclick="copyUrlToClipboard('\${data.sysId}')">복사</a>
            	    		</td>
            	    		<td>
	            	    		<a href="javascript:" data-sysSn="\${data.sysSn}" class="delete-btn">
		    	    				삭제
		    	    			</a>
            	    		</td>
            	    	</tr>
            	    `;
            	    
	           	    $(".viewTr").append(appendData);
            	}

				$(".delete-btn").on("click", function(){
					if(confirm("시스템 삭제 하시겠습니까")){
						let sysSn = $(this).attr("data-sysSn");
	
						$.ajax({
							url: "/system/data/delete",
							type: "post",
							data : {sysSn : sysSn},
							success: function (data) {
								alert("삭제 성공");
								listFunction();
							},
							error: function () {
								alert("error");
							},
						});
					}
				});
            },
            error: function() {
            	alert("error");
            }
        });
	}
	function copyUrlToClipboard(url) {
	    var textArea = document.createElement("textarea");
	    
	    textArea.value = "https://maoran.kr/" + url;
	    
	    document.body.appendChild(textArea);
	    
	    textArea.select();
	    try {
	        var successful = document.execCommand('copy');
	        var message = successful ? 'URL이 복사되었습니다.' : 'URL 복사에 실패했습니다.';
	        console.log(message);
	    } catch (err) {
	        console.error('복사 동작이 지원되지 않습니다.');
	    }
	    
	    document.body.removeChild(textArea);
	}

</script>