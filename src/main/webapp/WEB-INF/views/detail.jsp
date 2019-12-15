<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>View details page</title>
</head>
<body>
	Dear <strong>${user.ssoId}</strong>, Welcome to View details Page.
    <c:if test="${user.firstName != null}">
      <h2>
        First name : ${user.firstName}
      </h2>
    </c:if>
    <c:if test="${user.lastName != null}">
      <h2>
        Last name : ${user.lastName}
      </h2>
    </c:if>
    <c:if test="${user.email != null}">
      <h2>
        email : ${user.email}
      </h2>
    </c:if>
    <c:if test="${user.userRole != null}">
      <h2>
        role : ${user.userRole}
      </h2>
    </c:if>

	<sec:authorize access="isFullyAuthenticated()">
		<label><a href="<c:url value="/addUser" />">Create New User</a></label>
	</sec:authorize>
	</br>
	<sec:authorize access="isRememberMe()">
		<label><a href="#">View existing Users</a></label>
	</sec:authorize>
    </br>
	<a href="<c:url value="/logout" />">Logout</a>
</body>
</html>