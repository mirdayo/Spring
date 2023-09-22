<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<link rel="stylesheet" type="text/css" href="resources/css/header.css" />
<link rel="stylesheet" type="text/css" href="resources/css/member.css" />
<link rel="stylesheet" type="text/css" href="resources/css/footer.css" />
<!-- 네이버 폰트 -->
<link href="https://hangeul.pstatic.net/hangeul_static/css/NanumBarunGothicYetHangul.css" rel="stylesheet">
<!-- Swiper -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"/>
</head>
<body>

    <!-- 헤더 -->
    <header>
        <div id="header_section" class="header">
            <h1 class="logo">
                <a href="index.html"></a>
            </h1>
            <div class="gnb">
                <ul class="menu1">
                    <li><a href=""><img src="resources/image/페이스북.png" alt="페이스북로고"></a></li>
                    <li><a href="" style="width:35px"><img src="resources/image/유튜브.png" alt="유튜브로고"></a></li>
                    <li><a href=""><img src="resources/image/인스타그램.png" alt="인스타그램로고"></a></li>
                </ul>
                <ul class="menu2">
                    <li><a href="">멤버십</a></li>
                    <li><a href="">고객센터</a></li>
                    <li><a href="">단체관람/대관문의</a></li>
                    <li><a href="${pageContext.request.contextPath}/logout.do">로그아웃</a></li>
                </ul>
                <ul class="menu3">
                    <li><a href="${pageContext.request.contextPath}/join.do">회원가입</a></li>
                    <li><a href="">바로예매</a></li>
                    <li><a href=""><img src="resources/image/햄버거버튼.png"></a></li>
                </ul>
                <div class="nav">
                    <ul class="submenu">
                        <li>
                            <a href="">예매</a>
                            <ul class="submenu1">
                                <li><a href="">예매하기</a></li>
                                <li><a href="">상영시간표</a></li>
                                <li><a href="">할인안내</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="">영화</a>
                            <ul class="submenu2">
                                <li><a href="">홈</a></li>
                                <li><a href="">현재상영작</a></li>
                                <li><a href="">상영예정작</a></li>
                                <li><a href="">아르떼</a></li>
                                <li><a href="">국립극장</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="">영화관</a>
                            <ul class=submenu3>
                                <li><a href="">스페셜관</a></li>
                                <li><a href="">서울</a></li>
                                <li><a href="">경기/인천</a></li>
                                <li><a href="">충청/대전</a></li>
                                <li><a href="">전라/광주</a></li>
                                <li><a href="">경상/대구</a></li>
                                <li><a href="">경상/부산/울산</a></li>
                                <li><a href="">강원</a></li>
                                <li><a href="">제주</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="">이벤트</a>
                            <ul class="submenu4">
                                <li><a href="">홈</a></li>
                                <li><a href="">영화</a></li>
                                <li><a href="">시사회/무대인사</a></li>
                                <li><a href="">HOT</a></li>
                                <li><a href="">제휴할인</a></li>
                                <li><a href="">우리동네영화관</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="">스토어</a>
                            <ul class="submenu5">
                                <li><a href="">베스트</a></li>
                                <li><a href="">관람권</a></li>
                                <li><a href="">스낵음료</a></li>
                                <li><a href="">포토카드</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href=""></a>
                            <ul></ul>
                        </li>
                    </ul>
                </div>
            </div>
    </header>
<!-- 메인 -->
<!-- 마이페이지 -->
<div class="mypage-warp">
    <div class="mypage">
        <!-- 마이페이지 버튼들 -->
        <ul class="mypage-menu">
            <!-- 정보 수정 -->
            <li>
                <button class="tab-update">
                    <span class="img"><img src="resources/image/ic_my_menu_1.png" alt=""></span>
                    <span class="myChange">회원 정보 변경</span>
                </button>
            </li>
            <!-- 탈퇴 -->
            <li>
                <button class="tab-delete">
                    <span class="img"><img src="resources/image/ic_my_menu_4.png" alt=""></span>
                    <span class="myChange2">회원 탈퇴</span>
                </button>
            </li>
            <!-- 정보 조회 -->
            <li>
                <button class="tab-select">
                    <span class="img"><img src="resources/image/ic_my_menu_5.png" alt=""></span>
                    <span class="myChange3">회원 정보 조회</span>
                </button>
            </li>
        </ul>
    </div>
    <!-- 회원 정보 수정 -->
    <div class="userChange">
        <h3>회원 정보수정</h3>
        <p class="tip">
        회원 정보입력
        </p>
        <!-- 수정 정보 목록 -->
        <div class="user-update">
            <label for="" name="id" id="userid" style="padding-left: 65px;">ID</label> <input type="text" placeholder="ID를 입력해주세요.">
            <hr/>
            <label for="" name="pw" id="userpw" style="padding-left: 55px;">PW</label> <input type="text" placeholder="PW를 입력해주세요.">
            <hr/>
            <label for="" name="username" id="username" style="padding-left: 47px;">이름</label> <input type="text" placeholder="이름을 입력해주세요.">
            <hr/>
            <label for="" name="phone" id="phone">휴대폰번호</label> <input type="text" placeholder="휴대폰번호를 입력해주세요."> <button class="btn-phone">인증</button>
            <hr/>
            <label for="" name="birth" id="birth" style="padding-left: 15px;">생년월일</label>
            <select id="year-select"></select>
            <select id="month-select"></select>
            <select id="day-select"></select>
            <hr/>
            <label for="" id="address" style="padding-left: 45px;">주소</label>
            <input type="text" name= "zipcode" id="postcode" placeholder="우편번호를 입력하세요">
            <button class="btn-addr" onclick="searchZip()">우편번호검색</button>
            <input type="text" name="addr1" id="defaultAddress" placeholder="기본주소 입력"  class="form-control" style=width:300px;/>
            <input type="text" name="addr2"  placeholder="상세주소 입력" class="form-control"  style=width:200px;/>
            <hr/>
        </div>
        <!-- 하단 설명 -->
        <ul class="non-list">
            <li>- 필수 정보에 대해 정확히 확인해 주시기 바랍니다.</li>
        </ul>
        <!-- 하단 버튼 -->
        <div class="update-btn-center">
            <button class="cancle-btn">취소</button>
            <button class="update-btn">완료</button>
        </div>
    </div>
<!-- 회원 탈퇴 -->
    <div class="userWithdraw">
        <!-- 회원탈퇴 크게 -->
        <div class="toparea">
            <h3>회원탈퇴</h3>
            <div class="title">
                회원탈퇴전
            </div>
            <div class="headline">
                꼭 유의사항을 확인해주세요.
            </div>
        </div>
        <!-- 탈퇴할 계정 선택 -->
        <div class="user-delete">
            <h3 class="sub-underline">아이디 선택</h3>
            <div class="id-check">
                <input type="checkbox" name="" id="">
                <label for="">여기에 아이디 받아와서 써지게</label>
            </div>
        </div>
        <!-- 탈퇴 시 유의사항 설명 -->
        <div class="delete-precaution">
            <h3 class="sub-underline2">유의사항</h3>
            <div class="row">
                <div class="warning">
                    <p>- 탈퇴 시, 사용하시던 포인트 및 쿠폰 등은 복원할 수 없습니다.</p>
                    <p>- 진행중인 예약 또는 이용중인 서비스가 있을 경우 탈퇴가 불가합니다.</p>
                    <p>- 탈퇴 즉시 개인정보가 삭제되면, 어떠한 방법으로도 복원할 수 없습니다.</p>
                    <p>- 아이디를 탈퇴하시면 결제 취소가 불가능합니다.</p>
                </div>
            </div>
        </div>
        <!-- 하단 버튼 -->
        <div class="delete-btn-center">
            <button class="cancle-btn">취소</button>
            <button class="delete-btn">탈퇴</button>
        </div>
    </div>
 <!-- 회원 정보 조회 -->
    <div class="userSearch">
        <!-- 상단 글 -->
        <p class="head">[관리자] 회원 조회</p>
        <!-- 검색 라인 -->
        <div class="search-block">
            <!-- form 필요 -->
                <ul class="search-line">
                    <li>
                        <select name="" id="">
                        <option value="">회원 ID</option>
                        <option value="">회원 이름</option>
                        <option value="">전화번호</option>
                        </select>
                    </li>
                    <li><input type="text" placeholder="아직 전체조회만"></li>
                    <li><button class="search-commit">검색</button></li>
                </ul>
        </div>
        <!-- 결과창 -->
      <div class="search-result">
          <p class="page">????</p>
          <div class="result-block">
              <!-- 결과 테이블 -->
              <table class="result-line">
                  <thead>
                  <tr>
                      <th>회원 ID</th>
                      <th>회원 이름</th>
                      <th>나이</th>
                      <th>성별</th>
                      <th>생년월일</th>
                      <th>전화번호</th>
                      <th>주소</th>
                  </tr>
                  </thead>
              </table>
          </div>
          <!-- 패깅? 버튼 -->
              <div class="paging">
                  <button class="paging-btn">뭔가 버튼</button>
              </div>
          </div>
      </div>
</div>

<!-- 푸터 -->
    <footer>
        <div class="footer">
            <div class="inner">
                <span class="footerlogo">
                    <img src="resources/image/logo3.png" alt="">
                </span>
                <ul class="footermenu">
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">개인정보처리방침</a></li>
                    <li><a href="#">이메일무단수집거부</a></li>
                    <li><a href="#">영상정보처리기기 운영 및 관리방침</a></li>
                    <li><a href="#">L.POINT회원안내</a></li>
                    <li><a href="#">배정기준</a></li>
                    <li><a href="#">채용안내</a></li>
                    <li><a href="#">광고/임대문의</a></li>
                    <li><a href="#">기업정보</a></li>
                    <li><a href="#">사회적책임</a></li>
                </ul>
                <div class="address">
                    <address>서울특별시 송파구 올림픽로 300 롯데월드타워 27층</address>
                    <span class="bar">고객센터 1544-8855 (유료)</span><br>
                    <span class="bar">대표이사 4조</span>
                    <span class="bar">사업자등록번호 111-11-11111</span>
                    <span class="bar">통신판매업신고번호 제1111호</span>
                    <span class="bar">개인정보보호책임자 4조</span>
                </div>
                <p class="copyright" style="font-size: 12px;">COPYRIGHT LOTTE CINEMA ALL RIGHT RESERVED.</p>
            </div>
        </div>
    </footer>

<!-- 자바 스크립트 -->
<!-- 제이쿼리 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- lodash cdn -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js" integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- Swiper -->
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<!-- 우편 검색 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
     //회원 비회원 전환 버튼
    const updateBtn = document.querySelector(".tab-update");
    const deleteBtn = document.querySelector(".tab-delete");
    const selectBtn = document.querySelector(".tab-select");
    const ChangeBox = document.querySelector(".userChange");
    const WirhdrawBox = document.querySelector(".userWithdraw");
    const SearchBox = document.querySelector(".userSearch");

    updateBtn.addEventListener("click", function() {
      ChangeBox.style.display = "block";
      WirhdrawBox.style.display = "none";
      SearchBox.style.display = "none";
    });

    deleteBtn.addEventListener("click", function() {
      WirhdrawBox.style.display = "block";
      ChangeBox.style.display = "none";
      SearchBox.style.display = "none";
    });

    selectBtn.addEventListener("click", function() {
      SearchBox.style.display = "block";
      ChangeBox.style.display = "none";
      WirhdrawBox.style.display = "none";
    });

    // 생년월일 선택자
    const yearSelect = document.getElementById('year-select');
    const monthSelect = document.getElementById('month-select');
    const daySelect = document.getElementById('day-select');

        // 연도 범위 설정 (예: 1900-2023)
      const startYear = 2023;
      const endYear = 1900;

        // 연도 <select> 채우기
      for (let year = startYear; year >= endYear; year--) {
        const option = document.createElement('option');
        option.value = year;
        option.textContent = year;
        yearSelect.appendChild(option);
      }

        // 월 <select> 채우기
      for (let month = 1; month <= 12; month++) {
        const option = document.createElement('option');
        option.value = month;
        option.textContent = month;
        monthSelect.appendChild(option);
      }

        // 일 <select> 채우기
      function fillDaySelect(days) {
        daySelect.innerHTML = '';
        for (let day = 1; day <= days; day++) {
          const option = document.createElement('option');
          option.value = day;
          option.textContent = day;
          daySelect.appendChild(option);
        }
      }

        // 기본값으로 31일로 설정
      fillDaySelect(31);

        // 월을 선택하면 대응하는 일 수로 변경
      monthSelect.addEventListener('change', function () {
        const selectedMonth = this.value;
        let days;
        if (selectedMonth === '2') {
          days = 28; // 윤년 계산은 생략
        } else if (['4', '6', '9', '11'].includes(selectedMonth)) {
          days = 30;
        } else {
          days = 31;
        }
        fillDaySelect(days);
      });

      // 우편 검색
      const searchZip=function()
      {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                var addr='';

                //사용자가 도로명 주소 선택
                if(data.userSelectedType==='R')
                {
                  addr=data.roadAddress;
                }
                else //사용자가 지번 주소 선택 'J'
                {
                  addr=data.jibunAddress;
                }
                document.getElementById('postcode').value=data.zonecode;
                document.getElementById('defaultAddress').value=addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("addr2").focus();
            }
        }).open();
      }

    // // TOP 누르면 최상단 이동
    // const toTopBtn_el = document.getElementById('to_top');
    //     toTopBtn_el.addEventListener('click',function(){
    //         window.scrollTo({top:0,behavior:'smooth'})
    //     })

    // // 스크롤시 메뉴 따라오기
    // // 좌측 광고
    // $(window).scroll(function(){
    // var scrollTop = $(document).scrollTop();
    // if (scrollTop < 300) {
    //   scrollTop = 300;
    // }
    //   $(".left_section").stop();
    //   $(".left_section").animate( { "top" : scrollTop });
    // });

    // // 우측 퀵메뉴
    // $(window).scroll(function(){
    // var scrollTop = $(document).scrollTop();
    // if (scrollTop < 200) {
    //   scrollTop = 200;
    // }
    //   $(".quick_section").stop();
    //   $(".quick_section").animate( { "top" : scrollTop });
    // });
    // // x표시 광고 끄기
    // // 버튼과 광고 요소 선택
    // const bannerCloseButton = document.querySelector('.banner_close');
    // const leftBanner = document.querySelector('.left_banner');

    // // 버튼 클릭 시 광고 숨기기
    // bannerCloseButton.addEventListener('click', function () {
    //   leftBanner.style.display = 'none';
    //   bannerCloseButton.style.display = 'none';
    // });

</script>

</body>
</html>