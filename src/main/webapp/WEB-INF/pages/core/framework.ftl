<#macro page_head title="无标题">
	<#compress>
		<!DOCTYPE html>
		<!-- 
		Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.6
		Version: 4.5.3
		Author: KeenThemes
		Website: http://www.keenthemes.com/
		Contact: support@keenthemes.com
		Follow: www.twitter.com/keenthemes
		Like: www.facebook.com/keenthemes
		Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
		License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
		-->
		<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
		<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
		<!--[if !IE]><!-->
		<html lang="en">
		    <!--<![endif]-->
		    <!-- BEGIN HEAD -->
		
		    <head>
		        <meta charset="utf-8" />
		        <title>${title}</title>
		        <meta http-equiv="X-UA-Compatible" content="IE=edge">
		        <meta content="width=device-width, initial-scale=1" name="viewport" />
		        <meta content="" name="description" />
		        <meta content="" name="author" />
		        <!-- BEGIN GLOBAL MANDATORY STYLES -->
		        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
		        <link href="${contextPath}/resource/metronic_v4.5.3/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		        <link href="${contextPath}/resource/metronic_v4.5.3/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
		        <link href="${contextPath}/resource/metronic_v4.5.3/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		        <link href="${contextPath}/resource/metronic_v4.5.3/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
		        <link href="${contextPath}/resource/metronic_v4.5.3/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
		        <!-- END GLOBAL MANDATORY STYLES -->
		        <!-- BEGIN PAGE LEVEL PLUGINS -->
		        <#nested>
		        <!-- END PAGE LEVEL PLUGINS -->
		        <!-- BEGIN THEME GLOBAL STYLES -->
		        <link href="${contextPath}/resource/metronic_v4.5.3/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
		        <link href="${contextPath}/resource/metronic_v4.5.3/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
		        <!-- END THEME GLOBAL STYLES -->
		        <!-- BEGIN THEME LAYOUT STYLES -->
		        <link href="${contextPath}/resource/metronic_v4.5.3/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
		        <link href="${contextPath}/resource/metronic_v4.5.3/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color" />
		        <link href="${contextPath}/resource/metronic_v4.5.3/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css" />
		        <!-- END THEME LAYOUT STYLES -->
		        <link rel="shortcut icon" href="favicon.ico" /> 
		    </head>
		    <!-- END HEAD -->
	</#compress>
</#macro>

<#macro page_body>
	<#compress>
		<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
	        <!-- BEGIN HEADER -->
	        <div class="page-header navbar navbar-fixed-top">
	            <!-- BEGIN HEADER INNER -->
	            <div class="page-header-inner ">
	                <!-- BEGIN LOGO -->
	                <div class="page-logo">
	                    <a href="index.html">
	                        <img style="height:100%;" src="${contextPath}/resource/pages/img/logo.png" alt="logo" class="logo-default" /> </a>
	                </div>
	                <!-- END LOGO -->
	                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
	                <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
	                <!-- END RESPONSIVE MENU TOGGLER -->
	                <!-- BEGIN TOP NAVIGATION MENU -->
	                <div class="top-menu">
	                    <ul class="nav navbar-nav pull-right">
	                        <!-- BEGIN USER LOGIN DROPDOWN -->
	                        <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
	                        <li class="dropdown dropdown-user">
	                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
	                                <img alt="" class="img-circle" src="${contextPath}/resource/metronic_v4.5.3/layouts/layout/img/avatar3_small.jpg" />
	                                <span class="username username-hide-on-mobile"> Nick </span>
	                                <i class="fa fa-angle-down"></i>
	                            </a>
	                            <ul class="dropdown-menu dropdown-menu-default">
	                                <li>
	                                    <a href="page_user_profile_1.html">
	                                        <i class="icon-user"></i> My Profile </a>
	                                </li>
	                                <li class="divider"> </li>
	                                <li>
	                                    <a href="page_user_login_1.html">
	                                        <i class="icon-key"></i> Log Out </a>
	                                </li>
	                            </ul>
	                        </li>
	                        <!-- END USER LOGIN DROPDOWN -->
	                    </ul>
	                </div>
	                <!-- END TOP NAVIGATION MENU -->
	            </div>
	            <!-- END HEADER INNER -->
	        </div>
	        <!-- END HEADER -->
	        <!-- BEGIN HEADER & CONTENT DIVIDER -->
	        <div class="clearfix"> </div>
	        <!-- END HEADER & CONTENT DIVIDER -->
	        <!-- BEGIN CONTAINER -->
	        <div class="page-container">
	            <!-- BEGIN SIDEBAR -->
	            <div class="page-sidebar-wrapper">
	                <!-- BEGIN SIDEBAR -->
	                <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
	                <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
	                <div class="page-sidebar navbar-collapse collapse">
	                    <!-- BEGIN SIDEBAR MENU -->
	                    <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
	                    <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
	                    <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
	                    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
	                    <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
	                    <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
	                    <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="false" data-slide-speed="200" style="padding-top: 20px">
	                        <li class="heading">
	                            <h3 class="uppercase">功能管理</h3>
	                        </li>
	                        <@treeMenu env.virtualRootMenu />
	                    </ul>
	                    <!-- END SIDEBAR MENU -->
	                    <!-- END SIDEBAR MENU -->
	                </div>
	                <!-- END SIDEBAR -->
	            </div>
	            <!-- END SIDEBAR -->
	            <!-- BEGIN CONTENT -->
	            <div class="page-content-wrapper">
	                <!-- BEGIN CONTENT BODY -->
	                <div class="page-content">
	                    <!-- BEGIN PAGE HEADER-->
	                    <!-- BEGIN PAGE BAR -->
	                    <div class="page-bar">
	                        <ul class="page-breadcrumb">
	                        	<#if visitedMenu?exists>
		                        	<#list visitedMenu.parents as menu>
		                        		<#if (menu.name)?exists && (menu.name)!=''>
			                        		<li>
				                                <a href="index.html">${menu.name}</a>
				                                <i class="fa fa-circle"></i>
				                            </li>
			                            </#if>
		                        	</#list>
		                        	<li>
		                                <span>${visitedMenu.name}</span>
		                            </li>
	                        	</#if>
	                            <!-- <li>
	                                <a href="index.html">功能管理</a>
	                                <i class="fa fa-circle"></i>
	                            </li>
	                            <li>
	                                <span>活动管理</span>
	                            </li> -->
	                        </ul>
	                    </div>
	                    <!-- END PAGE BAR -->
	                    <!-- BEGIN PAGE TITLE-->
	                    <!--
	                    <h3 class="page-title"> Blank Page Layout
	                        <small>blank page layout</small>
	                    </h3>
	                    -->
	                    <!-- END PAGE TITLE-->
	                    <!-- END PAGE HEADER-->
	                    <#nested>
	                </div>
	                <!-- END CONTENT BODY -->
	            </div>
	            <!-- END CONTENT -->
	            
	        </div>
	        <!-- END CONTAINER -->
	        <!-- BEGIN FOOTER -->
	        <div class="page-footer">
	            <div class="page-footer-inner"> 2014 &copy; Metronic by keenthemes.
	                <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" title="Purchase Metronic just for 27$ and get lifetime updates for free" target="_blank">Purchase Metronic!</a>
	            </div>
	            <div class="scroll-to-top">
	                <i class="icon-arrow-up"></i>
	            </div>
	        </div>
	        <!-- END FOOTER -->
	        <!--[if lt IE 9]>
			<script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/respond.min.js"></script>
			<script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/excanvas.min.js"></script> 
			<![endif]-->
	        <!-- BEGIN CORE PLUGINS -->
	        <script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/jquery.min.js" type="text/javascript"></script>
	        <script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	        <script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/js.cookie.min.js" type="text/javascript"></script>
	        <script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
	        <script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	        <script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
	        <script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
	        <script src="${contextPath}/resource/metronic_v4.5.3/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
	        <!-- END CORE PLUGINS -->
	        <!-- BEGIN THEME GLOBAL SCRIPTS -->
	        <script src="${contextPath}/resource/metronic_v4.5.3/global/scripts/app.min.js" type="text/javascript"></script>
	        <!-- END THEME GLOBAL SCRIPTS -->
	        <!-- BEGIN THEME LAYOUT SCRIPTS -->
	        <script src="${contextPath}/resource/metronic_v4.5.3/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
	        <script src="${contextPath}/resource/metronic_v4.5.3/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
	        <script src="${contextPath}/resource/metronic_v4.5.3/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
	        <!-- END THEME LAYOUT SCRIPTS -->
	        <script type="text/javascript">
				$('li.active').parents('li.nav-item').addClass('active').addClass('open');
				$('li.active').parents('li.nav-item').find('a.nav-link').append('<span class="selected"></span>');
			</script>
	    </body>
	
	</html>
	</#compress>
</#macro>

<#macro treeMenu virtualRootMenu>
	<#compress>
	<#list virtualRootMenu.children as menu>
		<@menuItem menu />
	</#list>
	</#compress>
</#macro>

<#macro menuItem menu>
	<#compress>
	<#if menu.leafFlag==true>
		<li class="nav-item  <#if visitedMenu?exists><#if visitedMenu.autoid==menu.autoid> active open </#if></#if>">
            <a href="${contextPath}/${menu.linkUrl}?menuAutoid=${menu.autoid}" class="nav-link ">
            	<#if (menu.icon!'') == ''>
            		<i class="icon-fire"></i>
            		<#else>
            		<i class="icon-${menu.icon}"></i>
            	</#if>
                <span class="title">${menu.name}</span>
            </a>
        </li>
        <#else>
		<li class="nav-item">
	        <a href="javascript:;" class="nav-link nav-toggle">
	            <#if (menu.icon!'') == ''>
            		<i class="icon-fire"></i>
            		<#else>
            		<i class="icon-${menu.icon}"></i>
            	</#if>
	            <span class="title">${menu.name}</span>
	            <span class="arrow"></span>
	        </a>
	        <ul class="sub-menu">
	        	<#list menu.children as childMenu>
		        	<@menuItem childMenu />
	        	</#list>
	        </ul>
	    </li>
	</#if>
	</#compress>
</#macro>