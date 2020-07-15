<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<html>

<head>
	<title>Ryo�����˂�</title>
	<link rel="stylesheet" type="text/css" href="responce.css" >
</head>
<body style="background: #FFAD90;">
	<div class="res"><h1>${thread_title}</h1><div id="dwrite"><a href="#write">��<br>�M<br>��<br>��</a></div>
	<form method="post" action="CreateResponseServlet">
	<table>
		<c:forEach var="resp" items="${response_table}">
			
				<a class="font"><c:out value="${resp.res_number}" />.</a>
				<a class="namecolor font"><c:out value="${resp.res_name}" /></a>
				<a class="font"><c:out value="${resp.res_date}" /></a>
				<p>${resp.res_sentence}</p>
			
				  
				<c:set var="id" value="${resp.thread_id}" />
		</c:forEach>
	</table>
	
	
	
	<hr>
	
	<label><a>�� �O<br><input type="text"  name="res_name" placeholder="����������"></a></label><br><br>
	<label><a>��������<br><textarea wrap="hard" name="res_sentence" rows="8" cols="110" id="write" required></textarea></a></label><br>
	<input type="hidden" name="thread_id" value="${thread_id}"><br>
	<input type="submit" value="���e����">
	</form>
	
	<form method="post" action="ThreadListServlet">
	<label>
	<div id="thread_page">
		<a>�X���b�h�ꗗ��</a>
	</div>
	
	<div id="dummy_thread_page"><a>
		<input type="submit" value="�@">
	</a></div>
	</label>
	</form>
	


<div id="top_page"><a href="index.jsp">��<br>T<br>O<br>P</a></div>

<div id="page_top"><a href="#">��</a></div>
	
</body>
</html>