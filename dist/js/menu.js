$(function (){
	var menus= {
		"member":'<li id="member-li" class=" treeview">'+'<a href="member.html">'+'<i class="fa fa-dashboard"></i> <span>会员基本信息</span>'+'<span class="pull-right-container">'+'</span>'+'</a>'+'</li>',
		"score":'<li id="score-li" class="treeview">'+'<a href="score.html">'+'<i class="fa fa-edit"></i>'+'<span>积分排名</span>'+'<span class="pull-right-container">'+'</span>'+'</a>'+'</li>',
		"scorerecord":'<li id="scorerecord-li" class="treeview">'+'<a href="scorerecord.html">'+'<i class="fa fa-table"></i>'+'<span>积分明细</span>'+'<span class="pull-right-container">'+'</span>'+'</a>'+'</li>',
		"activity":'<li id="activity-li" class="treeview">'+'<a href="activity.html">'+'<i class="fa fa-th"></i>'+'<span>活动管理</span>'+'<span class="pull-right-container">'+'</span>'+'</a>'+'</li>',
		"log": '<li id="log-li" class="treeview">'+'<a href="log.html">'+'<i class="fa fa-pie-chart"></i>'+'<span>操作日志</span>'+'<span class="pull-right-container">'+'</span>'+'</a>'+'</li>',
		"feedback":'<li id="feedback-li" class="treeview">'+'<a href="feedback.html">'+'<i class="fa fa-laptop"></i>'+'<span>意见反馈</span>'+ '<span class="pull-right-container">'+'</span>'+'</a>'+'</li>',
		"sellrecord":'<li id="sellrecord-li" class="treeview">'+'<a href="sellrecord.html">'+'<i class="fa fa-edit"></i> '+'<span>销售记录查询</span>'+'<span class="pull-right-container">'+'</span>'+'</a>'+'</li>',
		"refer":'<li id="refer-li" class="treeview">'+'<a href="refer.html">'+'<i class="fa fa-table"></i> '+'<span>最新推荐记录</span>'+'<span class="pull-right-container">'+'</span>'+' </a>'+'</li>',
		"actionrecord":'<li id="actionrecord-li" class="treeview">'+'<a href="actionrecord.html">'+'<i class="fa fa-edit"></i> '+'<span>邀好友拿奖励</span>'+'<span class="pull-right-container">'+'</span>'+'</a>'+'</li>',
		"message":'<li id="message-li" class="treeview">'+'<a href="message.html">'+'<i class="fa fa-envelope"></i> '+'<span>短信查询</span>'+'<span class="pull-right-container">'+'</span>'+'</a>'+'</li>',
		"requesterror":'<li id="requesterror-li" class="treeview">'+'<a href="requesterror.html">'+'<i class="fa fa-calendar"></i> '+'<span>接口错误查询</span>'+'<span class="pull-right-container">'+'</span>'+'</a>'+'</li>',	
	};
	var menu_str = "";
	var menu_obj = 
	$.get("/hhr/admin/admin/getMenuInfo",{},function(data){
		data =$.parseJSON(data);
		if(data.status= "success"){
			menu_obj = data.data;
			$.each(menus,function(menu,content){
				$.each(menu_obj,function(i,value){
					console.log(value.englishName);
					if(menu == value.englishName){
						menu_str += content;
					}
				})
			})
			$("#menu_content").html('<ul class="sidebar-menu" id="sidebar-menu">'+'<li class="header">导航</li>'+ menu_str +'</ul>');
			$("#"+pagename+"-li").addClass("active");
			$.each(menu_obj,function(i,value){
				if(menus[value.englishName]){
					$("#"+value.englishName+"-li a").attr("href","/hhr"+value.menuLIink);
				}
			})
		}
	})
	
	/*$.each(menus,function(i,value){
				menu_str += value;
	})*/
	
	//$("#menu_content").html('<ul class="sidebar-menu" id="sidebar-menu">'+'<li class="header">导航</li>'+ menu_str +'</ul>');
	//$("#log-li").addClass("active");
	
})