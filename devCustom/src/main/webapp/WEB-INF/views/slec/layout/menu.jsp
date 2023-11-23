<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.lds-roller {
	display: inline-block;
	position: relative;
	width: 80px;
	height: 80px;
}

.lds-roller div {
	animation: lds-roller 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;
	transform-origin: 40px 40px;
}

.lds-roller div:after {
	content: " ";
	display: block;
	position: absolute;
	width: 7px;
	height: 7px;
	border-radius: 50%;
	background: #fff;
	margin: -4px 0 0 -4px;
}

.lds-roller div:nth-child(1) {
	animation-delay: -0.036s;
}

.lds-roller div:nth-child(1):after {
	top: 63px;
	left: 63px;
}

.lds-roller div:nth-child(2) {
	animation-delay: -0.072s;
}

.lds-roller div:nth-child(2):after {
	top: 68px;
	left: 56px;
}

.lds-roller div:nth-child(3) {
	animation-delay: -0.108s;
}

.lds-roller div:nth-child(3):after {
	top: 71px;
	left: 48px;
}

.lds-roller div:nth-child(4) {
	animation-delay: -0.144s;
}

.lds-roller div:nth-child(4):after {
	top: 72px;
	left: 40px;
}

.lds-roller div:nth-child(5) {
	animation-delay: -0.18s;
}

.lds-roller div:nth-child(5):after {
	top: 71px;
	left: 32px;
}

.lds-roller div:nth-child(6) {
	animation-delay: -0.216s;
}

.lds-roller div:nth-child(6):after {
	top: 68px;
	left: 24px;
}

.lds-roller div:nth-child(7) {
	animation-delay: -0.252s;
}

.lds-roller div:nth-child(7):after {
	top: 63px;
	left: 17px;
}

.lds-roller div:nth-child(8) {
	animation-delay: -0.288s;
}

.lds-roller div:nth-child(8):after {
	top: 56px;
	left: 12px;
}

@
keyframes lds-roller { 0% {
	transform: rotate(0deg);
}

100
%
{
transform
:
rotate(
360deg
);
}
}
.loadBox {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 1450;
	background: rgba(0, 0, 0, 0.2);
	display: none;
}

.loadBox .in {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	margin: auto;
	width: 80px;
	height: 80px;
}

.img_loading {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, 0.5);
	z-index: 100;
	display: none;
}

.ldsr2 {
	display: inline-block;
	position: absolute;
	width: 40px;
	height: 40px;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
}

.ldsr2 div {
	animation: ldsr2 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;
	transform-origin: 20px 20px;
}

.ldsr2 div:after {
	content: " ";
	display: block;
	position: absolute;
	width: 3.5px;
	height: 3.5px;
	border-radius: 50%;
	background: #fff;
	margin: -2px 0 0 -2px;
}

.ldsr2 div:nth-child(1) {
	animation-delay: -0.036s;
}

.ldsr2 div:nth-child(1):after {
	top: 31.5px;
	left: 31.5px;
}

.ldsr2 div:nth-child(2) {
	animation-delay: -0.072s;
}

.ldsr2 div:nth-child(2):after {
	top: 34px;
	left: 28px;
}

.ldsr2 div:nth-child(3) {
	animation-delay: -0.108s;
}

.ldsr2 div:nth-child(3):after {
	top: 35.5px;
	left: 24px;
}

.ldsr2 div:nth-child(4) {
	animation-delay: -0.144s;
}

.ldsr2 div:nth-child(4):after {
	top: 36px;
	left: 20px;
}

.ldsr2 div:nth-child(5) {
	animation-delay: -0.18s;
}

.ldsr2 div:nth-child(5):after {
	top: 35.5px;
	left: 16px;
}

.ldsr2 div:nth-child(6) {
	animation-delay: -0.216s;
}

.ldsr2 div:nth-child(6):after {
	top: 34px;
	left: 12px;
}

.ldsr2 div:nth-child(7) {
	animation-delay: -0.252s;
}

.ldsr2 div:nth-child(7):after {
	top: 31.5px;
	left: 8.5px;
}

.ldsr2 div:nth-child(8) {
	animation-delay: -0.288s;
}

.ldsr2 div:nth-child(8):after {
	top: 28px;
	left: 6px;
}

@
keyframes ldsr2 { 0% {
	transform: rotate(0deg);
}

100
%
{
transform
:
rotate(
360deg
);
}
}
.picbox .img.road .img_loading {
	display: block;
}

.picbox .img.road .in {
	display: none;
}
</style>
<div class="loadBox" id="loadBox2020">
	<div class="in">
		<div class="lds-roller">
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
</div>
<script>
	    function loading(go) {
	        if (go) {
	            $("#loadBox2020").css("display", "block");
	        } else {
	            $("#loadBox2020").css("display", "none");
	        }
	    }
	</script>

<div class="sp_theme_gray">
	<div class="splash" style="display: block;">
		<div class="ct">
			<div class="lds-heart">
				<div></div>
			</div>
			<div style="line-height: 20px; color: #fff; margin-top: 10px;">
				<div class="typing-txt f20">이선용, 송가은 결혼합니다.</div>
				<div class="typing f20"></div>
			</div>
		</div>
		<img class="daycard" src="/include/theirmood/images/logo_white.svg"
			style="display: block;">
		<div class="btext">
			2024. 1. 6. 토요일 오후 1시 40분 <br> 루이비스컨벤션 1층 아모리스홀
		</div>
	</div>
</div>


<script src="/include/theirmood/js/hls.js"></script>

<script>
	    let isPlay = true;
	</script>
<div
	class="bgmbar anibox2 hd visible animated fadeInDown full-visible fadeBg">
	<p>배경음악이 준비되었습니다.</p>
	<a class="sound"><i class="fa fa-volume-off"></i></a>
</div>
<audio loop="" id="videoplay" data-url="src/bgm/love-story.mp3">
	<source src="/include/theirmood/love-story.mp3" type="audio/mp3">
</audio>

<div class="pop_acct ft-gowun-bold" id="acctBox" style="display: none;">
	<div class="vcenterbox">
		<div class="bx">
			<div class="grp"></div>
			<div class="ment"></div>
			<div class="clearfix">
				<a class="btn" onclick="copy_to_clipboard('copytext')">복사하기</a> <a
					class="btn close" onclick="closeAcctBox()">닫기</a>
			</div>
			<textarea id="copytext"></textarea>
		</div>
	</div>
</div>
<style>
.popImg {
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 500;
	visibility: hidden;
	background: rgba(51, 39, 42, .6);
	touch-action: pinch-zoom;
	opacity: 0;
}

.popImg .in {
	position: absolute;
	left: 50%;
	top: 50%;
	width: 100%;
	height: 100%;
	max-width: 1280px;
	transform: translate(-50%, -50%);
}

.popImg .in .container {
	position: relative;
	height: 100%;
	text-align: center;
	overflow: hidden;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	touch-action: none;
	user-select: none;
	-webkit-user-drag: none;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.popImg img {
	max-width: 100%;
	max-height: 100%;
	object-fit: cover;
	object-position: 50% 50%;
	cursor: move;
	touch-action: none;
	vertical-align: top;
	transform: translateX(0px) translateY(0px) translateZ(0px) scale(1, 1);
}

.popImg .x_button {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #fff;
	font-size: 20px;
	z-index: 1;
}

.popImg .down_button {
	position: absolute;
	top: 10px;
	left: 10px;
	color: #fff;
	font-size: 20px;
	z-index: 1;
}

.pageCover.blur6 {
	-webkit-filter: blur(6px);
	-moz-filter: blur(6px);
	-o-filter: blur(6px);
	-ms-filter: blur(6px);
	filter: blur(6px);
}

.popImg.visible {
	opacity: 1;
	visibility: visible;
}

.popNoticeImg {
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 500;
	background: rgba(51, 39, 42, .6);
	touch-action: pinch-zoom;
	visibility: hidden;
	opacity: 0;
}

.popNoticeImg .in {
	position: absolute;
	left: 50%;
	top: 50%;
	width: 100%;
	height: 100%;
	max-width: 1280px;
	transform: translate(-50%, -50%);
}

.popNoticeImg .in .container {
	position: relative;
	height: 100%;
	text-align: center;
	overflow: hidden;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	touch-action: none;
	user-select: none;
	-webkit-user-drag: none;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

.popNoticeImg img {
	max-width: 100%;
	max-height: 100%;
	object-fit: cover;
	object-position: 50% 50%;
	cursor: move;
	touch-action: none;
	vertical-align: top;
	transform: translateX(0px) translateY(0px) translateZ(0px) scale(1, 1);
}

.popNoticeImg .x_button {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #fff;
	font-size: 20px;
	z-index: 1;
}

.popNoticeImg .down_button {
	position: absolute;
	top: 10px;
	left: 10px;
	color: #fff;
	font-size: 20px;
	z-index: 1;
}

.pageCover.blur6 {
	-webkit-filter: blur(6px);
	-moz-filter: blur(6px);
	-o-filter: blur(6px);
	-ms-filter: blur(6px);
	filter: blur(6px);
}

.popNoticeImg.visible {
	opacity: 1;
	visibility: visible;
}
</style>
<div class="popImg">

	<a class="x_button"> <svg width="45" height="45"
			viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
	            <path d="M7.86018 16.829L16.3455 8.34375" stroke="#cccccc"
				stroke-width="1" stroke-miterlimit="10" stroke-linecap="round"
				stroke-linejoin="round"></path>
	            <path d="M16.2431 16.7275L7.75781 8.24219" stroke="#cccccc"
				stroke-width="1" stroke-miterlimit="10" stroke-linecap="round"
				stroke-linejoin="round"></path>
	        </svg>
	</a>
	<div class="in">
		<div
			class="container swiper-container-initialized swiper-container- swiper-container-pointer-events"
			id="roughMapContainer">
			<div class="swiper-wrapper" id="swiper-wrapper-034d44a2159e9af1"
				aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
				<div class="swiper-slide swiper-slide-active" role="group"
					aria-label="1 / 1" style="height: 858px;">
					<div class="swiper-zoom-container">
						<img src="/include/theirmood/images/Ah2790hs2X.png">
					</div>
				</div>
			</div>
			<span class="swiper-notification" aria-live="assertive"
				aria-atomic="true"></span>
		</div>
	</div>
</div>
<script src="/include/theirmood/js/swiper-bundle.min.js"></script>
<script>
	    $(".popImg .x_button").click(function () {
	        $(".pageCover").removeClass("blur6");
	        $(".popImg").removeClass("visible");
	    });
	
	    function openMapImg() {
	        $(".pageCover").addClass("blur6");
	        $(".popImg").addClass("visible");
	    }
	
	    var mySwiper = new Swiper('#roughMapContainer', {
	        // Optional parameters
	        direction: '',
	        loop: false,
	
	        zoom: {
	            maxRatio: 3,
	            minRatio: 1
	        },
	    })
	</script>
<div class="popNoticeImg">
	<a class="x_button"> <svg width="45" height="45"
			viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
	            <path d="M7.86018 16.829L16.3455 8.34375" stroke="#cccccc"
				stroke-width="1" stroke-miterlimit="10" stroke-linecap="round"
				stroke-linejoin="round"></path>
	            <path d="M16.2431 16.7275L7.75781 8.24219" stroke="#cccccc"
				stroke-width="1" stroke-miterlimit="10" stroke-linecap="round"
				stroke-linejoin="round"></path>
	        </svg>
	</a>
	<div class="in">
		<div
			class="container swiper-container-initialized swiper-container- swiper-container-pointer-events"
			id="popNoticeImgWrap">
			<div class="swiper-wrapper" id="swiper-wrapper-8bdc88c5eb0f2e4a"
				aria-live="polite" style="transform: translate3d(0px, 0px, 0px);">
				<div class="swiper-slide swiper-slide-active" role="group"
					aria-label="1 / 1" style="height: 858px;">
					<div class="swiper-zoom-container">
						<img src="">
					</div>
				</div>
			</div>
			<span class="swiper-notification" aria-live="assertive"
				aria-atomic="true"></span>
		</div>
	</div>
</div>
<script>
	    $(".popNoticeImg .x_button").click(function () {
	        $(".pageCover").removeClass("blur6");
	        $(".popNoticeImg").removeClass("visible");
	    });
	
	    var mySwiper = new Swiper('#popNoticeImgWrap', {
	        // Optional parameters
	        direction: '',
	        loop: false,
	
	        zoom: {
	            maxRatio: 3,
	            minRatio: 1
	        },
	    })
	</script>

<style>
.pop-design {
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	display: none;
	z-index: 999;
}

.pop-design .background {
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	z-index: 1;
	background: rgba(0, 0, 0, 0.2)
}

.pop-design .in {
	position: fixed;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
	width: 90%;
	max-width: 365px;
	z-index: 100;
	background: #fff;
	padding-top: 47px;
	padding-bottom: 36px;
	width: 280px;
	border-radius: 10px;
	padding: 0 15px;
	padding-top: 32px;
	padding-bottom: 25px;
}

.pop-design .title {
	color: #000;
	line-height: 1.3;
	font-size: 13px;
	margin-bottom: 15px;
}

.ft-yeonsung .pop-design .title {
	font-size: 15px;
}

.pop-design .btns button {
	vertical-align: middle;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	border: 0;
	display: inline-block;
	width: 110px;
	height: 48px;
	line-height: 48px;
	background: #e9dbde;
	font-size: 16px;
	font-weight: 500;
	color: #000;
	border-radius: 12px;
	height: 32px;
	line-height: 32px;
	font-size: 12px;
	width: 80px;
	border-radius: 8px;
	font-weight: 500;
}

.pop-design .ipts {
	height: 32px;
	line-height: 32px;
	font-size: 12px;
	border-radius: 8px;
	font-weight: 500;
	box-sizing: border-box;
	border: 1px solid #e9dbde;
	width: 100%;
	padding: 0 10px;
}

.pop-design .ipts:focus {
	border-color: #000;
}

.pop-design .ipts::placeholder {
	color: #aaa;
}
</style>
<div class="popAlert pop-design">
	<div class="background"></div>
	<div class="in">
		<div class="title">앱이 설치되어 있지 않은 경우 길 안내가 실행되지 않을 수 있습니다</div>
		<div class="btns">
			<button>확인</button>
		</div>
	</div>
</div>
<div class="popAlert pop-design acc_copy">
	<div class="background"></div>
	<div class="in">
		<div class="title">복사가 완료되었습니다.</div>
		<div class="btns">
			<button>확인</button>
		</div>
	</div>
</div>
<script>
	    function openAlert(txt) {
	        $(".popAlert .title").text(txt);
	        $(".popAlert").css("display", "block");
	    }
	
	    $(".popAlert .background, .popAlert button").click(function () {
	        $(".popAlert").css("display", "none");
	        if (isAcctBox) {
	            document.querySelector(`#acctBox`).style.display = 'block'
	        }
	    });
	</script>
<div id="tel_popup">
	<a class="x_button"> <svg width="45" height="45"
			viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
	            <path d="M7.86018 16.829L16.3455 8.34375" stroke="#cccccc"
				stroke-width="1" stroke-miterlimit="10" stroke-linecap="round"
				stroke-linejoin="round"></path>
	            <path d="M16.2431 16.7275L7.75781 8.24219" stroke="#cccccc"
				stroke-width="1" stroke-miterlimit="10" stroke-linecap="round"
				stroke-linejoin="round"></path>
	        </svg>
	</a>
	<div class="background"></div>
	<div class="tp">
		<span class="ent">CONTACT</span>
		<div>연락하기</div>
	</div>
	<div class="ctt">
		<div class="grd_wrap man">
			<div class="grd_line">
				신랑측 <span class="ent">GROOM</span>
			</div>
			<div class="grd">
				<span class="cell">신랑</span> <span class="cell name"> <span>이선용</span>
					<span class="baptismal"></span>
				</span> <span class="cell"> <a class="fa fa-phone-alt"
					href="tel:010-2000-4016"></a> <a class="fa fa-envelope"
					href="sms:010-2000-4016"></a>
				</span>
			</div>
		</div>
		<div class="grd_wrap man">
			<div class="grd_line">
				신부측 <span class="ent">BRIDE</span>
			</div>
			<div class="grd">
				<span class="cell">신부</span> <span class="cell name"> <span>송가은</span>
					<span class="baptismal"></span>
				</span> <span class="cell"> <a class="fa fa-phone-alt"
					href="tel:010-8688-2224"></a> <a class="fa fa-envelope"
					href="sms:010-8688-2224"></a>
				</span>
			</div>
		</div>
	</div>
</div>
<script>
	    $("#tel_popup .x_button").click(function () {
	        $("body").removeClass("pop_contact_open");
	        $('html,body').css("overflow", "");
	        window.scrollTo(0, WIN_SCR_TOP);
	    });
	</script>
<div class="pageCover clearfix sk2"
	style="position: relative; background-color: #fafafa">
	<div class="bg-eff-base bgeffectVal mist-bg"></div>
	<link
		href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@400;700;800&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css2?family=Gwendolyn&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
		rel="stylesheet">
	<link
		href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Song+Myung&display=swap"
		rel="stylesheet">
	<div class="layer mainV1 mainV2">
		<div class="inr  light ">
			<div class="mainImgArea">
				<div class="main-img-parent">
					<i class="rpd rpd01"></i><i class="rpd rpd02"></i><i
						class="rpd rpd03"></i><i class="rpd rpd04"></i> <img
						class="imgblk"
						src="https://d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/qANinRb8Ln-resize.webp">
					<div class="imgCover"></div>
				</div>
				<div class="wave bottom">
					<svg class="waves" xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 24 150 28"
						preserveAspectRatio="none" shape-rendering="auto">
	                        <defs>
	                            <path id="gentle-wave"
							d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"></path>
	                        </defs>
	                        <g class="parallax">
	                            <use class="u-1" xlink:href="#gentle-wave"
							x="48" y="0" fill="rgba(250,250,250,0.7)"></use>
	                            <use class="u-2" xlink:href="#gentle-wave"
							x="48" y="3" fill="rgba(250,250,250,0.5)"></use>
	                            <use class="u-3" xlink:href="#gentle-wave"
							x="48" y="5" fill="rgba(250,250,250,0.3)"></use>
	                            <use class="u-4" xlink:href="#gentle-wave"
							x="48" y="7" fill="rgba(250,250,250,0.2)"></use>
	                        </g>
	                    </svg>
				</div>
			</div>
			<div class="mainTxtArea" style="padding-bottom: 50px;">
				<div class="desc1 anibox hd visible animated fadeInUp full-visible">
					<div class="main ft-gowun-bold">
						<div class="br-top" style="">저희 둘,</div>
						<div class="br" style="">결혼합니다.</div>
					</div>
				</div>
				<div class="desc2 anibox hd visible animated fadeInUp full-visible"
					style="color:">
					<span class="s sig-color ft-gowun-bold">groom</span> <b>이선용</b> <span
						class="gwendolyn and ft-gowun-bold">and</span> <span
						class="s sig-color ft-gowun-bold">bride</span> <b>송가은</b>
				</div>
				<div class="desc3">
					<div style="margin: auto; padding: 20px 0; line-height: 1;">
						<img src="/include/theirmood/images/wlin8.svg" style="width: 46%;">
					</div>
					<div
						class="anibox f18 bottom_top_text hd visible animated fadeInUp full-visible">
						<div class="wstation" style="">
							2024. 01. 06. Saturday 1:40 PM<br>루이비스컨벤션 1층 아모리스홀
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="height: 20px;"></div>
	<style>
.ibottom {
	text-align: center;
}

.ibottom .cx {
	overflow: hidden;
	line-height: 1.45;
}

.ibottom .oline {
	display: inline-block;
	box-sizing: border-box;
	text-align: right;
	min-height: 1px;
}

.ibottom b {
	font-weight: normal;
	color: #444;
}

.ibottom .onb {
	float: right;
	box-sizing: border-box;
	text-align: right;
}

.ibottom .nb03 {
	width: 10px;
	text-align: center;
}

.ibottom .nb06 {
	margin-left: 1px;
	width: 14px;
}

.ibottom .nb07 {
	margin: 0 3px;
	margin: 0 0.25em;
	box-sizing: border-box;
}
</style>
	<div class="sectionMg introLayer">
		<div class="sectionHead anibox hd">
			<div class="enstr">INVITATION</div>
			<span class="name"> 소중한 분들을 초대합니다 </span>
		</div>
		<div class="introMent anibox f17 hd">
			<div id="intro-ment-area">
				<p>
					저희 두 사람의 작은 만남이<br>사랑의 결실을 이루어<br>소중한 결혼식을 올리게 되었습니다.<br>
					<br>평생 서로 귀하게 여기며<br>첫 마음 그대로 존중하고 배려하며 살겠습니다.<br>
					<br>오로지 믿음과 사랑을 약속하는 날<br>오셔서 축복해 주시면 더 없는 기쁨으로<br>간직하겠습니다.
				</p>
			</div>
		</div>
		<div style="padding-bottom: 30px;">
			<div class="intro_middle_img anibox hd" style="padding-bottom: 15px;">
				<div class="imgCover"></div>
				<img src="">
			</div>
			<div class="title2 anibox f17 introBottomDisplay intro_buttom_str hd"
				style="display: flex; flex-direction: column;">

				<div class="ibottom clearfix grid">
					<div class="cx ">
						<div class="wrap ">
							<div class="n_wrap ">
								<span class="n"> <img class="flower off"
									src="/include/theirmood/images/go1.png"> <span class="on"><span>이재석</span></span>
								</span> <span class="n_baptismal none"></span>
							</div>
							<div class="dot  ">·</div>
							<div class="n_wrap ">
								<span class="n"> <img class="flower off"
									src="/include/theirmood/images/go1.png"> <span class="on"><span>이명숙</span></span>
								</span> <span class="n_baptismal none"></span>
							</div>
							<div class="parentOf  ">의</div>
							<div class="order ">장남</div>
							<div class="n_wrap">
								<span class="n"> <span class="on"><span>이선용</span></span>
								</span> <span class="n_baptismal none"></span>
							</div>
							<div class="n_wrap ">
								<span class="n"> <img class="flower off"
									src="/include/theirmood/images/go1.png"> <span class="on"><span>송정진</span></span>
								</span> <span class="n_baptismal none"></span>
							</div>
							<div class="dot  ">·</div>
							<div class="n_wrap ">
								<span class="n"> <img class="flower off"
									src="/include/theirmood/images/go1.png"> <span class="on"><span>이계숙</span></span>
								</span> <span class="n_baptismal none"></span>
							</div>
							<div class="parentOf  ">의</div>
							<div class="order ">장녀</div>
							<div class="n_wrap">
								<span class="n"> <span class="on"><span>송가은</span></span>
								</span> <span class="n_baptismal none"></span>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="telAreaNone">
				<div class="pic_0_ins line introBottomDisplay"
					style="display: none; margin-bottom: 70px; background: #ddd;"></div>
			</div>
			<div class="telArea">
				<a class="int_buttn" onclick="openContactPop()"><i
					class="fa fa-phone-alt"></i>&nbsp;연락하기</a>
			</div>
		</div>
	</div>