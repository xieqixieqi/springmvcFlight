$(function() {
	
})

function mylogin() {
	var flag = false;
	var name = $('#name').val();
	var pwd = $('#pwd').val();
	var type = $('input:radio:checked').val();
	var namereg = /[^ -~_]{3,16}|^[a-z0-9A-Z_-]{3,16}$/;
	var pwdreg = /.+/;
	if (name.length == 4) {
		alert("请填选用户名");
	} else if (name.length < 4) {
		alert("用户名长度必须大于四");
	} else {
		if (pwd.length == 4) {
			alert("请输入密码");
		} else if (pwd.length < 6) {
			alert("密码长度必须大于六");
		}
	}
	if (name.length >= 4 && pwd.length >= 6) {
		if (namereg.test(name)) {
			if (pwdreg.test(pwd)) {
				flag = true;
			} else {
				alert("密码格式不正确");
			}
		} else {
			alert("姓名格式不正确");
		}
	}

	if (flag == true) {
		$.ajax({
			type : "POST",
			url : "findlogin.action",
			dataType : "text",
			data : {
				user_name : $("#name").val(),
				user_pwd : $("#pwd").val(),
			},
			success : function(msg) {
				alert(msg);
				if (msg == "y") {
					location.href = "index.jsp";
				} else if (msg == "ne") {
					alert("此用户不存在");
				} else {
					location.href = "login.jsp";
				}
			}
		});
	}

}
