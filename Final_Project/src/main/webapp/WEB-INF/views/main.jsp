<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- MATERIAL CON -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <!-- STYLESHEET -->
    <link rel="stylesheet" href="assets/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
     <div class="container">
        <aside>
            <div class="top">
                <div class="logo">
                    <img src="assets/images/logo.png">
                    <h2>PINY<span class="danger"> Catch U</span></h2>
                </div>
                <div class="close" id="close-btn">
                    <span class="material-icons-sharp">close</span>
                </div>
            </div>

            <div class="sidebar">
                <a class="menu-item active">
                    <span class="material-icons-sharp">grid_view</span>
                    <h3>Dashboard</h3>
                </a container a URL or a URL fragment that the hyperlink points to>
                <a class="menu-item">
                    <span class="material-icons-sharp">person_outline</span>
                    <h3>Profile</h3>
                </a>
                <a class="menu-item">
                    <span class="material-icons-sharp">view_list</span>
                    <h3>Video List</h3>
                </a>
                <a class="menu-item">
                    <span class="material-icons-sharp">insights</span>
                    <h3>Analytics</h3>
                </a>
                <a class="menu-item">
                    <span class="material-icons-sharp">mail_outline</span>
                    <h3>Messages</h3>
                    <span class="message-count active">26</span>
                </a>
                <a class="menu-item">
                    <span class="material-icons-sharp">inventory</span>
                    <h3>Status</h3>
                </a>
                <a class="menu-item">
                    <span class="material-icons-sharp">help_outline</span>
                    <h3>FAQ</h3>
                </a>
                <a class="menu-item">
                    <span class="material-icons-sharp">settings</span>
                    <h3>Settings</h3>
                </a>
                <a class="menu-item">
                    <span class="material-icons-sharp">add</span>
                    <h3>Add Product</h3>
                </a>
                <a>
                    <span class="material-icons-sharp">logout</span>
                    <h3>Logout</h3>
                </a>
            </div>
        </aside>
        <!-- ------------ END OF ASIDE ------------ -->
        <main>
            <h1>Dashboard</h1>

            <div class="date">
                <input type="date">
            </div>

            <div class="insights">
                <div class="sales">
                    <span class="material-icons-sharp">videocam</span>
                    <div class="middle">
                        <div class="left">
                            <h3>실시간 CCTV</h3>
                            <h1>작동중</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>ON</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">Last 24 Hours</small>
                </div>
                <!-- ------------ END OF SALES ------------ -->
                <div class="expenses">
                    <span class="material-icons-sharp">notifications</span>
                    <div class="middle">
                        <div class="left">
                            <h3>확인 필요한 감지알림</h3>
                            <h1>3 개</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>62%</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">Last 24 Hours</small>
                </div>
                <!-- ------------ END OF EXPENSES ------------ -->
                <div class="income">
                    <span class="material-icons-sharp">bar_chart</span>
                    <div class="middle">
                        <div class="left">
                            <h3>TODAY 총 적발건수</h3>
                            <h1>89 건</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>44%</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">Last 24 Hours</small>
                </div>
                <!-- ------------ END OF INCOME ------------ -->
            </div>
            <!-- ------------ END OF INSIGHTS ------------ -->

            <div class="recent-video">
                <h2>영상 증거물 업데이트</h2>
                <table>
                    <thead>
                        <tr>
                            <th>기록 번호</th>
                            <th>CCTV 번호</th>
                            <th>담당 구역</th>
                            <th>감지 일시</th>
                            <!-- <th>확인 여부</th> -->
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach items="${result_storage }" var="s">
	                        <tr>
	                            <td>${s.idx }</td>
	                            <td>${s.cctv_port }</td>
	                            <td>${s.section }</td>
	                            <td>${s.record_start }</td>
	                            <!-- <td class="primary"><span class="material-icons-sharp">check_circle_outline</span></td> -->
	                        </tr>
                        </c:forEach>
                        <!-- <tr>
                            <td>98</td>
                            <td>85632</td>
                            <td>드림 지역아동센터</td>
                            <td>2023-12-13</td>
                            <td class="primary"><span class="material-icons-sharp">check_circle_outline</span></td>
                        </tr>
                        <tr>
                            <td>97</td>
                            <td>85633</td>
                            <td>현대오일뱅크(주)직영 스피드주유소</td>
                            <td>2023-12-13</td>
                            <td class="primary"><span class="material-icons-sharp">check_circle_outline</span></td>
                        </tr>
                        <tr>
                            <td>96</td>
                            <td>85634</td>
                            <td>마로니에어린이공원</td>
                            <td>2023-12-13</td>
                            <td class="primary"><span class="material-icons-sharp">check_circle</span></td>
                        </tr>
                        <tr>
                            <td>95</td>
                            <td>85635</td>
                            <td>보라매공원입구</td>
                            <td>2023-12-13</td>
                            <td class="primary"><span class="material-icons-sharp">check_circle</span></td>
                        </tr> -->
                    </tbody>
                </table>
                <a href="#">Show All</a>
				
				<button id="sendEmailButton">이메일 전송</button>
                
            </div>
        </main>
        <!-- ------------ END OF MAIN ------------ -->

        <div class="right">
            <div class="top">
                <button id="menu-btn">
                    <span class="material-icons-sharp">menu</span>
                </button>
                <div class="theme-toggler">
                    <span class="material-icons-sharp active">light_mode</span>
                    <span class="material-icons-sharp">dark_mode</span>
                </div>
                <div class="profile">
                    <div class="info">
                        <p>Hey, <b>${loginMember.id }</b></p>
                        <small class="text-muted">${loginMember.email }</small>
                    </div>
                    <div class="profile-photo">
                        <img src="assets/images/profile2.jpg" alt="">
                    </div>
                </div>
            </div>
            <!-- END OF TOP -->
            <div class="recent-updates">
                <h2>Recent Updates</h2>
                <div class="updates">
                    <div class="update">
                        <div class="profile-photo">
                            <img src="assets/images/profile1.png">
                        </div>
                        <div class="message">
                            <p><b>김동엽</b> 오늘자 현황 보고 부탁드려요</p>
                            <small class="text-muted">2 Minute Ago</small>
                        </div>
                    </div>
                    <div class="update">
                        <div class="profile-photo">
                            <img src="assets/images/profile1.png">
                        </div>
                        <div class="message">
                            <p><b>김도훈</b> 적발건 업데이트 되었습니다. 이메일로 자료 보냈습니다.</p>
                            <small class="text-muted">10 Minute Ago</small>
                        </div>
                    </div>
                    <div class="update">
                        <div class="profile-photo">
                            <img src="assets/images/profile1.png">
                        </div>
                        <div class="message">
                            <p><b>안상우</b> 이수역 1번 출구 앞 금연구역에서 흡연 적발되었습니다. 처리 부탁드려요~</p>
                            <small class="text-muted">15 Minute Ago</small>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ------------ END OF RECENT UPDATES ------------ -->
            <table class="scriptCalendar">
                <thead>
                    <tr>
                        <td class="calendarBtn" id="btnPrevCalendar">&#60;&#60;</td>
                        <td colspan="5">
                            <span id="calYear">YYYY</span>년
                            <span id="calMonth">MM</span>월
                        </td>
                        <td class="calendarBtn" id="nextNextCalendar">&#62;&#62;</td>
                    </tr>
                    <tr>
                        <td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
        <table>
        	<tbody>
        		<c:forEach items="${result_storage }" var="s">
        		<tr>
        			<td>${s.video_path }</td>
        		</tr>
				<tr>
        			<td>${s.record_start }</td>
        		</tr>
        		<tr>
        			<td>${s.record_end }</td>
        		</tr>
        		</c:forEach>
        	</tbody>
        </table>
     </div>

     <script src="assets/js/main.js"></script>
     <script>
	    $(document).ready(function() {
	        $('#sendEmailButton').click(function(event) {
	            event.preventDefault(); // 버튼의 기본 동작 중지 (페이지 이동 방지)
	
	            // AJAX 요청
	            $.ajax({
	                url: '/sendemail', // 이메일 전송을 처리하는 URL
	                type: 'POST', // 전송 방식 (POST)
	                success: function(response) {
	                    alert('이메일이 성공적으로 전송되었습니다!');
	                    // 성공 시 수행할 작업 추가
	                },
	                error: function(xhr, status, error) {
	                    alert('이메일 전송에 실패했습니다!');
	                    // 실패 시 수행할 작업 추가
	                }
	            });
	        });
	    });
	</script>


</body>
</html>