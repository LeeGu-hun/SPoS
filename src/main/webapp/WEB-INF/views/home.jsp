<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>임시 페이지입니다</title>

        <!-- Bootstrap -->
        <link href="resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--side menu plugin-->
        <link href="resources/plugins/hoe-nav/hoe.css" rel="stylesheet">
        <!-- icons-->
        <link href="resources/plugins/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="resources/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
        <link href="resources/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
        <!--template custom css file-->
        <link href="resources/css/style.css" rel="stylesheet">

        <script src="resources/js/modernizr.js"></script>
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
        	#main-content {
        		margin-right: 230px;
        	}
        	.panel {
	            align-items: center;
	            justify-content: center; 
        	}
        	.panel-body {
        		text-align: center;
        		background-size:100% 100%;
	            overflow:hidden;
	            align-items: center;
	            justify-content: center; 
				height: 400px;
        	}
			.all-over-thumb-link {
				display:block; 
				height:100%; 
				width:100%; 
			}
			
        </style>
    </head>
    <body hoe-navigation-type="vertical" hoe-nav-placement="left" theme-layout="wide-layout">

        <!--side navigation start-->
        <div id="hoeapp-wrapper" class="hoe-hide-lpanel" hoe-device-type="desktop">
            <header id="hoe-header" hoe-lpanel-effect="shrink">
                <div class="hoe-left-header">
                    <a href="#"> A<span>SSA33N</span></a>
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
                    <a href="index" >index로</a><a href="main" >진짜home으로</a>
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
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><img src="resources/images/us.png" alt=""> English</a>
                            <ul class="dropdown-menu dropdown-menu-scale lang-dropdown">
                                <li><a href="#"><img src="resources/images/us.png" alt=""> English </a></li>
                                <li><a href="#"><img src="resources/images/es.png" alt=""> Spanish </a></li>
                                <li><a href="#"><img src="resources/images/tr.png" alt=""> Turkish </a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle"><img src="resources/images/avtar.png" alt="" width="30" class="img-circle"> Emily Doe</a>
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
                <!--start main content-->
                <section id="main-content">
                    <div class="space-30"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel">
                                	<header class="panel-heading">
                                		<div class="panel-actions">
                                            <a href="javascript:void(0)" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
                                            <div class="dropdown pull-left">
                                                <a href="" data-toggle="dropdown" class="dropdown-toggle"><i class="ion-more"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-scale">
                                                    <li><a href="javascript:void(0)">다시 보지않기</a></li>
                                                    <li><a href="javascript:void(0)">다시 보기</a></li>
                                                    <li><a href="javascript:void(0)">그렇게 하기</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h2 class="panel-title"><a href="https://mypetlife.co.kr/54167/">자는 고양이</a><span class="helping-text">by 김개똥</span></h2>
                                    </header>
                                    <div class="panel-body" style="background-image:url(https://images.mypetlife.co.kr/content/uploads/2019/10/09234652/kate-stone-matheson-uy5t-CJuIK4-unsplash-780x470.jpg);">
										<a href="https://mypetlife.co.kr/54167/" class="all-over-thumb-link">오늘 내 고양이가 잠을 잤다</a>
									</div>
                                </div><!--end panel-->
                            </div>
                            <!--end col 6-->
                            <div class="col-md-6">
                                <div class="panel">
                                    <header class="panel-heading">
                                        <div class="panel-actions">
                                            <a href="javascript:void(0)" class="panel-action panel-action-toggle" data-panel-toggle=""></a>
                                            <a href="javascript:void(0)" class="panel-action action-link"><i class="ion-refresh"></i></a>
                                            <a href="javascript:void(0)" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
                                            <div class="dropdown pull-left">
                                                <a href="" data-toggle="dropdown" class="dropdown-toggle"><i class="ion-more"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-scale">
                                                    <li><a href="javascript:void(0)">Action</a></li>
                                                    <li><a href="javascript:void(0)">Just Action</a></li>
                                                    <li><a href="javascript:void(0)">Action Now</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h2 class="panel-title">Analytics</h2>
                                    </header>
                                    <div class="panel-body">
                                        <div class="chartjs-data">
                                            <canvas id="barChart" height="145"></canvas>
                                        </div>
                                    </div><!--end panel body-->
                                </div><!--end panel-->
                            </div><!--end col 6-->
                        </div><!--end row-->
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel">
                                    <header class="panel-heading">
                                        <div class="panel-actions">
                                            <a href="javascript:void(0)" class="panel-action panel-action-toggle" data-panel-toggle=""></a>                                   
                                            <a href="javascript:void(0)" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
                                            <div class="dropdown pull-left">
                                                <a href="" data-toggle="dropdown" class="dropdown-toggle"><i class="ion-more"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-scale">
                                                    <li><a href="javascript:void(0)">Action</a></li>
                                                    <li><a href="javascript:void(0)">Just Action</a></li>
                                                    <li><a href="javascript:void(0)">Action Now</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h2 class="panel-title">Recent orders</h2>
                                    </header>
                                    <div class="panel-body">
                                        <div class="scrollDiv">
                                            <table class="table table-striped">
                                                <tbody><tr>
                                                        <th><div>Status</div></th>
                                                <th><div>Clients</div></th>
                                                <th align="center"><div>Orders#</div></th>
                                                <th align="center"><div>Date</div></th>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-primary">Paid</span>
                                                        <span class="label label-success">Active</span>
                                                    </td>
                                                    <td>John Doe</td>
                                                    <td align="center">7556588</td>
                                                    <td class="color-blue-grey" nowrap="" align="center"><span class="semibold">Today</span> 8:30</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-primary">Paid</span>
                                                        <span class="label label-success">Active</span>
                                                    </td>
                                                    <td>Thomas Bayer</td>
                                                    <td align="center">7556588</td>
                                                    <td class="color-blue-grey" nowrap="" align="center"><span class="semibold">Today</span> 16:30</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-primary">Paid</span>
                                                        <span class="label label-default">Inactive</span>
                                                    </td>
                                                    <td>Nicolas Karabat</td>
                                                    <td align="center">7556588</td>
                                                    <td class="color-blue-grey" nowrap="" align="center"><span class="semibold">Yesterday</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-default">Unpaid</span>
                                                        <span class="label label-default">Inactive</span>
                                                    </td>
                                                    <td>Alexandre Pome</td>
                                                    <td align="center">7556588</td>
                                                    <td class="color-blue-grey" nowrap="" align="center">23th May</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-primary">Paid</span>
                                                        <span class="label label-success">Active</span>
                                                    </td>
                                                    <td>John Doe</td>
                                                    <td align="center">7556588</td>
                                                    <td class="color-blue-grey" nowrap="" align="center"><span class="semibold">Today</span> 8:30</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-primary">Paid</span>
                                                        <span class="label label-success">Active</span>
                                                    </td>
                                                    <td>Thomas Bayer</td>
                                                    <td align="center">7556588</td>
                                                    <td class="color-blue-grey" nowrap="" align="center"><span class="semibold">Today</span> 16:30</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-primary">Paid</span>
                                                        <span class="label label-default">Inactive</span>
                                                    </td>
                                                    <td>Nicolas Karabat</td>
                                                    <td align="center">7556588</td>
                                                    <td class="color-blue-grey" nowrap="" align="center"><span class="semibold">Yesterday</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-default">Unpaid</span>
                                                        <span class="label label-default">Inactive</span>
                                                    </td>
                                                    <td>Alexandre Pome</td>
                                                    <td align="center">7556588</td>
                                                    <td class="color-blue-grey" nowrap="" align="center">23th May</td>
                                                </tr>
                                                </tbody></table>
                                        </div>
                                    </div><!--end panel body-->
                                </div><!--end panel-->
                            </div><!--end col 6-->
                            <div class="col-md-6">
                                <div class="panel">
                                    <header class="panel-heading">
                                        <div class="panel-actions">
                                            <a href="javascript:void(0)" class="panel-action panel-action-toggle" data-panel-toggle=""></a>                                   
                                            <a href="javascript:void(0)" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
                                            <div class="dropdown pull-left">
                                                <a href="" data-toggle="dropdown" class="dropdown-toggle"><i class="ion-more"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-scale">
                                                    <li><a href="javascript:void(0)">Action</a></li>
                                                    <li><a href="javascript:void(0)">Just Action</a></li>
                                                    <li><a href="javascript:void(0)">Action Now</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h2 class="panel-title">Recent Tickets</h2>
                                    </header>
                                    <div class="panel-body">
                                        <div class="scrollDiv">
                                            <table class="table table-striped">
                                                <tbody>
                                                    <tr>
                                                        <th><div>Status</div></th>
                                                <th><div>Subject</div></th>
                                                <th align="center"><div>Department</div></th>
                                                <th align="center"><div>Date</div></th>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-success">Open</span>
                                                    </td>
                                                    <td>Website time load</td>
                                                    <td align="center">Support</td>
                                                    <td nowrap="" align="center"><span class="semibold">Today</span> 8:30</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-success">Open</span>
                                                    </td>
                                                    <td>Database table format</td>
                                                    <td align="center">Support</td>
                                                    <td nowrap="" align="center"><span class="semibold">Today</span> 16:30</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-warning">Progress</span>
                                                    </td>
                                                    <td>Loosing control on server</td>
                                                    <td align="center">Support</td>
                                                    <td nowrap="" align="center"><span class="semibold">Yesterday</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-danger">Closed</span>
                                                    </td>
                                                    <td>Authorizations keys</td>
                                                    <td align="center">Support</td>
                                                    <td nowrap="" align="center">23th May</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-success">Open</span>
                                                    </td>
                                                    <td>Website down for one week</td>
                                                    <td align="center">Support</td>
                                                    <td nowrap="" align="center"><span class="semibold">Today</span> 8:30</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-success">Open</span>
                                                    </td>
                                                    <td>Restoring default settings</td>
                                                    <td align="center">Support</td>
                                                    <td nowrap="" align="center"><span class="semibold">Today</span> 16:30</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-warning">Progress</span>
                                                    </td>
                                                    <td>Loosing control on server</td>
                                                    <td align="center">Support</td>
                                                    <td nowrap="" align="center"><span class="semibold">Yesterday</span></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <span class="label label-danger">Closed</span>
                                                    </td>
                                                    <td>Authorizations keys</td>
                                                    <td align="center">Support</td>
                                                    <td nowrap="" align="center">23th May</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div><!--end panel body-->
                                </div><!--end panel-->
                            </div><!--end col 6-->
                        </div><!--end row-->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel">
                                    <header class="panel-heading">
                                        <div class="panel-actions">
                                            <a href="javascript:void(0)" class="panel-action panel-action-toggle" data-panel-toggle=""></a>                                   
                                            <a href="javascript:void(0)" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
                                            <div class="dropdown pull-left">
                                                <a href="" data-toggle="dropdown" class="dropdown-toggle"><i class="ion-more"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-scale">
                                                    <li><a href="javascript:void(0)">Action</a></li>
                                                    <li><a href="javascript:void(0)">Just Action</a></li>
                                                    <li><a href="javascript:void(0)">Action Now</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h2 class="panel-title">Recent Activities</h2>
                                    </header>
                                    <div class="panel-body">
                                        <div class="scrollDiv">
                                            <div class="streamline">
                                                <div class="stream-item stream-primary">
                                                    <div class="stream-content">
                                                        <small class="text-muted">34 mins ago</small>
                                                        <p>Rakesh has just started working on the restaurant project</p>
                                                    </div>
                                                </div><!-- .stream-item -->

                                                <div class="stream-item stream-danger">
                                                    <div class="stream-content">
                                                        <small class="text-muted">39 mins ago</small>
                                                        <p>Nine theme sent you collaboration request</p>
                                                    </div>
                                                </div><!-- .stream-item -->

                                                <div class="stream-item stream-success">
                                                    <div class="stream-content">
                                                        <small class="text-muted">1 hour ago</small>
                                                        <p>Emily added you to her group</p>
                                                    </div>
                                                </div><!-- .stream-item -->

                                                <div class="stream-item stream-warning">
                                                    <div class="stream-content">
                                                        <small class="text-muted">4 hour ago</small>
                                                        <p>Rakesh has finished her task</p>
                                                    </div>
                                                </div><!-- .stream-item -->
                                            </div>
                                        </div>
                                    </div><!--end panel body-->
                                </div><!--end panel-->
                            </div><!--end col 6-->
                            <div class="col-md-6">
                                <div class="panel">
                                    <header class="panel-heading">
                                        <div class="panel-actions">
                                            <a href="javascript:void(0)" class="panel-action panel-action-toggle" data-panel-toggle=""></a>                                   
                                            <a href="javascript:void(0)" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
                                            <div class="dropdown pull-left">
                                                <a href="" data-toggle="dropdown" class="dropdown-toggle"><i class="ion-more"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-scale">
                                                    <li><a href="javascript:void(0)">Action</a></li>
                                                    <li><a href="javascript:void(0)">Just Action</a></li>
                                                    <li><a href="javascript:void(0)">Action Now</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h2 class="panel-title">Feeds</h2>
                                    </header>
                                    <div class="panel-body">
                                        <div class="scrollDiv">
                                            <div class="media-group feeds-group">

                                                <div class="media-group-item">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <div class="avatar">
                                                                <img src="resources/images/avtar-1.jpg" alt="" class="img-circle" width="40">
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <h5><a href="javascript:void(0)" class="text-color">Some of the fantastic things people have had to say about Ooooh</a></h5>
                                                            <small class="text-muted">2 days ago</small>
                                                        </div>
                                                    </div>
                                                </div><!-- .media-group-item -->

                                                <div class="media-group-item">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <div class="avatar">
                                                                <img src="resources/images/avtar-2.jpg" alt="" class="img-circle" width="40">
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <h5><a href="javascript:void(0)" class="text-color">Here are just some of the magazine reviews we have had</a></h5>
                                                            <small class="text-muted">1 day ago</small>
                                                        </div>
                                                    </div>
                                                </div><!-- .media-group-item -->

                                                <div class="media-group-item">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <div class="avatar">
                                                                <img src="resources/images/avtar-3.jpg" alt="" class="img-circle" width="40">
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <h5><a href="javascript:void(0)" class="text-color">Lorem ipsum dolor amet, consectetur adipisicing elit.</a></h5>
                                                            <small class="text-muted">2 days ago</small>
                                                        </div>
                                                    </div>
                                                </div><!-- .media-group-item -->

                                                <div class="media-group-item">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <div class="avatar">
                                                                <img src="resources/images/avtar-4.jpg" alt="" class="img-circle" width="40">
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <h5><a href="javascript:void(0)" class="text-color">“It’s just brilliant. I will recommend it to everyone!”</a></h5>
                                                            <small class="text-muted">2 mins ago</small>
                                                        </div>
                                                    </div>
                                                </div><!-- .media-group-item -->

                                                <div class="media-group-item">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <div class="avatar">
                                                                <img src="resources/images/avtar-5.jpg" alt="" class="img-circle" width="40">
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <h5><a href="javascript:void(0)" class="text-color">John has just started working on the project</a></h5>
                                                            <small class="text-muted">right now</small>
                                                        </div>
                                                    </div>
                                                </div><!-- .media-group-item -->
                                            </div>
                                        </div>
                                    </div><!--end panel body-->
                                </div><!--end panel-->
                            </div><!--end col 6-->
                        </div><!--end row-->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel">
                                    <header class="panel-heading">
                                        <div class="panel-actions">
                                            <a href="javascript:void(0)" class="panel-action panel-action-toggle" data-panel-toggle=""></a>                                   
                                            <a href="javascript:void(0)" class="panel-action panel-action-dismiss" data-panel-dismiss=""></a>
                                            <div class="dropdown pull-left">
                                                <a href="" data-toggle="dropdown" class="dropdown-toggle"><i class="ion-more"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-scale">
                                                    <li><a href="javascript:void(0)">Action</a></li>
                                                    <li><a href="javascript:void(0)">Just Action</a></li>
                                                    <li><a href="javascript:void(0)">Action Now</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h2 class="panel-title">World Map</h2>
                                    </header>
                                    <div class="panel-body">
                                        <div id="world-map-markers" style="height: 400px"></div>
                                    </div><!--end panel body-->
                                </div><!--end panel-->
                            </div><!--end col 6-->
                        </div><!--row end-->
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
        <script src="resources/plugins/jquery/dist/jquery.min.js"></script>
        <script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/plugins/hoe-nav/hoe.js"></script>
        <script src="resources/plugins/pace/pace.min.js"></script>
        <script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="resources/js/app.js"></script>
        <!--page scripts-->
        <!-- Flot chart js -->
        <script src="resources/plugins/flot/jquery.flot.js"></script>
        <script src="resources/plugins/flot/jquery.flot.tooltip.min.js"></script>
        <script src="resources/plugins/flot/jquery.flot.resize.js"></script>
        <script src="resources/plugins/flot/jquery.flot.pie.js"></script>
        <script src="resources/plugins/flot/jquery.flot.time.js"></script>
        <!--vector map-->
        <script src="resources/plugins/vectormap/jquery-jvectormap-2.0.2.min.js"></script>
        <script src="resources/plugins/vectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- ChartJS-->
        <script src="resources/plugins/chartJs/Chart.min.js"></script>
        <!--dashboard custom script-->
        <script src="resources/js/dashboard.js"></script>
    </body>
</html>