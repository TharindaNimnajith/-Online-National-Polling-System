<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>election Management Application</title>
</head>
<body>
	<center>
		<h1>election Management</h1>
        <h2>
        	<a href="new">Add New election</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All elections</a>
        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of elections</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="election" items="${listelection}">
                <tr>
                    <td><c:out value="${election.id}" /></td>
                    <td><c:out value="${election.name}" /></td>
                    <td><c:out value="${election.email}" /></td>
                    <td><c:out value="${election.country}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${election.id}' />">Edit</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${election.id}' />">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
