
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        CHS
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <!-- Global stylesheets -->
    <asset:stylesheet href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css"/>

    <asset:stylesheet src="icons/icomoon/styles.css" rel="stylesheet" type="text/css"/>
    <asset:stylesheet src="bootstrap.css" rel="stylesheet" type="text/css"/>
    <asset:stylesheet src="core.css" rel="stylesheet" type="text/css"/>
    <asset:stylesheet src="components.css" rel="stylesheet" type="text/css"/>
    <asset:stylesheet src="colors.css" rel="stylesheet" type="text/css"/>
    <asset:stylesheet src="w3.css" rel="stylesheet" type="text/css"/>
    <!-- /global stylesheets -->
    <!-- Core JS files -->
    <asset:javascript src="plugins/loaders/pace.min.js" />
    <asset:javascript  src="core/libraries/jquery.min.js"/>
    <asset:javascript  src="core/libraries/bootstrap.min.js"/>
    <asset:javascript  src="plugins/loaders/blockui.min.js"/>
    <!-- /core JS files -->
    <!-- Theme JS files -->
    <asset:javascript  src="plugins/visualization/d3/d3.min.js"/>
    <asset:javascript  src="plugins/visualization/d3/d3_tooltip.js"/>
    <asset:javascript  src="plugins/forms/styling/switchery.min.js"/>
    <asset:javascript  src="plugins/forms/styling/uniform.min.js"/>
    <asset:javascript  src="plugins/forms/selects/bootstrap_multiselect.js"/>
    <asset:javascript  src="plugins/ui/moment/moment.min.js"/>
    <asset:javascript  src="plugins/pickers/daterangepicker.js"/>
    <asset:javascript  src="core/app.js"/>
    <asset:javascript  src="s/pages/dashboard.js"/>
    <asset:javascript  src="plugins/ui/ripple.min.js"/>


    <g:layoutHead/>
</head>

<body class="navbar-bottom">
<!-- Main navbar -->
<div class="navbar navbar-inverse bg-indigo">
    <div class="navbar-header">
        <a class="navbar-brand" href="${createLink(url: '/')}"><asset:image src="CHS_Logo.jpg" style="width: 50px;height: 59px;margin-top: -21px;" /></a>
        <h4> <span class="text-semibold">Chudleigh House</span></h4>
        <ul class="nav navbar-nav visible-xs-block">
            <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
            <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
        </ul>
    </div>

    <div class="navbar-collapse collapse" id="navbar-mobile">
        <ul class="nav navbar-nav">
            <li><a class="sidebar-control sidebar-main-toggle hidden-xs"><i class="icon-paragraph-justify3"></i></a></li>

        </ul>

%{--        <p class="navbar-text"><span class="label bg-success-400">Online</span></p>--}%

        <ul class="nav navbar-nav navbar-right">

%{--            <li class="dropdown">--}%
%{--                <a href="#" class="dropdown-toggle" data-toggle="dropdown">--}%
%{--                    <i class="icon-bubbles4"></i>--}%
%{--                    <span class="visible-xs-inline-block position-right">Messages</span>--}%
%{--                    <span class="badge bg-warning-400">2</span>--}%
%{--                </a>--}%

%{--                <div class="dropdown-menu dropdown-content width-350">--}%
%{--                    <div class="dropdown-content-heading">--}%
%{--                        Messages--}%
%{--                        <ul class="icons-list">--}%
%{--                            <li><a href="#"><i class="icon-compose"></i></a></li>--}%
%{--                        </ul>--}%
%{--                    </div>--}%

%{--                    <ul class="media-list dropdown-content-body">--}%
%{--                        <li class="media">--}%
%{--                            <div class="media-left">--}%
%{--                                <img src="assets/images/placeholder.jpg" class="img-circle img-sm" alt="">--}%
%{--                                <span class="badge bg-danger-400 media-badge">5</span>--}%
%{--                            </div>--}%

%{--                            <div class="media-body">--}%
%{--                                <a href="#" class="media-heading">--}%
%{--                                    <span class="text-semibold">James Alexander</span>--}%
%{--                                    <span class="media-annotation pull-right">04:58</span>--}%
%{--                                </a>--}%

%{--                                <span class="text-muted">who knows, maybe that would be the best thing for me...</span>--}%
%{--                            </div>--}%
%{--                        </li>--}%

%{--                        <li class="media">--}%
%{--                            <div class="media-left">--}%
%{--                                <img src="assets/images/placeholder.jpg" class="img-circle img-sm" alt="">--}%
%{--                                <span class="badge bg-danger-400 media-badge">4</span>--}%
%{--                            </div>--}%

%{--                            <div class="media-body">--}%
%{--                                <a href="#" class="media-heading">--}%
%{--                                    <span class="text-semibold">Margo Baker</span>--}%
%{--                                    <span class="media-annotation pull-right">12:16</span>--}%
%{--                                </a>--}%

%{--                                <span class="text-muted">That was something he was unable to do because...</span>--}%
%{--                            </div>--}%
%{--                        </li>--}%

%{--                        <li class="media">--}%
%{--                            <div class="media-left"><img src="assets/images/placeholder.jpg" class="img-circle img-sm" alt=""></div>--}%
%{--                            <div class="media-body">--}%
%{--                                <a href="#" class="media-heading">--}%
%{--                                    <span class="text-semibold">Jeremy Victorino</span>--}%
%{--                                    <span class="media-annotation pull-right">22:48</span>--}%
%{--                                </a>--}%

%{--                                <span class="text-muted">But that would be extremely strained and suspicious...</span>--}%
%{--                            </div>--}%
%{--                        </li>--}%

%{--                        <li class="media">--}%
%{--                            <div class="media-left"><img src="assets/images/placeholder.jpg" class="img-circle img-sm" alt=""></div>--}%
%{--                            <div class="media-body">--}%
%{--                                <a href="#" class="media-heading">--}%
%{--                                    <span class="text-semibold">Beatrix Diaz</span>--}%
%{--                                    <span class="media-annotation pull-right">Tue</span>--}%
%{--                                </a>--}%

%{--                                <span class="text-muted">What a strenuous career it is that I've chosen...</span>--}%
%{--                            </div>--}%
%{--                        </li>--}%

%{--                        <li class="media">--}%
%{--                            <div class="media-left"><img src="assets/images/placeholder.jpg" class="img-circle img-sm" alt=""></div>--}%
%{--                            <div class="media-body">--}%
%{--                                <a href="#" class="media-heading">--}%
%{--                                    <span class="text-semibold">Richard Vango</span>--}%
%{--                                    <span class="media-annotation pull-right">Mon</span>--}%
%{--                                </a>--}%

%{--                                <span class="text-muted">Other travelling salesmen live a life of luxury...</span>--}%
%{--                            </div>--}%
%{--                        </li>--}%
%{--                    </ul>--}%

%{--                    <div class="dropdown-content-footer">--}%
%{--                        <a href="#" data-popup="tooltip" title="All messages"><i class="icon-menu display-block"></i></a>--}%
%{--                    </div>--}%
%{--                </div>--}%
%{--            </li>--}%

            <li class="dropdown dropdown-user">
                <a class="dropdown-toggle" data-toggle="dropdown">
                    <asset:image src="placeholder.jpg"/>
                    <span><sec:username/></span>
                    <i class="caret"></i>
                </a>

                <ul class="dropdown-menu dropdown-menu-right">
%{--                    <li><a href="#"><i class="icon-user-plus"></i> My profile</a></li>--}%
%{--                    <li><a href="#"><i class="icon-coins"></i> My balance</a></li>--}%
%{--                    <li><a href="#"><span class="badge bg-teal-400 pull-right">58</span> <i class="icon-comment-discussion"></i> Messages</a></li>--}%
%{--                    <li class="divider"></li>--}%
%{--                    <li><a href="#"><i class="icon-cog5"></i> Account settings</a></li>--}%
                    <li><a href="${createLink(url: '/logout')}"><i class="icon-switch2"></i> Logout</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<!-- /main navbar -->
<!-- Page header -->
<div class="page-header">
    <div class="breadcrumb-line">
        <ul class="breadcrumb">
            <li><a href="${createLink(url: '/')}"><i class="icon-home2 position-left"></i> Home</a></li>
            <li class="active">Dashboard</li>
        </ul>

%{--        <ul class="breadcrumb-elements">--}%
%{--            <li><a href="#"><i class="icon-comment-discussion position-left"></i> Support</a></li>--}%
%{--            <li class="dropdown">--}%
%{--                <a href="#" class="dropdown-toggle" data-toggle="dropdown">--}%
%{--                    <i class="icon-gear position-left"></i>--}%
%{--                    Settings--}%
%{--                    <span class="caret"></span>--}%
%{--                </a>--}%

%{--                <ul class="dropdown-menu dropdown-menu-right">--}%
%{--                    <li><a href="#"><i class="icon-user-lock"></i> Account security</a></li>--}%
%{--                    <li><a href="#"><i class="icon-statistics"></i> Analytics</a></li>--}%
%{--                    <li><a href="#"><i class="icon-accessibility"></i> Accessibility</a></li>--}%
%{--                    <li class="divider"></li>--}%
%{--                    <li><a href="${createLink(url: '/setting/settings')}"><i class="icon-gear"></i> All settings</a></li>--}%
%{--                </ul>--}%
%{--            </li>--}%
%{--        </ul>--}%
    </div>

    <div class="page-header-content">
        <div class="page-title">
%{--            <h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Home</span> - Dashboard</h4>--}%
        </div>

        <div class="heading-elements">
            <div class="heading-btn-group">
%{--                <a href="#" class="btn btn-link btn-float text-size-small has-text"><i class="icon-bars-alt text-indigo-400"></i><span>Statistics</span></a>--}%
%{--                <a href="#" class="btn btn-link btn-float text-size-small has-text"><i class="icon-calculator text-indigo-400"></i><span>Invoices</span></a>--}%
                %{--<a href="#" class="btn btn-link btn-float text-size-small has-text"><i class="icon-calendar5 text-indigo-400"></i><span>Schedule</span></a>--}%
            </div>
        </div>


    </div>
</div>
<!-- /page header -->
<!-- Page container -->
<div class="page-container">

    <!-- Page content -->
    <div class="page-content">

        <!-- Main sidebar -->
        <div class="sidebar sidebar-main sidebar-default">
            <div class="sidebar-content">

                <!-- Main navigation -->
                <div class="sidebar-category sidebar-category-visible">
                    <div class="sidebar-user-material">
                        <div class="category-content">
                            <div class="sidebar-user-material-content">
                                %{--<a href="#"><img src="assets/images/placeholder.jpg" class="img-circle img-responsive" alt=""></a>--}%
                                <h6><sec:username/></h6>
                                <span class="text-size-small">Chudleigh High School</span>
                            </div>

                            <div class="sidebar-user-material-menu">
%{--                                <a href="#user-nav" data-toggle="collapse"><span>My account</span> <i class="caret"></i></a>--}%
                            </div>
                        </div>

%{--                        <div class="navigation-wrapper collapse" id="user-nav">--}%
%{--                            <ul class="navigation">--}%
%{--                                <li><a href="#"><i class="icon-user-plus"></i> <span>My profile</span></a></li>--}%
%{--                                <li><a href="#"><i class="icon-coins"></i> <span>My balance</span></a></li>--}%
%{--                                <li><a href="#"><i class="icon-comment-discussion"></i> <span><span class="badge bg-teal-400 pull-right">58</span> Messages</span></a></li>--}%
%{--                                --}%%{--<li class="divider"></li>--}%
%{--                                --}%%{--<li><a href="#"><i class="icon-cog5"></i> <span>Account settings</span></a></li>--}%
%{--                                --}%%{--<li><a href="#"><i class="icon-switch2"></i> <span>Logout</span></a></li>--}%
%{--                            </ul>--}%
%{--                        </div>--}%
                    </div>

                    <div class="category-content no-padding">
                        <ul class="navigation navigation-main navigation-accordion">

                            <!-- Main -->
                            <li class="navigation-header"><span>Main</span> <i class="icon-menu" title="Main pages"></i></li>
                            <li class="active"><a href="${createLink(url: '/')}"><i class="icon-home4"></i> <span>Dashboard</span></a></li>
                            <sec:ifAllGranted roles="ROLE_ADMIN">
                                <li>
                                    <a href="#"><i class="icon-droplet2"></i> <span>Settings</span></a>
                                    <ul>
                                        <li><a href="${createLink(url: '/student/student')}">Students</a></li>
                                        <li><a href="${createLink(url: '/teacher/teacher')}">Teachers</a></li>
                                        <li><a href="${createLink(url: '/settings/grade')}">Grades</a></li>
                                        <li><a href="${createLink(url: '/settings/classes')}">Classes</a></li>

                                    </ul>
                                </li>
                            </sec:ifAllGranted>
                            <li>
                                <a href="#"><i class="icon-graph"></i> <span>Reports</span></a>
                                <ul>
                                    <li><a href="echarts_lines_areas.html">Class Attendance</a></li>
                                    <li><a href="echarts_columns_waterfalls.html">Student Attendance</a></li>

                                </ul>
                            </li>



                        </ul>
                    </div>
                </div>
                <!-- /main navigation -->

            </div>
        </div>
        <!-- /main sidebar -->


        <!-- Main content -->
        <div class="content-wrapper">



            <g:layoutBody/>

        </div>
        <!-- /main content -->

    </div>
    <!-- /page content -->

</div>
<!-- /page container -->
</body>

</html>
