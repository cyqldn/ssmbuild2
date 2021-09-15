<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示页面</title>
    <%--bootsrap美化界面--%>
    <!-- 新 Bootstrap 核心 CSS 文件 -->

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row cleafix">
        <div class="col-md-12 column" >
            <div class="page-header">
                <h1>
                    <small>书籍列表</small>
                </h1>

            </div>

        </div>
    </div>


    <div class="row clearfix">
        <%--清除浮动--%>
        <div class="col-md-12 colum">
            <table class="table table-hover table-striped">
                <%--隔行变色--%>
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>

                </tr>
                </thead>
                <tbody>
                <%--书籍从数据库查询从list里遍历出来 foreach--%>
                <c:forEach var="book" items="${bookslist}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
