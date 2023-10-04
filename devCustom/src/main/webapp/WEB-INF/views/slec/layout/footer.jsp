<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section class="location-section">
	<div class="sec-tit">" 함께 가는 길 "</div>
	<div class="map-area">
		<div class="head">
			<div class="tit">루이비스 컨벤션 대전점</div>
			<div class="txt">
				<p>대전 유성구 테크노중앙로 161 스카이파크호텔 1층</p>
				<p>Tel. 042-933-2500</p>
			</div>
			<a href="tel:042-933-2500" class="tel">전화걸기</a>
		</div>
		<div id="map_canvas" class="map">
			<div id="daumRoughmapContainer1696411826171" class="root_daum_roughmap root_daum_roughmap_landing"></div>

			<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

			<script charset="UTF-8">
				new daum.roughmap.Lander({
					"timestamp" : "1696411826171",
					"key" : "2gcxb",
					"mapWidth" : "700",
					"mapHeight" : "500"
				}).render();
			</script>
		</div>
		<div class="link">
			<ul>
				<li>
					<a href="javascript:pcAlert();" class="tmap">티맵</a>
				</li>
				<li>
					<a href="javascript:pcAlert();" class="kakaonavi">카카오내비</a>
				</li>
				<li>
					<a href="javascript:pcAlert();" class="navermap">네이버지도</a>
				</li>
				<li>
					<a href="javascript:pcAlert();" class="kakaomap">카카오맵</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="info">
		<div class="contain">
			<dl>
				<dt>주변 정류장</dt>
				<dd>현대아울렛북문</dd>
				<dd>대덕벨리용신교</dd>
				<dd>현대아울렛남문</dd>
			</dl>
			<dl>
				<dt>버스안내</dt>
				<dd>광역버스 : 1001</dd>
				<dd>일반버스 : 705</dd>
				<dd>마을버스 : 1</dd>
			</dl>
			<dl>
				<dt>주차안내</dt>
				<dd>대전 유성구 테크노중앙로 161 스카이파크호텔 1층</dd>
			</dl>
		</div>
	</div>
	<div class="info">
		<div class="contain">
			
			<dl>
				<dt>전세버스안내</dt>
				<dd>예식당일 오전 09시 / 치악체육관 앞 </dd>
			</dl>
			<dl>
				<dt>계좌번호안내</dt>
				<dd>국민은행 010-2000-4016 예금주 : 이선용</dd>
			</dl>
		</div>
	</div>
</section>

<section class="account-section">
	<div class="sec-tit">" 신랑신부에게 마음 전하기 "</div>
	<div class="sec-txt">축하의 마음을 담아 축의금을 전달해보세요.</div>
	<div class="ib">
		<div class="row">
			<div class="slsb-tit">신랑측 마음</div>
			<div class="slsb-btn">
				<a href="#" class="com-btn acc sl">계좌번호 보기</a>						
			</div>
		</div>
		<div class="row">
			<div class="slsb-tit">신부측 마음</div>
			<div class="slsb-btn">
				<a href="#" class="com-btn acc sb">계좌번호 보기</a>						
			</div>
		</div>		
	</div>
</section>