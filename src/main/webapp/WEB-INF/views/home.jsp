<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Assan admin</title>

        <!-- Bootstrap -->
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--side menu plugin-->
        <link href="assets/plugins/hoe-nav/hoe.css" rel="stylesheet">
        <!-- icons-->
        <link href="assets/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/plugins/iCheck/custom.css" rel="stylesheet">
        <!--template custom css file-->
        <link href="assets/css/style.css" rel="stylesheet">

        <script src="assets/js/modernizr.js"></script>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<style>
		/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
		.ui-datepicker-trigger{cursor: pointer;}
		/*datepicer input 롤오버 시 손가락 모양 표시*/
		.hasDatepicker{cursor: pointer;}
		</style>
    </head>
    <body hoe-navigation-type="vertical" hoe-nav-placement="left" theme-layout="wide-layout">

        <!--side navigation start-->
        <div id="hoeapp-wrapper" class="hoe-hide-lpanel" hoe-device-type="desktop">
            <header id="hoe-header" hoe-lpanel-effect="shrink">
                <div class="hoe-left-header">
                    <a href="#"> A<span>SSAN</span></a>
                    <span class="hoe-sidebar-toggle"><a href="#"></a></span>
                </div>

                <div class="hoe-right-header" hoe-position-type="relative">
                    <span class="hoe-sidebar-toggle"><a href="#"></a></span>
                    <ul class="left-navbar">
                        <li>
                            <div class="top-search hidden-xs">
                                <form>
                                    <input type="text" class="form-control" placeholder="Search here">
                                    <i class="ion-search"></i>
                                </form>
                            </div>
                        </li>

                    </ul>
                    <ul class="right-navbar navbar-right">
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"> <i class="ion-ios-bell-outline"></i> <span class="label label-danger">4</span></a>
                            <ul class="dropdown-menu dropdown-menu-scale lg-dropdown notifications">
                                <li> <p>You have 3 new notifications <a href="#"> Mark all Read</a></p></li>
                                <li class="unread-notifications">
                                    <a href="#">
                                        <i class="ion-ios-email-outline pull-right"></i>
                                        <span class="line">You have 8 Messages</span>
                                        <span class="small-line">3 Minutes ago</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="ion-social-twitter-outline pull-right"></i>
                                        <span class="line">You have 3 new followers</span>
                                        <span class="small-line">8 Minutes ago</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="ion-ios-download-outline pull-right"></i>
                                        <span class="line">Download Complete</span>
                                        <span class="small-line">6 Minutes ago</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><img src="assets/images/us.png" alt=""> English</a>
                            <ul class="dropdown-menu dropdown-menu-scale lang-dropdown">
                                <li><a href="#"><img src="assets/images/us.png" alt=""> English </a></li>
                                <li><a href="#"><img src="assets/images/es.png" alt=""> Spanish </a></li>
                                <li><a href="#"><img src="assets/images/tr.png" alt=""> Turkish </a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><img src="assets/images/avtar.png" alt="" width="30" class="img-circle"> Emily Doe</a>
                            <ul class="dropdown-menu dropdown-menu-scale user-dropdown">
                                <li><a href="#"><i class="ion-email-unread"></i> Inbox <span class="label label-warning">3</span></a></li>
                                <li><a href="#"><i class="ion-person"></i> Profile </a></li>
                                <li><a href="#"><i class="ion-settings"></i> Settings <span class="label label-primary">3/9</span></a></li>
                                <li><a href="#"><i class="ion-calendar"></i> Calendar </a></li>
                                <li><a href="#"><i class="ion-ios-compose"></i> Tasks </a></li>
                                <li><a href="#"><i class="ion-log-out"></i> Logout </a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </header>
            <div id="hoeapp-container" hoe-color-type="lpanel-bg7" hoe-lpanel-effect="shrink">
                <aside id="hoe-left-panel" hoe-position-type="absolute">

                    <ul class="nav panel-list">

                        <li>
                            <a href="index.html">
                                <i class="fa fa-home"></i>
                                <span class="menu-text">Dashboard</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="hoe-has-menu">
                            <a href="javascript:void(0)">
                                <i class="fa fa-envelope"></i>
                                <span class="menu-text">Email</span>
                                <span class="selected"></span>
                            </a>
                            <ul class="hoe-sub-menu">
                                <li>
                                    <a href="email-inbox.html">
                                        <span class="menu-text">Inbox</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="email-compose.html">
                                        <span class="menu-text">Compose</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="email-view.html">
                                        <span class="menu-text">Email View</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="hoe-has-menu">
                            <a href="javascript:void(0)">
                                <i class="fa fa-bar-chart-o"></i>
                                <span class="menu-text">Charts</span>
                                <span class="selected"></span>
                            </a>
                            <ul class="hoe-sub-menu">
                                <li>
                                    <a href="chart-flot.html">
                                        <span class="menu-text">Flot charts</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="chart-morris.html">
                                        <span class="menu-text">Morris charts</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="chart-chartjs.html">
                                        <span class="menu-text">Chartjs</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="chart-sparkline.html">
                                        <span class="menu-text">Sparkline</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="hoe-has-menu active">
                            <a href="javascript:void(0)">
                                <i class="fa fa-th-large"></i>
                                <span class="menu-text">Forms</span>
                                <span class="selected"></span>
                            </a>
                            <ul class="hoe-sub-menu">
                                <li>
                                    <a href="form-basic.html">
                                        <span class="menu-text">Basic elements</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="form-file-upload.html">
                                        <span class="menu-text">File upload</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="form-text-editor.html">
                                        <span class="menu-text">Text editor</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="hoe-has-menu">
                            <a href="javascript:void(0)">
                                <i class="fa fa-table"></i>
                                <span class="menu-text">Tables</span>
                                <span class="selected"></span>
                            </a>
                            <ul class="hoe-sub-menu">
                                <li>
                                    <a href="table-static.html">
                                        <span class="menu-text">Static tables</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="table-responsive.html">
                                        <span class="menu-text">Responsive Tables</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="table-data.html">
                                        <span class="menu-text">Data tables</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="calendar.html">
                                <i class="fa fa-calendar"></i>
                                <span class="menu-text">Calendar</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="user-profile.html">
                                <i class="fa fa-user"></i>
                                <span class="menu-text">User Profile</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="hoe-has-menu">
                            <a href="javascript:void(0)">
                                <i class="fa fa-envelope"></i>
                                <span class="menu-text">Pages</span>
                                <span class="selected"></span>
                            </a>
                            <ul class="hoe-sub-menu">
                                <li>
                                    <a href="page-login.html">
                                        <span class="menu-text">Login</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="page-register.html">
                                        <span class="menu-text">Register</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="page-404.html">
                                        <span class="menu-text">404</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="page-forget-password.html">
                                        <span class="menu-text">Forget password</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="page-empty.html">
                                        <span class="menu-text">Empty page</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="hoe-has-menu">
                            <a href="javascript:void(0)">
                                <i class="fa fa-cogs"></i>
                                <span class="menu-text">UI elements</span>
                                <span class="selected"></span>
                            </a>
                            <ul class="hoe-sub-menu">
                                <li>
                                    <a href="ui-buttons.html">
                                        <span class="menu-text">Buttons</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="ui-typography.html">
                                        <span class="menu-text">typography</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>

                                <li>
                                    <a href="ui-tabs.html">
                                        <span class="menu-text">Tabs</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="ui-alerts.html">
                                        <span class="menu-text">Alerts</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="ui-tooltip_popovers.html">
                                        <span class="menu-text">Tooltips & popovers</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="hoe-has-menu">
                            <a href="javascript:void(0)">
                                <i class="fa fa-map-o"></i>
                                <span class="menu-text">Maps</span>
                                <span class="selected"></span>
                            </a>
                            <ul class="hoe-sub-menu">
                                <li>
                                    <a href="map-vector.html">
                                        <span class="menu-text">Vector map</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="map-google.html">
                                        <span class="menu-text">Google map</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="hoe-has-menu">
                            <a href="javascript:void(0)">
                                <i class="ion-ios-filing-outline"></i>
                                <span class="menu-text">Menu Lavel 1</span>
                                <span class="selected"></span>
                            </a>
                            <ul class="hoe-sub-menu">
                                <li>
                                    <a href="javascript:void(0)">
                                        <span class="menu-text">level 2</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)">
                                        <span class="menu-text">level 2</span>
                                        <span class="selected"></span>
                                    </a>
                                </li>
                                <li class="hoe-has-menu">
                                    <a href="javascript:void(0)">
                                        <span class="menu-text">level 2</span>
                                        <span class="selected"></span>
                                    </a>
                                    <ul class="hoe-sub-menu">
                                        <li class="hoe-has-menu">
                                            <a href="javascript:void(0)">
                                                <span class="menu-text">level 3</span>
                                                <span class="selected"></span>
                                            </a>
                                            <ul class="hoe-sub-menu">
                                                <li>
                                                    <a href="javascript:void(0)">
                                                        <span class="menu-text">level 4</span>
                                                        <span class="selected"></span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)">
                                                        <span class="menu-text">level 4</span>
                                                        <span class="selected"></span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">
                                                <span class="menu-text">level 3</span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">
                                                <span class="menu-text">level 3</span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">
                                                <span class="menu-text">level 3</span>
                                                <span class="selected"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>  
                            </ul>
                        </li>
                    </ul>
                </aside><!--aside left menu end-->


                <!--start main content-->
                <section id="main-content">
                    <div class="space-30"></div>
                    <div class="container">

                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel">
                                    <header class="panel-heading">

                                        <h2 class="panel-title">basic form</h2>
                                    </header>
                                    <div class="panel-body">
                                        <form role="form">

                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="E-Mail or Phone">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" placeholder="Password">
                                            </div>
                                            <div class="form-group clearfix">
                                                <div class="checkbox pull-left">
                                                    <input type="checkbox" id="myCheckbox" name="myCheckbox" class="i-checks">
                                                    <label for="myCheckbox">Remember Me </label>
                                                </div>
                                                <div class="pull-right">
                                                    <button type="submit" class="btn btn-success rounded">Sign in</button>
                                                </div>
                                            </div>

                                        </form>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="panel">
                                    <header class="panel-heading">

                                        <h2 class="panel-title">basic form</h2>
                                    </header>
                                    <div class="panel-body">
                                        <form role="form" class="form-horizontal">
                                            <div class="form-group"><label class="col-lg-2 control-label">Email</label>
                                                <div class="col-lg-10"><input type="email" placeholder="Email" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group"><label class="col-lg-2 control-label">Password</label>
                                                <div class="col-lg-10"><input type="password" placeholder="Password" class="form-control"></div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-lg-offset-2 col-lg-10">
                                                    <div class="checkbox pull-left">
                                                        <input type="checkbox" id="myCheckbox2" name="myCheckbox2" class="i-checks">
                                                        <label for="myCheckbox2">Remember Me </label>
                                                    </div>
                                                    <div class="pull-right">
                                                        <button class="btn btn-default rounded" type="submit">Sign in</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div><!--end row-->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel">
                                    <header class="panel-heading">
                                        <h2 class="panel-title">All Form Elements</h2>
                                    </header>
                                    기간: <input type="text" id="datepicker"> <b>~</b> <input type="text" id="datepicker2">
                                    <div class="panel-body">
                                        <form method="get" role="form">
                                            <div class="form-group">
                                                <label>Basic</label>  
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Help Text</label>  
                                                <input type="text" class="form-control">
                                                <span class="help-block m-b-none">This is a example of help text input</span>
                                            </div>
                                            <div class="form-group">
                                                <label>Placeholder</label>  
                                                <input type="text" class="form-control" placeholder="placeholder">
                                            </div>
                                            <div class="form-group">
                                                <label>Password</label>  
                                                <input type="password" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Disabled</label>  
                                                <input type="text" disabled="" placeholder="Disabled input here..." class="form-control">
                                            </div>
                                            <hr>
                                            <div class="form-group clearfix"><label class="col-sm-2 control-label">Checkboxes and radios <br/>
                                                    <small class="text-muted">Normal Bootstrap elements</small></label>

                                                <div class="col-sm-10">
                                                    <div><label> <input type="checkbox" value=""> Option one is this and that&mdash;be sure to include why it's great </label></div>
                                                    <div><label> <input type="radio" checked="" value="option1" id="optionsRadios1" name="optionsRadios"> Option one is this and that&mdash;be sure to
                                                            include why it's great </label></div>
                                                    <div><label> <input type="radio" value="option2" id="optionsRadios2" name="optionsRadios"> Option two can be something else and selecting it will
                                                            deselect option one </label></div>
                                                </div>
                                            </div>

                                            <hr>
                                            <div class="form-group clearfix"><label class="col-sm-2 control-label">Inline checkboxes</label>

                                                <div class="col-sm-10"><label class="checkbox-inline"> <input type="checkbox" value="option1" id="inlineCheckbox1"> a </label> <label class="checkbox-inline">
                                                        <input type="checkbox" value="option2" id="inlineCheckbox2"> b </label> <label class="checkbox-inline">
                                                        <input type="checkbox" value="option3" id="inlineCheckbox3"> c </label></div>
                                            </div>
                                            <hr>
                                            <div class="form-group clearfix"><label class="col-sm-2 control-label">Checkboxes &amp; radios <br/><small>Custom elements</small></label>

                                                <div class="col-sm-10">
                                                    <div class="i-checks"><label> <input type="checkbox" value=""> <i></i> Option one </label></div>
                                                    <div class="i-checks"><label> <input type="checkbox" value="" checked=""> <i></i> Option two checked </label></div>
                                                    <div class="i-checks"><label> <input type="checkbox" value="" disabled="" checked=""> <i></i> Option three checked and disabled </label></div>
                                                    <div class="i-checks"><label> <input type="checkbox" value="" disabled=""> <i></i> Option four disabled </label></div>
                                                    <div class="i-checks"><label> <input type="radio" value="option1" name="a"> <i></i> Option one </label></div>
                                                    <div class="i-checks"><label> <input type="radio" checked="" value="option2" name="a"> <i></i> Option two checked </label></div>
                                                    <div class="i-checks"><label> <input type="radio" disabled="" checked="" value="option2"> <i></i> Option three checked and disabled </label></div>
                                                    <div class="i-checks"><label> <input type="radio" disabled="" name="a"> <i></i> Option four disabled </label></div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="form-group">
                                                <label>Select</label>
                                                <select class="form-control margin-b-20" name="account">
                                                    <option>option 1</option>
                                                    <option>option 2</option>
                                                    <option>option 3</option>
                                                    <option>option 4</option>
                                                </select>
                                                <div class="row">
                                                    <div class="col-lg-4"><select class="form-control" multiple="">
                                                            <option>option 1</option>
                                                            <option>option 2</option>
                                                            <option>option 3</option>
                                                            <option>option 4</option>
                                                        </select></div>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="form-group">
                                                <label>Input with error</label>
                                                <input type="text" class="form-control input-error">
                                            </div>
                                            <div class="form-group">
                                                <label>Input with success</label>
                                                <input type="text" class="form-control input-success">
                                            </div>
                                            <div class="form-group">
                                                <label>Input with warning</label>
                                                <input type="text" class="form-control input-warning">
                                            </div>
                                            <hr>
                                            <div class="form-group">
                                                <label>Input groups</label> 
                                                <div class="input-group margin-b-20"><span class="input-group-addon">@</span> <input type="text" placeholder="Username" class="form-control"></div>
                                                <div class="input-group margin-b-20"><input type="text" class="form-control"> <span class="input-group-addon">.00</span></div>
                                                <div class="input-group margin-b-20"><span class="input-group-addon">$</span> <input type="text" class="form-control"> <span class="input-group-addon">.00</span></div>
                                                <div class="input-group margin-b-20"><span class="input-group-addon"> <span class="checkbox">
                                                            <input type="checkbox" id="myCheckbox6" class="i-checks" name="myCheckbox6" value="myCheckbox">
                                                            <label for="myCheckbox6"> </label>
                                                        </span></span> <input type="text" class="form-control">
                                                </div>
                                                <div class="input-group margin-b-20"><span class="input-group-addon"> <span class="radoi">
                                                            <input type="radio" id="radoi" class="i-checks" name="radoi" value="myCheckbox">
                                                            <label for="radoi"> </label>
                                                        </span></span> <input type="text" class="form-control">
                                                </div>
                                            </div><hr>
                                            <div class="form-group">
                                                <label>Button Addons</label>
                                                <div class="input-group margin-b-20"><span class="input-group-btn">
                                                        <button type="button" class="btn btn-primary">Go!</button> </span> <input type="text" class="form-control">
                                                </div>
                                                <div class="input-group"><input type="text" class="form-control"> <span class="input-group-btn"> <button type="button" class="btn btn-primary">Go!
                                                        </button> </span></div>
                                            </div><hr>
                                            <div class="form-group">
                                                <label>With dropdowns</label>
                                                <div class="input-group margin-b-20">
                                                    <div class="input-group-btn">
                                                        <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button">Action <span class="caret"></span></button>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                        </ul>
                                                    </div>
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="input-group"><input type="text" class="form-control">

                                                    <div class="input-group-btn">
                                                        <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button">Action <span class="caret"></span></button>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Segmented</label>
                                                <div class="input-group margin-b-20">
                                                    <div class="input-group-btn">
                                                        <button tabindex="-1" class="btn btn-default" type="button">Action</button>
                                                        <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button"><span class="caret"></span></button>
                                                        <ul class="dropdown-menu">
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                        </ul>
                                                    </div>
                                                    <input type="text" class="form-control">
                                                </div>
                                                <div class="input-group"><input type="text" class="form-control">

                                                    <div class="input-group-btn">
                                                        <button tabindex="-1" class="btn btn-default" type="button">Action</button>
                                                        <button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button"><span class="caret"></span></button>
                                                        <ul class="dropdown-menu pull-right">
                                                            <li><a href="#">Action</a></li>
                                                            <li><a href="#">Another action</a></li>
                                                            <li><a href="#">Something else here</a></li>
                                                            <li class="divider"></li>
                                                            <li><a href="#">Separated link</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--end container-->

                    <!--footer start-->
                    <div class="footer">
                        <div class="row">
                            <div class="col-sm-12">
                                <span>&copy; Copyright 2016. Assan</span>
                            </div>
                        </div>
                    </div>
                    <!--footer end-->
                </section><!--end main content-->
            </div>
        </div><!--end wrapper-->



        <!--Common plugins-->
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/plugins/hoe-nav/hoe.js"></script>
        <script src="assets/plugins/pace/pace.min.js"></script>
        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/js/app.js"></script>
        <!-- iCheck -->
        <script src="assets/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_flat-blue',
                    radioClass: 'iradio_flat-blue'
                });
            });
        </script>
        <script>
        $(function() {
            //모든 datepicker에 대한 공통 옵션 설정
            $.datepicker.setDefaults({
                dateFormat: 'yy-mm-dd' //Input Display Format 변경
                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                ,changeYear: true //콤보박스에서 년 선택 가능
                ,changeMonth: true //콤보박스에서 월 선택 가능                
                ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
                ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
            });
 
            //input을 datepicker로 선언
            $("#datepicker").datepicker();                    
            $("#datepicker2").datepicker();
            
            //From의 초기값을 오늘 날짜로 설정
            $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
            //To의 초기값을 내일로 설정
            $('#datepicker2').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        });
    </script>
    </body>
</html>