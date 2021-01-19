$(function () {
  /* 회원가입버튼 클릭 */
  $("#btn_chk").click(function () {
    /* ID(email)공백 */
    if ($("#id").val() == "") {
      $("#warning_id").text("E-mail 적어주세요");
      $("#id").focus();
      return false;
    }else if(isTrue == 0){
		/*$("#join_pass").val("");*/
		$("#join_pass").focus();
		return false;
	}
    var chkId = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
    /* email양식체크 */
    /*if (chkId.test($("id").val)) {
      $("#warning_id").text("E-mail 양식으로 적어주세요");
      $("#id").focus();
      return false;
    }*/

    if ($("#name").val() == "") {
      $("#warning_name").text("이름을 적어주세요");
      $("#name").focus();
      return false;
    }

    /*연락처 공백 체크*/
    if ($("#phone").val() == "") {
      $("#warning_phone").text("연락처 적어주세요");
      $("#phone").focus();
      return false;
    }

    /*패스워드 공백*/
    if ($("#join_pass").val() == "" || $("#chk_pass").val() == "") {
      $("#warning_chk_pass").text("비밀번호를 적어주세요");
      $("#join_pass").focus();
      return false;
    }

    /*이용약관 체크 안했을 때*/
    if ($("input[name=chk_term]").is(":checked") == false) {
      alert("이용약관에 동의해주세요");
      return false;
    }

    /*개인정보 체크 안했을 때*/
    if ($("input[name=chk_info]").is(":checked") == false) {
      alert("이용약관에 동의해주세요");
      return false;
    }
  });

  /*마이페이지 - 수정페이지 - 비밀번호 중복검사 ====================================================*/
  $("#btn_modifychk").click(function () {
		/*$("#join_pass").val("");*/
	    if(isTrue == 0){
			/*$("#join_pass").val("");*/
			$("#join_pass").focus();
			return false;
		}else{
			$( "#target" ).submit();
		}
	});

  /*패스워드 중복검사 ====================================================*/
  var isTrue = 0;
  $("#chk_pass").keyup(function () {
    if ($("#join_pass").val() == $("#chk_pass").val()) {
      $("#warning_chk_pass").text("비밀번호가 일치합니다").css({
        "margin-top": "10px",
        "padding-left": "20px",
        "text-align": "left",
        "font-size": "12px",
        color: "#0080FF",
      });
		isTrue = 1;
    } else {
      $("#warning_chk_pass").text("비밀번호가 일치하지 않습니다").css({
        "margin-top": "10px",
        "padding-left": "20px",
        "text-align": "left",
        "font-size": "12px",
        color: "#ff0000",
      });
      $("#warning_chk_pass").focus();
	  isTrue = 0;
    }
  });
  /* 메뉴드롭다운 ==================================================== */
  $(".navi>li")
    .mouseover(function () {
      $(this).find(".submenu").stop().slideDown(200);
    })
    .mouseout(function () {
      $(this).find(".submenu").stop().slideUp(200);
    });
  /* 이미지 슬라이더 ====================================================*/
  // 변수선언
  var container = $(".slideshow"),
    slideGroup = container.find(".slideshow_slides"),
    slides = slideGroup.find("a"),
    nav = container.find(".slideshow_nav"),
    indicator = container.find(".indicator"),
    slideCount = slides.length,
    indicatorHtml = "",
    currentIndex = 0,
    duration = 500,
    easing = "easeInOutExpo",
    interval = 3500,
    timer;

  // 슬라이드 가로 배열
  // slides마다 할일, left0%,100%,200%,300%로 변경
  slides.each(function (i) {
    var newLeft = i * 100 + "%";
    $(this).css({ left: newLeft });
    //<a href="">1</a>
    indicatorHtml += "<a href=''>" + (i + 1) + "</a>";
  }); //slide.each
  // console.log(indicatorHtml);
  indicator.html(indicatorHtml);

  // 슬라이드 이동 함수
  function goToSlide(index) {
    slideGroup.animate({ left: -100 * index + "%" }, duration, easing);
    currentIndex = index;

    updateNav(); // 처음인지 끝인지 검사
  }
  // indecator 현재위치 설정(좌우버튼시 같이 적용)
  function updateNav() {
    var navPrev = nav.find(".prev");
    var navNext = nav.find(".next");
    // 처음 currentIndex=0, 이전버튼 hidden
    if (currentIndex == 0) {
      navPrev.addClass("disabled");
      console.log(currentIndex);
    } else {
      navPrev.removeClass("disabled");
      console.log(currentIndex);
    }

    if (currentIndex == slideCount - 1) {
      navNext.addClass("disabled");
      console.log(currentIndex);
    } else {
      navNext.removeClass("disabled");
      console.log(currentIndex);
    }

    indicator.find("a").removeClass("active");
    indicator.find("a").eq(currentIndex).addClass("active");
  } //updateNav

  // indecator로 이동하기
  indicator.find("a").click(function (e) {
    e.preventDefault();
    var idx = $(this).index();
    // console.log(idx);
    goToSlide(idx);
  });

  // 좌우 버튼으로 이동
  nav.find("a").click(function (e) {
    e.preventDefault(); // a태그의 기본기능을 막음
    if ($(this).hasClass("prev")) {
      goToSlide(currentIndex - 1);
    } else {
      goToSlide(currentIndex + 1);
    }
  });

  updateNav();

  // 자동 슬라이드 함수
  function startTimer() {
    timer = setInterval(function () {
      var nextIndex = (currentIndex + 1) % slideCount;
      goToSlide(nextIndex);
    }, interval);
  }

  startTimer();

  function stopTimer() {
    clearInterval(timer);
  }

  container
    .mouseenter(function () {
    	stopTimer();
    })
    .mouseleave(function () {
    	startTimer();
    });
});
