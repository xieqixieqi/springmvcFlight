﻿
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>网站后台管理系统  </title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<!--<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />-->
        <link rel="stylesheet" href="css/style.css"/>
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<!--<script src="assets/js/ace-extra.min.js"></script>-->
		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
        <!--[if !IE]> -->
		<script src="js/jquery-1.9.1.min.js"></script>        
		<!-- <![endif]-->
		<!--[if IE]>
         <script type="text/javascript">window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"script>");</script>
        <![endif]-->
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<!--<script src="assets/js/typeahead-bs2.min.js"></script>-->
		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
		<!--<script src="assets/js/ace-elements.min.js"></script>-->
		<script src="assets/js/ace.min.js"></script>
        
<script type="text/javascript"  src="staticjs/index.js"></script>
	</head>
	<body>
		<div class="navbar navbar-default" id="navbar">
        <script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>					
						<img src="" width="470px">
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->
				<div class="navbar-header operating pull-left">
				
				</div>
			   <div class="navbar-header pull-right" role="navigation">
               <ul class="nav ace-nav">	
                <li class="light-blue">
				<a data-toggle="dropdown" href="#" class="dropdown-toggle">
				 <span  class="time"><em id="time"></em></span><span class="user-info"><small>欢迎光临,</small>超级管理员</span>
				 <i class="icon-caret-down"></i>
				</a>
				<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
  
				 <li><a href="javascript:void(0)" name="admin_info.html" title="个人信息" class="iframeurl"><i class="icon-user"></i>个人资料</a></li>
				 <li class="divider"></li>
				 <li><a href="javascript:ovid(0)" id="Exit_system"><i class="icon-off"></i>退出</a></li>
				</ul>
			   </li>
	          
					</ul>

                </div>
			</div>
		</div>
		<div class="main-container" id="main-container">
        <script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<div class="sidebar" id="sidebar">
<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>
					<!-- #sidebar-shortcuts -->
					<div id="menu_style" class="menu_style">
					<ul class="nav nav-list" id="nav_list">
				     <li class="home"><a href="javascript:void(0)" name="Flight-dynamics.html" class="iframeurl" title="航班动态信息 "><i class="icon-home"></i><span class="menu-text"> 航班动态信息 </span></a></li>
                     
                   <li>
				   <a href="#" class="dropdown-toggle"><i class="icon-credit-card"></i><span class="menu-text"> 数据采集 </span><b class="arrow icon-angle-down"></b></a>
				     <ul class="submenu">
						<li class="home"><a href="javascript:void(0)" name="Automatic-collection.html" title="自动采集" class="iframeurl"><i class="icon-double-angle-right"></i>自动采集</a></li>
						 <li class="home"><a href="javascript:void(0)" name="BD-maintenance.html" title="基础数据维护" class="iframeurl"><i class="icon-double-angle-right"></i>基础数据维护</a></li>
						  
							</ul>
						</li>
                  <li>
					<a href="#" class="dropdown-toggle"><i class="icon-user"></i><span class="menu-text"> 统计分析 </span><b class="arrow icon-angle-down"></b></a>
                    <ul class="submenu">
                    <li class="home"><a href="javascript:void(0)" name="Normal-flight.html" title="航班正常性"  class="iframeurl"><i class="icon-double-angle-right"></i>航班正常性</a></li>
                    <li class="home"><a href="javascript:void(0)" name="Aviation-resources.html" title="航保资源统计"  class="iframeurl"><i class="icon-double-angle-right"></i>航保资源统计</a></li>
                    <li class="home"><a href="javascript:void(0)" name="business-analysis.html" title="经营分析统计"  class="iframeurl"><i class="icon-double-angle-right"></i>经营分析统计</a></li>

                   </ul>
				  </li>
				  <li><a href="#" class="dropdown-toggle"><i class="icon-laptop"></i><span class="menu-text"> 用户管理 </span><b class="arrow icon-angle-down"></b></a>
							<ul class="submenu">
								<li class="home"><a href="javascript:void(0)" name="userlist.html" title="用户信息" class="iframeurl"><i class="icon-double-angle-right"></i>用户信息</a></li>
                                <li class="home"><a href="javascript:void(0)" name="user-group.html" title="用户组信息" class="iframeurl"><i class="icon-double-angle-right"></i>用户组信息</a></li>
							</ul>
						</li>
						
						<li><a href="#" class="dropdown-toggle"><i class="icon-bookmark"></i><span class="menu-text"> 数据维护 </span> </a>
							 
						</li>
                        	<li><a href="#" class="dropdown-toggle"><i class="icon-cogs"></i><span class="menu-text"> 数据导出 </span> </a>
							 
						</li>
                       
					</ul>
					</div>
				 
					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>
                    <script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
              
					<div class="breadcrumbs" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="index.jsp"></a>
							</li>
							<li class="active"><span class="Current_page iframeurl"></span></li>
                            <li class="active" id="parentIframe"><span class="parentIframe iframeurl"></span></li>
							<li class="active" id="parentIfour"><span class="parentIfour iframeurl"></span></li>
						</ul>
					</div>
                    
                 <iframe id="iframe" style="border:0; width:100%; background-color:#FFF;"name="iframe" frameborder="0" src="Statistics/Flight-dynamics.jsp">  </iframe>
				 

<!-- /.page-content -->
				</div><!-- /.main-content -->	
                 		
	</div><!-- /.main-container-inner -->
			
		</div>
         <!--底部样式-->
       
         <div class="footer_style" id="footerstyle">  
		 <script type="text/javascript">try{ace.settings.check('footerstyle' , 'fixed')}catch(e){}</script>
          <p class="l_f">版权所有：xxxxx  xxxx</p>
          <p class="r_f">地址：xxxxxx  邮编：xxxxxx 技术支持：xxxx</p>
         </div>
         <!--修改密码样式-->
         <div class="change_Pass_style" id="change_Pass">
            <ul class="xg_style">
             <li><label class="label_name">原&nbsp;&nbsp;密&nbsp;码</label><input name="原密码" type="password" class="" id="password"></li>
             <li><label class="label_name">新&nbsp;&nbsp;密&nbsp;码</label><input name="新密码" type="password" class="" id="Nes_pas"></li>
             <li><label class="label_name">确认密码</label><input name="再次确认密码" type="password" class="" id="c_mew_pas"></li>              
            </ul>          
         </div>
        <!-- /.main-container -->
		<!-- basic scripts -->
		
</body>
</html>


