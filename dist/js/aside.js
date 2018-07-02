/**
 * Created by chushitong on 2017/1/6.
 */
(function(){
    var aside=$('aside.main-sidebar');
    aside.css({'overflow-y':'auto','height':'100%'});
    aside.empty();
    var str='';
    str='<section class="sidebar"> ' +
	        '<ul class="sidebar-menu"> ' +
	            '<li class="header">职员</li> ' +
	            '<li> ' +
	                '<a href="index.html"> ' +
	                    '<i class="fa fa-dashboard"></i> <span>首页</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	            '<li> ' +
	                '<a href="project.html"> ' +
	                    '<i class="fa fa-laptop"></i> <span>项目&任务</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	            '<li> ' +
	                '<a href="task.html"> ' +
	                    '<i class="fa fa-edit"></i> <span>任务管理——我每天要做的<br>分配给我&自己安排的</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	            '<li> ' +
	                '<a href="task_search.html"> ' +
	                    '<i class="fa fa-search-plus"></i> <span>任务查询——职员任务追踪<br>我分拆下发&下属自己安排</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	            '<li> ' +
	                '<a href="project.html"> ' +
	                    '<i class="fa fa-laptop"></i> <span>我的审批</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	            '<li> ' +
	                '<a href="javascript:;"> ' +
	                    '<i class="fa fa-pie-chart"></i> <span>任务统计</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	            '<li> ' +
	                '<a href="javascript:;"> ' +
	                    '<i class="fa fa-laptop"></i> <span>成长档案</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	
	            '<li class="header">主管：</li> ' +
	            '<li> ' +
	                '<a href="dutySetting.html"> ' +
	                    '<i class="fa fa-files-o"></i> <span>职责管理</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> '+
	            '<li>'+
	                '<a href="javascript:;">' +
	                    '<i class="fa fa-files-o"></i><span>职责SOP</span>'+
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span>'+
	                '</a> '+
	            '<li>' +
	            '</li>'+ /**
	            '<li> ' +
	                '<a href="projectClassifySetting.html"> ' +
	                    '<i class="fa fa-book"></i> <span>项目分类设置</span> ' + //项目分类，直接=职责树
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	            '<li> ' +
	                '<a href="dutyCategorySetting.html"> ' +
	                    '<i class="fa fa-calendar-plus-o"></i> <span>职责类别设置</span> ' + //职责无需再分类
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' + */
	            '<li> ' +
	                '<a href="flowdata.html"> ' +
	                    '<i class="fa fa-pie-chart"></i> <span>业务数据统计</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	
	            '<li class="header">管理：</li> ' +
	            /** '<li> ' +
	                '<a href="dutyCategorySetting.html"> ' +
	                    '<i class="fa fa-calendar-plus-o"></i> <span>工作流程管理</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' + */
	            '<li> ' +
	                '<a href="javascript:;"> ' +
	                    '<i class="fa fa-check-square-o"></i> <span>职员KPI考核</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	            '<li> ' +
		            '<a href="roleManagement.html"> ' +
		                '<i class="fa fa-users"></i> <span>组织机构岗位</span> ' +
		                '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
		            '</a> ' +
		        '</li> ' +
	            '<li> ' +
	                '<a href="roleManagement.html"> ' +
	                    '<i class="fa fa-check-square-o"></i> <span>KPI权重设置</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	            '<li> ' +
	                '<a href="staffManagement.html"> ' +
	                    '<i class="fa fa-user"></i> <span>用户管理</span> ' +
	                    '<span class="pull-right-container"><small class="label pull-right bg-green"></small></span> ' +
	                '</a> ' +
	            '</li> ' +
	        '</ul> ' +
	    '</section>';
    aside.append(str);
})();