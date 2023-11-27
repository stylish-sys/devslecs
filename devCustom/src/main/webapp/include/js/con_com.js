//param[0,1] 은 url 및 data 고정
//fnAjaxCall("/cmmn/weddingBorder/data/insert","$("#borderForm").serialize()","list","listFunction();",retrnAlert:alert("방명록 등록 완료");");
function fnAjaxCall(...param) {
	let [url, data, retrnUrl, retrnFn, retrnAlert] = param;
  
	$.ajax({
	  url: url,
	  data: data,
	  type: 'post',
	  success: function(data) {
		if (retrnFn) {
			retrnFn;
		}
		if (retrnAlert) {
			retrnAlert;
		}
		if (retrnUrl) {
			retrnUrl;
		}
	  },
	  error: function(jqXHR, textStatus, errorThrown) {
		console.error("AJAX 오류 발생: " + textStatus, errorThrown);
  
		if (jqXHR.responseJSON) {
		  var errorDetails = jqXHR.responseJSON;
		  alert("서버 오류: " + errorDetails.message);
		} else {
		  alert("서버 요청 중 오류가 발생했습니다. 다시 시도해 주세요.");
		}
	  }
	});
  }
  
