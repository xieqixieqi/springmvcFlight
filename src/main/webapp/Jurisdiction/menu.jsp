<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/11/17
  Time: 21:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../layui/css/layui.css">
</head>
<body>
<script src="/layui/layui.js"></script>
<script>
    layui.use('table', function () {
        var $ = layui.$;
        var table = layui.table;
        var layer = layui.layer;
        var form = layui.form;
        //第一个实例
       table.render({
            elem: '#menuTable'
            , height: 312
            , url: '/findMenuPaging.action' //数据接口
            , page: true, //开启分页
            toolbar: '#menuTableToolbar',
            limits: [15, 20, 25, 30],
            limit: 15
            , cols:
                [[ //表头
                    {type: 'checkbox'},
                    {field: 'id', title: '菜单编号', sort: true, fixed: 'left', rowspan: 2}
                    , {field: 'mname', title: '菜单名称'}
                    , {field: 'murl', title: '菜单地址',}
                ]]
        })
        var index;

        //打开增加用户的弹出层
        $(document).on('click','#addMenu',function(){
            index = layer.open({
                type: 1,
                area: ['50%'],
                content: $("#add-updateMenu").html(),
                title: "增加",
            })
        })



        //增加菜单
        form.on('submit(addMenu)', function(data){
            $.post('AddMenu.action',{"mname" : data.field.mname,"murl" : data.field.murl}, function(result){
                if (result.trim() == 'y') {
                    layer.alert('增加成功', {icon: 6});
                    layer.close(index);
                }
                else{
                    layer.alert('增加失败', {icon: 5});
                }
            });
            return false;
        });
    });
</script>


<div class="layui-fluid">
    <div class="layui-row">
        <div class="layui-col-xs12">
            <!-- 卡片面板 -->
            <div class="layui-card">
                <div class="layui-card-header"><h2>菜单管理</h2></div>
                <div class="layui-card-body">
                    <!-- 数据表格头部工具栏 -->
                    <div class="layui-btn-group" id="menuTableToolbar" style="display:none">
                        <button class="layui-btn layui-btn-primary layui-btn-sm" id="addMenu"><i
                                class="layui-icon"></i></button>
                        <button class="layui-btn layui-btn-primary layui-btn-sm" id="editMenu"><i
                                class="layui-icon"></i></button>
                        <button class="layui-btn layui-btn-primary layui-btn-sm" id="deleteMenu"><i
                                class="layui-icon"></i></button>
                    </div>
                    <!-- 数据表格 -->
                    <table id="menuTable"></table>
                </div>
            </div>
        </div>
    </div>

    <!-- 增改用户弹出层 -->
    <div class="layui-row" id="add-updateMenu" style="display: none">
        <br>
        <div class="layui-col-md10">
            <form class="layui-form" action="" lay-filter="add-updateUser">
                <div class="layui-form-item">
                    <label class="layui-form-label">菜单名称:</label>
                    <div class="layui-input-block">
                        <input type="text" name="mname" lay-verify="required" placeholder="请输入菜单名称"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">菜单地址:</label>
                    <div class="layui-input-inline">
                        <input type="text" name="murl" lay-verify="required" placeholder="请输入菜单地址"
                               autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit lay-filter="addMenu">确定</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
</html>
