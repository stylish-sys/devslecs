    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        <!DOCTYPE html>
        <html>
        <head>
        <c:import url="/cmmn/header"/>
        </head>
        <body oncontextmenu="return false" ondragstart="return false" onselectstart="return false"
        class="drag-prevent clearfix tel_type_v2 ft-gowundodum basic theme_font_basic title_eng_writing bg_theme_white">
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

        @keyframes lds-roller {
        0% {
        transform: rotate(0deg);
        }
        100% {
        transform: rotate(360deg);
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

        @keyframes ldsr2 {
        0% {
        transform: rotate(0deg);
        }
        100% {
        transform: rotate(360deg);
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
        <div class="splash " style="display: block;">
        <div class="ct">
        <div class="lds-heart"><div></div></div>
        <div style="line-height: 20px; color: #fff; margin-top: 10px;">
        <div class="typing-txt f20">이선용, 송가은 결혼합니다.</div>
        <div class="typing f20"></div>
        </div>
        </div>
        <img class="daycard" src="/include/theirmood/images/logo_white.svg" style="display: block;">
        <div class="btext">
        2024. 1. 6.
        토요일
        오후
        1시
        40분
        <br>
        루이비스컨벤션 1층 아모리스홀 </div>
        </div>
        </div>


        <script src="/include/theirmood/js/hls.js"></script>

        <script>
        let isPlay = true;
        </script>
        <div class="bgmbar anibox2 hd visible animated fadeInDown full-visible fadeBg">
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
        <a class="btn" onclick="copy_to_clipboard('copytext')">복사하기</a>
        <a class="btn close" onclick="closeAcctBox()">닫기</a>
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

        <a class="x_button">
        <svg width="45" height="45" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M7.86018 16.829L16.3455 8.34375" stroke="#cccccc" stroke-width="1" stroke-miterlimit="10"
        stroke-linecap="round" stroke-linejoin="round"></path>
        <path d="M16.2431 16.7275L7.75781 8.24219" stroke="#cccccc" stroke-width="1" stroke-miterlimit="10"
        stroke-linecap="round" stroke-linejoin="round"></path>
        </svg>
        </a>
        <div class="in">
        <div class="container swiper-container-initialized swiper-container- swiper-container-pointer-events"
        id="roughMapContainer">
        <div class="swiper-wrapper" id="swiper-wrapper-034d44a2159e9af1" aria-live="polite"
        style="transform: translate3d(0px, 0px, 0px);">
        <div class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 1" style="height: 858px;">
        <div class="swiper-zoom-container">
        <img src="/include/theirmood/images/Ah2790hs2X.png">
        </div>
        </div>
        </div>
        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
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
        <a class="x_button">
        <svg width="45" height="45" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M7.86018 16.829L16.3455 8.34375" stroke="#cccccc" stroke-width="1" stroke-miterlimit="10"
        stroke-linecap="round" stroke-linejoin="round"></path>
        <path d="M16.2431 16.7275L7.75781 8.24219" stroke="#cccccc" stroke-width="1" stroke-miterlimit="10"
        stroke-linecap="round" stroke-linejoin="round"></path>
        </svg>
        </a>
        <div class="in">
        <div class="container swiper-container-initialized swiper-container- swiper-container-pointer-events"
        id="popNoticeImgWrap">
        <div class="swiper-wrapper" id="swiper-wrapper-8bdc88c5eb0f2e4a" aria-live="polite"
        style="transform: translate3d(0px, 0px, 0px);">
        <div class="swiper-slide swiper-slide-active" role="group" aria-label="1 / 1" style="height: 858px;">
        <div class="swiper-zoom-container">
        <img src="">
        </div>
        </div>
        </div>
        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
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

        .pop-design .btns {

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
        <div class="title">
        앱이 설치되어 있지 않은 경우
        길 안내가 실행되지 않을 수 있습니다
        </div>
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
        <a class="x_button">
        <svg width="45" height="45" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M7.86018 16.829L16.3455 8.34375" stroke="#cccccc" stroke-width="1" stroke-miterlimit="10"
        stroke-linecap="round" stroke-linejoin="round"></path>
        <path d="M16.2431 16.7275L7.75781 8.24219" stroke="#cccccc" stroke-width="1" stroke-miterlimit="10"
        stroke-linecap="round" stroke-linejoin="round"></path>
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
        <span class="cell">신랑</span>
        <span class="cell name">
        <span>이선용</span>
        <span class="baptismal"></span>
        </span>
        <span class="cell">
        <a class="fa fa-phone-alt" href="tel:010-2000-4016"></a>
        <a class="fa fa-envelope" href="sms:010-2000-4016"></a>
        </span>
        </div>
        </div>
        <div class="grd_wrap man">
        <div class="grd_line">
        신부측 <span class="ent">BRIDE</span>
        </div>
        <div class="grd">
        <span class="cell">신부</span>
        <span class="cell name">
        <span>송가은</span>
        <span class="baptismal"></span>
        </span>
        <span class="cell">
        <a class="fa fa-phone-alt" href="tel:010-8688-2224"></a>
        <a class="fa fa-envelope" href="sms:010-8688-2224"></a>
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
        <div class="pageCover clearfix sk2" style="position: relative; background-color:#fafafa">
        <div class="bg-eff-base bgeffectVal mist-bg"></div>
        <link href="//fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@400;700;800&display=swap"
        rel="stylesheet">
        <link
        href="//fonts.googleapis.com/css2?family=Gwendolyn&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
        <link
        href="//fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Song+Myung&display=swap"
        rel="stylesheet">
        <div class="layer mainV1 mainV2">
        <div class="inr light ">
        <div class="mainImgArea">
        <div class="main-img-parent">
        <i class="rpd rpd01"></i><i class="rpd rpd02"></i><i class="rpd rpd03"></i><i class="rpd rpd04"></i>
        <img class="imgblk"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/qANinRb8Ln-resize.webp">
        <div class="imgCover"></div>
        </div>
        <div class="wave bottom">
        <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
        viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
        <defs>
        <path id="gentle-wave"
        d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"></path>
        </defs>
        <g class="parallax">
        <use class="u-1" xlink:href="#gentle-wave" x="48" y="0" fill="rgba(250,250,250,0.7)"></use>
        <use class="u-2" xlink:href="#gentle-wave" x="48" y="3" fill="rgba(250,250,250,0.5)"></use>
        <use class="u-3" xlink:href="#gentle-wave" x="48" y="5" fill="rgba(250,250,250,0.3)"></use>
        <use class="u-4" xlink:href="#gentle-wave" x="48" y="7" fill="rgba(250,250,250,0.2)"></use>
        </g>
        </svg>
        </div>
        </div>
        <div class="mainTxtArea" style="padding-bottom: 50px;">
        <div class="desc1 anibox hd visible animated fadeInUp full-visible">
        <div class="main ft-gowun-bold">
        <div class="br-top" style="color: ">저희 둘,</div>
        <div class="br" style="color: ">결혼합니다.</div>
        </div>
        </div>
        <div class="desc2 anibox hd visible animated fadeInUp full-visible" style="color: ">
        <span class="s sig-color ft-gowun-bold">groom</span> <b>이선용</b> <span
        class="gwendolyn and ft-gowun-bold">and</span> <span
        class="s sig-color ft-gowun-bold">bride</span> <b>송가은</b></div>
        <div class="desc3">
        <div style="margin: auto; padding: 20px 0; line-height: 1;">
        <img src="/include/theirmood/images/wlin8.svg" style="width: 46%;">
        </div>
        <div class="anibox f18 bottom_top_text hd visible animated fadeInUp full-visible">
        <div class="wstation" style="color: ">2024. 01. 06. Saturday 1:40 PM<br>루이비스컨벤션 1층 아모리스홀</div>
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
        <span class="name">
        소중한 분들을 초대합니다
        </span>
        </div>
        <div class="introMent anibox f17 hd">
        <div id="intro-ment-area">
        <p>저희 두 사람의 작은 만남이<br>사랑의 결실을 이루어<br>소중한 결혼식을 올리게 되었습니다.<br><br>평생 서로 귀하게 여기며<br>첫 마음 그대로 존중하고 배려하며
        살겠습니다.<br><br>오로지 믿음과 사랑을 약속하는 날<br>오셔서 축복해 주시면 더 없는 기쁨으로<br>간직하겠습니다.</p></div>
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
        <span class="n">
        <img class="flower off" src="/include/theirmood/images/go1.png"> <span class="on"><span>이재석</span></span>
        </span>
        <span class="n_baptismal none"></span>
        </div>
        <div class="dot ">·</div>
        <div class="n_wrap ">
        <span class="n">
        <img class="flower off" src="/include/theirmood/images/go1.png"> <span class="on"><span>이명숙</span></span>
        </span>
        <span class="n_baptismal none"></span>
        </div>
        <div class="parentOf ">의</div>
        <div class="order ">장남</div>
        <div class="n_wrap">
        <span class="n">
        <span class="on"><span>이선용</span></span>
        </span>
        <span class="n_baptismal none"></span>
        </div>
        <div class="n_wrap ">
        <span class="n">
        <img class="flower off" src="/include/theirmood/images/go1.png"> <span class="on"><span>송정진</span></span>
        </span>
        <span class="n_baptismal none"></span>
        </div>
        <div class="dot ">·</div>
        <div class="n_wrap ">
        <span class="n">
        <img class="flower off" src="/include/theirmood/images/go1.png"> <span class="on"><span>이계숙</span></span>
        </span>
        <span class="n_baptismal none"></span>
        </div>
        <div class="parentOf ">의</div>
        <div class="order ">장녀</div>
        <div class="n_wrap">
        <span class="n">
        <span class="on"><span>송가은</span></span>
        </span>
        <span class="n_baptismal none"></span>
        </div>
        </div>
        </div>
        </div>

        </div>
        <div class="telAreaNone">
        <div class="pic_0_ins line introBottomDisplay"
        style="display: none; margin-bottom: 70px;background: #ddd;"></div>
        </div>
        <div class="telArea">
        <a class="int_buttn" onclick="openContactPop()"><i class="fa fa-phone-alt"></i>&nbsp;연락하기</a>
        </div>


        </div>
        </div>
        <div class="sectionMg gallLayerWrapper layer layer03 clearfix">
        <div class="sectionHead anibox hd" style="padding: 30px 0px 30px 0px">
        <div class="enstr">GALLERY</div>
        <span class="name">웨딩 갤러리</span></div>

        <div class="clearfix anibox hd">
        <div class="gallGridWrapper multiple ratio " style="grid-auto-rows: 72.25px; height: 564px;">
        <div class="item"
        style="background-image: url(/include/theirmood/images/cV9au5dPwb-crop-k0s7e.webp); grid-area: span 2">
        <img src="/include/theirmood/images/vertical.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/5PPpTXQo97-r400.webp);">
        <img src="/include/theirmood/images/horizontal.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/atwuW1TEzn-r400.webp); grid-area: span 2">
        <img src="/include/theirmood/images/vertical.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/HDHeDyHJ0E-r400.webp);">
        <img src="/include/theirmood/images/horizontal.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/tzcQFGcKy1-r400.webp);">
        <img src="/include/theirmood/images/horizontal.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/X8HBBGlEK1-r400.webp); grid-area: span 2">
        <img src="/include/theirmood/images/vertical.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/JxNCuOZsUO-r400.webp);">
        <img src="/include/theirmood/images/horizontal.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/k5YR5REV2g-r400.webp);">
        <img src="/include/theirmood/images/horizontal.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/s3WDS5VjlQ-r400.webp);">
        <img src="/include/theirmood/images/horizontal.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/HvUw02tnFE-r400.webp);">
        <img src="/include/theirmood/images/horizontal.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(include/theirmood/images/OFdrhDl6wK-crop-PQgsR.webp); grid-area: span 2">
        <img src="/include/theirmood/images/vertical.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/KptyyUgsqr-r400.webp);">
        <img src="/include/theirmood/images/horizontal.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/D3IGFXxUuL-r400.webp); grid-area: span 2">
        <img src="/include/theirmood/images/vertical.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/LMsxGHqyqw-r400.webp); grid-area: span 2">
        <img src="/include/theirmood/images/vertical.png" class="box rectangle">
        </div>
        <div class="item"
        style="background-image: url(/include/theirmood/images/DWONRztDat-r400.webp);">
        <img src="/include/theirmood/images/horizontal.png" class="box rectangle">
        </div>
        </div>
        </div>


        <div class="zoomGallWrapper">
        <a class="close">
        <svg width="45" height="45" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M7.86018 16.829L16.3455 8.34375" stroke="#555" stroke-width="1" stroke-miterlimit="10"
        stroke-linecap="round" stroke-linejoin="round"></path>
        <path d="M16.2431 16.7275L7.75781 8.24219" stroke="#555" stroke-width="1" stroke-miterlimit="10"
        stroke-linecap="round" stroke-linejoin="round"></path>
        </svg>
        </a>
        <div id="fullbox">
        <div class="swiper-wrapper">
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/cV9au5dPwb-crop-k0s7e.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/5PPpTXQo97-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/atwuW1TEzn-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/HDHeDyHJ0E-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/tzcQFGcKy1-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/X8HBBGlEK1-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/JxNCuOZsUO-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/k5YR5REV2g-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/s3WDS5VjlQ-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/HvUw02tnFE-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/OFdrhDl6wK-crop-PQgsR.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/KptyyUgsqr-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/D3IGFXxUuL-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/LMsxGHqyqw-r400.webp">
        </div>
        </div>
        <div class="swiper-slide">
        <div class="swiper-zoom-container"><img class="vs imgblk rs"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/DWONRztDat-r400.webp">
        </div>
        </div>
        </div>
        <div class="swiper-button-next swiper-opts"></div>
        <div class="swiper-button-prev swiper-opts"></div>
        <div class="swiper-pagination swiper-opts"></div>
        </div>
        </div>
        <style>
        .not-prevent-zoom {
        -ms-user-select: none;
        -moz-user-select: -moz-none;
        -webkit-user-select: none;
        -khtml-user-select: none;
        user-select: none;
        touch-action: pan-y;
        }
        </style>
        <script>


        var fullboxSwiper = null;
        var g_posY = 0;

        window.addEventListener('popstate', function (event) {
        if ($(".zoomGallWrapper").is(":visible")) {
        zoomGallClose();
        }
        });

        function zoomGallClose() {

        $(".zoomGallWrapper").css("display", "none");

        $("html,body").css("overflow", "visible");
        $(window).scrollTop(g_posY);

        document.querySelector(`body`).classList.remove('not-prevent-zoom')
        document.querySelector(`meta[name='viewport']`).setAttribute('content', 'width=device-width, initial-scale=1.0,
        maximum-scale=2.0, user-scalable=yes')
        document.querySelector(`meta[name='HandheldFriendly'][content='true']`).remove()

        }

        function zoomGallOpen(imgNumb) {

        history.pushState(null, null, "#");

        g_posY = $(window).scrollTop();
        $("html,body").css("overflow", "hidden");

        $(".zoomGallWrapper").css("display", "block");

        if (fullboxSwiper == null) {
        fullboxSwiper = new Swiper("#fullbox", {
        pagination: {
        el: "#fullbox .swiper-pagination",
        dynamicBullets: true,
        },
        navigation: {
        nextEl: "#fullbox .swiper-button-next",
        prevEl: "#fullbox .swiper-button-prev",
        },
        observer: true,
        observeParents: true,
        loop: true,
        on: {

        slideChange: function () {

        var numb = this.activeIndex;
        var s = $("#fullbox .swiper-wrapper .swiper-slide").eq(numb).find("img.imgblk.rs").attr('src');
        if (typeof s == "undefined" || s == null || s == "") {
        return;
        } // 이미 변환된 이미지
        const parts = s.split(/[\\\/]/)
        var bs = s.replace(/\/([^/]+)-[^.]+\.(jpg|png|jpeg|webp|JPG)/, "/$1-resize.$2");
        bs = bs.replaceAll('-crop', '')


        $("#fullbox .swiper-wrapper .swiper-slide:nth-child(" + (numb + 1) + ") img.imgblk").removeClass("rs");
        if (bs == s) {
        return;
        } // 같은 이미지
        $("#fullbox .swiper-wrapper .swiper-slide:nth-child(" + (numb + 1) + ") img.imgblk").attr('src', bs);

        }
        }
        });

        $(".zoomGallWrapper .close").click(function (e) {
        e.preventDefault();
        e.stopImmediatePropagation();
        $(".zoomGallWrapper").css("display", "none");

        //console.log("posY:"+g_posY);
        $("html,body").css("overflow", "visible");
        $(window).scrollTop(g_posY);
        });

        } else {
        fullboxSwiper.init();
        }
        fullboxSwiper.slideTo(parseInt(imgNumb + 1), 100);

        document.querySelector(`body`).classList.add('not-prevent-zoom')

        document.querySelector(`meta[name='viewport']`).setAttribute('content', 'width=device-width, initial-scale=1.0,
        minimum-scale=1.0, maximum-scale=1.0, user-scalable=no')

        const handheld = document.createElement(`meta`)
        handheld.setAttribute('content', 'true')
        handheld.setAttribute('name', 'HandheldFriendly')

        document.querySelector(`head`).appendChild(handheld)

        }


        </script>
        </div>
        <div class="sectionMg layer" style="display: none;" id="weddingVideoSection">
        <iframe id="wvideo" width="100%" height="282" src="" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen=""></iframe>
        </div>
        <style>

        </style>
        <div class="calanderSection sectionMg layer anibox clearfix hd">
        <div class="calwrap">
        <div class="f20 caltit" style=" text-align: center;">
        <div class="caltit_tit">
        2024.01.06
        </div>
        <div class="caltit_add">
        토요일
        오후
        1시
        40분
        </div>
        </div>
        <div class="calander_warpper">
        <table class="calander" id="calander">
        <thead>
        <tr>
        <th>일</th>
        <th>월</th>
        <th>화</th>
        <th>수</th>
        <th>목</th>
        <th>금</th>
        <th>토</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td></td>
        <td class="cal_tr_td_1" style="color: var(--main-sun-day-color);">1</td>
        <td class="cal_tr_td_2">2</td>
        <td class="cal_tr_td_3">3</td>
        <td class="cal_tr_td_4">4</td>
        <td class="cal_tr_td_5">5</td>
        <td><span class="dday">6</span></td>
        </tr>
        <tr>
        <td class="cal_tr_td_7">7</td>
        <td class="cal_tr_td_8">8</td>
        <td class="cal_tr_td_9">9</td>
        <td class="cal_tr_td_10">10</td>
        <td class="cal_tr_td_11">11</td>
        <td class="cal_tr_td_12">12</td>
        <td class="cal_tr_td_13">13</td>
        </tr>
        <tr>
        <td class="cal_tr_td_14">14</td>
        <td class="cal_tr_td_15">15</td>
        <td class="cal_tr_td_16">16</td>
        <td class="cal_tr_td_17">17</td>
        <td class="cal_tr_td_18">18</td>
        <td class="cal_tr_td_19">19</td>
        <td class="cal_tr_td_20">20</td>
        </tr>
        <tr>
        <td class="cal_tr_td_21">21</td>
        <td class="cal_tr_td_22">22</td>
        <td class="cal_tr_td_23">23</td>
        <td class="cal_tr_td_24">24</td>
        <td class="cal_tr_td_25">25</td>
        <td class="cal_tr_td_26">26</td>
        <td class="cal_tr_td_27">27</td>
        </tr>
        <tr>
        <td class="cal_tr_td_28">28</td>
        <td class="cal_tr_td_29">29</td>
        <td class="cal_tr_td_30">30</td>
        <td class="cal_tr_td_31">31</td>
        </tr>
        </tbody>
        </table>
        </div>
        </div>
        <div class="dday-wrap">
        <div class="countdown ft-gowun-bold">
        <div>
        <div class="desc">Days</div>
        <span class="card data-days" style="width: auto;">46</span>
        </div>
        <div>
        <div class="desc">&nbsp;</div>
        <span>:</span>
        </div>
        <div>
        <div class="desc">Hour</div>
        <span class="card data-hour">23</span>
        </div>
        <div>
        <div class="desc">&nbsp;</div>
        <span>:</span>
        </div>
        <div>
        <div class="desc">Min</div>
        <span class="card data-min">35</span>
        </div>
        <div>
        <div class="desc">&nbsp;</div>
        <span>:</span>
        </div>
        <div>
        <div class="desc">Sec</div>
        <span class="card data-sec">10</span>
        </div>
        </div>
        <div class="subTitle v2 f18 call-comment ft-gowun-bold">
        <p>선용, 가은의 결혼식이 <span style="color:var(--main-color);">47</span>일 남았습니다.</p></div>
        </div>
        <script src="/include/theirmood/js/moment.js"></script>
        <script>
        function getClock() {
        const now = moment()
        const wday = moment('2024-01-06 13:40:00')

        const day = parseInt(moment.duration(wday.diff(now)).asDays())
        const hours = moment.duration(wday.diff(now)).hours()
        const minutes = moment.duration(wday.diff(now)).minutes()
        const seconds = moment.duration(wday.diff(now)).seconds()


        $(".countdown .data-days").text(day);
        $(".countdown .data-hour").text(hours);
        $(".countdown .data-min").text(minutes);
        $(".countdown .data-sec").text(seconds);
        }


        getClock();
        setInterval(getClock, 1000);
        </script>
        </div>
        <div class="sectionMg layer layer03 ly_waytocome clearfix waytocomeSection">

        <div class="sectionHead anibox hd">
        <div class="enstr">LOCATION</div>
        <span class="name">오시는 길</span>
        </div>
        <div class="location_wrapper anibox hd">
        <div class="tbox emp">루이비스컨벤션 1층 아모리스홀</div>
        <div class="tbox">대전 유성구 테크노중앙로 161</div>
        <div class="tbox"><a class="tel" href="tel:042-933-2500">Tel. 042-933-2500</a></div>
        </div>
        <div id="daumRoughmapContainer1700467014367" class="root_daum_roughmap root_daum_roughmap_landing"></div>

        <script charset="UTF-8" class="daum_roughmap_loader_script"
        src="//ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

        <script charset="UTF-8">
        new daum.roughmap.Lander({
        "timestamp" : "1700467014367",
        "key" : "2gwcu",
        "mapWidth" : "360",
        "mapHeight" : "240"
        }).render();
        </script>
        <style>
        .root_daum_roughmap_landing{margin:auto;}
        </style>
        <div class="addr-wrap anibox hd">
        <div style="padding: 0 33px;">
        <a class="ybtn" onclick="openMapImg()">
        <span>약도 이미지 보기</span>
        </a>
        </div>
        </div>
        <ul class="wayto anibox hd">
        <li class="li navi">
        <span class="n ft-gowun-bold">내비게이션</span>
        <div>
        원하시는 앱을 선택하시면 길안내가 시작됩니다.
        </div>
        <div class="navi_button_wrap">
        <a class="navi_button" onclick="fnCallWeb2App('naverMap')"><span>네이버지도</span></a>
        <a class="navi_button" onclick="fnCallWeb2App('tmap')"><span>티맵</span></a>
        <a class="navi_button" onclick="fnCallWeb2App('kakaoNavi')"><span>카카오내비</span></a>
        </div>
        </li>
        <li class="li f16">
        <span class="n f18 ft-gowun-bold">자가용</span>
        <p>● 네비게이션 : “루이비스컨벤션 대전점” 검색<br>&nbsp; · 주소검색<br>&nbsp; &nbsp; &nbsp; “대전 유성구 테크노중앙로 161” 또는&nbsp;<br>&nbsp;
        &nbsp; &nbsp; “대전 유성구 용산동 579” 입력</p></li>
        <li class="li f16">
        <span class="n f18 ft-gowun-bold">버스</span>
        <p>신탄진역 출발</p>
        <p><span style="color:#0d347f;">● </span>705번 : 현대아울렛북문 하차 (도보 5분)</p>
        <p>&nbsp;</p>
        <p>대전역 출발</p>
        <p><span style="color:#0d347f;">● </span>705번 : 대덕밸리용신교 하차 (도보 5분)</p>
        <p>&nbsp;</p>
        <p>유성시외버스터미널 출발</p>
        <p><span style="color:#0d347f;">● </span>704번 : 롯데마트대덕점 하차 (도보 15분)</p>
        <p>&nbsp;</p>
        <p>복합터미널 출발</p>
        <p><span style="color:#0d347f;">● </span>701번 : 대덕밸리용신교 하차 (도보 5분)</p>
        <p><span style="color:#0d347f;">● </span>802번 : 롯데마트대덕점 하차 (도보 15분)</p></li>
        </ul>
        </div>
        <div class="sectionMg layer layer02 clearfix acctSection" id="layer_acc_id">
        <div class="lai_1">
        <div class="sectionHead anibox hd">
        <div class="enstr">ACCOUNT</div>
        <span class="name">마음 전하실 곳</span>
        <div class="sectionDesc">참석이 어려우신 분들을 위해<br>계좌번호를 기재하였습니다.<br>너그러운 마음으로 양해 부탁드립니다.</div>
        </div>
        </div>
        <div class="lai_2">
        </div>
        <div class="lai_3">
        <ul id="tel_ul_1" class="contactus v2 anibox hd">
        <li>
        <span class="t2 f18">신랑에게 연락하기</span>
        <span>
        <a class="b sky" href="tel:010-2000-4016"><i class="fa fa-phone-alt"></i></a>
        <a class="b" href="sms:010-2000-4016"><i class="fa fa-envelope"></i></a>
        </span>
        <span class="l2">
        <a onclick="openAcctBox(this)" class="bttn f13" data-group="" data-number="01020004016" data-bank="국민은행"
        data-name="이선용">계좌번호</a> <a class="kakao kakaopaylink" href="//qr.kakaopay.com/Ej8SdQe5i"><img
        src="/include/theirmood/images/payment_icon_yellow_small.png"></a> </span>
        </li>
        <li>
        <span class="t2 f18">신부에게 연락하기</span>
        <span>
        <a class="b pink" href="tel:010-8688-2224"><i class="fa fa-phone-alt"></i></a>
        <a class="b" href="sms:010-8688-2224"><i class="fa fa-envelope"></i></a>
        </span>
        <span class="l2">
        <a onclick="openAcctBox(this)" class="bttn f13" data-group="" data-number="110-449-916403" data-bank="신한은행"
        data-name="송가은">계좌번호</a> <a class="kakao kakaopaylink" href="//qr.kakaopay.com/Ej7oexium"><img
        src="/include/theirmood/images/payment_icon_yellow_small.png"></a> </span>
        </li>
        </ul>
        <style>
        #tel_ul_2 li span:nth-child(2) .baptismal {
        display: none !important;
        }
        </style>
        <style>
        #tel_ul_2 li span:nth-child(4) .baptismal {
        display: none !important;
        }
        </style>
        <div class="subTitle hongu anibox f18 hd">혼주에게 연락하기</div>
        <ul id="tel_ul_2" class="contactus v2 anibox sub hd">
        <li>
        <span class="t1 f15">신랑측 혼주</span>
        <span class="t2 f16">
        <span>
        <span class="m1f_1">아버지</span> <strong class="f16">이재석</strong>
        </span>
        <span class="baptismal">&nbsp;</span>
        </span>
        <span>
        <span class="l2">
        <a onclick="openAcctBox(this)" class="bttn f13" data-group="" data-number="754-24-0040-480" data-bank="국민은행"
        data-name="이재석">계좌번호</a> </span>
        </span>
        <span class="t2 f16">
        <span>
        <span class="m1f_2">어머니</span> <strong class="f16">이명숙</strong>
        </span>
        <span class="baptismal">&nbsp;</span>
        </span>
        <span>
        <span class="l2">
        <a onclick="openAcctBox(this)" class="bttn f13" data-group="" data-number="901022-52-066264" data-bank="농협"
        data-name="이명숙">계좌번호</a> </span>
        </span>
        </li>
        <li>
        <span class="t1 pink f15">신부측 혼주</span>
        <span class="t2 f16">
        <span>
        <span class="m1f_1">아버지</span> <strong class="f16">송정진</strong>
        </span>
        <span class="baptismal">&nbsp;</span>
        </span>
        <span>
        <span class="l2">
        <a onclick="openAcctBox(this)" class="bttn f13" data-group="" data-number="352-1046-3544-83" data-bank="농협"
        data-name="송정진">계좌번호</a> </span>
        </span>
        <span class="t2 f16">
        <span>
        <span class="m1f_2">어머니</span> <strong class="f16">이계숙</strong>
        </span>
        <span class="baptismal">&nbsp;</span>
        </span>
        <span>
        <span class="l2">
        <a onclick="openAcctBox(this)" class="bttn f13" data-group="" data-number="405-3010-407-3310" data-bank="국민은행"
        data-name="이계숙">계좌번호</a> </span>
        </span>
        </li>
        </ul>
        </div>
        <div class="lai_4">
        </div>
        </div>

        <div class="endingLayer light end-img-parent">
        <i class="rpd rpd01"></i><i class="rpd rpd02"></i><i class="rpd rpd03"></i><i class="rpd rpd04"></i>
        <div class="wave top">
        <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
        viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
        <defs>
        <path id="gentle-wave"
        d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"></path>
        </defs>
        <g class="parallax">
        <use class="u-1" xlink:href="#gentle-wave" x="48" y="0" fill="rgba(250,250,250,0.7)"></use>
        <use class="u-2" xlink:href="#gentle-wave" x="48" y="3" fill="rgba(250,250,250,0.5)"></use>
        <use class="u-3" xlink:href="#gentle-wave" x="48" y="5" fill="rgba(250,250,250,0.3)"></use>
        <use class="u-4" xlink:href="#gentle-wave" x="48" y="7" fill="rgba(250,250,250,0.2)"></use>
        </g>
        </svg>
        </div>
        <div class="banner01 auto"
        style="background-image:
        url('//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/nky41Esu1u-resize.webp');">
        <img class="imgblk"
        src="//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/nky41Esu1u-resize.webp">
        <div class="cover" style="overflow: hidden;">
        <div class="vcenterbox" style="text-align: ">
        <p>&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">&nbsp;</p>
        <p style="text-align:justify;">장담하건대,&nbsp;</p>
        <p style="text-align:justify;">세상이 다 겨울이어도</p>
        <p style="text-align:justify;">우리 사랑은 늘 봄처럼 따뜻하고</p>
        <p style="text-align:justify;">간혹, 여름처럼 뜨거울 겁니다.</p>
        <p style="text-align:justify;">-사랑가, 이수동</p>
        <p>&nbsp;</p></div>
        </div>
        </div>
        <div class="wave bottom">
        <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
        viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
        <defs>
        <path id="gentle-wave"
        d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"></path>
        </defs>
        <g class="parallax">
        <use class="u-1" xlink:href="#gentle-wave" x="48" y="0" fill="rgba(250,250,250,0.7)"></use>
        <use class="u-2" xlink:href="#gentle-wave" x="48" y="3" fill="rgba(250,250,250,0.5)"></use>
        <use class="u-3" xlink:href="#gentle-wave" x="48" y="5" fill="rgba(250,250,250,0.3)"></use>
        <use class="u-4" xlink:href="#gentle-wave" x="48" y="7" fill="rgba(250,250,250,0.2)"></use>
        </g>
        </svg>
        </div>
        </div>
        </div>

        <script src="/include/theirmood/js/moment.js"></script>
        <script src="/include/theirmood/js/moment-with-locales.js"></script>
        <script src="/include/theirmood/js/swiper-bundle.min.js"></script>
        <script src="/include/theirmood/js/fontawesome.min.js" loading="lazy"></script>
        <script type="text/javascript"
        src="//openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=z1i1zjproo&submodules=geocoder"></script>
        <script type="text/javascript" src="//openapi.map.naver.com/openapi/v3/maps-geocoder.js"></script>
        <script style="text/javascript" src="/include/theirmood/js/card.show.js?time=7304"></script>
        <script src="//t1.kakaocdn.net/kakao_js_sdk/2.0.1/kakao.min.js"
        integrity="sha384-eKjgHJ9+vwU/FCSUG3nV1RKFolUXLsc6nLQ2R1tD0t4YFPCvRmkcF8saIfOZNWf/"
        crossorigin="anonymous"></script>

        <script>
        try {
        Kakao.init('672965c4b505451294a6ca90fcdfa643');
        } catch (error) {

        }
        </script>

        <script>
        $(document).ready(function(){
        snowfallevt();
        });
        function snowfallevt() {
        $(".pageCover").snowfall({
        image: "/include/theirmood/images/flake.png",
        minSize: 3,
        maxSize: 10,
        flakeCount: 200,
        maxSpeed: 1.5,
        minSpeed: 1
        });
        }

        var bgeffSnow = false;
        </script>
        <script>

        //=============================================

        var g_audioControl = document.getElementById("videoplay");
        $(".bgmbar .sound").click(function () {
        if ($(this).find("i.fa").hasClass("fa-volume-off")) {
        $(this).find("i.fa").removeClass("fa-volume-off");
        $(this).find("i.fa").addClass("fa-volume-up");
        g_audioControl.play();
        isPlay = true
        bgmStreaming()
        } else {
        $(this).find("i.fa").addClass("fa-volume-off");
        $(this).find("i.fa").removeClass("fa-volume-up");
        g_audioControl.pause();
        isPlay = false
        bgmStreaming()
        }
        });

        splashAniFunc(true, true);

        //=============================================
        // 카톡 초대장 보내기
        if ($("#kakao-link-btn").is(":visible")) {
        try {
        //Kakao.init('672965c4b505451294a6ca90fcdfa643');

        function sendLink() {
        var t = $("input[name=kt_01]").val();
        var d = $("input[name=kt_02]").val();

        var kImg = '//d38fyys32noduv.cloudfront.net/resources/29885/card/HPz8GYU37s/qANinRb8Ln-resize.jpg';
        if (!kImg.includes('http')) {
        kImg = "//theirmood.com" + kImg;
        }

        Kakao.Share.sendCustom({
        templateId: 52792, templateArgs: {
        idx: "HPz8GYU37s",
        img: kImg,
        title: t,
        description: d
        },
        })
        }
        } catch {

        }

        }

        var NAVER_MAP;
        var marker;

        function naverMapXY() {
        //if (!NAVER_MAP.isStyleMapReady) { return; }
        if (!$("#map").is(":visible")) {
        return;
        }

        var point = new naver.maps.LatLng(36.4247423, 127.3980582);

        NAVER_MAP = new naver.maps.Map("map", {
        center: point,
        zoom: 15,
        mapTypeControl: true
        });

        var infoWindow = new naver.maps.InfoWindow({anchorSkew: true});
        marker = new naver.maps.Marker({
        position: point,
        map: NAVER_MAP
        });
        }

        $(document).ready(function () {
        try {
        naver.maps.onJSContentLoaded = naverMapXY;
        naver.maps.Event.once(NAVER_MAP, 'init_stylemap', naverMapXY);
        } catch (err) {
        }
        });

        function swipeGallery01() {
        var imglen = $("#swipelistid > .swiper-slide").length;
        if (imglen > 1) {

        new Swiper(".mySwiper", {
        loop: true,
        autoHeight: true,
        speed: 300,
        pagination: {
        el: ".mySwiper .swiper-pagination",
        dynamicBullets: true,
        },
        navigation: {
        nextEl: ".mySwiper .swiper-button-next",
        prevEl: ".mySwiper .swiper-button-prev",
        },
        on: {
        slideChange: function () {
        var numb = this.activeIndex;
        var s = $("#swipelistid .swiper-slide").eq(numb).find("img.imgblk.rs").attr('src');
        if (typeof s == "undefined" || s == null || s == "") {
        return;
        }
        var bs = s.replace(/\/([^/]+)-[^.]+\.(jpg|png|jpeg|webp|JPG)/, "/$1-resize.$2");
        bs = bs.replaceAll('-crop', '')

        $("#swipelistid .swiper-slide:nth-child(" + (numb + 1) + ") img.imgblk").removeClass("rs");
        if (bs == s) {
        return;
        }
        $("#swipelistid .swiper-slide:nth-child(" + (numb + 1) + ") img.imgblk").attr('src', bs);
        }
        }
        });


        } else if (imglen == 1) {
        $(".gallHeightAdj").css("height", "75px");
        $(".swiper-opts").detach();
        } else if (imglen == 0) {
        $(".pic_0_del").detach();
        $(".swiper-opts").detach();
        $(".layer01 .title2").css("padding-top", "0px");
        }
        $("#swipelistid .swiper-slide").click(function () {
        zoomGallOpen($(this).attr("data-order"));
        });

        }

        function swipeGallery02() {
        var imglen = $("#thumblistid > .swiper-slide").length;

        if (imglen > 1) {
        var swiper = new Swiper(".mySwiper", {
        loop: true,
        autoHeight: true,
        speed: 300,
        pagination: {
        el: ".swiper-pagination",
        clickable: true,
        renderBullet: function (index, className) {

        index = index + 2;

        var src = $("#thumblistid .ss:nth-child(" + (index) + ") > .vs").attr("src");
        const cropUrl = $("#thumblistid .ss:nth-child(" + (index) + ") > .vs").attr("data-cropData");
        if (cropUrl) {
        src = cropUrl
        }
        return '<span class="item ' + className + '" style="background-image: url(' + src + ') !important;"></span>';
        },
        },
        navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
        },
        on: {
        slideChange: function () {
        var numb = this.activeIndex;
        var s = $("#thumblistid .swiper-slide").eq(numb).find("img.imgblk.rs").attr('src');
        //console.log(s);
        if (typeof s == "undefined" || s == null || s == "") {
        return;
        } // 이미 변환된 이미지
        var bs = s.replace(/\/([^/]+)-[^.]+\.(jpg|png|jpeg|webp|JPG)/, "/$1-resize.$2");
        bs = bs.replaceAll('-crop', '')


        $("#thumblistid .swiper-slide:nth-child(" + (numb + 1) + ") img.imgblk").removeClass("rs");
        if (bs == s) {
        return;
        } // 같은 이미지
        $("#thumblistid .swiper-slide:nth-child(" + (numb + 1) + ") img.imgblk").attr('src', bs);
        },
        slideChangeTransitionStart: function () {
        this.update()
        }
        }
        });
        $("#thumblistid .swiper-slide").click(function () {
        zoomGallOpen($(this).attr("data-order"));
        });

        } else if (imglen == 1) {
        $(".swiper-opts").detach();
        } else if (imglen == 0) {
        $(".pic_0_del").detach();
        $(".swiper-opts").detach();
        $(".layer01 .title2").css("padding-top", "0px");
        }
        }
        $(".gallGridWrapper .item").click(function () {
        zoomGallOpen($(this).index());
        });

        //=============================================
        // 페이지가 샤르륵 나타나는 효과
        $(document).ready(function () {
        $('.anibox').addClass("hd").viewportChecker({
        classToAdd: 'visible animated fadeInUp',
        offset: 100
        });
        });
        </script>
        </body>
        </html>