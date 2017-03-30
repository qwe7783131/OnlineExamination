function ajaxform() {
	$.ajax({
		url:"/getUser",
		dataType:"json",
		type:"post",
		data:$('#ajaxForm').serialize(),
		success:function(data) {
			if (data.caozuo) {
				window.location.href = data.message;
			} else {
				$(".panel-default").fadeIn(500);
				$(".input-big").val("");
				$(".Canvas").text(data.message);
				setTimeout(function() {$(".panel-default").fadeOut(500);}, 2000)
				
			}
		},
		//否则访问这里
		error : function(data) {
			alert("数据访问失败。");
		}
	});
}