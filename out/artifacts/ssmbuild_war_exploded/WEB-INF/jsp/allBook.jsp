<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 —— 显示所有书籍</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 colum">
              <a  class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">增加书籍</a>
                <a  class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
            </div>

            <div class="col-md-8 colum">
              <form class="from-inline" action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float:right">
                  <input type="text" name="queryBookName" class="from-controller" placeholder="请输入要查询的书籍名称">
                   <input type="submit" class="btn btn-primary" value="查询">

              </form>
               </div>

        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名字</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>修改</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toUpdate?id=${book.bookID}">修改</a>
                            &nbsp; |&nbsp;
                            <a  class="btn btn-danger" href="${pageContext.request.contextPath}/book/toDelete/${book.bookID}">删除</a>
                            <%--蓝<a class="btn btn-primary" href="#">btn-primary</a><br />
        <黄a class="btn btn-warning" href="#">btn-warning</a><br />
        <绿a class="btn btn-success" href="#">btn-success</a><br />
        <浅蓝a class="btn btn-info" href="#">btn-info</a><br />
        <红a class="btn btn-danger" href="#">btn-danger</a><br />
        <白a class="btn btn-default" href="#">btn-default</a>--%>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
            <div class = "col-md-offset-4 col-lg-offset-4col-xl-offset-4">
                <h1 class="text-danger"> ${msg}</h1>
            </div>

        </div>
    </div>
</div>
</body>