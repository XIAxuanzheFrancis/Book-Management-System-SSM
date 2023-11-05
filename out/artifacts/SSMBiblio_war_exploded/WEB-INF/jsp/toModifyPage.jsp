<%--
  Created by IntelliJ IDEA.
  User: 30586
  Date: 2023/11/5
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modification des livres</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>Modifying books</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updatebook" method="past">
<%--        N'oubliez pas!!!!!!!!!!!!!!!!!!--%>
        <input type="hidden" name="bookId" value="${QBooks.bookId}">
        <div class="form-group">
            <label>Book Name:</label>
            <input type="text" name="bookName" class="form-control" value="${QBooks.bookName}" required>
        </div>
        <div class="form-group">
            <label>Book Counts:</label>
            <input type="text" name="bookCounts" class="form-control" value="${QBooks.bookCounts}" required>
        </div>
        <div class="form-group">
            <label>Book Detail:</label>
            <input type="text" name="detail" class="form-control" value="${QBooks.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="Modify">
        </div>

    </form>
</div>
</body>
</html>
