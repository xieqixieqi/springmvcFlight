$(function() {
    $.extend($.fn.validatebox.defaults.rules, {
        english : {// 验证密码
            validator : function(value) {
                return /^[A-Za-z]+$/i.test(value);
            },
            message : '请输入英文'
        },
        loginName : {
            validator : function(value, param) {
                return /^[\u0391-\uFFE5\w]+$/.test(value);
            },
            message : '登录名称只允许汉字、英文字母、数字及下划线。'
        },
        BookName : {
            validator : function(value, param) {
                return /^[\u0391-\uFFE5\w]+$/.test(value);
            },
            message : '书籍名称只允许汉字、英文字母、数字及下划线。'
        },
        intOrFloat : {// 验证整数或小数
            validator : function(value) {
                return /^\d+(\.\d+)?$/i.test(value);
            },
            message : '请输入数字，并确保格式正确'
        },
        chinese : {// 验证中文
            validator : function(value) {
                return /^[\Α-\￥]+$/i.test(value);
            },
            message : '请输入中文'
        },
        unnormal : {// 验证是否包含空格和非法字符
            validator : function(value) {
                return /.+/i.test(value);
            },
            message : '输入值不能为空和包含其他非法字符'
        },
        BookAuthor : {// 验证姓名，可以是中文或英文
            validator : function(value) {
                return /^[\Α-\￥]+$/i.test(value)
                    | /^\w+[\w\s]+\w+$/i.test(value);
            },
            message : '请输入姓名'
        },
    });
})