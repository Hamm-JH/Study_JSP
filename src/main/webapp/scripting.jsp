<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://jakarta.apache.org/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Scripting Tag</h2>
	<!-- 선언문 태그를 사용하여 자바 변수와 메소드 정의 -->
	<%! 
	int count = 9; 
	
	String makeItLower(String data) {
		return data.toLowerCase();
	}
	
	
	%>
	<!-- <c:out value="Hello World!!" /> --> 
	
	<%-- <table border="1">
        <c:forEach var="i" begin="1" end="9">
            <tr>
                <c:forEach var="j" begin="1" end="9">
                    <td><c:out value="${i}"/> x <c:out value="${j}"/> = <c:out value="${i * j}"/></td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table> --%>
    
    <table border="1">
        <c:forEach var="i" begin="1" end="9">
            <tr>
                <c:forEach var="j" begin="1" end="9">
                    <td>${i} * ${j} = ${i * j}</td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
	
	<%-- <!-- 스크립틀릿 태그로 자바 로직 코드 작성  -->
	<c:forEach var="i" begin="1" end="5" step="1" varStatus="status">
		<c:forEach var="j" begin="1" end="9" step="1" varStatus="status">
		${i} * ${j} = ${i * j} <br>
		안녕하세요 ${j}
		</c:forEach>
	</c:forEach> --%>
	
	<%-- <c:forEach var="S" begin="0" end="6">
	<c:out value="${S}"/>
	</c:forEach> --%>
	
	<%
	for (int i=2; i<= count; i++) {
		for (int j=1; j< count; j++) {
			out.println(i + " * " + j + " = " + i*j); %> <br>
			
		<%} %>
		<br>
	<%}	%>
	
	<!-- 표현문 태그로 선언문의 메소드를 호출하여 문자열 형태로 출력 -->
	<%= makeItLower("Hello World")%> <br>
	<%= makeItLower("This is new JSP Code") %>
</body>
</html>