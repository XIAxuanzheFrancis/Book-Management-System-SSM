<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 30586
  Date: 2023/11/1
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List de livres</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>List of books</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toaddbook">Add
                    book</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allbooks">Show all books</a>

            </div>
            <div class="col-md-4 column">
                <form action="${pageContext.request.contextPath}/book/queryBookByName" method="post" style="display: flex; justify-content: center">
                <input type="text" name="queryBookName" class="form-control"
                       placeholder="Enter the name of the book to be searched">
                <input type="submit" value="search" class="btn btn-primary">
                </form>
            </div>

        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>No book</th>
                    <th>Name of book</th>
                    <th>Number of the book</th>
                    <th>Book Details</th>
                    <th>manipulate</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${Allbooks}">
                    <tr>
                        <td>${book.bookId}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/tomodify/${book.bookId}">Modify</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/book/deleteBooks/${book.bookId}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
