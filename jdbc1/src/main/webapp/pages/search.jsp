<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Search</title>
<style>
.container {
    display: flex;
    width: 900px;
    margin: 40px auto;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    overflow: hidden;
}
.sidebar {
    width: 180px;
    background: #2c3e50;
    color: white;
    padding: 20px;
}
.sidebar h3 {
    margin-top: 0;
}
.sidebar a {
    display: block;
    color: white;
    text-decoration: none;
    margin: 12px 0;
}
.sidebar a:hover { color: #1abc9c; }
.content {
    flex: 1;
    padding: 25px;
}
.header {
    font-size: 22px;
    font-weight: bold;
    margin-bottom: 20px;
}
table {
    width: 100%;
    border-collapse: collapse;
}
th, td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
}
th { background: #ecf0f1; }
input[type="text"] {
    width: 100%;
    padding: 8px;
    margin: 8px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
}
button {
    padding: 10px 16px;
    background: #1abc9c;
    border: none;
    color: white;
    border-radius: 4px;
    cursor: pointer;
}
button:hover { background: #16a085; }
.msg { margin-top: 10px; color: #888; }
.footer {
    text-align: center;
    padding: 15px;
    background: #2c3e50;
    color: white;
    font-size: 14px;
    margin-top: 30px;
}
.footer span {
    color: #1abc9c;
    font-weight: bold;
}
</style>
</head>
<body>
<div class="container">

    <div class="sidebar">
        <a href="home.jsp">Home</a>
        <a href="insert.jsp">Insert</a>
        <a href="delete.jsp">Delete</a>
        <a href="search.jsp">Search</a>
    </div>
    <div class="content">
        <div class="header">Search Employee</div>

        <form action="searchdb.jsp" method="get">
            <label>EMPNO to be searched</label>
            <input type="text" name="empno">
            <center>
            <button type="submit">SEARCH</button>
            </center>
        </form>

        <div class="msg">Not Found</div>
    </div>
</div>
<div class="footer">
    © 2026 DBCon Demo | Made by <span>Manash</span>
</div>
</body>
</html>