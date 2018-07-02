
var context_path = "/hhr/";


$(function(){
	$("#logout1").click(function() {
		var htmlobj = $.ajax({url: context_path + "logout",type:"GET", async: false});
		//ar htmlobj = $.ajax({url: "/hhr/logout", async: false});
           //$.ajax({url: "/hhr/survey/logout", async: false});
         // $.ajax({url: "/logout", async: false});
         //  $.ajax({url: "/survey/logout", async: false});
          window.location.href = context_path+"adminLTE/"+"login.html";
    });
})