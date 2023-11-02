<%--
  Created by IntelliJ IDEA.
  User: 30586
  Date: 2023/11/1
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Welcome to the Library</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<header>
  <h1>Welcome to Our Library</h1>
</header>
<nav>
  <ul>
    <li><a href="${pageContext.request.contextPath}/book/allbooks">View the list of books</a></li>
  </ul>
</nav>
<main>
  <div class="flex-container">
    <div class="flex-item">
      <img src="imgHome.jpg" alt="Library Image">
    </div>
  </div>
</main>
<footer>
  &copy; 2023 Your Library
</footer>
</body>
</html>
