<%-- 
    Document   : linkAdmin
    Created on : Mar 9, 2018, 6:28:18 PM
    Author     : Sou
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="<c:url value="resources/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="resources/css/bootstrap-responsive.min.css"/>" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
      rel="stylesheet">
<link href="<c:url value="resources/css/font-awesome.css"/>" rel="stylesheet">
<link href="<c:url value="resources/css/style.css"/>" rel="stylesheet">
<link href="<c:url value="resources/css/pages/dashboard.css"/>" rel="stylesheet">
</head>
<body>
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span
                        class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> </a><a class="brand" href="index.html">Good Learner</a>
                <div class="nav-collapse">
                    <ul class="nav pull-right">
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                    class="icon-cog"></i> Account <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:;">Settings</a></li>
                                <li><a href="javascript:;">Help</a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                    class="icon-user"></i> ${nama} <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:;">Profile</a></li>
                                <li><a href="logout.htm">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-search pull-right">
                        <input type="text" class="search-query" placeholder="Search">
                    </form>
                </div>
            </div>
        </div>
    </div>
      <!-- /navbar -->
        <div class="subnavbar">
          <div class="subnavbar-inner">
            <div class="container">
              <ul class="mainnav">
                <li class="active"><a href="admin.html"><i class="icon-dashboard"></i><span>Dashboard</span> </a> </li>
                <li><a href="view_role.htm"><i class="icon-user-md"></i><span>Role</span> </a> </li>
                <li><a href="view_assignment.htm"><i class="icon-tasks"></i><span>Assignment</span> </a></li>
                <li><a href="view_course.htm"><i class="icon-th-large"></i><span>Course</span> </a> </li>
                <li><a href="view_freeQuiz.htm"><i class="icon-edit"></i><span>Free Quiz</span> </a> </li>
                <li><a href="view_weeklyQuiz.htm"><i class="icon-edit"></i><span>Weekly Quiz</span> </a> </li>
                <li><a href="view_level.htm"><i class="icon-signal"></i><span>Level</span> </a> </li>
                <li><a href="view_user.htm"><i class="icon-user"></i><span>User</span> </a> </li>
                <li><a href="view_majors.htm"><i class="icon-th-large"></i><span>Majors</span> </a> </li>
                <li><a href="view_lesson.htm"><i class="icon-th-large"></i><span>Lessons</span> </a> </li>
              </ul>
            </div>
              <p><a href="logout.htm">Log Out</a></p>
            <!-- /container --> 
          </div>
          <!-- /subnavbar-inner --> 
        </div>
        <!-- /subnavbar -->
<!--          
        <h1>Halaman Admin E - Learning</h1>
        <h1>
            <ol>
                <a href="view_role.htm"><li>Pemeliharaan Role</li></a>
                <a href="view_assignment.htm"><li>Pemeliharaan Assigment</li></a>
                <a href="view_course.htm"><li>Pemeliharaan Course</li></a>
                <a href="view_freeQuiz.htm"><li>Pemeliharaan Free Quiz</li></a>
                <a href="view_weeklyQuiz.htm"><li>Pemeliharaan Weekly Quiz</li></a>
                <a href="view_level.htm"><li>Pemeliharaan Level</li></a>
                <a href="view_user.htm"><li>Pemeliharaan User</li></a>
                <a href="view_majors.htm"><li>Pemeliharaan Majors</li></a>
                <a href="view_lesson.htm"><li>Pemeliharaan Lessons</li></a>
            </ol>
        </h1>-->
<!-- Le javascript
================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="js/jquery-1.7.2.min.js"></script> 
<script src="js/excanvas.min.js"></script> 
<script src="js/chart.min.js" type="text/javascript"></script> 
<script src="js/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="js/full-calendar/fullcalendar.min.js"></script>
 
<script src="js/base.js"></script> 
<script>     

        var lineChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    pointColor: "rgba(220,220,220,1)",
				    pointStrokeColor: "#fff",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    pointColor: "rgba(151,187,205,1)",
				    pointStrokeColor: "#fff",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

        }

        var myLine = new Chart(document.getElementById("area-chart").getContext("2d")).Line(lineChartData);


        var barChartData = {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [
				{
				    fillColor: "rgba(220,220,220,0.5)",
				    strokeColor: "rgba(220,220,220,1)",
				    data: [65, 59, 90, 81, 56, 55, 40]
				},
				{
				    fillColor: "rgba(151,187,205,0.5)",
				    strokeColor: "rgba(151,187,205,1)",
				    data: [28, 48, 40, 19, 96, 27, 100]
				}
			]

        }    

        $(document).ready(function() {
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var calendar = $('#calendar').fullCalendar({
          header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
          },
          selectable: true,
          selectHelper: true,
          select: function(start, end, allDay) {
            var title = prompt('Event Title:');
            if (title) {
              calendar.fullCalendar('renderEvent',
                {
                  title: title,
                  start: start,
                  end: end,
                  allDay: allDay
                },
                true // make the event "stick"
              );
            }
            calendar.fullCalendar('unselect');
          },
          editable: true,
          events: [
            {
              title: 'All Day Event',
              start: new Date(y, m, 1)
            },
            {
              title: 'Long Event',
              start: new Date(y, m, d+5),
              end: new Date(y, m, d+7)
            },
            {
              id: 999,
              title: 'Repeating Event',
              start: new Date(y, m, d-3, 16, 0),
              allDay: false
            },
            {
              id: 999,
              title: 'Repeating Event',
              start: new Date(y, m, d+4, 16, 0),
              allDay: false
            },
            {
              title: 'Meeting',
              start: new Date(y, m, d, 10, 30),
              allDay: false
            },
            {
              title: 'Lunch',
              start: new Date(y, m, d, 12, 0),
              end: new Date(y, m, d, 14, 0),
              allDay: false
            },
            {
              title: 'Birthday Party',
              start: new Date(y, m, d+1, 19, 0),
              end: new Date(y, m, d+1, 22, 30),
              allDay: false
            },
            {
              title: 'EGrappler.com',
              start: new Date(y, m, 28),
              end: new Date(y, m, 29),
              url: 'http://EGrappler.com/'
            }
          ]
        });
      });
    </script><!-- /Calendar -->
    </body>
</html>
