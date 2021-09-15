
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>

    </div>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--提交了修改sql的请求，但是修改失败初次考虑 是事务问题 配置完毕依旧失败--%>
        <%--看一下sql语句是否执行成功：sql失败修改为未完成--%>
            <%--前端隐藏域--%>
            <input type="hidden" name="bookID" value="${QBook.bookID}">
        <div class="form-group">
            <label >书籍名称</label>
            <input type="text" class="form-control" value="${QBook.bookName}" name="bookName" required>
        </div>
        <div class="form-group">
            <label >书籍数量</label>
            <input type="text" class="form-control"  name="bookCounts" value="${QBook.bookCounts}" required >
        </div>
        <div class="form-group">
            <label >书籍描述</label>
            <input type="text" class="form-control"   name="detail" value="${QBook.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="from-controller" value="修改">
        </div>
    </form>

</div>

</body>
</html>
